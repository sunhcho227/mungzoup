package com.shinhan.sbproject.control;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.List;
import java.awt.Color;
import java.awt.image.BufferedImage;
import javax.imageio.ImageIO;

import org.deeplearning4j.nn.modelimport.keras.KerasModelImport;
import org.deeplearning4j.nn.multilayer.MultiLayerNetwork;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.tensorflow.SavedModelBundle;
import org.tensorflow.Session;
import org.tensorflow.Tensor;
import org.tensorflow.TensorFlow;

import com.shinhan.sbproject.VO.testVO;
import com.shinhan.sbproject.repository.testRepository;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.PathVariable;



@Slf4j
@RestController
// @CrossOrigin 
public class SamplRestController {
	@Autowired
	testRepository testepo;
	
	static int ROW = 0;
	static int FEATURE = 0;
	@PostMapping("/imageTest")
	public String imageTest(MultipartFile imageFile) throws IOException {
		System.out.println("들어옴");
		if(imageFile != null){
			// System.out.println("들어옴2");
			// Base64.Encoder encoder = Base64.getEncoder();
			// byte[] photoEnode = encoder.encode(imageFile.getBytes());
			// System.out.println(Arrays.toString(photoEnode));
			// String photoImg = new String(photoEnode, "UTF8");
			// System.out.println(photoEnode.length);
			// System.out.println(imageFile.getBytes().length);
			// System.out.println(photoImg);
			// System.out.println(Arrays.toString(imageFile.getInputStream().readAllBytes()));
			// System.out.println(imageFile.getInputStream().readAllBytes().length);

			// File convFile = new File("C:\\Users\\User\\Desktop\\리뷰 사진\\test.png");
			// convFile.createNewFile();
			// FileOutputStream fos = new FileOutputStream(convFile);
			// fos.write(imageFile.getBytes());
			// fos.close();

			//이 코드만 중요
			BufferedImage imageRgb=convertBytesToRGBImage(imageFile.getBytes());

			System.out.println(imageRgb.toString()+"aaaaa");
			
			int w = imageRgb.getWidth();
			int h = imageRgb.getHeight();
			
			//프론트단에서 이미지 resize해서 가져옴(30,30)
			int[] dataBuffInt = imageRgb.getRGB(0, 0, 30, 30, null, 0, w); 
			System.out.println(dataBuffInt.length);
			// Color c = new Color(dataBuffInt[1000],false);
		
			// System.out.println(c.getRed());   // = (dataBuffInt[100] >> 16) & 0xFF
			// System.out.println(c.getGreen()); // = (dataBuffInt[100] >> 8)  & 0xFF
			// System.out.println(c.getBlue());  // = (dataBuffInt[100] >> 0)  & 0xFF
			// System.out.println(c.getAlpha()); // = (dataBuffInt[100] >> 24) & 0xFF

			//(이미지갯수,너비,높이,rgb)
			float[][][][] input= rgbImageToArray(30,30,dataBuffInt);
			System.out.println(input[0].length);
			String filePath = "C:\\Users\\asme1\\git\\project3-1\\back\\test\\src\\main\\java\\com\\shinhan\\sbproject\\control\\data\\test.csv";
			

			try(SavedModelBundle b = SavedModelBundle.load("C:\\Users\\User\\git\\shinhanProject\\project3\\back\\test\\src\\main\\java\\com\\shinhan\\sbproject\\control\\aaa", "serve")){
				
				System.out.println("tttt");
				//create a session from the Bundle
				Session sess = b.session();
				
				//create an input Tensor
				//Tensorflow타입으로 만들어준다(파이썬은 없어도 되지만 java이기 떄문에)
				Tensor x = Tensor.create(input);
				System.out.println("tttt");
				//run the model and get the result
				float[][] y = sess.runner()
						.feed("conv2d_input", x) //input name(cmd참고)
						.fetch("dense_1/Softmax") //output name(cmd참고)
						.run()
						.get(0)
						.copyTo(new float[1][2]); //입력1개, 클래스 분류갯수(2...로봇이냐 아니냐)
				
				//print out the result
				for(int i=0; i<y.length;i++)
					System.out.println(y[i][1]+"결과: "+y[i][0]); 
					// [[0],[1]] -> others , [[1],[0]] -> robot이면
					// [0][1] = 1은 robot, [0][0] = 1은 others이다.
				}

		}else{
			System.out.println("data is null");
		}
		return "entity";
	}
	
	@GetMapping("/sample5")
	public String f6() throws IOException{
		String data = "";
		
		System.out.println("TensorFlow version : "+TensorFlow.version());
		
		String filePath = "C:\\Users\\asme1\\git\\project3-1\\back\\test\\src\\main\\java\\com\\shinhan\\sbproject\\control\\data\\test.csv";
		
		//get shape of data
		getDataSize(filePath);
		System.out.print("[number of row] ==> "+ ROW);
		System.out.println(" / [number of feature] ==> "+ FEATURE);
		float[][] testInput = new float[ROW][FEATURE];
		
		//insert csv data to matrix
		csvToMtrx(filePath, testInput);
		printMatrix(testInput);
		System.out.println("tttt");

		try(SavedModelBundle b = SavedModelBundle.load("C:\\Users\\asme1\\git\\project3-1\\back\\test\\src\\main\\java\\com\\shinhan\\sbproject\\control\\tmp\\fromPython", "serve")){
			
			System.out.println("tttt");
			//create a session from the Bundle
			Session sess = b.session();
			
			//create an input Tensor
			Tensor x = Tensor.create(testInput);
			System.out.println("tttt");
			//run the model and get the result
			float[][] y = sess.runner()
					.feed("x", x)
					.fetch("h")
					.run()
					.get(0)
					.copyTo(new float[ROW][1]);
			
			//print out the result
			for(int i=0; i<y.length;i++)
				System.out.println("결과: "+y[i][0]);
		}

		return data;
	}

	@GetMapping(value =  "/sample1" )
	public List<testVO> f1() {
		List<testVO> test = new ArrayList<testVO>();
		testepo.findAll().forEach(t->{
			test.add(t);
		});
		
		return test;
	}
	
	@PostMapping("/input")
	public List<testVO> f2(@RequestBody testVO test) {
		log.info(test.toString());
		testepo.save(test);
		return (List<testVO>)testepo.findAll();
	}
	@PutMapping("/update")
	public List<testVO> f3(@RequestBody testVO test) {
		
		log.info(test.toString());
		testepo.save(test);

		return (List<testVO>)testepo.findAll();
	}
	@DeleteMapping("/delete/{oishiku}")
	public List<testVO> f4(@PathVariable Integer oishiku){
		log.info(oishiku+"");
		testepo.deleteById(oishiku);
		return (List<testVO>)testepo.findAll();
	}
	
	public void getDataSize(String filePath) throws IOException {
		try {
			//read csv data file
			File csv = new File(filePath);
			BufferedReader br = new BufferedReader(new FileReader(csv));
			String line = "";
			String[] field = null;
			
			while((line=br.readLine())!=null) {
				field = line.split(",");
				ROW++;
			}
			
			FEATURE = field.length;
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
	}
	public void printMatrix(float[][] mtrx) {
		System.out.println("============ARRAY VALUES============");
		for(int i=0; i<mtrx.length; i++) {
			if(i==0)
				System.out.print("[");
			else
				System.out.println();
			for(int j =0; j<mtrx[i].length; j++) {
				System.out.print("["+mtrx[i][j]+"]");
			}
		}
		System.out.println("]");
	}
	public void csvToMtrx(String filePath, float[][] mtrx) throws IOException {
		try {
			//read csv data file
			File csv = new File(filePath);
			BufferedReader br = new BufferedReader(new FileReader(csv));
			String line = "";
			String[] field = null;
			
			for(int i=0; i<mtrx.length; i++) {
				if((line=br.readLine())!= null) {
					field = line.split(",");
					for(int j=0; j<field.length; j++) {
						mtrx[i][j] = Float.parseFloat(field[j]);
					}
				}
			}
		}catch (FileNotFoundException e) {
			e.printStackTrace();
		}
	}

	public BufferedImage convertBytesToRGBImage(byte[] bytes) throws IOException {
		// Read the byte array into a BufferedImage
		ByteArrayInputStream bis = new ByteArrayInputStream(bytes);
		BufferedImage bufferedImage = ImageIO.read(bis);

		// Ensure that the image is in the correct format (RGB)
		BufferedImage convertedImage = new BufferedImage(bufferedImage.getWidth(), bufferedImage.getHeight(), BufferedImage.TYPE_INT_RGB);
		convertedImage.createGraphics().drawImage(bufferedImage, 0, 0, null);

		return convertedImage;

    }
	public float[][][][] rgbImageToArray(int w, int h, int[] dataBuffInt){
		float[][][][] result = new float[1][w][h][3];
		for(int i=0; i<w;i++){
			for(int j=0; j<h;j++){
				Color color = new Color(dataBuffInt[i*j],false);
				result[0][i][j][0]=color.getRed();
				result[0][i][j][1]=color.getGreen();
				result[0][i][j][2]=color.getBlue();
			}
		}
		return result;
	}
	
}
