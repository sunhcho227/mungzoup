░╪	
╟/Щ/
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	АР
Ы
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
E
AssignAddVariableOp
resource
value"dtype"
dtypetypeИ
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
Ъ
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

└
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

┐
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
╘
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
ю
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
р
ResourceApplyAdam
var
m
v
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( И
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
У
#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
Ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshapeИ
9
VarIsInitializedOp
resource
is_initialized
И
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.14.02v1.14.0-rc1-22-gaf24dc91b5╞▌

conv2d_inputPlaceholder*
dtype0*/
_output_shapes
:           *$
shape:           
й
.conv2d/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*%
valueB"             * 
_class
loc:@conv2d/kernel*
dtype0
У
,conv2d/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *OS╛* 
_class
loc:@conv2d/kernel*
dtype0
У
,conv2d/kernel/Initializer/random_uniform/maxConst*
valueB
 *OS>* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
Ё
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*&
_output_shapes
: *

seed *
T0* 
_class
loc:@conv2d/kernel
╥
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
ь
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub*&
_output_shapes
: *
T0* 
_class
loc:@conv2d/kernel
▐
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*&
_output_shapes
: *
T0* 
_class
loc:@conv2d/kernel
▒
conv2d/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d/kernel* 
_class
loc:@conv2d/kernel*
	container *
shape: 
k
.conv2d/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/kernel*
_output_shapes
: 
Р
conv2d/kernel/AssignAssignVariableOpconv2d/kernel(conv2d/kernel/Initializer/random_uniform* 
_class
loc:@conv2d/kernel*
dtype0
Щ
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
: * 
_class
loc:@conv2d/kernel*
dtype0
К
conv2d/bias/Initializer/zerosConst*
_output_shapes
: *
valueB *    *
_class
loc:@conv2d/bias*
dtype0
Я
conv2d/biasVarHandleOp*
_output_shapes
: *
shared_nameconv2d/bias*
_class
loc:@conv2d/bias*
	container *
shape: *
dtype0
g
,conv2d/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/bias*
_output_shapes
: 

conv2d/bias/AssignAssignVariableOpconv2d/biasconv2d/bias/Initializer/zeros*
_class
loc:@conv2d/bias*
dtype0
З
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
e
conv2d/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0
r
conv2d/Conv2D/ReadVariableOpReadVariableOpconv2d/kernel*
dtype0*&
_output_shapes
: 
Е
conv2d/Conv2DConv2Dconv2d_inputconv2d/Conv2D/ReadVariableOp*
paddingVALID*/
_output_shapes
:          *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
explicit_paddings
 
e
conv2d/BiasAdd/ReadVariableOpReadVariableOpconv2d/bias*
dtype0*
_output_shapes
: 
Ш
conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:          
]
conv2d/ReluReluconv2d/BiasAdd*
T0*/
_output_shapes
:          
║
max_pooling2d/MaxPoolMaxPoolconv2d/Relu*
paddingVALID*/
_output_shapes
:          *
T0*
data_formatNHWC*
strides
*
ksize

н
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*%
valueB"          @   *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_1/kernel/Initializer/random_uniform/minConst*
valueB
 *лкк╜*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *лкк=*"
_class
loc:@conv2d_1/kernel*
dtype0
Ў
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
: @*

seed *
T0*"
_class
loc:@conv2d_1/kernel*
seed2 
┌
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@conv2d_1/kernel
Ї
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*&
_output_shapes
: @*
T0*"
_class
loc:@conv2d_1/kernel
ц
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*&
_output_shapes
: @*
T0*"
_class
loc:@conv2d_1/kernel
╖
conv2d_1/kernelVarHandleOp*
_output_shapes
: * 
shared_nameconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
	container *
shape: @*
dtype0
o
0conv2d_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 
Ш
conv2d_1/kernel/AssignAssignVariableOpconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_1/kernel*
dtype0
Я
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
dtype0*&
_output_shapes
: @
О
conv2d_1/bias/Initializer/zerosConst*
_output_shapes
:@*
valueB@*    * 
_class
loc:@conv2d_1/bias*
dtype0
е
conv2d_1/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_1/bias* 
_class
loc:@conv2d_1/bias*
	container *
shape:@
k
.conv2d_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/bias*
_output_shapes
: 
З
conv2d_1/bias/AssignAssignVariableOpconv2d_1/biasconv2d_1/bias/Initializer/zeros* 
_class
loc:@conv2d_1/bias*
dtype0
Н
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias* 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
:@
g
conv2d_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_1/Conv2D/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
: @*
dtype0
Т
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPoolconv2d_1/Conv2D/ReadVariableOp*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:         @
i
conv2d_1/BiasAdd/ReadVariableOpReadVariableOpconv2d_1/bias*
dtype0*
_output_shapes
:@
Ю
conv2d_1/BiasAddBiasAddconv2d_1/Conv2Dconv2d_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:         @
a
conv2d_1/ReluReluconv2d_1/BiasAdd*
T0*/
_output_shapes
:         @
╛
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu*
paddingVALID*/
_output_shapes
:         @*
T0*
data_formatNHWC*
strides
*
ksize

н
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*%
valueB"      @   @   *"
_class
loc:@conv2d_2/kernel*
dtype0
Ч
.conv2d_2/kernel/Initializer/random_uniform/minConst*
valueB
 *:═У╜*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_2/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *:═У=*"
_class
loc:@conv2d_2/kernel*
dtype0
Ў
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*&
_output_shapes
:@@*

seed *
T0*"
_class
loc:@conv2d_2/kernel
┌
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@conv2d_2/kernel
Ї
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:@@
ц
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:@@
╖
conv2d_2/kernelVarHandleOp*
dtype0*
_output_shapes
: * 
shared_nameconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel*
	container *
shape:@@
o
0conv2d_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 
Ш
conv2d_2/kernel/AssignAssignVariableOpconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_2/kernel*
dtype0
Я
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:@@*"
_class
loc:@conv2d_2/kernel*
dtype0
О
conv2d_2/bias/Initializer/zerosConst*
valueB@*    * 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
:@
е
conv2d_2/biasVarHandleOp*
_output_shapes
: *
shared_nameconv2d_2/bias* 
_class
loc:@conv2d_2/bias*
	container *
shape:@*
dtype0
k
.conv2d_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/bias*
_output_shapes
: 
З
conv2d_2/bias/AssignAssignVariableOpconv2d_2/biasconv2d_2/bias/Initializer/zeros* 
_class
loc:@conv2d_2/bias*
dtype0
Н
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias* 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
:@
g
conv2d_2/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0
v
conv2d_2/Conv2D/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:@@*
dtype0
Ф
conv2d_2/Conv2DConv2Dmax_pooling2d_1/MaxPoolconv2d_2/Conv2D/ReadVariableOp*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID*/
_output_shapes
:         @
i
conv2d_2/BiasAdd/ReadVariableOpReadVariableOpconv2d_2/bias*
dtype0*
_output_shapes
:@
Ю
conv2d_2/BiasAddBiasAddconv2d_2/Conv2Dconv2d_2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:         @
a
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*/
_output_shapes
:         @
Z
flatten/ShapeShapeconv2d_2/Relu*
_output_shapes
:*
T0*
out_type0
e
flatten/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
g
flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
g
flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
б
flatten/strided_sliceStridedSliceflatten/Shapeflatten/strided_slice/stackflatten/strided_slice/stack_1flatten/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
b
flatten/Reshape/shape/1Const*
valueB :
         *
dtype0*
_output_shapes
: 
З
flatten/Reshape/shapePackflatten/strided_sliceflatten/Reshape/shape/1*
_output_shapes
:*
T0*

axis *
N
Б
flatten/ReshapeReshapeconv2d_2/Reluflatten/Reshape/shape*(
_output_shapes
:         А*
T0*
Tshape0
Я
-dense/kernel/Initializer/random_uniform/shapeConst*
valueB"   А   *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:
С
+dense/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *:═У╜*
_class
loc:@dense/kernel*
dtype0
С
+dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *:═У=*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
ч
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
АА*

seed *
T0*
_class
loc:@dense/kernel*
seed2 *
dtype0
╬
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*
_class
loc:@dense/kernel
т
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
АА
╘
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
АА
и
dense/kernelVarHandleOp*
	container *
shape:
АА*
dtype0*
_output_shapes
: *
shared_namedense/kernel*
_class
loc:@dense/kernel
i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 
М
dense/kernel/AssignAssignVariableOpdense/kernel'dense/kernel/Initializer/random_uniform*
_class
loc:@dense/kernel*
dtype0
Р
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
АА*
_class
loc:@dense/kernel*
dtype0
К
dense/bias/Initializer/zerosConst*
valueBА*    *
_class
loc:@dense/bias*
dtype0*
_output_shapes	
:А
Э

dense/biasVarHandleOp*
_output_shapes
: *
shared_name
dense/bias*
_class
loc:@dense/bias*
	container *
shape:А*
dtype0
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
{
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
_class
loc:@dense/bias*
dtype0
Е
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_class
loc:@dense/bias*
dtype0*
_output_shapes	
:А
j
dense/MatMul/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
АА*
dtype0
Э
dense/MatMulMatMulflatten/Reshapedense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:         А*
transpose_a( *
transpose_b( 
d
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes	
:А
О
dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*(
_output_shapes
:         А
T

dense/ReluReludense/BiasAdd*
T0*(
_output_shapes
:         А
\
keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
|
keras_learning_phasePlaceholderWithDefaultkeras_learning_phase/input*
_output_shapes
: *
shape: *
dtype0

l
dropout/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

Y
dropout/cond/switch_tIdentitydropout/cond/Switch:1*
T0
*
_output_shapes
: 
W
dropout/cond/switch_fIdentitydropout/cond/Switch*
_output_shapes
: *
T0

W
dropout/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
v
dropout/cond/dropout/rateConst^dropout/cond/switch_t*
_output_shapes
: *
valueB
 *   ?*
dtype0
}
dropout/cond/dropout/ShapeShape#dropout/cond/dropout/Shape/Switch:1*
_output_shapes
:*
T0*
out_type0
│
!dropout/cond/dropout/Shape/SwitchSwitch
dense/Reludropout/cond/pred_id*<
_output_shapes*
(:         А:         А*
T0*
_class
loc:@dense/Relu
Д
'dropout/cond/dropout/random_uniform/minConst^dropout/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
Д
'dropout/cond/dropout/random_uniform/maxConst^dropout/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
╖
1dropout/cond/dropout/random_uniform/RandomUniformRandomUniformdropout/cond/dropout/Shape*(
_output_shapes
:         А*
seed2 *

seed *
T0*
dtype0
б
'dropout/cond/dropout/random_uniform/subSub'dropout/cond/dropout/random_uniform/max'dropout/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
╜
'dropout/cond/dropout/random_uniform/mulMul1dropout/cond/dropout/random_uniform/RandomUniform'dropout/cond/dropout/random_uniform/sub*(
_output_shapes
:         А*
T0
п
#dropout/cond/dropout/random_uniformAdd'dropout/cond/dropout/random_uniform/mul'dropout/cond/dropout/random_uniform/min*(
_output_shapes
:         А*
T0
w
dropout/cond/dropout/sub/xConst^dropout/cond/switch_t*
_output_shapes
: *
valueB
 *  А?*
dtype0
w
dropout/cond/dropout/subSubdropout/cond/dropout/sub/xdropout/cond/dropout/rate*
_output_shapes
: *
T0
{
dropout/cond/dropout/truediv/xConst^dropout/cond/switch_t*
_output_shapes
: *
valueB
 *  А?*
dtype0
В
dropout/cond/dropout/truedivRealDivdropout/cond/dropout/truediv/xdropout/cond/dropout/sub*
_output_shapes
: *
T0
д
!dropout/cond/dropout/GreaterEqualGreaterEqual#dropout/cond/dropout/random_uniformdropout/cond/dropout/rate*(
_output_shapes
:         А*
T0
Х
dropout/cond/dropout/mulMul#dropout/cond/dropout/Shape/Switch:1dropout/cond/dropout/truediv*
T0*(
_output_shapes
:         А
Ц
dropout/cond/dropout/CastCast!dropout/cond/dropout/GreaterEqual*

SrcT0
*
Truncate( *(
_output_shapes
:         А*

DstT0
Й
dropout/cond/dropout/mul_1Muldropout/cond/dropout/muldropout/cond/dropout/Cast*(
_output_shapes
:         А*
T0
r
dropout/cond/IdentityIdentitydropout/cond/Identity/Switch*(
_output_shapes
:         А*
T0
о
dropout/cond/Identity/SwitchSwitch
dense/Reludropout/cond/pred_id*
T0*
_class
loc:@dense/Relu*<
_output_shapes*
(:         А:         А
М
dropout/cond/MergeMergedropout/cond/Identitydropout/cond/dropout/mul_1**
_output_shapes
:         А: *
T0*
N
г
/dense_1/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"А   @   *!
_class
loc:@dense_1/kernel*
dtype0
Х
-dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *є5╛*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
Х
-dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *є5>*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
ь
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
_output_shapes
:	А@*

seed *
T0*!
_class
loc:@dense_1/kernel*
seed2 *
dtype0
╓
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
щ
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А@
█
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
:	А@*
T0*!
_class
loc:@dense_1/kernel
н
dense_1/kernelVarHandleOp*
shared_namedense_1/kernel*!
_class
loc:@dense_1/kernel*
	container *
shape:	А@*
dtype0*
_output_shapes
: 
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 
Ф
dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*!
_class
loc:@dense_1/kernel*
dtype0
Х
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:	А@
М
dense_1/bias/Initializer/zerosConst*
_output_shapes
:@*
valueB@*    *
_class
loc:@dense_1/bias*
dtype0
в
dense_1/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense_1/bias*
_class
loc:@dense_1/bias*
	container *
shape:@
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 
Г
dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
_class
loc:@dense_1/bias*
dtype0
К
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:@*
_class
loc:@dense_1/bias*
dtype0
m
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	А@*
dtype0
г
dense_1/MatMulMatMuldropout/cond/Mergedense_1/MatMul/ReadVariableOp*'
_output_shapes
:         @*
transpose_a( *
transpose_b( *
T0
g
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:@*
dtype0
У
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:         @
W
dense_1/ReluReludense_1/BiasAdd*'
_output_shapes
:         @*
T0
n
dropout_1/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_1/cond/switch_tIdentitydropout_1/cond/Switch:1*
_output_shapes
: *
T0

[
dropout_1/cond/switch_fIdentitydropout_1/cond/Switch*
T0
*
_output_shapes
: 
Y
dropout_1/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
z
dropout_1/cond/dropout/rateConst^dropout_1/cond/switch_t*
_output_shapes
: *
valueB
 *   ?*
dtype0
Б
dropout_1/cond/dropout/ShapeShape%dropout_1/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
╣
#dropout_1/cond/dropout/Shape/SwitchSwitchdense_1/Reludropout_1/cond/pred_id*:
_output_shapes(
&:         @:         @*
T0*
_class
loc:@dense_1/Relu
И
)dropout_1/cond/dropout/random_uniform/minConst^dropout_1/cond/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0
И
)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
║
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*
T0*
dtype0*'
_output_shapes
:         @*
seed2 *

seed 
з
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
┬
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*'
_output_shapes
:         @*
T0
┤
%dropout_1/cond/dropout/random_uniformAdd)dropout_1/cond/dropout/random_uniform/mul)dropout_1/cond/dropout/random_uniform/min*
T0*'
_output_shapes
:         @
{
dropout_1/cond/dropout/sub/xConst^dropout_1/cond/switch_t*
_output_shapes
: *
valueB
 *  А?*
dtype0
}
dropout_1/cond/dropout/subSubdropout_1/cond/dropout/sub/xdropout_1/cond/dropout/rate*
_output_shapes
: *
T0

 dropout_1/cond/dropout/truediv/xConst^dropout_1/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
И
dropout_1/cond/dropout/truedivRealDiv dropout_1/cond/dropout/truediv/xdropout_1/cond/dropout/sub*
_output_shapes
: *
T0
й
#dropout_1/cond/dropout/GreaterEqualGreaterEqual%dropout_1/cond/dropout/random_uniformdropout_1/cond/dropout/rate*
T0*'
_output_shapes
:         @
Ъ
dropout_1/cond/dropout/mulMul%dropout_1/cond/dropout/Shape/Switch:1dropout_1/cond/dropout/truediv*'
_output_shapes
:         @*
T0
Щ
dropout_1/cond/dropout/CastCast#dropout_1/cond/dropout/GreaterEqual*

SrcT0
*
Truncate( *'
_output_shapes
:         @*

DstT0
О
dropout_1/cond/dropout/mul_1Muldropout_1/cond/dropout/muldropout_1/cond/dropout/Cast*'
_output_shapes
:         @*
T0
u
dropout_1/cond/IdentityIdentitydropout_1/cond/Identity/Switch*
T0*'
_output_shapes
:         @
┤
dropout_1/cond/Identity/SwitchSwitchdense_1/Reludropout_1/cond/pred_id*:
_output_shapes(
&:         @:         @*
T0*
_class
loc:@dense_1/Relu
С
dropout_1/cond/MergeMergedropout_1/cond/Identitydropout_1/cond/dropout/mul_1*
T0*
N*)
_output_shapes
:         @: 
г
/dense_2/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"@      *!
_class
loc:@dense_2/kernel*
dtype0
Х
-dense_2/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *┴╓Ф╛*!
_class
loc:@dense_2/kernel*
dtype0
Х
-dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *┴╓Ф>*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
ы
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*
_output_shapes

:@*

seed *
T0*!
_class
loc:@dense_2/kernel*
seed2 *
dtype0
╓
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*!
_class
loc:@dense_2/kernel
ш
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes

:@
┌
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes

:@
м
dense_2/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense_2/kernel*!
_class
loc:@dense_2/kernel*
	container *
shape
:@
m
/dense_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/kernel*
_output_shapes
: 
Ф
dense_2/kernel/AssignAssignVariableOpdense_2/kernel)dense_2/kernel/Initializer/random_uniform*!
_class
loc:@dense_2/kernel*
dtype0
Ф
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes

:@
М
dense_2/bias/Initializer/zerosConst*
_output_shapes
:*
valueB*    *
_class
loc:@dense_2/bias*
dtype0
в
dense_2/biasVarHandleOp*
shared_namedense_2/bias*
_class
loc:@dense_2/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
i
-dense_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/bias*
_output_shapes
: 
Г
dense_2/bias/AssignAssignVariableOpdense_2/biasdense_2/bias/Initializer/zeros*
_class
loc:@dense_2/bias*
dtype0
К
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
_class
loc:@dense_2/bias*
dtype0
l
dense_2/MatMul/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:@*
dtype0
е
dense_2/MatMulMatMuldropout_1/cond/Mergedense_2/MatMul/ReadVariableOp*'
_output_shapes
:         *
transpose_a( *
transpose_b( *
T0
g
dense_2/BiasAdd/ReadVariableOpReadVariableOpdense_2/bias*
dtype0*
_output_shapes
:
У
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/BiasAdd/ReadVariableOp*'
_output_shapes
:         *
T0*
data_formatNHWC
]
dense_2/SoftmaxSoftmaxdense_2/BiasAdd*
T0*'
_output_shapes
:         
Г
dense_2_targetPlaceholder*
dtype0*0
_output_shapes
:                  *%
shape:                  
v
total/Initializer/zerosConst*
valueB
 *    *
_class

loc:@total*
dtype0*
_output_shapes
: 
Й
totalVarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nametotal*
_class

loc:@total
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
g
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
_class

loc:@total*
dtype0
q
total/Read/ReadVariableOpReadVariableOptotal*
_class

loc:@total*
dtype0*
_output_shapes
: 
v
count/Initializer/zerosConst*
valueB
 *    *
_class

loc:@count*
dtype0*
_output_shapes
: 
Й
countVarHandleOp*
dtype0*
_output_shapes
: *
shared_namecount*
_class

loc:@count*
	container *
shape: 
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
g
count/AssignAssignVariableOpcountcount/Initializer/zeros*
_class

loc:@count*
dtype0
q
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
_class

loc:@count*
dtype0
|
metrics/acc/SqueezeSqueezedense_2_target*#
_output_shapes
:         *
squeeze_dims

         *
T0
g
metrics/acc/ArgMax/dimensionConst*
_output_shapes
: *
valueB :
         *
dtype0
Ш
metrics/acc/ArgMaxArgMaxdense_2/Softmaxmetrics/acc/ArgMax/dimension*
T0*
output_type0	*#
_output_shapes
:         *

Tidx0
y
metrics/acc/CastCastmetrics/acc/ArgMax*#
_output_shapes
:         *

DstT0*

SrcT0	*
Truncate( 
o
metrics/acc/EqualEqualmetrics/acc/Squeezemetrics/acc/Cast*
T0*#
_output_shapes
:         
z
metrics/acc/Cast_1Castmetrics/acc/Equal*#
_output_shapes
:         *

DstT0*

SrcT0
*
Truncate( 
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
{
metrics/acc/SumSummetrics/acc/Cast_1metrics/acc/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
[
metrics/acc/AssignAddVariableOpAssignAddVariableOptotalmetrics/acc/Sum*
dtype0
М
metrics/acc/ReadVariableOpReadVariableOptotal ^metrics/acc/AssignAddVariableOp^metrics/acc/Sum*
_output_shapes
: *
dtype0
]
metrics/acc/SizeSizemetrics/acc/Cast_1*
T0*
out_type0*
_output_shapes
: 
l
metrics/acc/Cast_2Castmetrics/acc/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
В
!metrics/acc/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/acc/Cast_2 ^metrics/acc/AssignAddVariableOp*
dtype0
а
metrics/acc/ReadVariableOp_1ReadVariableOpcount ^metrics/acc/AssignAddVariableOp"^metrics/acc/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
З
%metrics/acc/div_no_nan/ReadVariableOpReadVariableOptotal"^metrics/acc/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
Й
'metrics/acc/div_no_nan/ReadVariableOp_1ReadVariableOpcount"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
У
metrics/acc/div_no_nanDivNoNan%metrics/acc/div_no_nan/ReadVariableOp'metrics/acc/div_no_nan/ReadVariableOp_1*
_output_shapes
: *
T0
Y
metrics/acc/IdentityIdentitymetrics/acc/div_no_nan*
_output_shapes
: *
T0
r
loss/dense_2_loss/Reshape/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
С
loss/dense_2_loss/ReshapeReshapedense_2_targetloss/dense_2_loss/Reshape/shape*#
_output_shapes
:         *
T0*
Tshape0
Ж
loss/dense_2_loss/CastCastloss/dense_2_loss/Reshape*#
_output_shapes
:         *

DstT0	*

SrcT0*
Truncate( 
r
!loss/dense_2_loss/Reshape_1/shapeConst*
_output_shapes
:*
valueB"       *
dtype0
Ъ
loss/dense_2_loss/Reshape_1Reshapedense_2/BiasAdd!loss/dense_2_loss/Reshape_1/shape*
T0*
Tshape0*'
_output_shapes
:         
С
;loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShapeloss/dense_2_loss/Cast*
_output_shapes
:*
T0	*
out_type0
Е
Yloss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsloss/dense_2_loss/Reshape_1loss/dense_2_loss/Cast*
T0*6
_output_shapes$
":         :         *
Tlabels0	
j
%loss/dense_2_loss/weighted_loss/ConstConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Ч
Tloss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
valueB *
dtype0
Х
Sloss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
ь
Sloss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/shapeShapeYloss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
_output_shapes
:*
T0*
out_type0
Ф
Rloss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/rankConst*
_output_shapes
: *
value	B :*
dtype0
j
bloss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
┐
Aloss/dense_2_loss/weighted_loss/broadcast_weights/ones_like/ShapeShapeYloss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsc^loss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
ы
Aloss/dense_2_loss/weighted_loss/broadcast_weights/ones_like/ConstConstc^loss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
valueB
 *  А?*
dtype0
Й
;loss/dense_2_loss/weighted_loss/broadcast_weights/ones_likeFillAloss/dense_2_loss/weighted_loss/broadcast_weights/ones_like/ShapeAloss/dense_2_loss/weighted_loss/broadcast_weights/ones_like/Const*
T0*

index_type0*#
_output_shapes
:         
╩
1loss/dense_2_loss/weighted_loss/broadcast_weightsMul%loss/dense_2_loss/weighted_loss/Const;loss/dense_2_loss/weighted_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:         
ц
#loss/dense_2_loss/weighted_loss/MulMulYloss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits1loss/dense_2_loss/weighted_loss/broadcast_weights*
T0*#
_output_shapes
:         
a
loss/dense_2_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ш
loss/dense_2_loss/SumSum#loss/dense_2_loss/weighted_loss/Mulloss/dense_2_loss/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
|
loss/dense_2_loss/num_elementsSize#loss/dense_2_loss/weighted_loss/Mul*
_output_shapes
: *
T0*
out_type0
Л
#loss/dense_2_loss/num_elements/CastCastloss/dense_2_loss/num_elements*
_output_shapes
: *

DstT0*

SrcT0*
Truncate( 
\
loss/dense_2_loss/Const_1Const*
valueB *
dtype0*
_output_shapes
: 
О
loss/dense_2_loss/Sum_1Sumloss/dense_2_loss/Sumloss/dense_2_loss/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
В
loss/dense_2_loss/valueDivNoNanloss/dense_2_loss/Sum_1#loss/dense_2_loss/num_elements/Cast*
T0*
_output_shapes
: 
O

loss/mul/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
U
loss/mulMul
loss/mul/xloss/dense_2_loss/value*
_output_shapes
: *
T0
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
shape: *
dtype0
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
shape: *
dtype0
Ф
save/SaveV2/tensor_namesConst*
_output_shapes
:*╟
value╜B║Bconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernel*
dtype0
{
save/SaveV2/shape_and_slicesConst*
_output_shapes
:*+
value"B B B B B B B B B B B B B *
dtype0
Ч
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesconv2d/bias/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp*
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
Ч
save/RestoreV2/tensor_namesConst*
_output_shapes
:*╟
value╜B║Bconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernel*
dtype0
~
save/RestoreV2/shape_and_slicesConst*
_output_shapes
:*+
value"B B B B B B B B B B B B B *
dtype0
╟
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*D
_output_shapes2
0::::::::::::*
dtypes
2
L
save/IdentityIdentitysave/RestoreV2*
T0*
_output_shapes
:
R
save/AssignVariableOpAssignVariableOpconv2d/biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:1*
_output_shapes
:*
T0
X
save/AssignVariableOp_1AssignVariableOpconv2d/kernelsave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:2*
T0*
_output_shapes
:
X
save/AssignVariableOp_2AssignVariableOpconv2d_1/biassave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:3*
T0*
_output_shapes
:
Z
save/AssignVariableOp_3AssignVariableOpconv2d_1/kernelsave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:4*
_output_shapes
:*
T0
X
save/AssignVariableOp_4AssignVariableOpconv2d_2/biassave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:5*
T0*
_output_shapes
:
Z
save/AssignVariableOp_5AssignVariableOpconv2d_2/kernelsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:6*
_output_shapes
:*
T0
U
save/AssignVariableOp_6AssignVariableOp
dense/biassave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:7*
_output_shapes
:*
T0
W
save/AssignVariableOp_7AssignVariableOpdense/kernelsave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:8*
T0*
_output_shapes
:
W
save/AssignVariableOp_8AssignVariableOpdense_1/biassave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:9*
_output_shapes
:*
T0
Y
save/AssignVariableOp_9AssignVariableOpdense_1/kernelsave/Identity_9*
dtype0
R
save/Identity_10Identitysave/RestoreV2:10*
T0*
_output_shapes
:
Y
save/AssignVariableOp_10AssignVariableOpdense_2/biassave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:11*
_output_shapes
:*
T0
[
save/AssignVariableOp_11AssignVariableOpdense_2/kernelsave/Identity_11*
dtype0
╨
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
Ю
initNoOp^conv2d/bias/Assign^conv2d/kernel/Assign^conv2d_1/bias/Assign^conv2d_1/kernel/Assign^conv2d_2/bias/Assign^conv2d_2/kernel/Assign^dense/bias/Assign^dense/kernel/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign
W
Adam/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
]
Adam/gradients/grad_ys_0Const*
valueB
 *  А?*
dtype0*
_output_shapes
: 
~
Adam/gradients/FillFillAdam/gradients/ShapeAdam/gradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0
v
 Adam/gradients/loss/mul_grad/MulMulAdam/gradients/Fillloss/dense_2_loss/value*
T0*
_output_shapes
: 
k
"Adam/gradients/loss/mul_grad/Mul_1MulAdam/gradients/Fill
loss/mul/x*
T0*
_output_shapes
: 
t
1Adam/gradients/loss/dense_2_loss/value_grad/ShapeConst*
_output_shapes
: *
valueB *
dtype0
v
3Adam/gradients/loss/dense_2_loss/value_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
 
AAdam/gradients/loss/dense_2_loss/value_grad/BroadcastGradientArgsBroadcastGradientArgs1Adam/gradients/loss/dense_2_loss/value_grad/Shape3Adam/gradients/loss/dense_2_loss/value_grad/Shape_1*2
_output_shapes 
:         :         *
T0
м
6Adam/gradients/loss/dense_2_loss/value_grad/div_no_nanDivNoNan"Adam/gradients/loss/mul_grad/Mul_1#loss/dense_2_loss/num_elements/Cast*
_output_shapes
: *
T0
я
/Adam/gradients/loss/dense_2_loss/value_grad/SumSum6Adam/gradients/loss/dense_2_loss/value_grad/div_no_nanAAdam/gradients/loss/dense_2_loss/value_grad/BroadcastGradientArgs*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
╤
3Adam/gradients/loss/dense_2_loss/value_grad/ReshapeReshape/Adam/gradients/loss/dense_2_loss/value_grad/Sum1Adam/gradients/loss/dense_2_loss/value_grad/Shape*
_output_shapes
: *
T0*
Tshape0
p
/Adam/gradients/loss/dense_2_loss/value_grad/NegNegloss/dense_2_loss/Sum_1*
T0*
_output_shapes
: 
╗
8Adam/gradients/loss/dense_2_loss/value_grad/div_no_nan_1DivNoNan/Adam/gradients/loss/dense_2_loss/value_grad/Neg#loss/dense_2_loss/num_elements/Cast*
_output_shapes
: *
T0
─
8Adam/gradients/loss/dense_2_loss/value_grad/div_no_nan_2DivNoNan8Adam/gradients/loss/dense_2_loss/value_grad/div_no_nan_1#loss/dense_2_loss/num_elements/Cast*
_output_shapes
: *
T0
╡
/Adam/gradients/loss/dense_2_loss/value_grad/mulMul"Adam/gradients/loss/mul_grad/Mul_18Adam/gradients/loss/dense_2_loss/value_grad/div_no_nan_2*
T0*
_output_shapes
: 
ь
1Adam/gradients/loss/dense_2_loss/value_grad/Sum_1Sum/Adam/gradients/loss/dense_2_loss/value_grad/mulCAdam/gradients/loss/dense_2_loss/value_grad/BroadcastGradientArgs:1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
╫
5Adam/gradients/loss/dense_2_loss/value_grad/Reshape_1Reshape1Adam/gradients/loss/dense_2_loss/value_grad/Sum_13Adam/gradients/loss/dense_2_loss/value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
|
9Adam/gradients/loss/dense_2_loss/Sum_1_grad/Reshape/shapeConst*
_output_shapes
: *
valueB *
dtype0
▌
3Adam/gradients/loss/dense_2_loss/Sum_1_grad/ReshapeReshape3Adam/gradients/loss/dense_2_loss/value_grad/Reshape9Adam/gradients/loss/dense_2_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
t
1Adam/gradients/loss/dense_2_loss/Sum_1_grad/ConstConst*
_output_shapes
: *
valueB *
dtype0
╙
0Adam/gradients/loss/dense_2_loss/Sum_1_grad/TileTile3Adam/gradients/loss/dense_2_loss/Sum_1_grad/Reshape1Adam/gradients/loss/dense_2_loss/Sum_1_grad/Const*

Tmultiples0*
T0*
_output_shapes
: 
Б
7Adam/gradients/loss/dense_2_loss/Sum_grad/Reshape/shapeConst*
_output_shapes
:*
valueB:*
dtype0
┌
1Adam/gradients/loss/dense_2_loss/Sum_grad/ReshapeReshape0Adam/gradients/loss/dense_2_loss/Sum_1_grad/Tile7Adam/gradients/loss/dense_2_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
Т
/Adam/gradients/loss/dense_2_loss/Sum_grad/ShapeShape#loss/dense_2_loss/weighted_loss/Mul*
T0*
out_type0*
_output_shapes
:
┌
.Adam/gradients/loss/dense_2_loss/Sum_grad/TileTile1Adam/gradients/loss/dense_2_loss/Sum_grad/Reshape/Adam/gradients/loss/dense_2_loss/Sum_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:         
╓
=Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/ShapeShapeYloss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
_output_shapes
:*
T0*
out_type0
░
?Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Shape_1Shape1loss/dense_2_loss/weighted_loss/broadcast_weights*
_output_shapes
:*
T0*
out_type0
г
MAdam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs=Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Shape?Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Shape_1*2
_output_shapes 
:         :         *
T0
╙
;Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/MulMul.Adam/gradients/loss/dense_2_loss/Sum_grad/Tile1loss/dense_2_loss/weighted_loss/broadcast_weights*#
_output_shapes
:         *
T0
О
;Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/SumSum;Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/MulMAdam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
В
?Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/ReshapeReshape;Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Sum=Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Shape*#
_output_shapes
:         *
T0*
Tshape0
¤
=Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Mul_1MulYloss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits.Adam/gradients/loss/dense_2_loss/Sum_grad/Tile*
T0*#
_output_shapes
:         
Ф
=Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Sum_1Sum=Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Mul_1OAdam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
И
AAdam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Reshape_1Reshape=Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Sum_1?Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Shape_1*#
_output_shapes
:         *
T0*
Tshape0
╡
Adam/gradients/zeros_like	ZerosLike[loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:         
╓
}Adam/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradient[loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:         *┤
messageиеCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
╟
|Adam/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
dtype0*
_output_shapes
: 
Г
xAdam/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims?Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Reshape|Adam/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*'
_output_shapes
:         *

Tdim0
г
qAdam/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulxAdam/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims}Adam/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*'
_output_shapes
:         *
T0
Д
5Adam/gradients/loss/dense_2_loss/Reshape_1_grad/ShapeShapedense_2/BiasAdd*
_output_shapes
:*
T0*
out_type0
м
7Adam/gradients/loss/dense_2_loss/Reshape_1_grad/ReshapeReshapeqAdam/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul5Adam/gradients/loss/dense_2_loss/Reshape_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
│
/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad7Adam/gradients/loss/dense_2_loss/Reshape_1_grad/Reshape*
_output_shapes
:*
T0*
data_formatNHWC
у
)Adam/gradients/dense_2/MatMul_grad/MatMulMatMul7Adam/gradients/loss/dense_2_loss/Reshape_1_grad/Reshapedense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         @*
transpose_a( *
transpose_b(
╙
+Adam/gradients/dense_2/MatMul_grad/MatMul_1MatMuldropout_1/cond/Merge7Adam/gradients/loss/dense_2_loss/Reshape_1_grad/Reshape*
T0*
_output_shapes

:@*
transpose_a(*
transpose_b( 
В
2Adam/gradients/dropout_1/cond/Merge_grad/cond_gradSwitch)Adam/gradients/dense_2/MatMul_grad/MatMuldropout_1/cond/pred_id*:
_output_shapes(
&:         @:         @*
T0*<
_class2
0.loc:@Adam/gradients/dense_2/MatMul_grad/MatMul
Р
6Adam/gradients/dropout_1/cond/dropout/mul_1_grad/ShapeShapedropout_1/cond/dropout/mul*
T0*
out_type0*
_output_shapes
:
У
8Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1Shapedropout_1/cond/dropout/Cast*
_output_shapes
:*
T0*
out_type0
О
FAdam/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs6Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape8Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1*2
_output_shapes 
:         :         *
T0
└
4Adam/gradients/dropout_1/cond/dropout/mul_1_grad/MulMul4Adam/gradients/dropout_1/cond/Merge_grad/cond_grad:1dropout_1/cond/dropout/Cast*'
_output_shapes
:         @*
T0
∙
4Adam/gradients/dropout_1/cond/dropout/mul_1_grad/SumSum4Adam/gradients/dropout_1/cond/dropout/mul_1_grad/MulFAdam/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
ё
8Adam/gradients/dropout_1/cond/dropout/mul_1_grad/ReshapeReshape4Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Sum6Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape*'
_output_shapes
:         @*
T0*
Tshape0
┴
6Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Mul_1Muldropout_1/cond/dropout/mul4Adam/gradients/dropout_1/cond/Merge_grad/cond_grad:1*
T0*'
_output_shapes
:         @
 
6Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Sum_1Sum6Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Mul_1HAdam/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
ў
:Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Reshape_1Reshape6Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Sum_18Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:         @
К
Adam/gradients/SwitchSwitchdense_1/Reludropout_1/cond/pred_id*
T0*:
_output_shapes(
&:         @:         @
n
Adam/gradients/IdentityIdentityAdam/gradients/Switch:1*
T0*'
_output_shapes
:         @
m
Adam/gradients/Shape_1ShapeAdam/gradients/Switch:1*
_output_shapes
:*
T0*
out_type0
y
Adam/gradients/zeros/ConstConst^Adam/gradients/Identity*
valueB
 *    *
dtype0*
_output_shapes
: 
Ф
Adam/gradients/zerosFillAdam/gradients/Shape_1Adam/gradients/zeros/Const*
T0*

index_type0*'
_output_shapes
:         @
╠
<Adam/gradients/dropout_1/cond/Identity/Switch_grad/cond_gradMerge2Adam/gradients/dropout_1/cond/Merge_grad/cond_gradAdam/gradients/zeros*)
_output_shapes
:         @: *
T0*
N
Щ
4Adam/gradients/dropout_1/cond/dropout/mul_grad/ShapeShape%dropout_1/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
y
6Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
И
DAdam/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs4Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape6Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
┼
2Adam/gradients/dropout_1/cond/dropout/mul_grad/MulMul8Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Reshapedropout_1/cond/dropout/truediv*'
_output_shapes
:         @*
T0
є
2Adam/gradients/dropout_1/cond/dropout/mul_grad/SumSum2Adam/gradients/dropout_1/cond/dropout/mul_grad/MulDAdam/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
ы
6Adam/gradients/dropout_1/cond/dropout/mul_grad/ReshapeReshape2Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum4Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         @
╬
4Adam/gradients/dropout_1/cond/dropout/mul_grad/Mul_1Mul%dropout_1/cond/dropout/Shape/Switch:18Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Reshape*'
_output_shapes
:         @*
T0
∙
4Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum_1Sum4Adam/gradients/dropout_1/cond/dropout/mul_grad/Mul_1FAdam/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
р
8Adam/gradients/dropout_1/cond/dropout/mul_grad/Reshape_1Reshape4Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum_16Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
М
Adam/gradients/Switch_1Switchdense_1/Reludropout_1/cond/pred_id*:
_output_shapes(
&:         @:         @*
T0
p
Adam/gradients/Identity_1IdentityAdam/gradients/Switch_1*'
_output_shapes
:         @*
T0
m
Adam/gradients/Shape_2ShapeAdam/gradients/Switch_1*
_output_shapes
:*
T0*
out_type0
}
Adam/gradients/zeros_1/ConstConst^Adam/gradients/Identity_1*
_output_shapes
: *
valueB
 *    *
dtype0
Ш
Adam/gradients/zeros_1FillAdam/gradients/Shape_2Adam/gradients/zeros_1/Const*'
_output_shapes
:         @*
T0*

index_type0
╫
AAdam/gradients/dropout_1/cond/dropout/Shape/Switch_grad/cond_gradMergeAdam/gradients/zeros_16Adam/gradients/dropout_1/cond/dropout/mul_grad/Reshape*)
_output_shapes
:         @: *
T0*
N
и
Adam/gradients/AddNAddN<Adam/gradients/dropout_1/cond/Identity/Switch_grad/cond_gradAAdam/gradients/dropout_1/cond/dropout/Shape/Switch_grad/cond_grad*'
_output_shapes
:         @*
T0*O
_classE
CAloc:@Adam/gradients/dropout_1/cond/Identity/Switch_grad/cond_grad*
N
К
)Adam/gradients/dense_1/Relu_grad/ReluGradReluGradAdam/gradients/AddNdense_1/Relu*
T0*'
_output_shapes
:         @
е
/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad)Adam/gradients/dense_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
╓
)Adam/gradients/dense_1/MatMul_grad/MatMulMatMul)Adam/gradients/dense_1/Relu_grad/ReluGraddense_1/MatMul/ReadVariableOp*(
_output_shapes
:         А*
transpose_a( *
transpose_b(*
T0
─
+Adam/gradients/dense_1/MatMul_grad/MatMul_1MatMuldropout/cond/Merge)Adam/gradients/dense_1/Relu_grad/ReluGrad*
T0*
_output_shapes
:	А@*
transpose_a(*
transpose_b( 
А
0Adam/gradients/dropout/cond/Merge_grad/cond_gradSwitch)Adam/gradients/dense_1/MatMul_grad/MatMuldropout/cond/pred_id*<
_output_shapes*
(:         А:         А*
T0*<
_class2
0.loc:@Adam/gradients/dense_1/MatMul_grad/MatMul
М
4Adam/gradients/dropout/cond/dropout/mul_1_grad/ShapeShapedropout/cond/dropout/mul*
T0*
out_type0*
_output_shapes
:
П
6Adam/gradients/dropout/cond/dropout/mul_1_grad/Shape_1Shapedropout/cond/dropout/Cast*
T0*
out_type0*
_output_shapes
:
И
DAdam/gradients/dropout/cond/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs4Adam/gradients/dropout/cond/dropout/mul_1_grad/Shape6Adam/gradients/dropout/cond/dropout/mul_1_grad/Shape_1*2
_output_shapes 
:         :         *
T0
╗
2Adam/gradients/dropout/cond/dropout/mul_1_grad/MulMul2Adam/gradients/dropout/cond/Merge_grad/cond_grad:1dropout/cond/dropout/Cast*
T0*(
_output_shapes
:         А
є
2Adam/gradients/dropout/cond/dropout/mul_1_grad/SumSum2Adam/gradients/dropout/cond/dropout/mul_1_grad/MulDAdam/gradients/dropout/cond/dropout/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
ь
6Adam/gradients/dropout/cond/dropout/mul_1_grad/ReshapeReshape2Adam/gradients/dropout/cond/dropout/mul_1_grad/Sum4Adam/gradients/dropout/cond/dropout/mul_1_grad/Shape*
T0*
Tshape0*(
_output_shapes
:         А
╝
4Adam/gradients/dropout/cond/dropout/mul_1_grad/Mul_1Muldropout/cond/dropout/mul2Adam/gradients/dropout/cond/Merge_grad/cond_grad:1*(
_output_shapes
:         А*
T0
∙
4Adam/gradients/dropout/cond/dropout/mul_1_grad/Sum_1Sum4Adam/gradients/dropout/cond/dropout/mul_1_grad/Mul_1FAdam/gradients/dropout/cond/dropout/mul_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Є
8Adam/gradients/dropout/cond/dropout/mul_1_grad/Reshape_1Reshape4Adam/gradients/dropout/cond/dropout/mul_1_grad/Sum_16Adam/gradients/dropout/cond/dropout/mul_1_grad/Shape_1*(
_output_shapes
:         А*
T0*
Tshape0
К
Adam/gradients/Switch_2Switch
dense/Reludropout/cond/pred_id*<
_output_shapes*
(:         А:         А*
T0
s
Adam/gradients/Identity_2IdentityAdam/gradients/Switch_2:1*
T0*(
_output_shapes
:         А
o
Adam/gradients/Shape_3ShapeAdam/gradients/Switch_2:1*
T0*
out_type0*
_output_shapes
:
}
Adam/gradients/zeros_2/ConstConst^Adam/gradients/Identity_2*
_output_shapes
: *
valueB
 *    *
dtype0
Щ
Adam/gradients/zeros_2FillAdam/gradients/Shape_3Adam/gradients/zeros_2/Const*(
_output_shapes
:         А*
T0*

index_type0
╦
:Adam/gradients/dropout/cond/Identity/Switch_grad/cond_gradMerge0Adam/gradients/dropout/cond/Merge_grad/cond_gradAdam/gradients/zeros_2**
_output_shapes
:         А: *
T0*
N
Х
2Adam/gradients/dropout/cond/dropout/mul_grad/ShapeShape#dropout/cond/dropout/Shape/Switch:1*
_output_shapes
:*
T0*
out_type0
w
4Adam/gradients/dropout/cond/dropout/mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
В
BAdam/gradients/dropout/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs2Adam/gradients/dropout/cond/dropout/mul_grad/Shape4Adam/gradients/dropout/cond/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
└
0Adam/gradients/dropout/cond/dropout/mul_grad/MulMul6Adam/gradients/dropout/cond/dropout/mul_1_grad/Reshapedropout/cond/dropout/truediv*
T0*(
_output_shapes
:         А
э
0Adam/gradients/dropout/cond/dropout/mul_grad/SumSum0Adam/gradients/dropout/cond/dropout/mul_grad/MulBAdam/gradients/dropout/cond/dropout/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
ц
4Adam/gradients/dropout/cond/dropout/mul_grad/ReshapeReshape0Adam/gradients/dropout/cond/dropout/mul_grad/Sum2Adam/gradients/dropout/cond/dropout/mul_grad/Shape*(
_output_shapes
:         А*
T0*
Tshape0
╔
2Adam/gradients/dropout/cond/dropout/mul_grad/Mul_1Mul#dropout/cond/dropout/Shape/Switch:16Adam/gradients/dropout/cond/dropout/mul_1_grad/Reshape*
T0*(
_output_shapes
:         А
є
2Adam/gradients/dropout/cond/dropout/mul_grad/Sum_1Sum2Adam/gradients/dropout/cond/dropout/mul_grad/Mul_1DAdam/gradients/dropout/cond/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
┌
6Adam/gradients/dropout/cond/dropout/mul_grad/Reshape_1Reshape2Adam/gradients/dropout/cond/dropout/mul_grad/Sum_14Adam/gradients/dropout/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
К
Adam/gradients/Switch_3Switch
dense/Reludropout/cond/pred_id*
T0*<
_output_shapes*
(:         А:         А
q
Adam/gradients/Identity_3IdentityAdam/gradients/Switch_3*
T0*(
_output_shapes
:         А
m
Adam/gradients/Shape_4ShapeAdam/gradients/Switch_3*
T0*
out_type0*
_output_shapes
:
}
Adam/gradients/zeros_3/ConstConst^Adam/gradients/Identity_3*
valueB
 *    *
dtype0*
_output_shapes
: 
Щ
Adam/gradients/zeros_3FillAdam/gradients/Shape_4Adam/gradients/zeros_3/Const*(
_output_shapes
:         А*
T0*

index_type0
╘
?Adam/gradients/dropout/cond/dropout/Shape/Switch_grad/cond_gradMergeAdam/gradients/zeros_34Adam/gradients/dropout/cond/dropout/mul_grad/Reshape*
T0*
N**
_output_shapes
:         А: 
е
Adam/gradients/AddN_1AddN:Adam/gradients/dropout/cond/Identity/Switch_grad/cond_grad?Adam/gradients/dropout/cond/dropout/Shape/Switch_grad/cond_grad*(
_output_shapes
:         А*
T0*M
_classC
A?loc:@Adam/gradients/dropout/cond/Identity/Switch_grad/cond_grad*
N
Й
'Adam/gradients/dense/Relu_grad/ReluGradReluGradAdam/gradients/AddN_1
dense/Relu*
T0*(
_output_shapes
:         А
в
-Adam/gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'Adam/gradients/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:А
╨
'Adam/gradients/dense/MatMul_grad/MatMulMatMul'Adam/gradients/dense/Relu_grad/ReluGraddense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:         А*
transpose_a( *
transpose_b(
╛
)Adam/gradients/dense/MatMul_grad/MatMul_1MatMulflatten/Reshape'Adam/gradients/dense/Relu_grad/ReluGrad* 
_output_shapes
:
АА*
transpose_a(*
transpose_b( *
T0
v
)Adam/gradients/flatten/Reshape_grad/ShapeShapeconv2d_2/Relu*
T0*
out_type0*
_output_shapes
:
╥
+Adam/gradients/flatten/Reshape_grad/ReshapeReshape'Adam/gradients/dense/MatMul_grad/MatMul)Adam/gradients/flatten/Reshape_grad/Shape*
T0*
Tshape0*/
_output_shapes
:         @
м
*Adam/gradients/conv2d_2/Relu_grad/ReluGradReluGrad+Adam/gradients/flatten/Reshape_grad/Reshapeconv2d_2/Relu*
T0*/
_output_shapes
:         @
з
0Adam/gradients/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGrad*Adam/gradients/conv2d_2/Relu_grad/ReluGrad*
_output_shapes
:@*
T0*
data_formatNHWC
▒
*Adam/gradients/conv2d_2/Conv2D_grad/ShapeNShapeNmax_pooling2d_1/MaxPoolconv2d_2/Conv2D/ReadVariableOp*
T0*
out_type0*
N* 
_output_shapes
::
И
7Adam/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput*Adam/gradients/conv2d_2/Conv2D_grad/ShapeNconv2d_2/Conv2D/ReadVariableOp*Adam/gradients/conv2d_2/Relu_grad/ReluGrad*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID*/
_output_shapes
:         @*
	dilations
*
T0*
strides
*
data_formatNHWC
№
8Adam/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_1/MaxPool,Adam/gradients/conv2d_2/Conv2D_grad/ShapeN:1*Adam/gradients/conv2d_2/Relu_grad/ReluGrad*&
_output_shapes
:@@*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingVALID
┤
7Adam/gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_1/Relumax_pooling2d_1/MaxPool7Adam/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput*
paddingVALID*/
_output_shapes
:         @*
T0*
strides
*
data_formatNHWC*
ksize

╕
*Adam/gradients/conv2d_1/Relu_grad/ReluGradReluGrad7Adam/gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradconv2d_1/Relu*/
_output_shapes
:         @*
T0
з
0Adam/gradients/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGrad*Adam/gradients/conv2d_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
п
*Adam/gradients/conv2d_1/Conv2D_grad/ShapeNShapeNmax_pooling2d/MaxPoolconv2d_1/Conv2D/ReadVariableOp* 
_output_shapes
::*
T0*
out_type0*
N
И
7Adam/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput*Adam/gradients/conv2d_1/Conv2D_grad/ShapeNconv2d_1/Conv2D/ReadVariableOp*Adam/gradients/conv2d_1/Relu_grad/ReluGrad*
	dilations
*
T0*
strides
*
data_formatNHWC*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:          
·
8Adam/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPool,Adam/gradients/conv2d_1/Conv2D_grad/ShapeN:1*Adam/gradients/conv2d_1/Relu_grad/ReluGrad*&
_output_shapes
: @*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingVALID
о
5Adam/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d/Relumax_pooling2d/MaxPool7Adam/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput*
paddingVALID*/
_output_shapes
:          *
T0*
strides
*
data_formatNHWC*
ksize

▓
(Adam/gradients/conv2d/Relu_grad/ReluGradReluGrad5Adam/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradconv2d/Relu*/
_output_shapes
:          *
T0
г
.Adam/gradients/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad(Adam/gradients/conv2d/Relu_grad/ReluGrad*
_output_shapes
: *
T0*
data_formatNHWC
в
(Adam/gradients/conv2d/Conv2D_grad/ShapeNShapeNconv2d_inputconv2d/Conv2D/ReadVariableOp*
T0*
out_type0*
N* 
_output_shapes
::
А
5Adam/gradients/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(Adam/gradients/conv2d/Conv2D_grad/ShapeNconv2d/Conv2D/ReadVariableOp(Adam/gradients/conv2d/Relu_grad/ReluGrad*/
_output_shapes
:           *
	dilations
*
T0*
strides
*
data_formatNHWC*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingVALID
ы
6Adam/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_input*Adam/gradients/conv2d/Conv2D_grad/ShapeN:1(Adam/gradients/conv2d/Relu_grad/ReluGrad*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID*&
_output_shapes
: 
{
Adam/iter/Initializer/zerosConst*
value	B	 R *
_class
loc:@Adam/iter*
dtype0	*
_output_shapes
: 
Х
	Adam/iterVarHandleOp*
	container *
shape: *
dtype0	*
_output_shapes
: *
shared_name	Adam/iter*
_class
loc:@Adam/iter
c
*Adam/iter/IsInitialized/VarIsInitializedOpVarIsInitializedOp	Adam/iter*
_output_shapes
: 
w
Adam/iter/AssignAssignVariableOp	Adam/iterAdam/iter/Initializer/zeros*
_class
loc:@Adam/iter*
dtype0	
}
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_class
loc:@Adam/iter*
dtype0	*
_output_shapes
: 
К
%Adam/beta_1/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *fff?*
_class
loc:@Adam/beta_1*
dtype0
Ы
Adam/beta_1VarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam/beta_1*
_class
loc:@Adam/beta_1*
	container *
shape: 
g
,Adam/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_1*
_output_shapes
: 
З
Adam/beta_1/AssignAssignVariableOpAdam/beta_1%Adam/beta_1/Initializer/initial_value*
_class
loc:@Adam/beta_1*
dtype0
Г
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 
К
%Adam/beta_2/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *w╛?*
_class
loc:@Adam/beta_2*
dtype0
Ы
Adam/beta_2VarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam/beta_2*
_class
loc:@Adam/beta_2*
	container *
shape: 
g
,Adam/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_2*
_output_shapes
: 
З
Adam/beta_2/AssignAssignVariableOpAdam/beta_2%Adam/beta_2/Initializer/initial_value*
_class
loc:@Adam/beta_2*
dtype0
Г
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
_class
loc:@Adam/beta_2*
dtype0
И
$Adam/decay/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *    *
_class
loc:@Adam/decay*
dtype0
Ш

Adam/decayVarHandleOp*
dtype0*
_output_shapes
: *
shared_name
Adam/decay*
_class
loc:@Adam/decay*
	container *
shape: 
e
+Adam/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Adam/decay*
_output_shapes
: 
Г
Adam/decay/AssignAssignVariableOp
Adam/decay$Adam/decay/Initializer/initial_value*
_class
loc:@Adam/decay*
dtype0
А
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
_class
loc:@Adam/decay*
dtype0
Ш
,Adam/learning_rate/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *RIЭ9*%
_class
loc:@Adam/learning_rate*
dtype0
░
Adam/learning_rateVarHandleOp*#
shared_nameAdam/learning_rate*%
_class
loc:@Adam/learning_rate*
	container *
shape: *
dtype0*
_output_shapes
: 
u
3Adam/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/learning_rate*
_output_shapes
: 
г
Adam/learning_rate/AssignAssignVariableOpAdam/learning_rate,Adam/learning_rate/Initializer/initial_value*%
_class
loc:@Adam/learning_rate*
dtype0
Ш
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *%
_class
loc:@Adam/learning_rate*
dtype0
н
&Adam/conv2d/kernel/m/Initializer/zerosConst*&
_output_shapes
: * 
_class
loc:@conv2d/kernel*%
valueB *    *
dtype0
┐
Adam/conv2d/kernel/mVarHandleOp*
dtype0*
_output_shapes
: *%
shared_nameAdam/conv2d/kernel/m* 
_class
loc:@conv2d/kernel*
	container *
shape: 
Ы
5Adam/conv2d/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d/kernel/m*
_output_shapes
: * 
_class
loc:@conv2d/kernel
Ь
Adam/conv2d/kernel/m/AssignAssignVariableOpAdam/conv2d/kernel/m&Adam/conv2d/kernel/m/Initializer/zeros* 
_class
loc:@conv2d/kernel*
dtype0
з
(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*&
_output_shapes
: * 
_class
loc:@conv2d/kernel*
dtype0
С
$Adam/conv2d/bias/m/Initializer/zerosConst*
_class
loc:@conv2d/bias*
valueB *    *
dtype0*
_output_shapes
: 
н
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *#
shared_nameAdam/conv2d/bias/m*
_class
loc:@conv2d/bias*
	container *
shape: *
dtype0
Х
3Adam/conv2d/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d/bias/m*
_class
loc:@conv2d/bias*
_output_shapes
: 
Ф
Adam/conv2d/bias/m/AssignAssignVariableOpAdam/conv2d/bias/m$Adam/conv2d/bias/m/Initializer/zeros*
_class
loc:@conv2d/bias*
dtype0
Х
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
╡
8Adam/conv2d_1/kernel/m/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@conv2d_1/kernel*%
valueB"          @   *
dtype0*
_output_shapes
:
Ч
.Adam/conv2d_1/kernel/m/Initializer/zeros/ConstConst*
_output_shapes
: *"
_class
loc:@conv2d_1/kernel*
valueB
 *    *
dtype0
Б
(Adam/conv2d_1/kernel/m/Initializer/zerosFill8Adam/conv2d_1/kernel/m/Initializer/zeros/shape_as_tensor.Adam/conv2d_1/kernel/m/Initializer/zeros/Const*&
_output_shapes
: @*
T0*"
_class
loc:@conv2d_1/kernel*

index_type0
┼
Adam/conv2d_1/kernel/mVarHandleOp*'
shared_nameAdam/conv2d_1/kernel/m*"
_class
loc:@conv2d_1/kernel*
	container *
shape: @*
dtype0*
_output_shapes
: 
б
7Adam/conv2d_1/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d_1/kernel/m*
_output_shapes
: *"
_class
loc:@conv2d_1/kernel
д
Adam/conv2d_1/kernel/m/AssignAssignVariableOpAdam/conv2d_1/kernel/m(Adam/conv2d_1/kernel/m/Initializer/zeros*"
_class
loc:@conv2d_1/kernel*
dtype0
н
*Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/m*&
_output_shapes
: @*"
_class
loc:@conv2d_1/kernel*
dtype0
Х
&Adam/conv2d_1/bias/m/Initializer/zerosConst*
_output_shapes
:@* 
_class
loc:@conv2d_1/bias*
valueB@*    *
dtype0
│
Adam/conv2d_1/bias/mVarHandleOp*%
shared_nameAdam/conv2d_1/bias/m* 
_class
loc:@conv2d_1/bias*
	container *
shape:@*
dtype0*
_output_shapes
: 
Ы
5Adam/conv2d_1/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d_1/bias/m* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
Ь
Adam/conv2d_1/bias/m/AssignAssignVariableOpAdam/conv2d_1/bias/m&Adam/conv2d_1/bias/m/Initializer/zeros* 
_class
loc:@conv2d_1/bias*
dtype0
Ы
(Adam/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/m* 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
:@
╡
8Adam/conv2d_2/kernel/m/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*"
_class
loc:@conv2d_2/kernel*%
valueB"      @   @   *
dtype0
Ч
.Adam/conv2d_2/kernel/m/Initializer/zeros/ConstConst*
_output_shapes
: *"
_class
loc:@conv2d_2/kernel*
valueB
 *    *
dtype0
Б
(Adam/conv2d_2/kernel/m/Initializer/zerosFill8Adam/conv2d_2/kernel/m/Initializer/zeros/shape_as_tensor.Adam/conv2d_2/kernel/m/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_2/kernel*

index_type0*&
_output_shapes
:@@
┼
Adam/conv2d_2/kernel/mVarHandleOp*
dtype0*
_output_shapes
: *'
shared_nameAdam/conv2d_2/kernel/m*"
_class
loc:@conv2d_2/kernel*
	container *
shape:@@
б
7Adam/conv2d_2/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d_2/kernel/m*
_output_shapes
: *"
_class
loc:@conv2d_2/kernel
д
Adam/conv2d_2/kernel/m/AssignAssignVariableOpAdam/conv2d_2/kernel/m(Adam/conv2d_2/kernel/m/Initializer/zeros*"
_class
loc:@conv2d_2/kernel*
dtype0
н
*Adam/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/m*"
_class
loc:@conv2d_2/kernel*
dtype0*&
_output_shapes
:@@
Х
&Adam/conv2d_2/bias/m/Initializer/zerosConst* 
_class
loc:@conv2d_2/bias*
valueB@*    *
dtype0*
_output_shapes
:@
│
Adam/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *%
shared_nameAdam/conv2d_2/bias/m* 
_class
loc:@conv2d_2/bias*
	container *
shape:@*
dtype0
Ы
5Adam/conv2d_2/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d_2/bias/m* 
_class
loc:@conv2d_2/bias*
_output_shapes
: 
Ь
Adam/conv2d_2/bias/m/AssignAssignVariableOpAdam/conv2d_2/bias/m&Adam/conv2d_2/bias/m/Initializer/zeros* 
_class
loc:@conv2d_2/bias*
dtype0
Ы
(Adam/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/m*
_output_shapes
:@* 
_class
loc:@conv2d_2/bias*
dtype0
з
5Adam/dense/kernel/m/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/kernel*
valueB"   А   *
dtype0*
_output_shapes
:
С
+Adam/dense/kernel/m/Initializer/zeros/ConstConst*
_output_shapes
: *
_class
loc:@dense/kernel*
valueB
 *    *
dtype0
я
%Adam/dense/kernel/m/Initializer/zerosFill5Adam/dense/kernel/m/Initializer/zeros/shape_as_tensor+Adam/dense/kernel/m/Initializer/zeros/Const*
T0*
_class
loc:@dense/kernel*

index_type0* 
_output_shapes
:
АА
╢
Adam/dense/kernel/mVarHandleOp*$
shared_nameAdam/dense/kernel/m*
_class
loc:@dense/kernel*
	container *
shape:
АА*
dtype0*
_output_shapes
: 
Ш
4Adam/dense/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense/kernel/m*
_output_shapes
: *
_class
loc:@dense/kernel
Ш
Adam/dense/kernel/m/AssignAssignVariableOpAdam/dense/kernel/m%Adam/dense/kernel/m/Initializer/zeros*
_class
loc:@dense/kernel*
dtype0
Ю
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_class
loc:@dense/kernel*
dtype0* 
_output_shapes
:
АА
С
#Adam/dense/bias/m/Initializer/zerosConst*
_class
loc:@dense/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
л
Adam/dense/bias/mVarHandleOp*
	container *
shape:А*
dtype0*
_output_shapes
: *"
shared_nameAdam/dense/bias/m*
_class
loc:@dense/bias
Т
2Adam/dense/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense/bias/m*
_class
loc:@dense/bias*
_output_shapes
: 
Р
Adam/dense/bias/m/AssignAssignVariableOpAdam/dense/bias/m#Adam/dense/bias/m/Initializer/zeros*
_class
loc:@dense/bias*
dtype0
У
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_class
loc:@dense/bias*
dtype0*
_output_shapes	
:А
л
7Adam/dense_1/kernel/m/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*!
_class
loc:@dense_1/kernel*
valueB"А   @   *
dtype0
Х
-Adam/dense_1/kernel/m/Initializer/zeros/ConstConst*!
_class
loc:@dense_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Ў
'Adam/dense_1/kernel/m/Initializer/zerosFill7Adam/dense_1/kernel/m/Initializer/zeros/shape_as_tensor-Adam/dense_1/kernel/m/Initializer/zeros/Const*
T0*!
_class
loc:@dense_1/kernel*

index_type0*
_output_shapes
:	А@
╗
Adam/dense_1/kernel/mVarHandleOp*&
shared_nameAdam/dense_1/kernel/m*!
_class
loc:@dense_1/kernel*
	container *
shape:	А@*
dtype0*
_output_shapes
: 
Ю
6Adam/dense_1/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense_1/kernel/m*
_output_shapes
: *!
_class
loc:@dense_1/kernel
а
Adam/dense_1/kernel/m/AssignAssignVariableOpAdam/dense_1/kernel/m'Adam/dense_1/kernel/m/Initializer/zeros*!
_class
loc:@dense_1/kernel*
dtype0
г
)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:	А@
У
%Adam/dense_1/bias/m/Initializer/zerosConst*
_output_shapes
:@*
_class
loc:@dense_1/bias*
valueB@*    *
dtype0
░
Adam/dense_1/bias/mVarHandleOp*
	container *
shape:@*
dtype0*
_output_shapes
: *$
shared_nameAdam/dense_1/bias/m*
_class
loc:@dense_1/bias
Ш
4Adam/dense_1/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense_1/bias/m*
_class
loc:@dense_1/bias*
_output_shapes
: 
Ш
Adam/dense_1/bias/m/AssignAssignVariableOpAdam/dense_1/bias/m%Adam/dense_1/bias/m/Initializer/zeros*
_class
loc:@dense_1/bias*
dtype0
Ш
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:@*
_class
loc:@dense_1/bias*
dtype0
Я
'Adam/dense_2/kernel/m/Initializer/zerosConst*
_output_shapes

:@*!
_class
loc:@dense_2/kernel*
valueB@*    *
dtype0
║
Adam/dense_2/kernel/mVarHandleOp*
	container *
shape
:@*
dtype0*
_output_shapes
: *&
shared_nameAdam/dense_2/kernel/m*!
_class
loc:@dense_2/kernel
Ю
6Adam/dense_2/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense_2/kernel/m*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
а
Adam/dense_2/kernel/m/AssignAssignVariableOpAdam/dense_2/kernel/m'Adam/dense_2/kernel/m/Initializer/zeros*!
_class
loc:@dense_2/kernel*
dtype0
в
)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes

:@
У
%Adam/dense_2/bias/m/Initializer/zerosConst*
_class
loc:@dense_2/bias*
valueB*    *
dtype0*
_output_shapes
:
░
Adam/dense_2/bias/mVarHandleOp*
dtype0*
_output_shapes
: *$
shared_nameAdam/dense_2/bias/m*
_class
loc:@dense_2/bias*
	container *
shape:
Ш
4Adam/dense_2/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense_2/bias/m*
_output_shapes
: *
_class
loc:@dense_2/bias
Ш
Adam/dense_2/bias/m/AssignAssignVariableOpAdam/dense_2/bias/m%Adam/dense_2/bias/m/Initializer/zeros*
_class
loc:@dense_2/bias*
dtype0
Ш
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:*
_class
loc:@dense_2/bias*
dtype0
н
&Adam/conv2d/kernel/v/Initializer/zerosConst*&
_output_shapes
: * 
_class
loc:@conv2d/kernel*%
valueB *    *
dtype0
┐
Adam/conv2d/kernel/vVarHandleOp*%
shared_nameAdam/conv2d/kernel/v* 
_class
loc:@conv2d/kernel*
	container *
shape: *
dtype0*
_output_shapes
: 
Ы
5Adam/conv2d/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d/kernel/v* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
Ь
Adam/conv2d/kernel/v/AssignAssignVariableOpAdam/conv2d/kernel/v&Adam/conv2d/kernel/v/Initializer/zeros* 
_class
loc:@conv2d/kernel*
dtype0
з
(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*&
_output_shapes
: * 
_class
loc:@conv2d/kernel*
dtype0
С
$Adam/conv2d/bias/v/Initializer/zerosConst*
_output_shapes
: *
_class
loc:@conv2d/bias*
valueB *    *
dtype0
н
Adam/conv2d/bias/vVarHandleOp*
dtype0*
_output_shapes
: *#
shared_nameAdam/conv2d/bias/v*
_class
loc:@conv2d/bias*
	container *
shape: 
Х
3Adam/conv2d/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d/bias/v*
_output_shapes
: *
_class
loc:@conv2d/bias
Ф
Adam/conv2d/bias/v/AssignAssignVariableOpAdam/conv2d/bias/v$Adam/conv2d/bias/v/Initializer/zeros*
_class
loc:@conv2d/bias*
dtype0
Х
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes
: *
_class
loc:@conv2d/bias*
dtype0
╡
8Adam/conv2d_1/kernel/v/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*"
_class
loc:@conv2d_1/kernel*%
valueB"          @   *
dtype0
Ч
.Adam/conv2d_1/kernel/v/Initializer/zeros/ConstConst*
_output_shapes
: *"
_class
loc:@conv2d_1/kernel*
valueB
 *    *
dtype0
Б
(Adam/conv2d_1/kernel/v/Initializer/zerosFill8Adam/conv2d_1/kernel/v/Initializer/zeros/shape_as_tensor.Adam/conv2d_1/kernel/v/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_1/kernel*

index_type0*&
_output_shapes
: @
┼
Adam/conv2d_1/kernel/vVarHandleOp*
	container *
shape: @*
dtype0*
_output_shapes
: *'
shared_nameAdam/conv2d_1/kernel/v*"
_class
loc:@conv2d_1/kernel
б
7Adam/conv2d_1/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d_1/kernel/v*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
д
Adam/conv2d_1/kernel/v/AssignAssignVariableOpAdam/conv2d_1/kernel/v(Adam/conv2d_1/kernel/v/Initializer/zeros*"
_class
loc:@conv2d_1/kernel*
dtype0
н
*Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/v*"
_class
loc:@conv2d_1/kernel*
dtype0*&
_output_shapes
: @
Х
&Adam/conv2d_1/bias/v/Initializer/zerosConst* 
_class
loc:@conv2d_1/bias*
valueB@*    *
dtype0*
_output_shapes
:@
│
Adam/conv2d_1/bias/vVarHandleOp*%
shared_nameAdam/conv2d_1/bias/v* 
_class
loc:@conv2d_1/bias*
	container *
shape:@*
dtype0*
_output_shapes
: 
Ы
5Adam/conv2d_1/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d_1/bias/v* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
Ь
Adam/conv2d_1/bias/v/AssignAssignVariableOpAdam/conv2d_1/bias/v&Adam/conv2d_1/bias/v/Initializer/zeros* 
_class
loc:@conv2d_1/bias*
dtype0
Ы
(Adam/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/v* 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
:@
╡
8Adam/conv2d_2/kernel/v/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*"
_class
loc:@conv2d_2/kernel*%
valueB"      @   @   *
dtype0
Ч
.Adam/conv2d_2/kernel/v/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Б
(Adam/conv2d_2/kernel/v/Initializer/zerosFill8Adam/conv2d_2/kernel/v/Initializer/zeros/shape_as_tensor.Adam/conv2d_2/kernel/v/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_2/kernel*

index_type0*&
_output_shapes
:@@
┼
Adam/conv2d_2/kernel/vVarHandleOp*'
shared_nameAdam/conv2d_2/kernel/v*"
_class
loc:@conv2d_2/kernel*
	container *
shape:@@*
dtype0*
_output_shapes
: 
б
7Adam/conv2d_2/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d_2/kernel/v*
_output_shapes
: *"
_class
loc:@conv2d_2/kernel
д
Adam/conv2d_2/kernel/v/AssignAssignVariableOpAdam/conv2d_2/kernel/v(Adam/conv2d_2/kernel/v/Initializer/zeros*"
_class
loc:@conv2d_2/kernel*
dtype0
н
*Adam/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/v*&
_output_shapes
:@@*"
_class
loc:@conv2d_2/kernel*
dtype0
Х
&Adam/conv2d_2/bias/v/Initializer/zerosConst*
_output_shapes
:@* 
_class
loc:@conv2d_2/bias*
valueB@*    *
dtype0
│
Adam/conv2d_2/bias/vVarHandleOp*
	container *
shape:@*
dtype0*
_output_shapes
: *%
shared_nameAdam/conv2d_2/bias/v* 
_class
loc:@conv2d_2/bias
Ы
5Adam/conv2d_2/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d_2/bias/v* 
_class
loc:@conv2d_2/bias*
_output_shapes
: 
Ь
Adam/conv2d_2/bias/v/AssignAssignVariableOpAdam/conv2d_2/bias/v&Adam/conv2d_2/bias/v/Initializer/zeros* 
_class
loc:@conv2d_2/bias*
dtype0
Ы
(Adam/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/v*
_output_shapes
:@* 
_class
loc:@conv2d_2/bias*
dtype0
з
5Adam/dense/kernel/v/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
_class
loc:@dense/kernel*
valueB"   А   *
dtype0
С
+Adam/dense/kernel/v/Initializer/zeros/ConstConst*
_output_shapes
: *
_class
loc:@dense/kernel*
valueB
 *    *
dtype0
я
%Adam/dense/kernel/v/Initializer/zerosFill5Adam/dense/kernel/v/Initializer/zeros/shape_as_tensor+Adam/dense/kernel/v/Initializer/zeros/Const* 
_output_shapes
:
АА*
T0*
_class
loc:@dense/kernel*

index_type0
╢
Adam/dense/kernel/vVarHandleOp*
	container *
shape:
АА*
dtype0*
_output_shapes
: *$
shared_nameAdam/dense/kernel/v*
_class
loc:@dense/kernel
Ш
4Adam/dense/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense/kernel/v*
_class
loc:@dense/kernel*
_output_shapes
: 
Ш
Adam/dense/kernel/v/AssignAssignVariableOpAdam/dense/kernel/v%Adam/dense/kernel/v/Initializer/zeros*
_class
loc:@dense/kernel*
dtype0
Ю
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v* 
_output_shapes
:
АА*
_class
loc:@dense/kernel*
dtype0
С
#Adam/dense/bias/v/Initializer/zerosConst*
_class
loc:@dense/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
л
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *"
shared_nameAdam/dense/bias/v*
_class
loc:@dense/bias*
	container *
shape:А*
dtype0
Т
2Adam/dense/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense/bias/v*
_output_shapes
: *
_class
loc:@dense/bias
Р
Adam/dense/bias/v/AssignAssignVariableOpAdam/dense/bias/v#Adam/dense/bias/v/Initializer/zeros*
_class
loc:@dense/bias*
dtype0
У
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_class
loc:@dense/bias*
dtype0*
_output_shapes	
:А
л
7Adam/dense_1/kernel/v/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*!
_class
loc:@dense_1/kernel*
valueB"А   @   *
dtype0
Х
-Adam/dense_1/kernel/v/Initializer/zeros/ConstConst*!
_class
loc:@dense_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Ў
'Adam/dense_1/kernel/v/Initializer/zerosFill7Adam/dense_1/kernel/v/Initializer/zeros/shape_as_tensor-Adam/dense_1/kernel/v/Initializer/zeros/Const*
T0*!
_class
loc:@dense_1/kernel*

index_type0*
_output_shapes
:	А@
╗
Adam/dense_1/kernel/vVarHandleOp*
	container *
shape:	А@*
dtype0*
_output_shapes
: *&
shared_nameAdam/dense_1/kernel/v*!
_class
loc:@dense_1/kernel
Ю
6Adam/dense_1/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense_1/kernel/v*
_output_shapes
: *!
_class
loc:@dense_1/kernel
а
Adam/dense_1/kernel/v/AssignAssignVariableOpAdam/dense_1/kernel/v'Adam/dense_1/kernel/v/Initializer/zeros*!
_class
loc:@dense_1/kernel*
dtype0
г
)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:	А@
У
%Adam/dense_1/bias/v/Initializer/zerosConst*
_output_shapes
:@*
_class
loc:@dense_1/bias*
valueB@*    *
dtype0
░
Adam/dense_1/bias/vVarHandleOp*
dtype0*
_output_shapes
: *$
shared_nameAdam/dense_1/bias/v*
_class
loc:@dense_1/bias*
	container *
shape:@
Ш
4Adam/dense_1/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense_1/bias/v*
_class
loc:@dense_1/bias*
_output_shapes
: 
Ш
Adam/dense_1/bias/v/AssignAssignVariableOpAdam/dense_1/bias/v%Adam/dense_1/bias/v/Initializer/zeros*
_class
loc:@dense_1/bias*
dtype0
Ш
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:@*
_class
loc:@dense_1/bias*
dtype0
Я
'Adam/dense_2/kernel/v/Initializer/zerosConst*
_output_shapes

:@*!
_class
loc:@dense_2/kernel*
valueB@*    *
dtype0
║
Adam/dense_2/kernel/vVarHandleOp*&
shared_nameAdam/dense_2/kernel/v*!
_class
loc:@dense_2/kernel*
	container *
shape
:@*
dtype0*
_output_shapes
: 
Ю
6Adam/dense_2/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense_2/kernel/v*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
а
Adam/dense_2/kernel/v/AssignAssignVariableOpAdam/dense_2/kernel/v'Adam/dense_2/kernel/v/Initializer/zeros*!
_class
loc:@dense_2/kernel*
dtype0
в
)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes

:@
У
%Adam/dense_2/bias/v/Initializer/zerosConst*
_class
loc:@dense_2/bias*
valueB*    *
dtype0*
_output_shapes
:
░
Adam/dense_2/bias/vVarHandleOp*
dtype0*
_output_shapes
: *$
shared_nameAdam/dense_2/bias/v*
_class
loc:@dense_2/bias*
	container *
shape:
Ш
4Adam/dense_2/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense_2/bias/v*
_output_shapes
: *
_class
loc:@dense_2/bias
Ш
Adam/dense_2/bias/v/AssignAssignVariableOpAdam/dense_2/bias/v%Adam/dense_2/bias/v/Initializer/zeros*
_class
loc:@dense_2/bias*
dtype0
Ш
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
:
i
$Adam/Adam/update_conv2d/kernel/ConstConst*
valueB
 *Х┐╓3*
dtype0*
_output_shapes
: 
o
-Adam/Adam/update_conv2d/kernel/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
f
$Adam/Adam/update_conv2d/kernel/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
Я
"Adam/Adam/update_conv2d/kernel/addAdd-Adam/Adam/update_conv2d/kernel/ReadVariableOp$Adam/Adam/update_conv2d/kernel/add/y*
_output_shapes
: *
T0	
П
#Adam/Adam/update_conv2d/kernel/CastCast"Adam/Adam/update_conv2d/kernel/add*
_output_shapes
: *

DstT0*

SrcT0	*
Truncate( 
u
1Adam/Adam/update_conv2d/kernel/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
в
"Adam/Adam/update_conv2d/kernel/PowPow1Adam/Adam/update_conv2d/kernel/Pow/ReadVariableOp#Adam/Adam/update_conv2d/kernel/Cast*
T0*
_output_shapes
: 
w
3Adam/Adam/update_conv2d/kernel/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
ж
$Adam/Adam/update_conv2d/kernel/Pow_1Pow3Adam/Adam/update_conv2d/kernel/Pow_1/ReadVariableOp#Adam/Adam/update_conv2d/kernel/Cast*
T0*
_output_shapes
: 
К
?Adam/Adam/update_conv2d/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
Е
AAdam/Adam/update_conv2d/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
Е
AAdam/Adam/update_conv2d/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
Я
0Adam/Adam/update_conv2d/kernel/ResourceApplyAdamResourceApplyAdamconv2d/kernelAdam/conv2d/kernel/mAdam/conv2d/kernel/v"Adam/Adam/update_conv2d/kernel/Pow$Adam/Adam/update_conv2d/kernel/Pow_1?Adam/Adam/update_conv2d/kernel/ResourceApplyAdam/ReadVariableOpAAdam/Adam/update_conv2d/kernel/ResourceApplyAdam/ReadVariableOp_1AAdam/Adam/update_conv2d/kernel/ResourceApplyAdam/ReadVariableOp_2$Adam/Adam/update_conv2d/kernel/Const6Adam/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter*
use_locking(*
T0*
use_nesterov( 
g
"Adam/Adam/update_conv2d/bias/ConstConst*
_output_shapes
: *
valueB
 *Х┐╓3*
dtype0
m
+Adam/Adam/update_conv2d/bias/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
d
"Adam/Adam/update_conv2d/bias/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
Щ
 Adam/Adam/update_conv2d/bias/addAdd+Adam/Adam/update_conv2d/bias/ReadVariableOp"Adam/Adam/update_conv2d/bias/add/y*
_output_shapes
: *
T0	
Л
!Adam/Adam/update_conv2d/bias/CastCast Adam/Adam/update_conv2d/bias/add*
_output_shapes
: *

DstT0*

SrcT0	*
Truncate( 
s
/Adam/Adam/update_conv2d/bias/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
Ь
 Adam/Adam/update_conv2d/bias/PowPow/Adam/Adam/update_conv2d/bias/Pow/ReadVariableOp!Adam/Adam/update_conv2d/bias/Cast*
_output_shapes
: *
T0
u
1Adam/Adam/update_conv2d/bias/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
а
"Adam/Adam/update_conv2d/bias/Pow_1Pow1Adam/Adam/update_conv2d/bias/Pow_1/ReadVariableOp!Adam/Adam/update_conv2d/bias/Cast*
T0*
_output_shapes
: 
И
=Adam/Adam/update_conv2d/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
Г
?Adam/Adam/update_conv2d/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
Г
?Adam/Adam/update_conv2d/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Г
.Adam/Adam/update_conv2d/bias/ResourceApplyAdamResourceApplyAdamconv2d/biasAdam/conv2d/bias/mAdam/conv2d/bias/v Adam/Adam/update_conv2d/bias/Pow"Adam/Adam/update_conv2d/bias/Pow_1=Adam/Adam/update_conv2d/bias/ResourceApplyAdam/ReadVariableOp?Adam/Adam/update_conv2d/bias/ResourceApplyAdam/ReadVariableOp_1?Adam/Adam/update_conv2d/bias/ResourceApplyAdam/ReadVariableOp_2"Adam/Adam/update_conv2d/bias/Const.Adam/gradients/conv2d/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0*
use_nesterov( 
k
&Adam/Adam/update_conv2d_1/kernel/ConstConst*
_output_shapes
: *
valueB
 *Х┐╓3*
dtype0
q
/Adam/Adam/update_conv2d_1/kernel/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
h
&Adam/Adam/update_conv2d_1/kernel/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
е
$Adam/Adam/update_conv2d_1/kernel/addAdd/Adam/Adam/update_conv2d_1/kernel/ReadVariableOp&Adam/Adam/update_conv2d_1/kernel/add/y*
_output_shapes
: *
T0	
У
%Adam/Adam/update_conv2d_1/kernel/CastCast$Adam/Adam/update_conv2d_1/kernel/add*
_output_shapes
: *

DstT0*

SrcT0	*
Truncate( 
w
3Adam/Adam/update_conv2d_1/kernel/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
и
$Adam/Adam/update_conv2d_1/kernel/PowPow3Adam/Adam/update_conv2d_1/kernel/Pow/ReadVariableOp%Adam/Adam/update_conv2d_1/kernel/Cast*
_output_shapes
: *
T0
y
5Adam/Adam/update_conv2d_1/kernel/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
м
&Adam/Adam/update_conv2d_1/kernel/Pow_1Pow5Adam/Adam/update_conv2d_1/kernel/Pow_1/ReadVariableOp%Adam/Adam/update_conv2d_1/kernel/Cast*
_output_shapes
: *
T0
М
AAdam/Adam/update_conv2d_1/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
З
CAdam/Adam/update_conv2d_1/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
З
CAdam/Adam/update_conv2d_1/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
╡
2Adam/Adam/update_conv2d_1/kernel/ResourceApplyAdamResourceApplyAdamconv2d_1/kernelAdam/conv2d_1/kernel/mAdam/conv2d_1/kernel/v$Adam/Adam/update_conv2d_1/kernel/Pow&Adam/Adam/update_conv2d_1/kernel/Pow_1AAdam/Adam/update_conv2d_1/kernel/ResourceApplyAdam/ReadVariableOpCAdam/Adam/update_conv2d_1/kernel/ResourceApplyAdam/ReadVariableOp_1CAdam/Adam/update_conv2d_1/kernel/ResourceApplyAdam/ReadVariableOp_2&Adam/Adam/update_conv2d_1/kernel/Const8Adam/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*
use_locking(*
T0*
use_nesterov( 
i
$Adam/Adam/update_conv2d_1/bias/ConstConst*
valueB
 *Х┐╓3*
dtype0*
_output_shapes
: 
o
-Adam/Adam/update_conv2d_1/bias/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
f
$Adam/Adam/update_conv2d_1/bias/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
Я
"Adam/Adam/update_conv2d_1/bias/addAdd-Adam/Adam/update_conv2d_1/bias/ReadVariableOp$Adam/Adam/update_conv2d_1/bias/add/y*
T0	*
_output_shapes
: 
П
#Adam/Adam/update_conv2d_1/bias/CastCast"Adam/Adam/update_conv2d_1/bias/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
u
1Adam/Adam/update_conv2d_1/bias/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
в
"Adam/Adam/update_conv2d_1/bias/PowPow1Adam/Adam/update_conv2d_1/bias/Pow/ReadVariableOp#Adam/Adam/update_conv2d_1/bias/Cast*
T0*
_output_shapes
: 
w
3Adam/Adam/update_conv2d_1/bias/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
ж
$Adam/Adam/update_conv2d_1/bias/Pow_1Pow3Adam/Adam/update_conv2d_1/bias/Pow_1/ReadVariableOp#Adam/Adam/update_conv2d_1/bias/Cast*
T0*
_output_shapes
: 
К
?Adam/Adam/update_conv2d_1/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
Е
AAdam/Adam/update_conv2d_1/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Е
AAdam/Adam/update_conv2d_1/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
Щ
0Adam/Adam/update_conv2d_1/bias/ResourceApplyAdamResourceApplyAdamconv2d_1/biasAdam/conv2d_1/bias/mAdam/conv2d_1/bias/v"Adam/Adam/update_conv2d_1/bias/Pow$Adam/Adam/update_conv2d_1/bias/Pow_1?Adam/Adam/update_conv2d_1/bias/ResourceApplyAdam/ReadVariableOpAAdam/Adam/update_conv2d_1/bias/ResourceApplyAdam/ReadVariableOp_1AAdam/Adam/update_conv2d_1/bias/ResourceApplyAdam/ReadVariableOp_2$Adam/Adam/update_conv2d_1/bias/Const0Adam/gradients/conv2d_1/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0*
use_nesterov( 
k
&Adam/Adam/update_conv2d_2/kernel/ConstConst*
valueB
 *Х┐╓3*
dtype0*
_output_shapes
: 
q
/Adam/Adam/update_conv2d_2/kernel/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
h
&Adam/Adam/update_conv2d_2/kernel/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
е
$Adam/Adam/update_conv2d_2/kernel/addAdd/Adam/Adam/update_conv2d_2/kernel/ReadVariableOp&Adam/Adam/update_conv2d_2/kernel/add/y*
_output_shapes
: *
T0	
У
%Adam/Adam/update_conv2d_2/kernel/CastCast$Adam/Adam/update_conv2d_2/kernel/add*
_output_shapes
: *

DstT0*

SrcT0	*
Truncate( 
w
3Adam/Adam/update_conv2d_2/kernel/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
и
$Adam/Adam/update_conv2d_2/kernel/PowPow3Adam/Adam/update_conv2d_2/kernel/Pow/ReadVariableOp%Adam/Adam/update_conv2d_2/kernel/Cast*
T0*
_output_shapes
: 
y
5Adam/Adam/update_conv2d_2/kernel/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
м
&Adam/Adam/update_conv2d_2/kernel/Pow_1Pow5Adam/Adam/update_conv2d_2/kernel/Pow_1/ReadVariableOp%Adam/Adam/update_conv2d_2/kernel/Cast*
_output_shapes
: *
T0
М
AAdam/Adam/update_conv2d_2/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
З
CAdam/Adam/update_conv2d_2/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
З
CAdam/Adam/update_conv2d_2/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
╡
2Adam/Adam/update_conv2d_2/kernel/ResourceApplyAdamResourceApplyAdamconv2d_2/kernelAdam/conv2d_2/kernel/mAdam/conv2d_2/kernel/v$Adam/Adam/update_conv2d_2/kernel/Pow&Adam/Adam/update_conv2d_2/kernel/Pow_1AAdam/Adam/update_conv2d_2/kernel/ResourceApplyAdam/ReadVariableOpCAdam/Adam/update_conv2d_2/kernel/ResourceApplyAdam/ReadVariableOp_1CAdam/Adam/update_conv2d_2/kernel/ResourceApplyAdam/ReadVariableOp_2&Adam/Adam/update_conv2d_2/kernel/Const8Adam/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*
use_locking(*
T0*
use_nesterov( 
i
$Adam/Adam/update_conv2d_2/bias/ConstConst*
valueB
 *Х┐╓3*
dtype0*
_output_shapes
: 
o
-Adam/Adam/update_conv2d_2/bias/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
f
$Adam/Adam/update_conv2d_2/bias/add/yConst*
_output_shapes
: *
value	B	 R*
dtype0	
Я
"Adam/Adam/update_conv2d_2/bias/addAdd-Adam/Adam/update_conv2d_2/bias/ReadVariableOp$Adam/Adam/update_conv2d_2/bias/add/y*
T0	*
_output_shapes
: 
П
#Adam/Adam/update_conv2d_2/bias/CastCast"Adam/Adam/update_conv2d_2/bias/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
u
1Adam/Adam/update_conv2d_2/bias/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
в
"Adam/Adam/update_conv2d_2/bias/PowPow1Adam/Adam/update_conv2d_2/bias/Pow/ReadVariableOp#Adam/Adam/update_conv2d_2/bias/Cast*
T0*
_output_shapes
: 
w
3Adam/Adam/update_conv2d_2/bias/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
ж
$Adam/Adam/update_conv2d_2/bias/Pow_1Pow3Adam/Adam/update_conv2d_2/bias/Pow_1/ReadVariableOp#Adam/Adam/update_conv2d_2/bias/Cast*
T0*
_output_shapes
: 
К
?Adam/Adam/update_conv2d_2/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
Е
AAdam/Adam/update_conv2d_2/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Е
AAdam/Adam/update_conv2d_2/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
Щ
0Adam/Adam/update_conv2d_2/bias/ResourceApplyAdamResourceApplyAdamconv2d_2/biasAdam/conv2d_2/bias/mAdam/conv2d_2/bias/v"Adam/Adam/update_conv2d_2/bias/Pow$Adam/Adam/update_conv2d_2/bias/Pow_1?Adam/Adam/update_conv2d_2/bias/ResourceApplyAdam/ReadVariableOpAAdam/Adam/update_conv2d_2/bias/ResourceApplyAdam/ReadVariableOp_1AAdam/Adam/update_conv2d_2/bias/ResourceApplyAdam/ReadVariableOp_2$Adam/Adam/update_conv2d_2/bias/Const0Adam/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0*
use_nesterov( 
h
#Adam/Adam/update_dense/kernel/ConstConst*
valueB
 *Х┐╓3*
dtype0*
_output_shapes
: 
n
,Adam/Adam/update_dense/kernel/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
e
#Adam/Adam/update_dense/kernel/add/yConst*
_output_shapes
: *
value	B	 R*
dtype0	
Ь
!Adam/Adam/update_dense/kernel/addAdd,Adam/Adam/update_dense/kernel/ReadVariableOp#Adam/Adam/update_dense/kernel/add/y*
T0	*
_output_shapes
: 
Н
"Adam/Adam/update_dense/kernel/CastCast!Adam/Adam/update_dense/kernel/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
t
0Adam/Adam/update_dense/kernel/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Я
!Adam/Adam/update_dense/kernel/PowPow0Adam/Adam/update_dense/kernel/Pow/ReadVariableOp"Adam/Adam/update_dense/kernel/Cast*
_output_shapes
: *
T0
v
2Adam/Adam/update_dense/kernel/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
г
#Adam/Adam/update_dense/kernel/Pow_1Pow2Adam/Adam/update_dense/kernel/Pow_1/ReadVariableOp"Adam/Adam/update_dense/kernel/Cast*
_output_shapes
: *
T0
Й
>Adam/Adam/update_dense/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
Д
@Adam/Adam/update_dense/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Д
@Adam/Adam/update_dense/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
И
/Adam/Adam/update_dense/kernel/ResourceApplyAdamResourceApplyAdamdense/kernelAdam/dense/kernel/mAdam/dense/kernel/v!Adam/Adam/update_dense/kernel/Pow#Adam/Adam/update_dense/kernel/Pow_1>Adam/Adam/update_dense/kernel/ResourceApplyAdam/ReadVariableOp@Adam/Adam/update_dense/kernel/ResourceApplyAdam/ReadVariableOp_1@Adam/Adam/update_dense/kernel/ResourceApplyAdam/ReadVariableOp_2#Adam/Adam/update_dense/kernel/Const)Adam/gradients/dense/MatMul_grad/MatMul_1*
use_locking(*
T0*
use_nesterov( 
f
!Adam/Adam/update_dense/bias/ConstConst*
valueB
 *Х┐╓3*
dtype0*
_output_shapes
: 
l
*Adam/Adam/update_dense/bias/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
c
!Adam/Adam/update_dense/bias/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
Ц
Adam/Adam/update_dense/bias/addAdd*Adam/Adam/update_dense/bias/ReadVariableOp!Adam/Adam/update_dense/bias/add/y*
_output_shapes
: *
T0	
Й
 Adam/Adam/update_dense/bias/CastCastAdam/Adam/update_dense/bias/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
r
.Adam/Adam/update_dense/bias/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
Щ
Adam/Adam/update_dense/bias/PowPow.Adam/Adam/update_dense/bias/Pow/ReadVariableOp Adam/Adam/update_dense/bias/Cast*
T0*
_output_shapes
: 
t
0Adam/Adam/update_dense/bias/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
Э
!Adam/Adam/update_dense/bias/Pow_1Pow0Adam/Adam/update_dense/bias/Pow_1/ReadVariableOp Adam/Adam/update_dense/bias/Cast*
T0*
_output_shapes
: 
З
<Adam/Adam/update_dense/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
В
>Adam/Adam/update_dense/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
В
>Adam/Adam/update_dense/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
°
-Adam/Adam/update_dense/bias/ResourceApplyAdamResourceApplyAdam
dense/biasAdam/dense/bias/mAdam/dense/bias/vAdam/Adam/update_dense/bias/Pow!Adam/Adam/update_dense/bias/Pow_1<Adam/Adam/update_dense/bias/ResourceApplyAdam/ReadVariableOp>Adam/Adam/update_dense/bias/ResourceApplyAdam/ReadVariableOp_1>Adam/Adam/update_dense/bias/ResourceApplyAdam/ReadVariableOp_2!Adam/Adam/update_dense/bias/Const-Adam/gradients/dense/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0*
use_nesterov( 
j
%Adam/Adam/update_dense_1/kernel/ConstConst*
valueB
 *Х┐╓3*
dtype0*
_output_shapes
: 
p
.Adam/Adam/update_dense_1/kernel/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
g
%Adam/Adam/update_dense_1/kernel/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
в
#Adam/Adam/update_dense_1/kernel/addAdd.Adam/Adam/update_dense_1/kernel/ReadVariableOp%Adam/Adam/update_dense_1/kernel/add/y*
_output_shapes
: *
T0	
С
$Adam/Adam/update_dense_1/kernel/CastCast#Adam/Adam/update_dense_1/kernel/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
v
2Adam/Adam/update_dense_1/kernel/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
е
#Adam/Adam/update_dense_1/kernel/PowPow2Adam/Adam/update_dense_1/kernel/Pow/ReadVariableOp$Adam/Adam/update_dense_1/kernel/Cast*
T0*
_output_shapes
: 
x
4Adam/Adam/update_dense_1/kernel/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
й
%Adam/Adam/update_dense_1/kernel/Pow_1Pow4Adam/Adam/update_dense_1/kernel/Pow_1/ReadVariableOp$Adam/Adam/update_dense_1/kernel/Cast*
_output_shapes
: *
T0
Л
@Adam/Adam/update_dense_1/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
Ж
BAdam/Adam/update_dense_1/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
Ж
BAdam/Adam/update_dense_1/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Ю
1Adam/Adam/update_dense_1/kernel/ResourceApplyAdamResourceApplyAdamdense_1/kernelAdam/dense_1/kernel/mAdam/dense_1/kernel/v#Adam/Adam/update_dense_1/kernel/Pow%Adam/Adam/update_dense_1/kernel/Pow_1@Adam/Adam/update_dense_1/kernel/ResourceApplyAdam/ReadVariableOpBAdam/Adam/update_dense_1/kernel/ResourceApplyAdam/ReadVariableOp_1BAdam/Adam/update_dense_1/kernel/ResourceApplyAdam/ReadVariableOp_2%Adam/Adam/update_dense_1/kernel/Const+Adam/gradients/dense_1/MatMul_grad/MatMul_1*
use_locking(*
T0*
use_nesterov( 
h
#Adam/Adam/update_dense_1/bias/ConstConst*
valueB
 *Х┐╓3*
dtype0*
_output_shapes
: 
n
,Adam/Adam/update_dense_1/bias/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
e
#Adam/Adam/update_dense_1/bias/add/yConst*
_output_shapes
: *
value	B	 R*
dtype0	
Ь
!Adam/Adam/update_dense_1/bias/addAdd,Adam/Adam/update_dense_1/bias/ReadVariableOp#Adam/Adam/update_dense_1/bias/add/y*
_output_shapes
: *
T0	
Н
"Adam/Adam/update_dense_1/bias/CastCast!Adam/Adam/update_dense_1/bias/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
t
0Adam/Adam/update_dense_1/bias/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
Я
!Adam/Adam/update_dense_1/bias/PowPow0Adam/Adam/update_dense_1/bias/Pow/ReadVariableOp"Adam/Adam/update_dense_1/bias/Cast*
T0*
_output_shapes
: 
v
2Adam/Adam/update_dense_1/bias/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
г
#Adam/Adam/update_dense_1/bias/Pow_1Pow2Adam/Adam/update_dense_1/bias/Pow_1/ReadVariableOp"Adam/Adam/update_dense_1/bias/Cast*
_output_shapes
: *
T0
Й
>Adam/Adam/update_dense_1/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
Д
@Adam/Adam/update_dense_1/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
Д
@Adam/Adam/update_dense_1/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
О
/Adam/Adam/update_dense_1/bias/ResourceApplyAdamResourceApplyAdamdense_1/biasAdam/dense_1/bias/mAdam/dense_1/bias/v!Adam/Adam/update_dense_1/bias/Pow#Adam/Adam/update_dense_1/bias/Pow_1>Adam/Adam/update_dense_1/bias/ResourceApplyAdam/ReadVariableOp@Adam/Adam/update_dense_1/bias/ResourceApplyAdam/ReadVariableOp_1@Adam/Adam/update_dense_1/bias/ResourceApplyAdam/ReadVariableOp_2#Adam/Adam/update_dense_1/bias/Const/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0*
use_nesterov( 
j
%Adam/Adam/update_dense_2/kernel/ConstConst*
valueB
 *Х┐╓3*
dtype0*
_output_shapes
: 
p
.Adam/Adam/update_dense_2/kernel/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
g
%Adam/Adam/update_dense_2/kernel/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
в
#Adam/Adam/update_dense_2/kernel/addAdd.Adam/Adam/update_dense_2/kernel/ReadVariableOp%Adam/Adam/update_dense_2/kernel/add/y*
_output_shapes
: *
T0	
С
$Adam/Adam/update_dense_2/kernel/CastCast#Adam/Adam/update_dense_2/kernel/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
v
2Adam/Adam/update_dense_2/kernel/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
е
#Adam/Adam/update_dense_2/kernel/PowPow2Adam/Adam/update_dense_2/kernel/Pow/ReadVariableOp$Adam/Adam/update_dense_2/kernel/Cast*
T0*
_output_shapes
: 
x
4Adam/Adam/update_dense_2/kernel/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
й
%Adam/Adam/update_dense_2/kernel/Pow_1Pow4Adam/Adam/update_dense_2/kernel/Pow_1/ReadVariableOp$Adam/Adam/update_dense_2/kernel/Cast*
T0*
_output_shapes
: 
Л
@Adam/Adam/update_dense_2/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
Ж
BAdam/Adam/update_dense_2/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Ж
BAdam/Adam/update_dense_2/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Ю
1Adam/Adam/update_dense_2/kernel/ResourceApplyAdamResourceApplyAdamdense_2/kernelAdam/dense_2/kernel/mAdam/dense_2/kernel/v#Adam/Adam/update_dense_2/kernel/Pow%Adam/Adam/update_dense_2/kernel/Pow_1@Adam/Adam/update_dense_2/kernel/ResourceApplyAdam/ReadVariableOpBAdam/Adam/update_dense_2/kernel/ResourceApplyAdam/ReadVariableOp_1BAdam/Adam/update_dense_2/kernel/ResourceApplyAdam/ReadVariableOp_2%Adam/Adam/update_dense_2/kernel/Const+Adam/gradients/dense_2/MatMul_grad/MatMul_1*
use_locking(*
T0*
use_nesterov( 
h
#Adam/Adam/update_dense_2/bias/ConstConst*
valueB
 *Х┐╓3*
dtype0*
_output_shapes
: 
n
,Adam/Adam/update_dense_2/bias/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
e
#Adam/Adam/update_dense_2/bias/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
Ь
!Adam/Adam/update_dense_2/bias/addAdd,Adam/Adam/update_dense_2/bias/ReadVariableOp#Adam/Adam/update_dense_2/bias/add/y*
T0	*
_output_shapes
: 
Н
"Adam/Adam/update_dense_2/bias/CastCast!Adam/Adam/update_dense_2/bias/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
t
0Adam/Adam/update_dense_2/bias/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
Я
!Adam/Adam/update_dense_2/bias/PowPow0Adam/Adam/update_dense_2/bias/Pow/ReadVariableOp"Adam/Adam/update_dense_2/bias/Cast*
T0*
_output_shapes
: 
v
2Adam/Adam/update_dense_2/bias/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
г
#Adam/Adam/update_dense_2/bias/Pow_1Pow2Adam/Adam/update_dense_2/bias/Pow_1/ReadVariableOp"Adam/Adam/update_dense_2/bias/Cast*
_output_shapes
: *
T0
Й
>Adam/Adam/update_dense_2/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
Д
@Adam/Adam/update_dense_2/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
Д
@Adam/Adam/update_dense_2/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
О
/Adam/Adam/update_dense_2/bias/ResourceApplyAdamResourceApplyAdamdense_2/biasAdam/dense_2/bias/mAdam/dense_2/bias/v!Adam/Adam/update_dense_2/bias/Pow#Adam/Adam/update_dense_2/bias/Pow_1>Adam/Adam/update_dense_2/bias/ResourceApplyAdam/ReadVariableOp@Adam/Adam/update_dense_2/bias/ResourceApplyAdam/ReadVariableOp_1@Adam/Adam/update_dense_2/bias/ResourceApplyAdam/ReadVariableOp_2#Adam/Adam/update_dense_2/bias/Const/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0*
use_nesterov( 
│
Adam/Adam/ConstConst/^Adam/Adam/update_conv2d/bias/ResourceApplyAdam1^Adam/Adam/update_conv2d/kernel/ResourceApplyAdam1^Adam/Adam/update_conv2d_1/bias/ResourceApplyAdam3^Adam/Adam/update_conv2d_1/kernel/ResourceApplyAdam1^Adam/Adam/update_conv2d_2/bias/ResourceApplyAdam3^Adam/Adam/update_conv2d_2/kernel/ResourceApplyAdam.^Adam/Adam/update_dense/bias/ResourceApplyAdam0^Adam/Adam/update_dense/kernel/ResourceApplyAdam0^Adam/Adam/update_dense_1/bias/ResourceApplyAdam2^Adam/Adam/update_dense_1/kernel/ResourceApplyAdam0^Adam/Adam/update_dense_2/bias/ResourceApplyAdam2^Adam/Adam/update_dense_2/kernel/ResourceApplyAdam*
value	B	 R*
dtype0	*
_output_shapes
: 
]
Adam/Adam/AssignAddVariableOpAssignAddVariableOp	Adam/iterAdam/Adam/Const*
dtype0	
▄
Adam/Adam/ReadVariableOpReadVariableOp	Adam/iter^Adam/Adam/AssignAddVariableOp/^Adam/Adam/update_conv2d/bias/ResourceApplyAdam1^Adam/Adam/update_conv2d/kernel/ResourceApplyAdam1^Adam/Adam/update_conv2d_1/bias/ResourceApplyAdam3^Adam/Adam/update_conv2d_1/kernel/ResourceApplyAdam1^Adam/Adam/update_conv2d_2/bias/ResourceApplyAdam3^Adam/Adam/update_conv2d_2/kernel/ResourceApplyAdam.^Adam/Adam/update_dense/bias/ResourceApplyAdam0^Adam/Adam/update_dense/kernel/ResourceApplyAdam0^Adam/Adam/update_dense_1/bias/ResourceApplyAdam2^Adam/Adam/update_dense_1/kernel/ResourceApplyAdam0^Adam/Adam/update_dense_2/bias/ResourceApplyAdam2^Adam/Adam/update_dense_2/kernel/ResourceApplyAdam*
dtype0	*
_output_shapes
: 
H
training_1/group_depsNoOp^Adam/Adam/AssignAddVariableOp	^loss/mul
L
PlaceholderPlaceholder*
_output_shapes
: *
shape: *
dtype0
E
AssignVariableOpAssignVariableOptotalPlaceholder*
dtype0
_
ReadVariableOpReadVariableOptotal^AssignVariableOp*
dtype0*
_output_shapes
: 
N
Placeholder_1Placeholder*
dtype0*
_output_shapes
: *
shape: 
I
AssignVariableOp_1AssignVariableOpcountPlaceholder_1*
dtype0
c
ReadVariableOp_1ReadVariableOpcount^AssignVariableOp_1*
_output_shapes
: *
dtype0
X
VarIsInitializedOpVarIsInitializedOpAdam/conv2d_2/kernel/m*
_output_shapes
: 
Z
VarIsInitializedOp_1VarIsInitializedOpAdam/conv2d_1/kernel/m*
_output_shapes
: 
Y
VarIsInitializedOp_2VarIsInitializedOpAdam/dense_1/kernel/v*
_output_shapes
: 
Q
VarIsInitializedOp_3VarIsInitializedOpconv2d/kernel*
_output_shapes
: 
X
VarIsInitializedOp_4VarIsInitializedOpAdam/conv2d_2/bias/m*
_output_shapes
: 
W
VarIsInitializedOp_5VarIsInitializedOpAdam/dense/kernel/m*
_output_shapes
: 
O
VarIsInitializedOp_6VarIsInitializedOpconv2d/bias*
_output_shapes
: 
V
VarIsInitializedOp_7VarIsInitializedOpAdam/conv2d/bias/v*
_output_shapes
: 
R
VarIsInitializedOp_8VarIsInitializedOpdense_1/kernel*
_output_shapes
: 
V
VarIsInitializedOp_9VarIsInitializedOpAdam/conv2d/bias/m*
_output_shapes
: 
O
VarIsInitializedOp_10VarIsInitializedOp
dense/bias*
_output_shapes
: 
Q
VarIsInitializedOp_11VarIsInitializedOpdense_1/bias*
_output_shapes
: 
Y
VarIsInitializedOp_12VarIsInitializedOpAdam/conv2d/kernel/m*
_output_shapes
: 
O
VarIsInitializedOp_13VarIsInitializedOp
Adam/decay*
_output_shapes
: 
X
VarIsInitializedOp_14VarIsInitializedOpAdam/dense_1/bias/v*
_output_shapes
: 
Y
VarIsInitializedOp_15VarIsInitializedOpAdam/conv2d_1/bias/m*
_output_shapes
: 
P
VarIsInitializedOp_16VarIsInitializedOpAdam/beta_2*
_output_shapes
: 
Q
VarIsInitializedOp_17VarIsInitializedOpdense/kernel*
_output_shapes
: 
[
VarIsInitializedOp_18VarIsInitializedOpAdam/conv2d_1/kernel/v*
_output_shapes
: 
Z
VarIsInitializedOp_19VarIsInitializedOpAdam/dense_2/kernel/m*
_output_shapes
: 
X
VarIsInitializedOp_20VarIsInitializedOpAdam/dense_1/bias/m*
_output_shapes
: 
T
VarIsInitializedOp_21VarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 
X
VarIsInitializedOp_22VarIsInitializedOpAdam/dense_2/bias/m*
_output_shapes
: 
J
VarIsInitializedOp_23VarIsInitializedOpcount*
_output_shapes
: 
Y
VarIsInitializedOp_24VarIsInitializedOpAdam/conv2d/kernel/v*
_output_shapes
: 
V
VarIsInitializedOp_25VarIsInitializedOpAdam/dense/bias/v*
_output_shapes
: 
R
VarIsInitializedOp_26VarIsInitializedOpconv2d_2/bias*
_output_shapes
: 
Y
VarIsInitializedOp_27VarIsInitializedOpAdam/conv2d_1/bias/v*
_output_shapes
: 
[
VarIsInitializedOp_28VarIsInitializedOpAdam/conv2d_2/kernel/v*
_output_shapes
: 
V
VarIsInitializedOp_29VarIsInitializedOpAdam/dense/bias/m*
_output_shapes
: 
N
VarIsInitializedOp_30VarIsInitializedOp	Adam/iter*
_output_shapes
: 
Y
VarIsInitializedOp_31VarIsInitializedOpAdam/conv2d_2/bias/v*
_output_shapes
: 
P
VarIsInitializedOp_32VarIsInitializedOpAdam/beta_1*
_output_shapes
: 
Z
VarIsInitializedOp_33VarIsInitializedOpAdam/dense_1/kernel/m*
_output_shapes
: 
X
VarIsInitializedOp_34VarIsInitializedOpAdam/dense/kernel/v*
_output_shapes
: 
W
VarIsInitializedOp_35VarIsInitializedOpAdam/learning_rate*
_output_shapes
: 
Q
VarIsInitializedOp_36VarIsInitializedOpdense_2/bias*
_output_shapes
: 
X
VarIsInitializedOp_37VarIsInitializedOpAdam/dense_2/bias/v*
_output_shapes
: 
Z
VarIsInitializedOp_38VarIsInitializedOpAdam/dense_2/kernel/v*
_output_shapes
: 
S
VarIsInitializedOp_39VarIsInitializedOpdense_2/kernel*
_output_shapes
: 
T
VarIsInitializedOp_40VarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 
J
VarIsInitializedOp_41VarIsInitializedOptotal*
_output_shapes
: 
R
VarIsInitializedOp_42VarIsInitializedOpconv2d_1/bias*
_output_shapes
: 
х
init_1NoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/conv2d/bias/m/Assign^Adam/conv2d/bias/v/Assign^Adam/conv2d/kernel/m/Assign^Adam/conv2d/kernel/v/Assign^Adam/conv2d_1/bias/m/Assign^Adam/conv2d_1/bias/v/Assign^Adam/conv2d_1/kernel/m/Assign^Adam/conv2d_1/kernel/v/Assign^Adam/conv2d_2/bias/m/Assign^Adam/conv2d_2/bias/v/Assign^Adam/conv2d_2/kernel/m/Assign^Adam/conv2d_2/kernel/v/Assign^Adam/decay/Assign^Adam/dense/bias/m/Assign^Adam/dense/bias/v/Assign^Adam/dense/kernel/m/Assign^Adam/dense/kernel/v/Assign^Adam/dense_1/bias/m/Assign^Adam/dense_1/bias/v/Assign^Adam/dense_1/kernel/m/Assign^Adam/dense_1/kernel/v/Assign^Adam/dense_2/bias/m/Assign^Adam/dense_2/bias/v/Assign^Adam/dense_2/kernel/m/Assign^Adam/dense_2/kernel/v/Assign^Adam/iter/Assign^Adam/learning_rate/Assign^count/Assign^total/Assign
(
evaluation/group_depsNoOp	^loss/mul
,
predict/group_depsNoOp^dense_2/Softmax
[
save_1/filename/inputConst*
_output_shapes
: *
valueB Bmodel*
dtype0
r
save_1/filenamePlaceholderWithDefaultsave_1/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
_output_shapes
: *
shape: *
dtype0
Ж
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_161079bb1d1d4d5c8b57dea630cda161/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
Е
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
ч
save_1/SaveV2/tensor_namesConst*Ш
valueОBЛ)BAdam/beta_1BAdam/beta_2BAdam/conv2d/bias/mBAdam/conv2d/bias/vBAdam/conv2d/kernel/mBAdam/conv2d/kernel/vBAdam/conv2d_1/bias/mBAdam/conv2d_1/bias/vBAdam/conv2d_1/kernel/mBAdam/conv2d_1/kernel/vBAdam/conv2d_2/bias/mBAdam/conv2d_2/bias/vBAdam/conv2d_2/kernel/mBAdam/conv2d_2/kernel/vB
Adam/decayBAdam/dense/bias/mBAdam/dense/bias/vBAdam/dense/kernel/mBAdam/dense/kernel/vBAdam/dense_1/bias/mBAdam/dense_1/bias/vBAdam/dense_1/kernel/mBAdam/dense_1/kernel/vBAdam/dense_2/bias/mBAdam/dense_2/bias/vBAdam/dense_2/kernel/mBAdam/dense_2/kernel/vB	Adam/iterBAdam/learning_rateBconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernel*
dtype0*
_output_shapes
:)
╖
save_1/SaveV2/shape_and_slicesConst*
_output_shapes
:)*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
█
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOp&Adam/conv2d/bias/m/Read/ReadVariableOp&Adam/conv2d/bias/v/Read/ReadVariableOp(Adam/conv2d/kernel/m/Read/ReadVariableOp(Adam/conv2d/kernel/v/Read/ReadVariableOp(Adam/conv2d_1/bias/m/Read/ReadVariableOp(Adam/conv2d_1/bias/v/Read/ReadVariableOp*Adam/conv2d_1/kernel/m/Read/ReadVariableOp*Adam/conv2d_1/kernel/v/Read/ReadVariableOp(Adam/conv2d_2/bias/m/Read/ReadVariableOp(Adam/conv2d_2/bias/v/Read/ReadVariableOp*Adam/conv2d_2/kernel/m/Read/ReadVariableOp*Adam/conv2d_2/kernel/v/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOpAdam/iter/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp*7
dtypes-
+2)	
Щ
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
_output_shapes
: *
T0*)
_class
loc:@save_1/ShardedFilename
г
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
T0*

axis *
N*
_output_shapes
:
Г
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
В
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
T0*
_output_shapes
: 
ъ
save_1/RestoreV2/tensor_namesConst*Ш
valueОBЛ)BAdam/beta_1BAdam/beta_2BAdam/conv2d/bias/mBAdam/conv2d/bias/vBAdam/conv2d/kernel/mBAdam/conv2d/kernel/vBAdam/conv2d_1/bias/mBAdam/conv2d_1/bias/vBAdam/conv2d_1/kernel/mBAdam/conv2d_1/kernel/vBAdam/conv2d_2/bias/mBAdam/conv2d_2/bias/vBAdam/conv2d_2/kernel/mBAdam/conv2d_2/kernel/vB
Adam/decayBAdam/dense/bias/mBAdam/dense/bias/vBAdam/dense/kernel/mBAdam/dense/kernel/vBAdam/dense_1/bias/mBAdam/dense_1/bias/vBAdam/dense_1/kernel/mBAdam/dense_1/kernel/vBAdam/dense_2/bias/mBAdam/dense_2/bias/vBAdam/dense_2/kernel/mBAdam/dense_2/kernel/vB	Adam/iterBAdam/learning_rateBconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernel*
dtype0*
_output_shapes
:)
║
!save_1/RestoreV2/shape_and_slicesConst*
_output_shapes
:)*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
у
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*║
_output_shapesз
д:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)	
R
save_1/Identity_1Identitysave_1/RestoreV2*
_output_shapes
:*
T0
X
save_1/AssignVariableOpAssignVariableOpAdam/beta_1save_1/Identity_1*
dtype0
T
save_1/Identity_2Identitysave_1/RestoreV2:1*
T0*
_output_shapes
:
Z
save_1/AssignVariableOp_1AssignVariableOpAdam/beta_2save_1/Identity_2*
dtype0
T
save_1/Identity_3Identitysave_1/RestoreV2:2*
T0*
_output_shapes
:
a
save_1/AssignVariableOp_2AssignVariableOpAdam/conv2d/bias/msave_1/Identity_3*
dtype0
T
save_1/Identity_4Identitysave_1/RestoreV2:3*
T0*
_output_shapes
:
a
save_1/AssignVariableOp_3AssignVariableOpAdam/conv2d/bias/vsave_1/Identity_4*
dtype0
T
save_1/Identity_5Identitysave_1/RestoreV2:4*
T0*
_output_shapes
:
c
save_1/AssignVariableOp_4AssignVariableOpAdam/conv2d/kernel/msave_1/Identity_5*
dtype0
T
save_1/Identity_6Identitysave_1/RestoreV2:5*
T0*
_output_shapes
:
c
save_1/AssignVariableOp_5AssignVariableOpAdam/conv2d/kernel/vsave_1/Identity_6*
dtype0
T
save_1/Identity_7Identitysave_1/RestoreV2:6*
_output_shapes
:*
T0
c
save_1/AssignVariableOp_6AssignVariableOpAdam/conv2d_1/bias/msave_1/Identity_7*
dtype0
T
save_1/Identity_8Identitysave_1/RestoreV2:7*
T0*
_output_shapes
:
c
save_1/AssignVariableOp_7AssignVariableOpAdam/conv2d_1/bias/vsave_1/Identity_8*
dtype0
T
save_1/Identity_9Identitysave_1/RestoreV2:8*
T0*
_output_shapes
:
e
save_1/AssignVariableOp_8AssignVariableOpAdam/conv2d_1/kernel/msave_1/Identity_9*
dtype0
U
save_1/Identity_10Identitysave_1/RestoreV2:9*
_output_shapes
:*
T0
f
save_1/AssignVariableOp_9AssignVariableOpAdam/conv2d_1/kernel/vsave_1/Identity_10*
dtype0
V
save_1/Identity_11Identitysave_1/RestoreV2:10*
_output_shapes
:*
T0
e
save_1/AssignVariableOp_10AssignVariableOpAdam/conv2d_2/bias/msave_1/Identity_11*
dtype0
V
save_1/Identity_12Identitysave_1/RestoreV2:11*
T0*
_output_shapes
:
e
save_1/AssignVariableOp_11AssignVariableOpAdam/conv2d_2/bias/vsave_1/Identity_12*
dtype0
V
save_1/Identity_13Identitysave_1/RestoreV2:12*
_output_shapes
:*
T0
g
save_1/AssignVariableOp_12AssignVariableOpAdam/conv2d_2/kernel/msave_1/Identity_13*
dtype0
V
save_1/Identity_14Identitysave_1/RestoreV2:13*
T0*
_output_shapes
:
g
save_1/AssignVariableOp_13AssignVariableOpAdam/conv2d_2/kernel/vsave_1/Identity_14*
dtype0
V
save_1/Identity_15Identitysave_1/RestoreV2:14*
_output_shapes
:*
T0
[
save_1/AssignVariableOp_14AssignVariableOp
Adam/decaysave_1/Identity_15*
dtype0
V
save_1/Identity_16Identitysave_1/RestoreV2:15*
_output_shapes
:*
T0
b
save_1/AssignVariableOp_15AssignVariableOpAdam/dense/bias/msave_1/Identity_16*
dtype0
V
save_1/Identity_17Identitysave_1/RestoreV2:16*
T0*
_output_shapes
:
b
save_1/AssignVariableOp_16AssignVariableOpAdam/dense/bias/vsave_1/Identity_17*
dtype0
V
save_1/Identity_18Identitysave_1/RestoreV2:17*
_output_shapes
:*
T0
d
save_1/AssignVariableOp_17AssignVariableOpAdam/dense/kernel/msave_1/Identity_18*
dtype0
V
save_1/Identity_19Identitysave_1/RestoreV2:18*
T0*
_output_shapes
:
d
save_1/AssignVariableOp_18AssignVariableOpAdam/dense/kernel/vsave_1/Identity_19*
dtype0
V
save_1/Identity_20Identitysave_1/RestoreV2:19*
T0*
_output_shapes
:
d
save_1/AssignVariableOp_19AssignVariableOpAdam/dense_1/bias/msave_1/Identity_20*
dtype0
V
save_1/Identity_21Identitysave_1/RestoreV2:20*
T0*
_output_shapes
:
d
save_1/AssignVariableOp_20AssignVariableOpAdam/dense_1/bias/vsave_1/Identity_21*
dtype0
V
save_1/Identity_22Identitysave_1/RestoreV2:21*
T0*
_output_shapes
:
f
save_1/AssignVariableOp_21AssignVariableOpAdam/dense_1/kernel/msave_1/Identity_22*
dtype0
V
save_1/Identity_23Identitysave_1/RestoreV2:22*
_output_shapes
:*
T0
f
save_1/AssignVariableOp_22AssignVariableOpAdam/dense_1/kernel/vsave_1/Identity_23*
dtype0
V
save_1/Identity_24Identitysave_1/RestoreV2:23*
T0*
_output_shapes
:
d
save_1/AssignVariableOp_23AssignVariableOpAdam/dense_2/bias/msave_1/Identity_24*
dtype0
V
save_1/Identity_25Identitysave_1/RestoreV2:24*
_output_shapes
:*
T0
d
save_1/AssignVariableOp_24AssignVariableOpAdam/dense_2/bias/vsave_1/Identity_25*
dtype0
V
save_1/Identity_26Identitysave_1/RestoreV2:25*
T0*
_output_shapes
:
f
save_1/AssignVariableOp_25AssignVariableOpAdam/dense_2/kernel/msave_1/Identity_26*
dtype0
V
save_1/Identity_27Identitysave_1/RestoreV2:26*
_output_shapes
:*
T0
f
save_1/AssignVariableOp_26AssignVariableOpAdam/dense_2/kernel/vsave_1/Identity_27*
dtype0
V
save_1/Identity_28Identitysave_1/RestoreV2:27*
T0	*
_output_shapes
:
Z
save_1/AssignVariableOp_27AssignVariableOp	Adam/itersave_1/Identity_28*
dtype0	
V
save_1/Identity_29Identitysave_1/RestoreV2:28*
_output_shapes
:*
T0
c
save_1/AssignVariableOp_28AssignVariableOpAdam/learning_ratesave_1/Identity_29*
dtype0
V
save_1/Identity_30Identitysave_1/RestoreV2:29*
_output_shapes
:*
T0
\
save_1/AssignVariableOp_29AssignVariableOpconv2d/biassave_1/Identity_30*
dtype0
V
save_1/Identity_31Identitysave_1/RestoreV2:30*
_output_shapes
:*
T0
^
save_1/AssignVariableOp_30AssignVariableOpconv2d/kernelsave_1/Identity_31*
dtype0
V
save_1/Identity_32Identitysave_1/RestoreV2:31*
T0*
_output_shapes
:
^
save_1/AssignVariableOp_31AssignVariableOpconv2d_1/biassave_1/Identity_32*
dtype0
V
save_1/Identity_33Identitysave_1/RestoreV2:32*
_output_shapes
:*
T0
`
save_1/AssignVariableOp_32AssignVariableOpconv2d_1/kernelsave_1/Identity_33*
dtype0
V
save_1/Identity_34Identitysave_1/RestoreV2:33*
T0*
_output_shapes
:
^
save_1/AssignVariableOp_33AssignVariableOpconv2d_2/biassave_1/Identity_34*
dtype0
V
save_1/Identity_35Identitysave_1/RestoreV2:34*
T0*
_output_shapes
:
`
save_1/AssignVariableOp_34AssignVariableOpconv2d_2/kernelsave_1/Identity_35*
dtype0
V
save_1/Identity_36Identitysave_1/RestoreV2:35*
_output_shapes
:*
T0
[
save_1/AssignVariableOp_35AssignVariableOp
dense/biassave_1/Identity_36*
dtype0
V
save_1/Identity_37Identitysave_1/RestoreV2:36*
T0*
_output_shapes
:
]
save_1/AssignVariableOp_36AssignVariableOpdense/kernelsave_1/Identity_37*
dtype0
V
save_1/Identity_38Identitysave_1/RestoreV2:37*
_output_shapes
:*
T0
]
save_1/AssignVariableOp_37AssignVariableOpdense_1/biassave_1/Identity_38*
dtype0
V
save_1/Identity_39Identitysave_1/RestoreV2:38*
_output_shapes
:*
T0
_
save_1/AssignVariableOp_38AssignVariableOpdense_1/kernelsave_1/Identity_39*
dtype0
V
save_1/Identity_40Identitysave_1/RestoreV2:39*
T0*
_output_shapes
:
]
save_1/AssignVariableOp_39AssignVariableOpdense_2/biassave_1/Identity_40*
dtype0
V
save_1/Identity_41Identitysave_1/RestoreV2:40*
_output_shapes
:*
T0
_
save_1/AssignVariableOp_40AssignVariableOpdense_2/kernelsave_1/Identity_41*
dtype0
╡	
save_1/restore_shardNoOp^save_1/AssignVariableOp^save_1/AssignVariableOp_1^save_1/AssignVariableOp_10^save_1/AssignVariableOp_11^save_1/AssignVariableOp_12^save_1/AssignVariableOp_13^save_1/AssignVariableOp_14^save_1/AssignVariableOp_15^save_1/AssignVariableOp_16^save_1/AssignVariableOp_17^save_1/AssignVariableOp_18^save_1/AssignVariableOp_19^save_1/AssignVariableOp_2^save_1/AssignVariableOp_20^save_1/AssignVariableOp_21^save_1/AssignVariableOp_22^save_1/AssignVariableOp_23^save_1/AssignVariableOp_24^save_1/AssignVariableOp_25^save_1/AssignVariableOp_26^save_1/AssignVariableOp_27^save_1/AssignVariableOp_28^save_1/AssignVariableOp_29^save_1/AssignVariableOp_3^save_1/AssignVariableOp_30^save_1/AssignVariableOp_31^save_1/AssignVariableOp_32^save_1/AssignVariableOp_33^save_1/AssignVariableOp_34^save_1/AssignVariableOp_35^save_1/AssignVariableOp_36^save_1/AssignVariableOp_37^save_1/AssignVariableOp_38^save_1/AssignVariableOp_39^save_1/AssignVariableOp_4^save_1/AssignVariableOp_40^save_1/AssignVariableOp_5^save_1/AssignVariableOp_6^save_1/AssignVariableOp_7^save_1/AssignVariableOp_8^save_1/AssignVariableOp_9
1
save_1/restore_allNoOp^save_1/restore_shard "&B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"ц
cond_context╒╥
╘
dropout/cond/cond_textdropout/cond/pred_id:0dropout/cond/switch_t:0 *Ж
dense/Relu:0
dropout/cond/dropout/Cast:0
#dropout/cond/dropout/GreaterEqual:0
#dropout/cond/dropout/Shape/Switch:1
dropout/cond/dropout/Shape:0
dropout/cond/dropout/mul:0
dropout/cond/dropout/mul_1:0
3dropout/cond/dropout/random_uniform/RandomUniform:0
)dropout/cond/dropout/random_uniform/max:0
)dropout/cond/dropout/random_uniform/min:0
)dropout/cond/dropout/random_uniform/mul:0
)dropout/cond/dropout/random_uniform/sub:0
%dropout/cond/dropout/random_uniform:0
dropout/cond/dropout/rate:0
dropout/cond/dropout/sub/x:0
dropout/cond/dropout/sub:0
 dropout/cond/dropout/truediv/x:0
dropout/cond/dropout/truediv:0
dropout/cond/pred_id:0
dropout/cond/switch_t:00
dropout/cond/pred_id:0dropout/cond/pred_id:03
dense/Relu:0#dropout/cond/dropout/Shape/Switch:1
и
dropout/cond/cond_text_1dropout/cond/pred_id:0dropout/cond/switch_f:0*┌
dense/Relu:0
dropout/cond/Identity/Switch:0
dropout/cond/Identity:0
dropout/cond/pred_id:0
dropout/cond/switch_f:00
dropout/cond/pred_id:0dropout/cond/pred_id:0.
dense/Relu:0dropout/cond/Identity/Switch:0
К
dropout_1/cond/cond_textdropout_1/cond/pred_id:0dropout_1/cond/switch_t:0 *╢
dense_1/Relu:0
dropout_1/cond/dropout/Cast:0
%dropout_1/cond/dropout/GreaterEqual:0
%dropout_1/cond/dropout/Shape/Switch:1
dropout_1/cond/dropout/Shape:0
dropout_1/cond/dropout/mul:0
dropout_1/cond/dropout/mul_1:0
5dropout_1/cond/dropout/random_uniform/RandomUniform:0
+dropout_1/cond/dropout/random_uniform/max:0
+dropout_1/cond/dropout/random_uniform/min:0
+dropout_1/cond/dropout/random_uniform/mul:0
+dropout_1/cond/dropout/random_uniform/sub:0
'dropout_1/cond/dropout/random_uniform:0
dropout_1/cond/dropout/rate:0
dropout_1/cond/dropout/sub/x:0
dropout_1/cond/dropout/sub:0
"dropout_1/cond/dropout/truediv/x:0
 dropout_1/cond/dropout/truediv:0
dropout_1/cond/pred_id:0
dropout_1/cond/switch_t:04
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:07
dense_1/Relu:0%dropout_1/cond/dropout/Shape/Switch:1
└
dropout_1/cond/cond_text_1dropout_1/cond/pred_id:0dropout_1/cond/switch_f:0*ь
dense_1/Relu:0
 dropout_1/cond/Identity/Switch:0
dropout_1/cond/Identity:0
dropout_1/cond/pred_id:0
dropout_1/cond/switch_f:04
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:02
dense_1/Relu:0 dropout_1/cond/Identity/Switch:0"Б+
	variablesє*Ё*
|
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2*conv2d/kernel/Initializer/random_uniform:08
k
conv2d/bias:0conv2d/bias/Assign!conv2d/bias/Read/ReadVariableOp:0(2conv2d/bias/Initializer/zeros:08
Д
conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2,conv2d_1/kernel/Initializer/random_uniform:08
s
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2!conv2d_1/bias/Initializer/zeros:08
Д
conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2,conv2d_2/kernel/Initializer/random_uniform:08
s
conv2d_2/bias:0conv2d_2/bias/Assign#conv2d_2/bias/Read/ReadVariableOp:0(2!conv2d_2/bias/Initializer/zeros:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
А
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
А
dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2+dense_2/kernel/Initializer/random_uniform:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08
c
Adam/iter:0Adam/iter/AssignAdam/iter/Read/ReadVariableOp:0(2Adam/iter/Initializer/zeros:0H
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:0H
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:0H
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:0H
П
Adam/learning_rate:0Adam/learning_rate/Assign(Adam/learning_rate/Read/ReadVariableOp:0(2.Adam/learning_rate/Initializer/initial_value:0H
Н
Adam/conv2d/kernel/m:0Adam/conv2d/kernel/m/Assign*Adam/conv2d/kernel/m/Read/ReadVariableOp:0(2(Adam/conv2d/kernel/m/Initializer/zeros:0
Е
Adam/conv2d/bias/m:0Adam/conv2d/bias/m/Assign(Adam/conv2d/bias/m/Read/ReadVariableOp:0(2&Adam/conv2d/bias/m/Initializer/zeros:0
Х
Adam/conv2d_1/kernel/m:0Adam/conv2d_1/kernel/m/Assign,Adam/conv2d_1/kernel/m/Read/ReadVariableOp:0(2*Adam/conv2d_1/kernel/m/Initializer/zeros:0
Н
Adam/conv2d_1/bias/m:0Adam/conv2d_1/bias/m/Assign*Adam/conv2d_1/bias/m/Read/ReadVariableOp:0(2(Adam/conv2d_1/bias/m/Initializer/zeros:0
Х
Adam/conv2d_2/kernel/m:0Adam/conv2d_2/kernel/m/Assign,Adam/conv2d_2/kernel/m/Read/ReadVariableOp:0(2*Adam/conv2d_2/kernel/m/Initializer/zeros:0
Н
Adam/conv2d_2/bias/m:0Adam/conv2d_2/bias/m/Assign*Adam/conv2d_2/bias/m/Read/ReadVariableOp:0(2(Adam/conv2d_2/bias/m/Initializer/zeros:0
Й
Adam/dense/kernel/m:0Adam/dense/kernel/m/Assign)Adam/dense/kernel/m/Read/ReadVariableOp:0(2'Adam/dense/kernel/m/Initializer/zeros:0
Б
Adam/dense/bias/m:0Adam/dense/bias/m/Assign'Adam/dense/bias/m/Read/ReadVariableOp:0(2%Adam/dense/bias/m/Initializer/zeros:0
С
Adam/dense_1/kernel/m:0Adam/dense_1/kernel/m/Assign+Adam/dense_1/kernel/m/Read/ReadVariableOp:0(2)Adam/dense_1/kernel/m/Initializer/zeros:0
Й
Adam/dense_1/bias/m:0Adam/dense_1/bias/m/Assign)Adam/dense_1/bias/m/Read/ReadVariableOp:0(2'Adam/dense_1/bias/m/Initializer/zeros:0
С
Adam/dense_2/kernel/m:0Adam/dense_2/kernel/m/Assign+Adam/dense_2/kernel/m/Read/ReadVariableOp:0(2)Adam/dense_2/kernel/m/Initializer/zeros:0
Й
Adam/dense_2/bias/m:0Adam/dense_2/bias/m/Assign)Adam/dense_2/bias/m/Read/ReadVariableOp:0(2'Adam/dense_2/bias/m/Initializer/zeros:0
Н
Adam/conv2d/kernel/v:0Adam/conv2d/kernel/v/Assign*Adam/conv2d/kernel/v/Read/ReadVariableOp:0(2(Adam/conv2d/kernel/v/Initializer/zeros:0
Е
Adam/conv2d/bias/v:0Adam/conv2d/bias/v/Assign(Adam/conv2d/bias/v/Read/ReadVariableOp:0(2&Adam/conv2d/bias/v/Initializer/zeros:0
Х
Adam/conv2d_1/kernel/v:0Adam/conv2d_1/kernel/v/Assign,Adam/conv2d_1/kernel/v/Read/ReadVariableOp:0(2*Adam/conv2d_1/kernel/v/Initializer/zeros:0
Н
Adam/conv2d_1/bias/v:0Adam/conv2d_1/bias/v/Assign*Adam/conv2d_1/bias/v/Read/ReadVariableOp:0(2(Adam/conv2d_1/bias/v/Initializer/zeros:0
Х
Adam/conv2d_2/kernel/v:0Adam/conv2d_2/kernel/v/Assign,Adam/conv2d_2/kernel/v/Read/ReadVariableOp:0(2*Adam/conv2d_2/kernel/v/Initializer/zeros:0
Н
Adam/conv2d_2/bias/v:0Adam/conv2d_2/bias/v/Assign*Adam/conv2d_2/bias/v/Read/ReadVariableOp:0(2(Adam/conv2d_2/bias/v/Initializer/zeros:0
Й
Adam/dense/kernel/v:0Adam/dense/kernel/v/Assign)Adam/dense/kernel/v/Read/ReadVariableOp:0(2'Adam/dense/kernel/v/Initializer/zeros:0
Б
Adam/dense/bias/v:0Adam/dense/bias/v/Assign'Adam/dense/bias/v/Read/ReadVariableOp:0(2%Adam/dense/bias/v/Initializer/zeros:0
С
Adam/dense_1/kernel/v:0Adam/dense_1/kernel/v/Assign+Adam/dense_1/kernel/v/Read/ReadVariableOp:0(2)Adam/dense_1/kernel/v/Initializer/zeros:0
Й
Adam/dense_1/bias/v:0Adam/dense_1/bias/v/Assign)Adam/dense_1/bias/v/Read/ReadVariableOp:0(2'Adam/dense_1/bias/v/Initializer/zeros:0
С
Adam/dense_2/kernel/v:0Adam/dense_2/kernel/v/Assign+Adam/dense_2/kernel/v/Read/ReadVariableOp:0(2)Adam/dense_2/kernel/v/Initializer/zeros:0
Й
Adam/dense_2/bias/v:0Adam/dense_2/bias/v/Assign)Adam/dense_2/bias/v/Read/ReadVariableOp:0(2'Adam/dense_2/bias/v/Initializer/zeros:0"╔
trainable_variables▒о
|
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2*conv2d/kernel/Initializer/random_uniform:08
k
conv2d/bias:0conv2d/bias/Assign!conv2d/bias/Read/ReadVariableOp:0(2conv2d/bias/Initializer/zeros:08
Д
conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2,conv2d_1/kernel/Initializer/random_uniform:08
s
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2!conv2d_1/bias/Initializer/zeros:08
Д
conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2,conv2d_2/kernel/Initializer/random_uniform:08
s
conv2d_2/bias:0conv2d_2/bias/Assign#conv2d_2/bias/Read/ReadVariableOp:0(2!conv2d_2/bias/Initializer/zeros:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
А
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
А
dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2+dense_2/kernel/Initializer/random_uniform:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08*Ь
serving_defaultИ
6
input-
conv2d_input:0           2
output(
dense_2/Softmax:0         tensorflow/serving/predict