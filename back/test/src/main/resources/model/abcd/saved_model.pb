шо	
Ч//
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
2	

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
dtypetype
B
AssignVariableOp
resource
value"dtype"
dtypetype
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

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
Р
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
П
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

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
д
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
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
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
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
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
use_nesterovbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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

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
і
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

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
shapeshape
9
VarIsInitializedOp
resource
is_initialized

&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.14.02v1.14.0-rc1-22-gaf24dc91b5ўу

conv2d_inputPlaceholder*$
shape:џџџџџџџџџ  *
dtype0*/
_output_shapes
:џџџџџџџџџ  
Љ
.conv2d/kernel/Initializer/random_uniform/shapeConst*%
valueB"             * 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
:

,conv2d/kernel/Initializer/random_uniform/minConst*
valueB
 *OSО* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 

,conv2d/kernel/Initializer/random_uniform/maxConst*
valueB
 *OS>* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
№
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
: *

seed *
T0* 
_class
loc:@conv2d/kernel*
seed2 
в
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
ь
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
о
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
Б
conv2d/kernelVarHandleOp*
shared_nameconv2d/kernel* 
_class
loc:@conv2d/kernel*
	container *
shape: *
dtype0*
_output_shapes
: 
k
.conv2d/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/kernel*
_output_shapes
: 

conv2d/kernel/AssignAssignVariableOpconv2d/kernel(conv2d/kernel/Initializer/random_uniform* 
_class
loc:@conv2d/kernel*
dtype0

!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel* 
_class
loc:@conv2d/kernel*
dtype0*&
_output_shapes
: 

conv2d/bias/Initializer/zerosConst*
valueB *    *
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 

conv2d/biasVarHandleOp*
shape: *
dtype0*
_output_shapes
: *
shared_nameconv2d/bias*
_class
loc:@conv2d/bias*
	container 
g
,conv2d/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/bias*
_output_shapes
: 

conv2d/bias/AssignAssignVariableOpconv2d/biasconv2d/bias/Initializer/zeros*
_class
loc:@conv2d/bias*
dtype0

conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
e
conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
r
conv2d/Conv2D/ReadVariableOpReadVariableOpconv2d/kernel*
dtype0*&
_output_shapes
: 

conv2d/Conv2DConv2Dconv2d_inputconv2d/Conv2D/ReadVariableOp*
paddingVALID*/
_output_shapes
:џџџџџџџџџ *
	dilations
*
T0*
strides
*
data_formatNHWC*
explicit_paddings
 *
use_cudnn_on_gpu(
e
conv2d/BiasAdd/ReadVariableOpReadVariableOpconv2d/bias*
dtype0*
_output_shapes
: 

conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ 
]
conv2d/ReluReluconv2d/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ 
К
max_pooling2d/MaxPoolMaxPoolconv2d/Relu*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ *
T0*
strides
*
data_formatNHWC
­
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*%
valueB"          @   *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
:

.conv2d_1/kernel/Initializer/random_uniform/minConst*
valueB
 *ЋЊЊН*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 

.conv2d_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *ЋЊЊ=*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
і
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
: @*

seed *
T0*"
_class
loc:@conv2d_1/kernel*
seed2 
к
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
є
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: @
ц
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: @
З
conv2d_1/kernelVarHandleOp*
dtype0*
_output_shapes
: * 
shared_nameconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
	container *
shape: @
o
0conv2d_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 

conv2d_1/kernel/AssignAssignVariableOpconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_1/kernel*
dtype0

#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
dtype0*&
_output_shapes
: @

conv2d_1/bias/Initializer/zerosConst*
valueB@*    * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
:@
Ѕ
conv2d_1/biasVarHandleOp*
shared_nameconv2d_1/bias* 
_class
loc:@conv2d_1/bias*
	container *
shape:@*
dtype0*
_output_shapes
: 
k
.conv2d_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/bias*
_output_shapes
: 

conv2d_1/bias/AssignAssignVariableOpconv2d_1/biasconv2d_1/bias/Initializer/zeros* 
_class
loc:@conv2d_1/bias*
dtype0

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
conv2d_1/Conv2D/ReadVariableOpReadVariableOpconv2d_1/kernel*
dtype0*&
_output_shapes
: @

conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPoolconv2d_1/Conv2D/ReadVariableOp*
paddingVALID*/
_output_shapes
:џџџџџџџџџ@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
explicit_paddings
 
i
conv2d_1/BiasAdd/ReadVariableOpReadVariableOpconv2d_1/bias*
dtype0*
_output_shapes
:@

conv2d_1/BiasAddBiasAddconv2d_1/Conv2Dconv2d_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ@
a
conv2d_1/ReluReluconv2d_1/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ@
О
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu*/
_output_shapes
:џџџџџџџџџ@*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
­
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*%
valueB"      @   @   *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
:

.conv2d_2/kernel/Initializer/random_uniform/minConst*
valueB
 *:ЭН*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 

.conv2d_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *:Э=*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
і
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_2/kernel*
seed2 *
dtype0*&
_output_shapes
:@@*

seed 
к
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
є
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
З
conv2d_2/kernelVarHandleOp*"
_class
loc:@conv2d_2/kernel*
	container *
shape:@@*
dtype0*
_output_shapes
: * 
shared_nameconv2d_2/kernel
o
0conv2d_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 

conv2d_2/kernel/AssignAssignVariableOpconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_2/kernel*
dtype0

#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel*
dtype0*&
_output_shapes
:@@

conv2d_2/bias/Initializer/zerosConst*
valueB@*    * 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
:@
Ѕ
conv2d_2/biasVarHandleOp*
shared_nameconv2d_2/bias* 
_class
loc:@conv2d_2/bias*
	container *
shape:@*
dtype0*
_output_shapes
: 
k
.conv2d_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/bias*
_output_shapes
: 

conv2d_2/bias/AssignAssignVariableOpconv2d_2/biasconv2d_2/bias/Initializer/zeros* 
_class
loc:@conv2d_2/bias*
dtype0

!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias* 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
:@
g
conv2d_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_2/Conv2D/ReadVariableOpReadVariableOpconv2d_2/kernel*
dtype0*&
_output_shapes
:@@

conv2d_2/Conv2DConv2Dmax_pooling2d_1/MaxPoolconv2d_2/Conv2D/ReadVariableOp*/
_output_shapes
:џџџџџџџџџ@*
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
i
conv2d_2/BiasAdd/ReadVariableOpReadVariableOpconv2d_2/bias*
dtype0*
_output_shapes
:@

conv2d_2/BiasAddBiasAddconv2d_2/Conv2Dconv2d_2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ@
a
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ@
Z
flatten/ShapeShapeconv2d_2/Relu*
T0*
out_type0*
_output_shapes
:
e
flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
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
Ё
flatten/strided_sliceStridedSliceflatten/Shapeflatten/strided_slice/stackflatten/strided_slice/stack_1flatten/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
b
flatten/Reshape/shape/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

flatten/Reshape/shapePackflatten/strided_sliceflatten/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:

flatten/ReshapeReshapeconv2d_2/Reluflatten/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:џџџџџџџџџ

-dense/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:

+dense/kernel/Initializer/random_uniform/minConst*
valueB
 *:ЭН*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 

+dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *:Э=*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
ч
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
T0*
_class
loc:@dense/kernel*
seed2 *
dtype0* 
_output_shapes
:
*

seed 
Ю
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
т
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:

д
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:

Ј
dense/kernelVarHandleOp*
_class
loc:@dense/kernel*
	container *
shape:
*
dtype0*
_output_shapes
: *
shared_namedense/kernel
i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 

dense/kernel/AssignAssignVariableOpdense/kernel'dense/kernel/Initializer/random_uniform*
_class
loc:@dense/kernel*
dtype0

 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_class
loc:@dense/kernel*
dtype0* 
_output_shapes
:


dense/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense/bias*
dtype0*
_output_shapes	
:


dense/biasVarHandleOp*
shape:*
dtype0*
_output_shapes
: *
shared_name
dense/bias*
_class
loc:@dense/bias*
	container 
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

dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_class
loc:@dense/bias*
dtype0*
_output_shapes	
:
j
dense/MatMul/ReadVariableOpReadVariableOpdense/kernel*
dtype0* 
_output_shapes
:


dense/MatMulMatMulflatten/Reshapedense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( 
d
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes	
:

dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ
T

dense/ReluReludense/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
\
keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
|
keras_learning_phasePlaceholderWithDefaultkeras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 
l
dropout/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
Y
dropout/cond/switch_tIdentitydropout/cond/Switch:1*
T0
*
_output_shapes
: 
W
dropout/cond/switch_fIdentitydropout/cond/Switch*
T0
*
_output_shapes
: 
W
dropout/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
v
dropout/cond/dropout/rateConst^dropout/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
}
dropout/cond/dropout/ShapeShape#dropout/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
Г
!dropout/cond/dropout/Shape/SwitchSwitch
dense/Reludropout/cond/pred_id*
T0*
_class
loc:@dense/Relu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ

'dropout/cond/dropout/random_uniform/minConst^dropout/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

'dropout/cond/dropout/random_uniform/maxConst^dropout/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
З
1dropout/cond/dropout/random_uniform/RandomUniformRandomUniformdropout/cond/dropout/Shape*

seed *
T0*
dtype0*(
_output_shapes
:џџџџџџџџџ*
seed2 
Ё
'dropout/cond/dropout/random_uniform/subSub'dropout/cond/dropout/random_uniform/max'dropout/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Н
'dropout/cond/dropout/random_uniform/mulMul1dropout/cond/dropout/random_uniform/RandomUniform'dropout/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:џџџџџџџџџ
Џ
#dropout/cond/dropout/random_uniformAdd'dropout/cond/dropout/random_uniform/mul'dropout/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:џџџџџџџџџ
w
dropout/cond/dropout/sub/xConst^dropout/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
w
dropout/cond/dropout/subSubdropout/cond/dropout/sub/xdropout/cond/dropout/rate*
T0*
_output_shapes
: 
{
dropout/cond/dropout/truediv/xConst^dropout/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 

dropout/cond/dropout/truedivRealDivdropout/cond/dropout/truediv/xdropout/cond/dropout/sub*
T0*
_output_shapes
: 
Є
!dropout/cond/dropout/GreaterEqualGreaterEqual#dropout/cond/dropout/random_uniformdropout/cond/dropout/rate*
T0*(
_output_shapes
:џџџџџџџџџ

dropout/cond/dropout/mulMul#dropout/cond/dropout/Shape/Switch:1dropout/cond/dropout/truediv*
T0*(
_output_shapes
:џџџџџџџџџ

dropout/cond/dropout/CastCast!dropout/cond/dropout/GreaterEqual*

SrcT0
*
Truncate( *(
_output_shapes
:џџџџџџџџџ*

DstT0

dropout/cond/dropout/mul_1Muldropout/cond/dropout/muldropout/cond/dropout/Cast*
T0*(
_output_shapes
:џџџџџџџџџ
r
dropout/cond/IdentityIdentitydropout/cond/Identity/Switch*
T0*(
_output_shapes
:џџџџџџџџџ
Ў
dropout/cond/Identity/SwitchSwitch
dense/Reludropout/cond/pred_id*
T0*
_class
loc:@dense/Relu*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ

dropout/cond/MergeMergedropout/cond/Identitydropout/cond/dropout/mul_1*
T0*
N**
_output_shapes
:џџџџџџџџџ: 
Ѓ
/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"   @   *!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:

-dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *ѓ5О*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 

-dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *ѓ5>*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
ь
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*

seed *
T0*!
_class
loc:@dense_1/kernel*
seed2 *
dtype0*
_output_shapes
:	@
ж
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
:	@
л
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	@
­
dense_1/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense_1/kernel*!
_class
loc:@dense_1/kernel*
	container *
shape:	@
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 

dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*!
_class
loc:@dense_1/kernel*
dtype0

"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:	@

dense_1/bias/Initializer/zerosConst*
valueB@*    *
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:@
Ђ
dense_1/biasVarHandleOp*
shape:@*
dtype0*
_output_shapes
: *
shared_namedense_1/bias*
_class
loc:@dense_1/bias*
	container 
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 

dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
_class
loc:@dense_1/bias*
dtype0

 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:@
m
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes
:	@
Ѓ
dense_1/MatMulMatMuldropout/cond/Mergedense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@*
transpose_a( *
transpose_b( 
g
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:@

dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ@
W
dense_1/ReluReludense_1/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ@
n
dropout_1/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_1/cond/switch_tIdentitydropout_1/cond/Switch:1*
T0
*
_output_shapes
: 
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
dropout_1/cond/dropout/rateConst^dropout_1/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 

dropout_1/cond/dropout/ShapeShape%dropout_1/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
Й
#dropout_1/cond/dropout/Shape/SwitchSwitchdense_1/Reludropout_1/cond/pred_id*
T0*
_class
loc:@dense_1/Relu*:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@

)dropout_1/cond/dropout/random_uniform/minConst^dropout_1/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
К
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*

seed *
T0*
dtype0*'
_output_shapes
:џџџџџџџџџ@*
seed2 
Ї
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Т
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*
T0*'
_output_shapes
:џџџџџџџџџ@
Д
%dropout_1/cond/dropout/random_uniformAdd)dropout_1/cond/dropout/random_uniform/mul)dropout_1/cond/dropout/random_uniform/min*
T0*'
_output_shapes
:џџџџџџџџџ@
{
dropout_1/cond/dropout/sub/xConst^dropout_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
}
dropout_1/cond/dropout/subSubdropout_1/cond/dropout/sub/xdropout_1/cond/dropout/rate*
T0*
_output_shapes
: 

 dropout_1/cond/dropout/truediv/xConst^dropout_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 

dropout_1/cond/dropout/truedivRealDiv dropout_1/cond/dropout/truediv/xdropout_1/cond/dropout/sub*
T0*
_output_shapes
: 
Љ
#dropout_1/cond/dropout/GreaterEqualGreaterEqual%dropout_1/cond/dropout/random_uniformdropout_1/cond/dropout/rate*
T0*'
_output_shapes
:џџџџџџџџџ@

dropout_1/cond/dropout/mulMul%dropout_1/cond/dropout/Shape/Switch:1dropout_1/cond/dropout/truediv*
T0*'
_output_shapes
:џџџџџџџџџ@

dropout_1/cond/dropout/CastCast#dropout_1/cond/dropout/GreaterEqual*

SrcT0
*
Truncate( *'
_output_shapes
:џџџџџџџџџ@*

DstT0

dropout_1/cond/dropout/mul_1Muldropout_1/cond/dropout/muldropout_1/cond/dropout/Cast*
T0*'
_output_shapes
:џџџџџџџџџ@
u
dropout_1/cond/IdentityIdentitydropout_1/cond/Identity/Switch*
T0*'
_output_shapes
:џџџџџџџџџ@
Д
dropout_1/cond/Identity/SwitchSwitchdense_1/Reludropout_1/cond/pred_id*
T0*
_class
loc:@dense_1/Relu*:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@

dropout_1/cond/MergeMergedropout_1/cond/Identitydropout_1/cond/dropout/mul_1*
T0*
N*)
_output_shapes
:џџџџџџџџџ@: 
Ѓ
/dense_2/kernel/Initializer/random_uniform/shapeConst*
valueB"@      *!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
:

-dense_2/kernel/Initializer/random_uniform/minConst*
valueB
 *HYО*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 

-dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *HY>*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
ы
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:@*

seed *
T0*!
_class
loc:@dense_2/kernel*
seed2 
ж
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
ш
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes

:@
к
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes

:@
Ќ
dense_2/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense_2/kernel*!
_class
loc:@dense_2/kernel*
	container *
shape
:@
m
/dense_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/kernel*
_output_shapes
: 

dense_2/kernel/AssignAssignVariableOpdense_2/kernel)dense_2/kernel/Initializer/random_uniform*!
_class
loc:@dense_2/kernel*
dtype0

"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes

:@

dense_2/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
:
Ђ
dense_2/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense_2/bias*
_class
loc:@dense_2/bias*
	container *
shape:
i
-dense_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/bias*
_output_shapes
: 

dense_2/bias/AssignAssignVariableOpdense_2/biasdense_2/bias/Initializer/zeros*
_class
loc:@dense_2/bias*
dtype0

 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
:
l
dense_2/MatMul/ReadVariableOpReadVariableOpdense_2/kernel*
dtype0*
_output_shapes

:@
Ѕ
dense_2/MatMulMatMuldropout_1/cond/Mergedense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( 
g
dense_2/BiasAdd/ReadVariableOpReadVariableOpdense_2/bias*
dtype0*
_output_shapes
:

dense_2/BiasAddBiasAdddense_2/MatMuldense_2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ
]
dense_2/SoftmaxSoftmaxdense_2/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ

dense_2_targetPlaceholder*
dtype0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*%
shape:џџџџџџџџџџџџџџџџџџ
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

totalVarHandleOp*
shape: *
dtype0*
_output_shapes
: *
shared_nametotal*
_class

loc:@total*
	container 
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

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
count/Read/ReadVariableOpReadVariableOpcount*
_class

loc:@count*
dtype0*
_output_shapes
: 
|
metrics/acc/SqueezeSqueezedense_2_target*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

џџџџџџџџџ
g
metrics/acc/ArgMax/dimensionConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

metrics/acc/ArgMaxArgMaxdense_2/Softmaxmetrics/acc/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:џџџџџџџџџ
y
metrics/acc/CastCastmetrics/acc/ArgMax*

SrcT0	*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0
o
metrics/acc/EqualEqualmetrics/acc/Squeezemetrics/acc/Cast*
T0*#
_output_shapes
:џџџџџџџџџ
z
metrics/acc/Cast_1Castmetrics/acc/Equal*

SrcT0
*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0
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

metrics/acc/ReadVariableOpReadVariableOptotal ^metrics/acc/AssignAddVariableOp^metrics/acc/Sum*
dtype0*
_output_shapes
: 
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

!metrics/acc/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/acc/Cast_2 ^metrics/acc/AssignAddVariableOp*
dtype0
 
metrics/acc/ReadVariableOp_1ReadVariableOpcount ^metrics/acc/AssignAddVariableOp"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 

%metrics/acc/div_no_nan/ReadVariableOpReadVariableOptotal"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 

'metrics/acc/div_no_nan/ReadVariableOp_1ReadVariableOpcount"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 

metrics/acc/div_no_nanDivNoNan%metrics/acc/div_no_nan/ReadVariableOp'metrics/acc/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
Y
metrics/acc/IdentityIdentitymetrics/acc/div_no_nan*
T0*
_output_shapes
: 
r
loss/dense_2_loss/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

loss/dense_2_loss/ReshapeReshapedense_2_targetloss/dense_2_loss/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ

loss/dense_2_loss/CastCastloss/dense_2_loss/Reshape*

SrcT0*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0	
r
!loss/dense_2_loss/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:

loss/dense_2_loss/Reshape_1Reshapedense_2/BiasAdd!loss/dense_2_loss/Reshape_1/shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ

;loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShapeloss/dense_2_loss/Cast*
T0	*
out_type0*
_output_shapes
:

Yloss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsloss/dense_2_loss/Reshape_1loss/dense_2_loss/Cast*
T0*6
_output_shapes$
":џџџџџџџџџ:џџџџџџџџџ*
Tlabels0	
j
%loss/dense_2_loss/weighted_loss/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Tloss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Sloss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
ь
Sloss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/shapeShapeYloss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:

Rloss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
j
bloss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
П
Aloss/dense_2_loss/weighted_loss/broadcast_weights/ones_like/ShapeShapeYloss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsc^loss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
ы
Aloss/dense_2_loss/weighted_loss/broadcast_weights/ones_like/ConstConstc^loss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 

;loss/dense_2_loss/weighted_loss/broadcast_weights/ones_likeFillAloss/dense_2_loss/weighted_loss/broadcast_weights/ones_like/ShapeAloss/dense_2_loss/weighted_loss/broadcast_weights/ones_like/Const*
T0*

index_type0*#
_output_shapes
:џџџџџџџџџ
Ъ
1loss/dense_2_loss/weighted_loss/broadcast_weightsMul%loss/dense_2_loss/weighted_loss/Const;loss/dense_2_loss/weighted_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:џџџџџџџџџ
ц
#loss/dense_2_loss/weighted_loss/MulMulYloss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits1loss/dense_2_loss/weighted_loss/broadcast_weights*
T0*#
_output_shapes
:џџџџџџџџџ
a
loss/dense_2_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:

loss/dense_2_loss/SumSum#loss/dense_2_loss/weighted_loss/Mulloss/dense_2_loss/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
|
loss/dense_2_loss/num_elementsSize#loss/dense_2_loss/weighted_loss/Mul*
T0*
out_type0*
_output_shapes
: 

#loss/dense_2_loss/num_elements/CastCastloss/dense_2_loss/num_elements*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
\
loss/dense_2_loss/Const_1Const*
valueB *
dtype0*
_output_shapes
: 

loss/dense_2_loss/Sum_1Sumloss/dense_2_loss/Sumloss/dense_2_loss/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

loss/dense_2_loss/valueDivNoNanloss/dense_2_loss/Sum_1#loss/dense_2_loss/num_elements/Cast*
T0*
_output_shapes
: 
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
U
loss/mulMul
loss/mul/xloss/dense_2_loss/value*
T0*
_output_shapes
: 
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 

save/SaveV2/tensor_namesConst*Ч
valueНBКBconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernel*
dtype0*
_output_shapes
:
{
save/SaveV2/shape_and_slicesConst*+
value"B B B B B B B B B B B B B *
dtype0*
_output_shapes
:

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

save/RestoreV2/tensor_namesConst*Ч
valueНBКBconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernel*
dtype0*
_output_shapes
:
~
save/RestoreV2/shape_and_slicesConst*+
value"B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ч
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*D
_output_shapes2
0::::::::::::
L
save/IdentityIdentitysave/RestoreV2*
T0*
_output_shapes
:
R
save/AssignVariableOpAssignVariableOpconv2d/biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:1*
T0*
_output_shapes
:
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
save/Identity_4Identitysave/RestoreV2:4*
T0*
_output_shapes
:
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
save/Identity_6Identitysave/RestoreV2:6*
T0*
_output_shapes
:
U
save/AssignVariableOp_6AssignVariableOp
dense/biassave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:7*
T0*
_output_shapes
:
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
save/Identity_9Identitysave/RestoreV2:9*
T0*
_output_shapes
:
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
save/Identity_11Identitysave/RestoreV2:11*
T0*
_output_shapes
:
[
save/AssignVariableOp_11AssignVariableOpdense_2/kernelsave/Identity_11*
dtype0
а
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9

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
 *  ?*
dtype0*
_output_shapes
: 
~
Adam/gradients/FillFillAdam/gradients/ShapeAdam/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
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
1Adam/gradients/loss/dense_2_loss/value_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
v
3Adam/gradients/loss/dense_2_loss/value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
џ
AAdam/gradients/loss/dense_2_loss/value_grad/BroadcastGradientArgsBroadcastGradientArgs1Adam/gradients/loss/dense_2_loss/value_grad/Shape3Adam/gradients/loss/dense_2_loss/value_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ќ
6Adam/gradients/loss/dense_2_loss/value_grad/div_no_nanDivNoNan"Adam/gradients/loss/mul_grad/Mul_1#loss/dense_2_loss/num_elements/Cast*
T0*
_output_shapes
: 
я
/Adam/gradients/loss/dense_2_loss/value_grad/SumSum6Adam/gradients/loss/dense_2_loss/value_grad/div_no_nanAAdam/gradients/loss/dense_2_loss/value_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
б
3Adam/gradients/loss/dense_2_loss/value_grad/ReshapeReshape/Adam/gradients/loss/dense_2_loss/value_grad/Sum1Adam/gradients/loss/dense_2_loss/value_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
p
/Adam/gradients/loss/dense_2_loss/value_grad/NegNegloss/dense_2_loss/Sum_1*
T0*
_output_shapes
: 
Л
8Adam/gradients/loss/dense_2_loss/value_grad/div_no_nan_1DivNoNan/Adam/gradients/loss/dense_2_loss/value_grad/Neg#loss/dense_2_loss/num_elements/Cast*
T0*
_output_shapes
: 
Ф
8Adam/gradients/loss/dense_2_loss/value_grad/div_no_nan_2DivNoNan8Adam/gradients/loss/dense_2_loss/value_grad/div_no_nan_1#loss/dense_2_loss/num_elements/Cast*
T0*
_output_shapes
: 
Е
/Adam/gradients/loss/dense_2_loss/value_grad/mulMul"Adam/gradients/loss/mul_grad/Mul_18Adam/gradients/loss/dense_2_loss/value_grad/div_no_nan_2*
T0*
_output_shapes
: 
ь
1Adam/gradients/loss/dense_2_loss/value_grad/Sum_1Sum/Adam/gradients/loss/dense_2_loss/value_grad/mulCAdam/gradients/loss/dense_2_loss/value_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
з
5Adam/gradients/loss/dense_2_loss/value_grad/Reshape_1Reshape1Adam/gradients/loss/dense_2_loss/value_grad/Sum_13Adam/gradients/loss/dense_2_loss/value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
|
9Adam/gradients/loss/dense_2_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
н
3Adam/gradients/loss/dense_2_loss/Sum_1_grad/ReshapeReshape3Adam/gradients/loss/dense_2_loss/value_grad/Reshape9Adam/gradients/loss/dense_2_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
t
1Adam/gradients/loss/dense_2_loss/Sum_1_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: 
г
0Adam/gradients/loss/dense_2_loss/Sum_1_grad/TileTile3Adam/gradients/loss/dense_2_loss/Sum_1_grad/Reshape1Adam/gradients/loss/dense_2_loss/Sum_1_grad/Const*
T0*
_output_shapes
: *

Tmultiples0

7Adam/gradients/loss/dense_2_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
к
1Adam/gradients/loss/dense_2_loss/Sum_grad/ReshapeReshape0Adam/gradients/loss/dense_2_loss/Sum_1_grad/Tile7Adam/gradients/loss/dense_2_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:

/Adam/gradients/loss/dense_2_loss/Sum_grad/ShapeShape#loss/dense_2_loss/weighted_loss/Mul*
T0*
out_type0*
_output_shapes
:
к
.Adam/gradients/loss/dense_2_loss/Sum_grad/TileTile1Adam/gradients/loss/dense_2_loss/Sum_grad/Reshape/Adam/gradients/loss/dense_2_loss/Sum_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:џџџџџџџџџ
ж
=Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/ShapeShapeYloss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
А
?Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Shape_1Shape1loss/dense_2_loss/weighted_loss/broadcast_weights*
T0*
out_type0*
_output_shapes
:
Ѓ
MAdam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs=Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Shape?Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
г
;Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/MulMul.Adam/gradients/loss/dense_2_loss/Sum_grad/Tile1loss/dense_2_loss/weighted_loss/broadcast_weights*
T0*#
_output_shapes
:џџџџџџџџџ

;Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/SumSum;Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/MulMAdam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

?Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/ReshapeReshape;Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Sum=Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
§
=Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Mul_1MulYloss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits.Adam/gradients/loss/dense_2_loss/Sum_grad/Tile*
T0*#
_output_shapes
:џџџџџџџџџ

=Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Sum_1Sum=Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Mul_1OAdam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

AAdam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Reshape_1Reshape=Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Sum_1?Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
Е
Adam/gradients/zeros_like	ZerosLike[loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:џџџџџџџџџ
ж
}Adam/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradient[loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:џџџџџџџџџ*Д
messageЈЅCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
Ч
|Adam/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

xAdam/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims?Adam/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Reshape|Adam/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*'
_output_shapes
:џџџџџџџџџ*

Tdim0
Ѓ
qAdam/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulxAdam/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims}Adam/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*'
_output_shapes
:џџџџџџџџџ

5Adam/gradients/loss/dense_2_loss/Reshape_1_grad/ShapeShapedense_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
Ќ
7Adam/gradients/loss/dense_2_loss/Reshape_1_grad/ReshapeReshapeqAdam/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul5Adam/gradients/loss/dense_2_loss/Reshape_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ
Г
/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad7Adam/gradients/loss/dense_2_loss/Reshape_1_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:
у
)Adam/gradients/dense_2/MatMul_grad/MatMulMatMul7Adam/gradients/loss/dense_2_loss/Reshape_1_grad/Reshapedense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@*
transpose_a( *
transpose_b(
г
+Adam/gradients/dense_2/MatMul_grad/MatMul_1MatMuldropout_1/cond/Merge7Adam/gradients/loss/dense_2_loss/Reshape_1_grad/Reshape*
transpose_b( *
T0*
_output_shapes

:@*
transpose_a(

2Adam/gradients/dropout_1/cond/Merge_grad/cond_gradSwitch)Adam/gradients/dense_2/MatMul_grad/MatMuldropout_1/cond/pred_id*
T0*<
_class2
0.loc:@Adam/gradients/dense_2/MatMul_grad/MatMul*:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@

6Adam/gradients/dropout_1/cond/dropout/mul_1_grad/ShapeShapedropout_1/cond/dropout/mul*
T0*
out_type0*
_output_shapes
:

8Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1Shapedropout_1/cond/dropout/Cast*
T0*
out_type0*
_output_shapes
:

FAdam/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs6Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape8Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Р
4Adam/gradients/dropout_1/cond/dropout/mul_1_grad/MulMul4Adam/gradients/dropout_1/cond/Merge_grad/cond_grad:1dropout_1/cond/dropout/Cast*
T0*'
_output_shapes
:џџџџџџџџџ@
љ
4Adam/gradients/dropout_1/cond/dropout/mul_1_grad/SumSum4Adam/gradients/dropout_1/cond/dropout/mul_1_grad/MulFAdam/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
ё
8Adam/gradients/dropout_1/cond/dropout/mul_1_grad/ReshapeReshape4Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Sum6Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ@
С
6Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Mul_1Muldropout_1/cond/dropout/mul4Adam/gradients/dropout_1/cond/Merge_grad/cond_grad:1*
T0*'
_output_shapes
:џџџџџџџџџ@
џ
6Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Sum_1Sum6Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Mul_1HAdam/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ї
:Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Reshape_1Reshape6Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Sum_18Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ@

Adam/gradients/SwitchSwitchdense_1/Reludropout_1/cond/pred_id*
T0*:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@
n
Adam/gradients/IdentityIdentityAdam/gradients/Switch:1*
T0*'
_output_shapes
:џџџџџџџџџ@
m
Adam/gradients/Shape_1ShapeAdam/gradients/Switch:1*
T0*
out_type0*
_output_shapes
:
y
Adam/gradients/zeros/ConstConst^Adam/gradients/Identity*
valueB
 *    *
dtype0*
_output_shapes
: 

Adam/gradients/zerosFillAdam/gradients/Shape_1Adam/gradients/zeros/Const*
T0*

index_type0*'
_output_shapes
:џџџџџџџџџ@
Ь
<Adam/gradients/dropout_1/cond/Identity/Switch_grad/cond_gradMerge2Adam/gradients/dropout_1/cond/Merge_grad/cond_gradAdam/gradients/zeros*
T0*
N*)
_output_shapes
:џџџџџџџџџ@: 

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

DAdam/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs4Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape6Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Х
2Adam/gradients/dropout_1/cond/dropout/mul_grad/MulMul8Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Reshapedropout_1/cond/dropout/truediv*
T0*'
_output_shapes
:џџџџџџџџџ@
ѓ
2Adam/gradients/dropout_1/cond/dropout/mul_grad/SumSum2Adam/gradients/dropout_1/cond/dropout/mul_grad/MulDAdam/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ы
6Adam/gradients/dropout_1/cond/dropout/mul_grad/ReshapeReshape2Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum4Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ@
Ю
4Adam/gradients/dropout_1/cond/dropout/mul_grad/Mul_1Mul%dropout_1/cond/dropout/Shape/Switch:18Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Reshape*
T0*'
_output_shapes
:џџџџџџџџџ@
љ
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

Adam/gradients/Switch_1Switchdense_1/Reludropout_1/cond/pred_id*
T0*:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@
p
Adam/gradients/Identity_1IdentityAdam/gradients/Switch_1*
T0*'
_output_shapes
:џџџџџџџџџ@
m
Adam/gradients/Shape_2ShapeAdam/gradients/Switch_1*
T0*
out_type0*
_output_shapes
:
}
Adam/gradients/zeros_1/ConstConst^Adam/gradients/Identity_1*
valueB
 *    *
dtype0*
_output_shapes
: 

Adam/gradients/zeros_1FillAdam/gradients/Shape_2Adam/gradients/zeros_1/Const*
T0*

index_type0*'
_output_shapes
:џџџџџџџџџ@
з
AAdam/gradients/dropout_1/cond/dropout/Shape/Switch_grad/cond_gradMergeAdam/gradients/zeros_16Adam/gradients/dropout_1/cond/dropout/mul_grad/Reshape*
T0*
N*)
_output_shapes
:џџџџџџџџџ@: 
Ј
Adam/gradients/AddNAddN<Adam/gradients/dropout_1/cond/Identity/Switch_grad/cond_gradAAdam/gradients/dropout_1/cond/dropout/Shape/Switch_grad/cond_grad*
T0*O
_classE
CAloc:@Adam/gradients/dropout_1/cond/Identity/Switch_grad/cond_grad*
N*'
_output_shapes
:џџџџџџџџџ@

)Adam/gradients/dense_1/Relu_grad/ReluGradReluGradAdam/gradients/AddNdense_1/Relu*
T0*'
_output_shapes
:џџџџџџџџџ@
Ѕ
/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad)Adam/gradients/dense_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
ж
)Adam/gradients/dense_1/MatMul_grad/MatMulMatMul)Adam/gradients/dense_1/Relu_grad/ReluGraddense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b(
Ф
+Adam/gradients/dense_1/MatMul_grad/MatMul_1MatMuldropout/cond/Merge)Adam/gradients/dense_1/Relu_grad/ReluGrad*
transpose_b( *
T0*
_output_shapes
:	@*
transpose_a(

0Adam/gradients/dropout/cond/Merge_grad/cond_gradSwitch)Adam/gradients/dense_1/MatMul_grad/MatMuldropout/cond/pred_id*
T0*<
_class2
0.loc:@Adam/gradients/dense_1/MatMul_grad/MatMul*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ

4Adam/gradients/dropout/cond/dropout/mul_1_grad/ShapeShapedropout/cond/dropout/mul*
T0*
out_type0*
_output_shapes
:

6Adam/gradients/dropout/cond/dropout/mul_1_grad/Shape_1Shapedropout/cond/dropout/Cast*
T0*
out_type0*
_output_shapes
:

DAdam/gradients/dropout/cond/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs4Adam/gradients/dropout/cond/dropout/mul_1_grad/Shape6Adam/gradients/dropout/cond/dropout/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Л
2Adam/gradients/dropout/cond/dropout/mul_1_grad/MulMul2Adam/gradients/dropout/cond/Merge_grad/cond_grad:1dropout/cond/dropout/Cast*
T0*(
_output_shapes
:џџџџџџџџџ
ѓ
2Adam/gradients/dropout/cond/dropout/mul_1_grad/SumSum2Adam/gradients/dropout/cond/dropout/mul_1_grad/MulDAdam/gradients/dropout/cond/dropout/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ь
6Adam/gradients/dropout/cond/dropout/mul_1_grad/ReshapeReshape2Adam/gradients/dropout/cond/dropout/mul_1_grad/Sum4Adam/gradients/dropout/cond/dropout/mul_1_grad/Shape*
T0*
Tshape0*(
_output_shapes
:џџџџџџџџџ
М
4Adam/gradients/dropout/cond/dropout/mul_1_grad/Mul_1Muldropout/cond/dropout/mul2Adam/gradients/dropout/cond/Merge_grad/cond_grad:1*
T0*(
_output_shapes
:џџџџџџџџџ
љ
4Adam/gradients/dropout/cond/dropout/mul_1_grad/Sum_1Sum4Adam/gradients/dropout/cond/dropout/mul_1_grad/Mul_1FAdam/gradients/dropout/cond/dropout/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ђ
8Adam/gradients/dropout/cond/dropout/mul_1_grad/Reshape_1Reshape4Adam/gradients/dropout/cond/dropout/mul_1_grad/Sum_16Adam/gradients/dropout/cond/dropout/mul_1_grad/Shape_1*
T0*
Tshape0*(
_output_shapes
:џџџџџџџџџ

Adam/gradients/Switch_2Switch
dense/Reludropout/cond/pred_id*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ
s
Adam/gradients/Identity_2IdentityAdam/gradients/Switch_2:1*
T0*(
_output_shapes
:џџџџџџџџџ
o
Adam/gradients/Shape_3ShapeAdam/gradients/Switch_2:1*
T0*
out_type0*
_output_shapes
:
}
Adam/gradients/zeros_2/ConstConst^Adam/gradients/Identity_2*
valueB
 *    *
dtype0*
_output_shapes
: 

Adam/gradients/zeros_2FillAdam/gradients/Shape_3Adam/gradients/zeros_2/Const*
T0*

index_type0*(
_output_shapes
:џџџџџџџџџ
Ы
:Adam/gradients/dropout/cond/Identity/Switch_grad/cond_gradMerge0Adam/gradients/dropout/cond/Merge_grad/cond_gradAdam/gradients/zeros_2*
T0*
N**
_output_shapes
:џџџџџџџџџ: 

2Adam/gradients/dropout/cond/dropout/mul_grad/ShapeShape#dropout/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
w
4Adam/gradients/dropout/cond/dropout/mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 

BAdam/gradients/dropout/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs2Adam/gradients/dropout/cond/dropout/mul_grad/Shape4Adam/gradients/dropout/cond/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Р
0Adam/gradients/dropout/cond/dropout/mul_grad/MulMul6Adam/gradients/dropout/cond/dropout/mul_1_grad/Reshapedropout/cond/dropout/truediv*
T0*(
_output_shapes
:џџџџџџџџџ
э
0Adam/gradients/dropout/cond/dropout/mul_grad/SumSum0Adam/gradients/dropout/cond/dropout/mul_grad/MulBAdam/gradients/dropout/cond/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ц
4Adam/gradients/dropout/cond/dropout/mul_grad/ReshapeReshape0Adam/gradients/dropout/cond/dropout/mul_grad/Sum2Adam/gradients/dropout/cond/dropout/mul_grad/Shape*
T0*
Tshape0*(
_output_shapes
:џџџџџџџџџ
Щ
2Adam/gradients/dropout/cond/dropout/mul_grad/Mul_1Mul#dropout/cond/dropout/Shape/Switch:16Adam/gradients/dropout/cond/dropout/mul_1_grad/Reshape*
T0*(
_output_shapes
:џџџџџџџџџ
ѓ
2Adam/gradients/dropout/cond/dropout/mul_grad/Sum_1Sum2Adam/gradients/dropout/cond/dropout/mul_grad/Mul_1DAdam/gradients/dropout/cond/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
к
6Adam/gradients/dropout/cond/dropout/mul_grad/Reshape_1Reshape2Adam/gradients/dropout/cond/dropout/mul_grad/Sum_14Adam/gradients/dropout/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 

Adam/gradients/Switch_3Switch
dense/Reludropout/cond/pred_id*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ
q
Adam/gradients/Identity_3IdentityAdam/gradients/Switch_3*
T0*(
_output_shapes
:џџџџџџџџџ
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

Adam/gradients/zeros_3FillAdam/gradients/Shape_4Adam/gradients/zeros_3/Const*
T0*

index_type0*(
_output_shapes
:џџџџџџџџџ
д
?Adam/gradients/dropout/cond/dropout/Shape/Switch_grad/cond_gradMergeAdam/gradients/zeros_34Adam/gradients/dropout/cond/dropout/mul_grad/Reshape*
T0*
N**
_output_shapes
:џџџџџџџџџ: 
Ѕ
Adam/gradients/AddN_1AddN:Adam/gradients/dropout/cond/Identity/Switch_grad/cond_grad?Adam/gradients/dropout/cond/dropout/Shape/Switch_grad/cond_grad*
T0*M
_classC
A?loc:@Adam/gradients/dropout/cond/Identity/Switch_grad/cond_grad*
N*(
_output_shapes
:џџџџџџџџџ

'Adam/gradients/dense/Relu_grad/ReluGradReluGradAdam/gradients/AddN_1
dense/Relu*
T0*(
_output_shapes
:џџџџџџџџџ
Ђ
-Adam/gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'Adam/gradients/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:
а
'Adam/gradients/dense/MatMul_grad/MatMulMatMul'Adam/gradients/dense/Relu_grad/ReluGraddense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b(
О
)Adam/gradients/dense/MatMul_grad/MatMul_1MatMulflatten/Reshape'Adam/gradients/dense/Relu_grad/ReluGrad*
T0* 
_output_shapes
:
*
transpose_a(*
transpose_b( 
v
)Adam/gradients/flatten/Reshape_grad/ShapeShapeconv2d_2/Relu*
T0*
out_type0*
_output_shapes
:
в
+Adam/gradients/flatten/Reshape_grad/ReshapeReshape'Adam/gradients/dense/MatMul_grad/MatMul)Adam/gradients/flatten/Reshape_grad/Shape*
T0*
Tshape0*/
_output_shapes
:џџџџџџџџџ@
Ќ
*Adam/gradients/conv2d_2/Relu_grad/ReluGradReluGrad+Adam/gradients/flatten/Reshape_grad/Reshapeconv2d_2/Relu*
T0*/
_output_shapes
:џџџџџџџџџ@
Ї
0Adam/gradients/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGrad*Adam/gradients/conv2d_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
Б
*Adam/gradients/conv2d_2/Conv2D_grad/ShapeNShapeNmax_pooling2d_1/MaxPoolconv2d_2/Conv2D/ReadVariableOp*
T0*
out_type0*
N* 
_output_shapes
::

7Adam/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput*Adam/gradients/conv2d_2/Conv2D_grad/ShapeNconv2d_2/Conv2D/ReadVariableOp*Adam/gradients/conv2d_2/Relu_grad/ReluGrad*/
_output_shapes
:џџџџџџџџџ@*
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
ќ
8Adam/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_1/MaxPool,Adam/gradients/conv2d_2/Conv2D_grad/ShapeN:1*Adam/gradients/conv2d_2/Relu_grad/ReluGrad*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingVALID*&
_output_shapes
:@@
Д
7Adam/gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_1/Relumax_pooling2d_1/MaxPool7Adam/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ@
И
*Adam/gradients/conv2d_1/Relu_grad/ReluGradReluGrad7Adam/gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradconv2d_1/Relu*
T0*/
_output_shapes
:џџџџџџџџџ@
Ї
0Adam/gradients/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGrad*Adam/gradients/conv2d_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
Џ
*Adam/gradients/conv2d_1/Conv2D_grad/ShapeNShapeNmax_pooling2d/MaxPoolconv2d_1/Conv2D/ReadVariableOp*
T0*
out_type0*
N* 
_output_shapes
::

7Adam/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput*Adam/gradients/conv2d_1/Conv2D_grad/ShapeNconv2d_1/Conv2D/ReadVariableOp*Adam/gradients/conv2d_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID*/
_output_shapes
:џџџџџџџџџ *
	dilations

њ
8Adam/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPool,Adam/gradients/conv2d_1/Conv2D_grad/ShapeN:1*Adam/gradients/conv2d_1/Relu_grad/ReluGrad*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingVALID*&
_output_shapes
: @
Ў
5Adam/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d/Relumax_pooling2d/MaxPool7Adam/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ *
T0*
data_formatNHWC*
strides

В
(Adam/gradients/conv2d/Relu_grad/ReluGradReluGrad5Adam/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradconv2d/Relu*
T0*/
_output_shapes
:џџџџџџџџџ 
Ѓ
.Adam/gradients/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad(Adam/gradients/conv2d/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 
Ђ
(Adam/gradients/conv2d/Conv2D_grad/ShapeNShapeNconv2d_inputconv2d/Conv2D/ReadVariableOp*
T0*
out_type0*
N* 
_output_shapes
::

5Adam/gradients/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(Adam/gradients/conv2d/Conv2D_grad/ShapeNconv2d/Conv2D/ReadVariableOp(Adam/gradients/conv2d/Relu_grad/ReluGrad*
paddingVALID*/
_output_shapes
:џџџџџџџџџ  *
	dilations
*
T0*
strides
*
data_formatNHWC*
explicit_paddings
 *
use_cudnn_on_gpu(
ы
6Adam/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_input*Adam/gradients/conv2d/Conv2D_grad/ShapeN:1(Adam/gradients/conv2d/Relu_grad/ReluGrad*
	dilations
*
T0*
strides
*
data_formatNHWC*
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

	Adam/iterVarHandleOp*
_class
loc:@Adam/iter*
	container *
shape: *
dtype0	*
_output_shapes
: *
shared_name	Adam/iter
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

%Adam/beta_1/Initializer/initial_valueConst*
valueB
 *fff?*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 

Adam/beta_1VarHandleOp*
shape: *
dtype0*
_output_shapes
: *
shared_nameAdam/beta_1*
_class
loc:@Adam/beta_1*
	container 
g
,Adam/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_1*
_output_shapes
: 

Adam/beta_1/AssignAssignVariableOpAdam/beta_1%Adam/beta_1/Initializer/initial_value*
_class
loc:@Adam/beta_1*
dtype0

Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 

%Adam/beta_2/Initializer/initial_valueConst*
valueB
 *wО?*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 

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

Adam/beta_2/AssignAssignVariableOpAdam/beta_2%Adam/beta_2/Initializer/initial_value*
_class
loc:@Adam/beta_2*
dtype0

Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 

$Adam/decay/Initializer/initial_valueConst*
valueB
 *    *
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 


Adam/decayVarHandleOp*
shared_name
Adam/decay*
_class
loc:@Adam/decay*
	container *
shape: *
dtype0*
_output_shapes
: 
e
+Adam/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Adam/decay*
_output_shapes
: 

Adam/decay/AssignAssignVariableOp
Adam/decay$Adam/decay/Initializer/initial_value*
_class
loc:@Adam/decay*
dtype0

Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 

,Adam/learning_rate/Initializer/initial_valueConst*
valueB
 *RI9*%
_class
loc:@Adam/learning_rate*
dtype0*
_output_shapes
: 
А
Adam/learning_rateVarHandleOp*
shape: *
dtype0*
_output_shapes
: *#
shared_nameAdam/learning_rate*%
_class
loc:@Adam/learning_rate*
	container 
u
3Adam/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/learning_rate*
_output_shapes
: 
Ѓ
Adam/learning_rate/AssignAssignVariableOpAdam/learning_rate,Adam/learning_rate/Initializer/initial_value*%
_class
loc:@Adam/learning_rate*
dtype0

&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*%
_class
loc:@Adam/learning_rate*
dtype0*
_output_shapes
: 
­
&Adam/conv2d/kernel/m/Initializer/zerosConst* 
_class
loc:@conv2d/kernel*%
valueB *    *
dtype0*&
_output_shapes
: 
П
Adam/conv2d/kernel/mVarHandleOp*%
shared_nameAdam/conv2d/kernel/m* 
_class
loc:@conv2d/kernel*
	container *
shape: *
dtype0*
_output_shapes
: 

5Adam/conv2d/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d/kernel/m* 
_class
loc:@conv2d/kernel*
_output_shapes
: 

Adam/conv2d/kernel/m/AssignAssignVariableOpAdam/conv2d/kernel/m&Adam/conv2d/kernel/m/Initializer/zeros* 
_class
loc:@conv2d/kernel*
dtype0
Ї
(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m* 
_class
loc:@conv2d/kernel*
dtype0*&
_output_shapes
: 

$Adam/conv2d/bias/m/Initializer/zerosConst*
_class
loc:@conv2d/bias*
valueB *    *
dtype0*
_output_shapes
: 
­
Adam/conv2d/bias/mVarHandleOp*#
shared_nameAdam/conv2d/bias/m*
_class
loc:@conv2d/bias*
	container *
shape: *
dtype0*
_output_shapes
: 

3Adam/conv2d/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d/bias/m*
_class
loc:@conv2d/bias*
_output_shapes
: 

Adam/conv2d/bias/m/AssignAssignVariableOpAdam/conv2d/bias/m$Adam/conv2d/bias/m/Initializer/zeros*
_class
loc:@conv2d/bias*
dtype0

&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
Е
8Adam/conv2d_1/kernel/m/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@conv2d_1/kernel*%
valueB"          @   *
dtype0*
_output_shapes
:

.Adam/conv2d_1/kernel/m/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

(Adam/conv2d_1/kernel/m/Initializer/zerosFill8Adam/conv2d_1/kernel/m/Initializer/zeros/shape_as_tensor.Adam/conv2d_1/kernel/m/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_1/kernel*

index_type0*&
_output_shapes
: @
Х
Adam/conv2d_1/kernel/mVarHandleOp*"
_class
loc:@conv2d_1/kernel*
	container *
shape: @*
dtype0*
_output_shapes
: *'
shared_nameAdam/conv2d_1/kernel/m
Ё
7Adam/conv2d_1/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d_1/kernel/m*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
Є
Adam/conv2d_1/kernel/m/AssignAssignVariableOpAdam/conv2d_1/kernel/m(Adam/conv2d_1/kernel/m/Initializer/zeros*"
_class
loc:@conv2d_1/kernel*
dtype0
­
*Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/m*"
_class
loc:@conv2d_1/kernel*
dtype0*&
_output_shapes
: @

&Adam/conv2d_1/bias/m/Initializer/zerosConst* 
_class
loc:@conv2d_1/bias*
valueB@*    *
dtype0*
_output_shapes
:@
Г
Adam/conv2d_1/bias/mVarHandleOp* 
_class
loc:@conv2d_1/bias*
	container *
shape:@*
dtype0*
_output_shapes
: *%
shared_nameAdam/conv2d_1/bias/m

5Adam/conv2d_1/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d_1/bias/m* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 

Adam/conv2d_1/bias/m/AssignAssignVariableOpAdam/conv2d_1/bias/m&Adam/conv2d_1/bias/m/Initializer/zeros* 
_class
loc:@conv2d_1/bias*
dtype0

(Adam/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/m* 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
:@
Е
8Adam/conv2d_2/kernel/m/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@conv2d_2/kernel*%
valueB"      @   @   *
dtype0*
_output_shapes
:

.Adam/conv2d_2/kernel/m/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

(Adam/conv2d_2/kernel/m/Initializer/zerosFill8Adam/conv2d_2/kernel/m/Initializer/zeros/shape_as_tensor.Adam/conv2d_2/kernel/m/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_2/kernel*

index_type0*&
_output_shapes
:@@
Х
Adam/conv2d_2/kernel/mVarHandleOp*
shape:@@*
dtype0*
_output_shapes
: *'
shared_nameAdam/conv2d_2/kernel/m*"
_class
loc:@conv2d_2/kernel*
	container 
Ё
7Adam/conv2d_2/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d_2/kernel/m*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
Є
Adam/conv2d_2/kernel/m/AssignAssignVariableOpAdam/conv2d_2/kernel/m(Adam/conv2d_2/kernel/m/Initializer/zeros*"
_class
loc:@conv2d_2/kernel*
dtype0
­
*Adam/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/m*"
_class
loc:@conv2d_2/kernel*
dtype0*&
_output_shapes
:@@

&Adam/conv2d_2/bias/m/Initializer/zerosConst* 
_class
loc:@conv2d_2/bias*
valueB@*    *
dtype0*
_output_shapes
:@
Г
Adam/conv2d_2/bias/mVarHandleOp*
shape:@*
dtype0*
_output_shapes
: *%
shared_nameAdam/conv2d_2/bias/m* 
_class
loc:@conv2d_2/bias*
	container 

5Adam/conv2d_2/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d_2/bias/m* 
_class
loc:@conv2d_2/bias*
_output_shapes
: 

Adam/conv2d_2/bias/m/AssignAssignVariableOpAdam/conv2d_2/bias/m&Adam/conv2d_2/bias/m/Initializer/zeros* 
_class
loc:@conv2d_2/bias*
dtype0

(Adam/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/m* 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
:@
Ї
5Adam/dense/kernel/m/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/kernel*
valueB"      *
dtype0*
_output_shapes
:

+Adam/dense/kernel/m/Initializer/zeros/ConstConst*
_class
loc:@dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
я
%Adam/dense/kernel/m/Initializer/zerosFill5Adam/dense/kernel/m/Initializer/zeros/shape_as_tensor+Adam/dense/kernel/m/Initializer/zeros/Const*
T0*
_class
loc:@dense/kernel*

index_type0* 
_output_shapes
:

Ж
Adam/dense/kernel/mVarHandleOp*
_class
loc:@dense/kernel*
	container *
shape:
*
dtype0*
_output_shapes
: *$
shared_nameAdam/dense/kernel/m

4Adam/dense/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense/kernel/m*
_class
loc:@dense/kernel*
_output_shapes
: 

Adam/dense/kernel/m/AssignAssignVariableOpAdam/dense/kernel/m%Adam/dense/kernel/m/Initializer/zeros*
_class
loc:@dense/kernel*
dtype0

'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_class
loc:@dense/kernel*
dtype0* 
_output_shapes
:


#Adam/dense/bias/m/Initializer/zerosConst*
_class
loc:@dense/bias*
valueB*    *
dtype0*
_output_shapes	
:
Ћ
Adam/dense/bias/mVarHandleOp*"
shared_nameAdam/dense/bias/m*
_class
loc:@dense/bias*
	container *
shape:*
dtype0*
_output_shapes
: 

2Adam/dense/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense/bias/m*
_class
loc:@dense/bias*
_output_shapes
: 

Adam/dense/bias/m/AssignAssignVariableOpAdam/dense/bias/m#Adam/dense/bias/m/Initializer/zeros*
_class
loc:@dense/bias*
dtype0

%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_class
loc:@dense/bias*
dtype0*
_output_shapes	
:
Ћ
7Adam/dense_1/kernel/m/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_1/kernel*
valueB"   @   *
dtype0*
_output_shapes
:

-Adam/dense_1/kernel/m/Initializer/zeros/ConstConst*!
_class
loc:@dense_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
і
'Adam/dense_1/kernel/m/Initializer/zerosFill7Adam/dense_1/kernel/m/Initializer/zeros/shape_as_tensor-Adam/dense_1/kernel/m/Initializer/zeros/Const*
T0*!
_class
loc:@dense_1/kernel*

index_type0*
_output_shapes
:	@
Л
Adam/dense_1/kernel/mVarHandleOp*
shape:	@*
dtype0*
_output_shapes
: *&
shared_nameAdam/dense_1/kernel/m*!
_class
loc:@dense_1/kernel*
	container 

6Adam/dense_1/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense_1/kernel/m*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
 
Adam/dense_1/kernel/m/AssignAssignVariableOpAdam/dense_1/kernel/m'Adam/dense_1/kernel/m/Initializer/zeros*!
_class
loc:@dense_1/kernel*
dtype0
Ѓ
)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:	@

%Adam/dense_1/bias/m/Initializer/zerosConst*
_class
loc:@dense_1/bias*
valueB@*    *
dtype0*
_output_shapes
:@
А
Adam/dense_1/bias/mVarHandleOp*
dtype0*
_output_shapes
: *$
shared_nameAdam/dense_1/bias/m*
_class
loc:@dense_1/bias*
	container *
shape:@

4Adam/dense_1/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense_1/bias/m*
_class
loc:@dense_1/bias*
_output_shapes
: 

Adam/dense_1/bias/m/AssignAssignVariableOpAdam/dense_1/bias/m%Adam/dense_1/bias/m/Initializer/zeros*
_class
loc:@dense_1/bias*
dtype0

'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:@
Ћ
7Adam/dense_2/kernel/m/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_2/kernel*
valueB"@      *
dtype0*
_output_shapes
:

-Adam/dense_2/kernel/m/Initializer/zeros/ConstConst*!
_class
loc:@dense_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ѕ
'Adam/dense_2/kernel/m/Initializer/zerosFill7Adam/dense_2/kernel/m/Initializer/zeros/shape_as_tensor-Adam/dense_2/kernel/m/Initializer/zeros/Const*
T0*!
_class
loc:@dense_2/kernel*

index_type0*
_output_shapes

:@
К
Adam/dense_2/kernel/mVarHandleOp*!
_class
loc:@dense_2/kernel*
	container *
shape
:@*
dtype0*
_output_shapes
: *&
shared_nameAdam/dense_2/kernel/m

6Adam/dense_2/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense_2/kernel/m*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
 
Adam/dense_2/kernel/m/AssignAssignVariableOpAdam/dense_2/kernel/m'Adam/dense_2/kernel/m/Initializer/zeros*!
_class
loc:@dense_2/kernel*
dtype0
Ђ
)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes

:@

%Adam/dense_2/bias/m/Initializer/zerosConst*
_class
loc:@dense_2/bias*
valueB*    *
dtype0*
_output_shapes
:
А
Adam/dense_2/bias/mVarHandleOp*
_class
loc:@dense_2/bias*
	container *
shape:*
dtype0*
_output_shapes
: *$
shared_nameAdam/dense_2/bias/m

4Adam/dense_2/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense_2/bias/m*
_class
loc:@dense_2/bias*
_output_shapes
: 

Adam/dense_2/bias/m/AssignAssignVariableOpAdam/dense_2/bias/m%Adam/dense_2/bias/m/Initializer/zeros*
_class
loc:@dense_2/bias*
dtype0

'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
:
­
&Adam/conv2d/kernel/v/Initializer/zerosConst* 
_class
loc:@conv2d/kernel*%
valueB *    *
dtype0*&
_output_shapes
: 
П
Adam/conv2d/kernel/vVarHandleOp*
dtype0*
_output_shapes
: *%
shared_nameAdam/conv2d/kernel/v* 
_class
loc:@conv2d/kernel*
	container *
shape: 

5Adam/conv2d/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d/kernel/v* 
_class
loc:@conv2d/kernel*
_output_shapes
: 

Adam/conv2d/kernel/v/AssignAssignVariableOpAdam/conv2d/kernel/v&Adam/conv2d/kernel/v/Initializer/zeros* 
_class
loc:@conv2d/kernel*
dtype0
Ї
(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v* 
_class
loc:@conv2d/kernel*
dtype0*&
_output_shapes
: 

$Adam/conv2d/bias/v/Initializer/zerosConst*
_class
loc:@conv2d/bias*
valueB *    *
dtype0*
_output_shapes
: 
­
Adam/conv2d/bias/vVarHandleOp*#
shared_nameAdam/conv2d/bias/v*
_class
loc:@conv2d/bias*
	container *
shape: *
dtype0*
_output_shapes
: 

3Adam/conv2d/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d/bias/v*
_class
loc:@conv2d/bias*
_output_shapes
: 

Adam/conv2d/bias/v/AssignAssignVariableOpAdam/conv2d/bias/v$Adam/conv2d/bias/v/Initializer/zeros*
_class
loc:@conv2d/bias*
dtype0

&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
Е
8Adam/conv2d_1/kernel/v/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@conv2d_1/kernel*%
valueB"          @   *
dtype0*
_output_shapes
:

.Adam/conv2d_1/kernel/v/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

(Adam/conv2d_1/kernel/v/Initializer/zerosFill8Adam/conv2d_1/kernel/v/Initializer/zeros/shape_as_tensor.Adam/conv2d_1/kernel/v/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_1/kernel*

index_type0*&
_output_shapes
: @
Х
Adam/conv2d_1/kernel/vVarHandleOp*
shape: @*
dtype0*
_output_shapes
: *'
shared_nameAdam/conv2d_1/kernel/v*"
_class
loc:@conv2d_1/kernel*
	container 
Ё
7Adam/conv2d_1/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d_1/kernel/v*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
Є
Adam/conv2d_1/kernel/v/AssignAssignVariableOpAdam/conv2d_1/kernel/v(Adam/conv2d_1/kernel/v/Initializer/zeros*"
_class
loc:@conv2d_1/kernel*
dtype0
­
*Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/v*"
_class
loc:@conv2d_1/kernel*
dtype0*&
_output_shapes
: @

&Adam/conv2d_1/bias/v/Initializer/zerosConst* 
_class
loc:@conv2d_1/bias*
valueB@*    *
dtype0*
_output_shapes
:@
Г
Adam/conv2d_1/bias/vVarHandleOp*
shape:@*
dtype0*
_output_shapes
: *%
shared_nameAdam/conv2d_1/bias/v* 
_class
loc:@conv2d_1/bias*
	container 

5Adam/conv2d_1/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d_1/bias/v* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 

Adam/conv2d_1/bias/v/AssignAssignVariableOpAdam/conv2d_1/bias/v&Adam/conv2d_1/bias/v/Initializer/zeros* 
_class
loc:@conv2d_1/bias*
dtype0

(Adam/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/v* 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
:@
Е
8Adam/conv2d_2/kernel/v/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@conv2d_2/kernel*%
valueB"      @   @   *
dtype0*
_output_shapes
:

.Adam/conv2d_2/kernel/v/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

(Adam/conv2d_2/kernel/v/Initializer/zerosFill8Adam/conv2d_2/kernel/v/Initializer/zeros/shape_as_tensor.Adam/conv2d_2/kernel/v/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_2/kernel*

index_type0*&
_output_shapes
:@@
Х
Adam/conv2d_2/kernel/vVarHandleOp*'
shared_nameAdam/conv2d_2/kernel/v*"
_class
loc:@conv2d_2/kernel*
	container *
shape:@@*
dtype0*
_output_shapes
: 
Ё
7Adam/conv2d_2/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d_2/kernel/v*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
Є
Adam/conv2d_2/kernel/v/AssignAssignVariableOpAdam/conv2d_2/kernel/v(Adam/conv2d_2/kernel/v/Initializer/zeros*"
_class
loc:@conv2d_2/kernel*
dtype0
­
*Adam/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/v*"
_class
loc:@conv2d_2/kernel*
dtype0*&
_output_shapes
:@@

&Adam/conv2d_2/bias/v/Initializer/zerosConst* 
_class
loc:@conv2d_2/bias*
valueB@*    *
dtype0*
_output_shapes
:@
Г
Adam/conv2d_2/bias/vVarHandleOp*
shape:@*
dtype0*
_output_shapes
: *%
shared_nameAdam/conv2d_2/bias/v* 
_class
loc:@conv2d_2/bias*
	container 

5Adam/conv2d_2/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d_2/bias/v* 
_class
loc:@conv2d_2/bias*
_output_shapes
: 

Adam/conv2d_2/bias/v/AssignAssignVariableOpAdam/conv2d_2/bias/v&Adam/conv2d_2/bias/v/Initializer/zeros* 
_class
loc:@conv2d_2/bias*
dtype0

(Adam/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/v* 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
:@
Ї
5Adam/dense/kernel/v/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/kernel*
valueB"      *
dtype0*
_output_shapes
:

+Adam/dense/kernel/v/Initializer/zeros/ConstConst*
_class
loc:@dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
я
%Adam/dense/kernel/v/Initializer/zerosFill5Adam/dense/kernel/v/Initializer/zeros/shape_as_tensor+Adam/dense/kernel/v/Initializer/zeros/Const*
T0*
_class
loc:@dense/kernel*

index_type0* 
_output_shapes
:

Ж
Adam/dense/kernel/vVarHandleOp*
_class
loc:@dense/kernel*
	container *
shape:
*
dtype0*
_output_shapes
: *$
shared_nameAdam/dense/kernel/v

4Adam/dense/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense/kernel/v*
_class
loc:@dense/kernel*
_output_shapes
: 

Adam/dense/kernel/v/AssignAssignVariableOpAdam/dense/kernel/v%Adam/dense/kernel/v/Initializer/zeros*
_class
loc:@dense/kernel*
dtype0

'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_class
loc:@dense/kernel*
dtype0* 
_output_shapes
:


#Adam/dense/bias/v/Initializer/zerosConst*
_class
loc:@dense/bias*
valueB*    *
dtype0*
_output_shapes	
:
Ћ
Adam/dense/bias/vVarHandleOp*"
shared_nameAdam/dense/bias/v*
_class
loc:@dense/bias*
	container *
shape:*
dtype0*
_output_shapes
: 

2Adam/dense/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense/bias/v*
_class
loc:@dense/bias*
_output_shapes
: 

Adam/dense/bias/v/AssignAssignVariableOpAdam/dense/bias/v#Adam/dense/bias/v/Initializer/zeros*
_class
loc:@dense/bias*
dtype0

%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_class
loc:@dense/bias*
dtype0*
_output_shapes	
:
Ћ
7Adam/dense_1/kernel/v/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_1/kernel*
valueB"   @   *
dtype0*
_output_shapes
:

-Adam/dense_1/kernel/v/Initializer/zeros/ConstConst*!
_class
loc:@dense_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
і
'Adam/dense_1/kernel/v/Initializer/zerosFill7Adam/dense_1/kernel/v/Initializer/zeros/shape_as_tensor-Adam/dense_1/kernel/v/Initializer/zeros/Const*
T0*!
_class
loc:@dense_1/kernel*

index_type0*
_output_shapes
:	@
Л
Adam/dense_1/kernel/vVarHandleOp*&
shared_nameAdam/dense_1/kernel/v*!
_class
loc:@dense_1/kernel*
	container *
shape:	@*
dtype0*
_output_shapes
: 

6Adam/dense_1/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense_1/kernel/v*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
 
Adam/dense_1/kernel/v/AssignAssignVariableOpAdam/dense_1/kernel/v'Adam/dense_1/kernel/v/Initializer/zeros*!
_class
loc:@dense_1/kernel*
dtype0
Ѓ
)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:	@

%Adam/dense_1/bias/v/Initializer/zerosConst*
_class
loc:@dense_1/bias*
valueB@*    *
dtype0*
_output_shapes
:@
А
Adam/dense_1/bias/vVarHandleOp*
dtype0*
_output_shapes
: *$
shared_nameAdam/dense_1/bias/v*
_class
loc:@dense_1/bias*
	container *
shape:@

4Adam/dense_1/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense_1/bias/v*
_class
loc:@dense_1/bias*
_output_shapes
: 

Adam/dense_1/bias/v/AssignAssignVariableOpAdam/dense_1/bias/v%Adam/dense_1/bias/v/Initializer/zeros*
_class
loc:@dense_1/bias*
dtype0

'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:@
Ћ
7Adam/dense_2/kernel/v/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_2/kernel*
valueB"@      *
dtype0*
_output_shapes
:

-Adam/dense_2/kernel/v/Initializer/zeros/ConstConst*!
_class
loc:@dense_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ѕ
'Adam/dense_2/kernel/v/Initializer/zerosFill7Adam/dense_2/kernel/v/Initializer/zeros/shape_as_tensor-Adam/dense_2/kernel/v/Initializer/zeros/Const*
T0*!
_class
loc:@dense_2/kernel*

index_type0*
_output_shapes

:@
К
Adam/dense_2/kernel/vVarHandleOp*
dtype0*
_output_shapes
: *&
shared_nameAdam/dense_2/kernel/v*!
_class
loc:@dense_2/kernel*
	container *
shape
:@

6Adam/dense_2/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense_2/kernel/v*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
 
Adam/dense_2/kernel/v/AssignAssignVariableOpAdam/dense_2/kernel/v'Adam/dense_2/kernel/v/Initializer/zeros*!
_class
loc:@dense_2/kernel*
dtype0
Ђ
)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes

:@

%Adam/dense_2/bias/v/Initializer/zerosConst*
_class
loc:@dense_2/bias*
valueB*    *
dtype0*
_output_shapes
:
А
Adam/dense_2/bias/vVarHandleOp*
dtype0*
_output_shapes
: *$
shared_nameAdam/dense_2/bias/v*
_class
loc:@dense_2/bias*
	container *
shape:

4Adam/dense_2/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense_2/bias/v*
_class
loc:@dense_2/bias*
_output_shapes
: 

Adam/dense_2/bias/v/AssignAssignVariableOpAdam/dense_2/bias/v%Adam/dense_2/bias/v/Initializer/zeros*
_class
loc:@dense_2/bias*
dtype0

'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
:
i
$Adam/Adam/update_conv2d/kernel/ConstConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
o
-Adam/Adam/update_conv2d/kernel/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
f
$Adam/Adam/update_conv2d/kernel/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 

"Adam/Adam/update_conv2d/kernel/addAdd-Adam/Adam/update_conv2d/kernel/ReadVariableOp$Adam/Adam/update_conv2d/kernel/add/y*
T0	*
_output_shapes
: 

#Adam/Adam/update_conv2d/kernel/CastCast"Adam/Adam/update_conv2d/kernel/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
u
1Adam/Adam/update_conv2d/kernel/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Ђ
"Adam/Adam/update_conv2d/kernel/PowPow1Adam/Adam/update_conv2d/kernel/Pow/ReadVariableOp#Adam/Adam/update_conv2d/kernel/Cast*
T0*
_output_shapes
: 
w
3Adam/Adam/update_conv2d/kernel/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
І
$Adam/Adam/update_conv2d/kernel/Pow_1Pow3Adam/Adam/update_conv2d/kernel/Pow_1/ReadVariableOp#Adam/Adam/update_conv2d/kernel/Cast*
T0*
_output_shapes
: 

?Adam/Adam/update_conv2d/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 

AAdam/Adam/update_conv2d/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

AAdam/Adam/update_conv2d/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

0Adam/Adam/update_conv2d/kernel/ResourceApplyAdamResourceApplyAdamconv2d/kernelAdam/conv2d/kernel/mAdam/conv2d/kernel/v"Adam/Adam/update_conv2d/kernel/Pow$Adam/Adam/update_conv2d/kernel/Pow_1?Adam/Adam/update_conv2d/kernel/ResourceApplyAdam/ReadVariableOpAAdam/Adam/update_conv2d/kernel/ResourceApplyAdam/ReadVariableOp_1AAdam/Adam/update_conv2d/kernel/ResourceApplyAdam/ReadVariableOp_2$Adam/Adam/update_conv2d/kernel/Const6Adam/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter*
use_locking(*
T0*
use_nesterov( 
g
"Adam/Adam/update_conv2d/bias/ConstConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
m
+Adam/Adam/update_conv2d/bias/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
d
"Adam/Adam/update_conv2d/bias/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 

 Adam/Adam/update_conv2d/bias/addAdd+Adam/Adam/update_conv2d/bias/ReadVariableOp"Adam/Adam/update_conv2d/bias/add/y*
T0	*
_output_shapes
: 

!Adam/Adam/update_conv2d/bias/CastCast Adam/Adam/update_conv2d/bias/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
s
/Adam/Adam/update_conv2d/bias/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

 Adam/Adam/update_conv2d/bias/PowPow/Adam/Adam/update_conv2d/bias/Pow/ReadVariableOp!Adam/Adam/update_conv2d/bias/Cast*
T0*
_output_shapes
: 
u
1Adam/Adam/update_conv2d/bias/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
 
"Adam/Adam/update_conv2d/bias/Pow_1Pow1Adam/Adam/update_conv2d/bias/Pow_1/ReadVariableOp!Adam/Adam/update_conv2d/bias/Cast*
T0*
_output_shapes
: 

=Adam/Adam/update_conv2d/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 

?Adam/Adam/update_conv2d/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

?Adam/Adam/update_conv2d/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

.Adam/Adam/update_conv2d/bias/ResourceApplyAdamResourceApplyAdamconv2d/biasAdam/conv2d/bias/mAdam/conv2d/bias/v Adam/Adam/update_conv2d/bias/Pow"Adam/Adam/update_conv2d/bias/Pow_1=Adam/Adam/update_conv2d/bias/ResourceApplyAdam/ReadVariableOp?Adam/Adam/update_conv2d/bias/ResourceApplyAdam/ReadVariableOp_1?Adam/Adam/update_conv2d/bias/ResourceApplyAdam/ReadVariableOp_2"Adam/Adam/update_conv2d/bias/Const.Adam/gradients/conv2d/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0*
use_nesterov( 
k
&Adam/Adam/update_conv2d_1/kernel/ConstConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
q
/Adam/Adam/update_conv2d_1/kernel/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
h
&Adam/Adam/update_conv2d_1/kernel/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
Ѕ
$Adam/Adam/update_conv2d_1/kernel/addAdd/Adam/Adam/update_conv2d_1/kernel/ReadVariableOp&Adam/Adam/update_conv2d_1/kernel/add/y*
T0	*
_output_shapes
: 

%Adam/Adam/update_conv2d_1/kernel/CastCast$Adam/Adam/update_conv2d_1/kernel/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
w
3Adam/Adam/update_conv2d_1/kernel/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Ј
$Adam/Adam/update_conv2d_1/kernel/PowPow3Adam/Adam/update_conv2d_1/kernel/Pow/ReadVariableOp%Adam/Adam/update_conv2d_1/kernel/Cast*
T0*
_output_shapes
: 
y
5Adam/Adam/update_conv2d_1/kernel/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Ќ
&Adam/Adam/update_conv2d_1/kernel/Pow_1Pow5Adam/Adam/update_conv2d_1/kernel/Pow_1/ReadVariableOp%Adam/Adam/update_conv2d_1/kernel/Cast*
T0*
_output_shapes
: 

AAdam/Adam/update_conv2d_1/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 

CAdam/Adam/update_conv2d_1/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

CAdam/Adam/update_conv2d_1/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Е
2Adam/Adam/update_conv2d_1/kernel/ResourceApplyAdamResourceApplyAdamconv2d_1/kernelAdam/conv2d_1/kernel/mAdam/conv2d_1/kernel/v$Adam/Adam/update_conv2d_1/kernel/Pow&Adam/Adam/update_conv2d_1/kernel/Pow_1AAdam/Adam/update_conv2d_1/kernel/ResourceApplyAdam/ReadVariableOpCAdam/Adam/update_conv2d_1/kernel/ResourceApplyAdam/ReadVariableOp_1CAdam/Adam/update_conv2d_1/kernel/ResourceApplyAdam/ReadVariableOp_2&Adam/Adam/update_conv2d_1/kernel/Const8Adam/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*
T0*
use_nesterov( *
use_locking(
i
$Adam/Adam/update_conv2d_1/bias/ConstConst*
valueB
 *Пж3*
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

"Adam/Adam/update_conv2d_1/bias/addAdd-Adam/Adam/update_conv2d_1/bias/ReadVariableOp$Adam/Adam/update_conv2d_1/bias/add/y*
T0	*
_output_shapes
: 

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
Ђ
"Adam/Adam/update_conv2d_1/bias/PowPow1Adam/Adam/update_conv2d_1/bias/Pow/ReadVariableOp#Adam/Adam/update_conv2d_1/bias/Cast*
T0*
_output_shapes
: 
w
3Adam/Adam/update_conv2d_1/bias/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
І
$Adam/Adam/update_conv2d_1/bias/Pow_1Pow3Adam/Adam/update_conv2d_1/bias/Pow_1/ReadVariableOp#Adam/Adam/update_conv2d_1/bias/Cast*
T0*
_output_shapes
: 

?Adam/Adam/update_conv2d_1/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 

AAdam/Adam/update_conv2d_1/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

AAdam/Adam/update_conv2d_1/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

0Adam/Adam/update_conv2d_1/bias/ResourceApplyAdamResourceApplyAdamconv2d_1/biasAdam/conv2d_1/bias/mAdam/conv2d_1/bias/v"Adam/Adam/update_conv2d_1/bias/Pow$Adam/Adam/update_conv2d_1/bias/Pow_1?Adam/Adam/update_conv2d_1/bias/ResourceApplyAdam/ReadVariableOpAAdam/Adam/update_conv2d_1/bias/ResourceApplyAdam/ReadVariableOp_1AAdam/Adam/update_conv2d_1/bias/ResourceApplyAdam/ReadVariableOp_2$Adam/Adam/update_conv2d_1/bias/Const0Adam/gradients/conv2d_1/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0*
use_nesterov( 
k
&Adam/Adam/update_conv2d_2/kernel/ConstConst*
valueB
 *Пж3*
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
Ѕ
$Adam/Adam/update_conv2d_2/kernel/addAdd/Adam/Adam/update_conv2d_2/kernel/ReadVariableOp&Adam/Adam/update_conv2d_2/kernel/add/y*
T0	*
_output_shapes
: 

%Adam/Adam/update_conv2d_2/kernel/CastCast$Adam/Adam/update_conv2d_2/kernel/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
w
3Adam/Adam/update_conv2d_2/kernel/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Ј
$Adam/Adam/update_conv2d_2/kernel/PowPow3Adam/Adam/update_conv2d_2/kernel/Pow/ReadVariableOp%Adam/Adam/update_conv2d_2/kernel/Cast*
T0*
_output_shapes
: 
y
5Adam/Adam/update_conv2d_2/kernel/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Ќ
&Adam/Adam/update_conv2d_2/kernel/Pow_1Pow5Adam/Adam/update_conv2d_2/kernel/Pow_1/ReadVariableOp%Adam/Adam/update_conv2d_2/kernel/Cast*
T0*
_output_shapes
: 

AAdam/Adam/update_conv2d_2/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 

CAdam/Adam/update_conv2d_2/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

CAdam/Adam/update_conv2d_2/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Е
2Adam/Adam/update_conv2d_2/kernel/ResourceApplyAdamResourceApplyAdamconv2d_2/kernelAdam/conv2d_2/kernel/mAdam/conv2d_2/kernel/v$Adam/Adam/update_conv2d_2/kernel/Pow&Adam/Adam/update_conv2d_2/kernel/Pow_1AAdam/Adam/update_conv2d_2/kernel/ResourceApplyAdam/ReadVariableOpCAdam/Adam/update_conv2d_2/kernel/ResourceApplyAdam/ReadVariableOp_1CAdam/Adam/update_conv2d_2/kernel/ResourceApplyAdam/ReadVariableOp_2&Adam/Adam/update_conv2d_2/kernel/Const8Adam/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*
use_locking(*
T0*
use_nesterov( 
i
$Adam/Adam/update_conv2d_2/bias/ConstConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
o
-Adam/Adam/update_conv2d_2/bias/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
f
$Adam/Adam/update_conv2d_2/bias/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 

"Adam/Adam/update_conv2d_2/bias/addAdd-Adam/Adam/update_conv2d_2/bias/ReadVariableOp$Adam/Adam/update_conv2d_2/bias/add/y*
T0	*
_output_shapes
: 

#Adam/Adam/update_conv2d_2/bias/CastCast"Adam/Adam/update_conv2d_2/bias/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
u
1Adam/Adam/update_conv2d_2/bias/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Ђ
"Adam/Adam/update_conv2d_2/bias/PowPow1Adam/Adam/update_conv2d_2/bias/Pow/ReadVariableOp#Adam/Adam/update_conv2d_2/bias/Cast*
T0*
_output_shapes
: 
w
3Adam/Adam/update_conv2d_2/bias/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
І
$Adam/Adam/update_conv2d_2/bias/Pow_1Pow3Adam/Adam/update_conv2d_2/bias/Pow_1/ReadVariableOp#Adam/Adam/update_conv2d_2/bias/Cast*
T0*
_output_shapes
: 

?Adam/Adam/update_conv2d_2/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 

AAdam/Adam/update_conv2d_2/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

AAdam/Adam/update_conv2d_2/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

0Adam/Adam/update_conv2d_2/bias/ResourceApplyAdamResourceApplyAdamconv2d_2/biasAdam/conv2d_2/bias/mAdam/conv2d_2/bias/v"Adam/Adam/update_conv2d_2/bias/Pow$Adam/Adam/update_conv2d_2/bias/Pow_1?Adam/Adam/update_conv2d_2/bias/ResourceApplyAdam/ReadVariableOpAAdam/Adam/update_conv2d_2/bias/ResourceApplyAdam/ReadVariableOp_1AAdam/Adam/update_conv2d_2/bias/ResourceApplyAdam/ReadVariableOp_2$Adam/Adam/update_conv2d_2/bias/Const0Adam/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0*
use_nesterov( 
h
#Adam/Adam/update_dense/kernel/ConstConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
n
,Adam/Adam/update_dense/kernel/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
e
#Adam/Adam/update_dense/kernel/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 

!Adam/Adam/update_dense/kernel/addAdd,Adam/Adam/update_dense/kernel/ReadVariableOp#Adam/Adam/update_dense/kernel/add/y*
T0	*
_output_shapes
: 

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

!Adam/Adam/update_dense/kernel/PowPow0Adam/Adam/update_dense/kernel/Pow/ReadVariableOp"Adam/Adam/update_dense/kernel/Cast*
T0*
_output_shapes
: 
v
2Adam/Adam/update_dense/kernel/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Ѓ
#Adam/Adam/update_dense/kernel/Pow_1Pow2Adam/Adam/update_dense/kernel/Pow_1/ReadVariableOp"Adam/Adam/update_dense/kernel/Cast*
T0*
_output_shapes
: 

>Adam/Adam/update_dense/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 

@Adam/Adam/update_dense/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

@Adam/Adam/update_dense/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

/Adam/Adam/update_dense/kernel/ResourceApplyAdamResourceApplyAdamdense/kernelAdam/dense/kernel/mAdam/dense/kernel/v!Adam/Adam/update_dense/kernel/Pow#Adam/Adam/update_dense/kernel/Pow_1>Adam/Adam/update_dense/kernel/ResourceApplyAdam/ReadVariableOp@Adam/Adam/update_dense/kernel/ResourceApplyAdam/ReadVariableOp_1@Adam/Adam/update_dense/kernel/ResourceApplyAdam/ReadVariableOp_2#Adam/Adam/update_dense/kernel/Const)Adam/gradients/dense/MatMul_grad/MatMul_1*
use_locking(*
T0*
use_nesterov( 
f
!Adam/Adam/update_dense/bias/ConstConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
l
*Adam/Adam/update_dense/bias/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
c
!Adam/Adam/update_dense/bias/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 

Adam/Adam/update_dense/bias/addAdd*Adam/Adam/update_dense/bias/ReadVariableOp!Adam/Adam/update_dense/bias/add/y*
T0	*
_output_shapes
: 

 Adam/Adam/update_dense/bias/CastCastAdam/Adam/update_dense/bias/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
r
.Adam/Adam/update_dense/bias/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

Adam/Adam/update_dense/bias/PowPow.Adam/Adam/update_dense/bias/Pow/ReadVariableOp Adam/Adam/update_dense/bias/Cast*
T0*
_output_shapes
: 
t
0Adam/Adam/update_dense/bias/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

!Adam/Adam/update_dense/bias/Pow_1Pow0Adam/Adam/update_dense/bias/Pow_1/ReadVariableOp Adam/Adam/update_dense/bias/Cast*
T0*
_output_shapes
: 

<Adam/Adam/update_dense/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 

>Adam/Adam/update_dense/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

>Adam/Adam/update_dense/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
ј
-Adam/Adam/update_dense/bias/ResourceApplyAdamResourceApplyAdam
dense/biasAdam/dense/bias/mAdam/dense/bias/vAdam/Adam/update_dense/bias/Pow!Adam/Adam/update_dense/bias/Pow_1<Adam/Adam/update_dense/bias/ResourceApplyAdam/ReadVariableOp>Adam/Adam/update_dense/bias/ResourceApplyAdam/ReadVariableOp_1>Adam/Adam/update_dense/bias/ResourceApplyAdam/ReadVariableOp_2!Adam/Adam/update_dense/bias/Const-Adam/gradients/dense/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0*
use_nesterov( 
j
%Adam/Adam/update_dense_1/kernel/ConstConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
p
.Adam/Adam/update_dense_1/kernel/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
g
%Adam/Adam/update_dense_1/kernel/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
Ђ
#Adam/Adam/update_dense_1/kernel/addAdd.Adam/Adam/update_dense_1/kernel/ReadVariableOp%Adam/Adam/update_dense_1/kernel/add/y*
T0	*
_output_shapes
: 

$Adam/Adam/update_dense_1/kernel/CastCast#Adam/Adam/update_dense_1/kernel/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
v
2Adam/Adam/update_dense_1/kernel/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Ѕ
#Adam/Adam/update_dense_1/kernel/PowPow2Adam/Adam/update_dense_1/kernel/Pow/ReadVariableOp$Adam/Adam/update_dense_1/kernel/Cast*
T0*
_output_shapes
: 
x
4Adam/Adam/update_dense_1/kernel/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Љ
%Adam/Adam/update_dense_1/kernel/Pow_1Pow4Adam/Adam/update_dense_1/kernel/Pow_1/ReadVariableOp$Adam/Adam/update_dense_1/kernel/Cast*
T0*
_output_shapes
: 

@Adam/Adam/update_dense_1/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 

BAdam/Adam/update_dense_1/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

BAdam/Adam/update_dense_1/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

1Adam/Adam/update_dense_1/kernel/ResourceApplyAdamResourceApplyAdamdense_1/kernelAdam/dense_1/kernel/mAdam/dense_1/kernel/v#Adam/Adam/update_dense_1/kernel/Pow%Adam/Adam/update_dense_1/kernel/Pow_1@Adam/Adam/update_dense_1/kernel/ResourceApplyAdam/ReadVariableOpBAdam/Adam/update_dense_1/kernel/ResourceApplyAdam/ReadVariableOp_1BAdam/Adam/update_dense_1/kernel/ResourceApplyAdam/ReadVariableOp_2%Adam/Adam/update_dense_1/kernel/Const+Adam/gradients/dense_1/MatMul_grad/MatMul_1*
T0*
use_nesterov( *
use_locking(
h
#Adam/Adam/update_dense_1/bias/ConstConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
n
,Adam/Adam/update_dense_1/bias/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
e
#Adam/Adam/update_dense_1/bias/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 

!Adam/Adam/update_dense_1/bias/addAdd,Adam/Adam/update_dense_1/bias/ReadVariableOp#Adam/Adam/update_dense_1/bias/add/y*
T0	*
_output_shapes
: 

"Adam/Adam/update_dense_1/bias/CastCast!Adam/Adam/update_dense_1/bias/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
t
0Adam/Adam/update_dense_1/bias/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

!Adam/Adam/update_dense_1/bias/PowPow0Adam/Adam/update_dense_1/bias/Pow/ReadVariableOp"Adam/Adam/update_dense_1/bias/Cast*
T0*
_output_shapes
: 
v
2Adam/Adam/update_dense_1/bias/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Ѓ
#Adam/Adam/update_dense_1/bias/Pow_1Pow2Adam/Adam/update_dense_1/bias/Pow_1/ReadVariableOp"Adam/Adam/update_dense_1/bias/Cast*
T0*
_output_shapes
: 

>Adam/Adam/update_dense_1/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 

@Adam/Adam/update_dense_1/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

@Adam/Adam/update_dense_1/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

/Adam/Adam/update_dense_1/bias/ResourceApplyAdamResourceApplyAdamdense_1/biasAdam/dense_1/bias/mAdam/dense_1/bias/v!Adam/Adam/update_dense_1/bias/Pow#Adam/Adam/update_dense_1/bias/Pow_1>Adam/Adam/update_dense_1/bias/ResourceApplyAdam/ReadVariableOp@Adam/Adam/update_dense_1/bias/ResourceApplyAdam/ReadVariableOp_1@Adam/Adam/update_dense_1/bias/ResourceApplyAdam/ReadVariableOp_2#Adam/Adam/update_dense_1/bias/Const/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0*
use_nesterov( 
j
%Adam/Adam/update_dense_2/kernel/ConstConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
p
.Adam/Adam/update_dense_2/kernel/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
g
%Adam/Adam/update_dense_2/kernel/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
Ђ
#Adam/Adam/update_dense_2/kernel/addAdd.Adam/Adam/update_dense_2/kernel/ReadVariableOp%Adam/Adam/update_dense_2/kernel/add/y*
T0	*
_output_shapes
: 

$Adam/Adam/update_dense_2/kernel/CastCast#Adam/Adam/update_dense_2/kernel/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
v
2Adam/Adam/update_dense_2/kernel/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Ѕ
#Adam/Adam/update_dense_2/kernel/PowPow2Adam/Adam/update_dense_2/kernel/Pow/ReadVariableOp$Adam/Adam/update_dense_2/kernel/Cast*
T0*
_output_shapes
: 
x
4Adam/Adam/update_dense_2/kernel/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Љ
%Adam/Adam/update_dense_2/kernel/Pow_1Pow4Adam/Adam/update_dense_2/kernel/Pow_1/ReadVariableOp$Adam/Adam/update_dense_2/kernel/Cast*
T0*
_output_shapes
: 

@Adam/Adam/update_dense_2/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 

BAdam/Adam/update_dense_2/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

BAdam/Adam/update_dense_2/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

1Adam/Adam/update_dense_2/kernel/ResourceApplyAdamResourceApplyAdamdense_2/kernelAdam/dense_2/kernel/mAdam/dense_2/kernel/v#Adam/Adam/update_dense_2/kernel/Pow%Adam/Adam/update_dense_2/kernel/Pow_1@Adam/Adam/update_dense_2/kernel/ResourceApplyAdam/ReadVariableOpBAdam/Adam/update_dense_2/kernel/ResourceApplyAdam/ReadVariableOp_1BAdam/Adam/update_dense_2/kernel/ResourceApplyAdam/ReadVariableOp_2%Adam/Adam/update_dense_2/kernel/Const+Adam/gradients/dense_2/MatMul_grad/MatMul_1*
use_locking(*
T0*
use_nesterov( 
h
#Adam/Adam/update_dense_2/bias/ConstConst*
valueB
 *Пж3*
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

!Adam/Adam/update_dense_2/bias/addAdd,Adam/Adam/update_dense_2/bias/ReadVariableOp#Adam/Adam/update_dense_2/bias/add/y*
T0	*
_output_shapes
: 

"Adam/Adam/update_dense_2/bias/CastCast!Adam/Adam/update_dense_2/bias/add*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
t
0Adam/Adam/update_dense_2/bias/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

!Adam/Adam/update_dense_2/bias/PowPow0Adam/Adam/update_dense_2/bias/Pow/ReadVariableOp"Adam/Adam/update_dense_2/bias/Cast*
T0*
_output_shapes
: 
v
2Adam/Adam/update_dense_2/bias/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Ѓ
#Adam/Adam/update_dense_2/bias/Pow_1Pow2Adam/Adam/update_dense_2/bias/Pow_1/ReadVariableOp"Adam/Adam/update_dense_2/bias/Cast*
T0*
_output_shapes
: 

>Adam/Adam/update_dense_2/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 

@Adam/Adam/update_dense_2/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

@Adam/Adam/update_dense_2/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

/Adam/Adam/update_dense_2/bias/ResourceApplyAdamResourceApplyAdamdense_2/biasAdam/dense_2/bias/mAdam/dense_2/bias/v!Adam/Adam/update_dense_2/bias/Pow#Adam/Adam/update_dense_2/bias/Pow_1>Adam/Adam/update_dense_2/bias/ResourceApplyAdam/ReadVariableOp@Adam/Adam/update_dense_2/bias/ResourceApplyAdam/ReadVariableOp_1@Adam/Adam/update_dense_2/bias/ResourceApplyAdam/ReadVariableOp_2#Adam/Adam/update_dense_2/bias/Const/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
use_nesterov( *
use_locking(
Г
Adam/Adam/ConstConst/^Adam/Adam/update_conv2d/bias/ResourceApplyAdam1^Adam/Adam/update_conv2d/kernel/ResourceApplyAdam1^Adam/Adam/update_conv2d_1/bias/ResourceApplyAdam3^Adam/Adam/update_conv2d_1/kernel/ResourceApplyAdam1^Adam/Adam/update_conv2d_2/bias/ResourceApplyAdam3^Adam/Adam/update_conv2d_2/kernel/ResourceApplyAdam.^Adam/Adam/update_dense/bias/ResourceApplyAdam0^Adam/Adam/update_dense/kernel/ResourceApplyAdam0^Adam/Adam/update_dense_1/bias/ResourceApplyAdam2^Adam/Adam/update_dense_1/kernel/ResourceApplyAdam0^Adam/Adam/update_dense_2/bias/ResourceApplyAdam2^Adam/Adam/update_dense_2/kernel/ResourceApplyAdam*
value	B	 R*
dtype0	*
_output_shapes
: 
]
Adam/Adam/AssignAddVariableOpAssignAddVariableOp	Adam/iterAdam/Adam/Const*
dtype0	
м
Adam/Adam/ReadVariableOpReadVariableOp	Adam/iter^Adam/Adam/AssignAddVariableOp/^Adam/Adam/update_conv2d/bias/ResourceApplyAdam1^Adam/Adam/update_conv2d/kernel/ResourceApplyAdam1^Adam/Adam/update_conv2d_1/bias/ResourceApplyAdam3^Adam/Adam/update_conv2d_1/kernel/ResourceApplyAdam1^Adam/Adam/update_conv2d_2/bias/ResourceApplyAdam3^Adam/Adam/update_conv2d_2/kernel/ResourceApplyAdam.^Adam/Adam/update_dense/bias/ResourceApplyAdam0^Adam/Adam/update_dense/kernel/ResourceApplyAdam0^Adam/Adam/update_dense_1/bias/ResourceApplyAdam2^Adam/Adam/update_dense_1/kernel/ResourceApplyAdam0^Adam/Adam/update_dense_2/bias/ResourceApplyAdam2^Adam/Adam/update_dense_2/kernel/ResourceApplyAdam*
dtype0	*
_output_shapes
: 
H
training_1/group_depsNoOp^Adam/Adam/AssignAddVariableOp	^loss/mul
L
PlaceholderPlaceholder*
shape: *
dtype0*
_output_shapes
: 
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
ReadVariableOp_1ReadVariableOpcount^AssignVariableOp_1*
dtype0*
_output_shapes
: 
O
VarIsInitializedOpVarIsInitializedOpconv2d_1/bias*
_output_shapes
: 
Z
VarIsInitializedOp_1VarIsInitializedOpAdam/conv2d_1/kernel/m*
_output_shapes
: 
V
VarIsInitializedOp_2VarIsInitializedOpAdam/conv2d/bias/m*
_output_shapes
: 
Y
VarIsInitializedOp_3VarIsInitializedOpAdam/dense_2/kernel/v*
_output_shapes
: 
Z
VarIsInitializedOp_4VarIsInitializedOpAdam/conv2d_2/kernel/m*
_output_shapes
: 
U
VarIsInitializedOp_5VarIsInitializedOpAdam/dense/bias/v*
_output_shapes
: 
Q
VarIsInitializedOp_6VarIsInitializedOpconv2d/kernel*
_output_shapes
: 
X
VarIsInitializedOp_7VarIsInitializedOpAdam/conv2d_2/bias/m*
_output_shapes
: 
V
VarIsInitializedOp_8VarIsInitializedOpAdam/conv2d/bias/v*
_output_shapes
: 
W
VarIsInitializedOp_9VarIsInitializedOpAdam/dense/kernel/m*
_output_shapes
: 
P
VarIsInitializedOp_10VarIsInitializedOpconv2d/bias*
_output_shapes
: 
S
VarIsInitializedOp_11VarIsInitializedOpdense_1/kernel*
_output_shapes
: 
O
VarIsInitializedOp_12VarIsInitializedOp
dense/bias*
_output_shapes
: 
Q
VarIsInitializedOp_13VarIsInitializedOpdense_1/bias*
_output_shapes
: 
Y
VarIsInitializedOp_14VarIsInitializedOpAdam/conv2d/kernel/m*
_output_shapes
: 
Y
VarIsInitializedOp_15VarIsInitializedOpAdam/conv2d_2/bias/v*
_output_shapes
: 
X
VarIsInitializedOp_16VarIsInitializedOpAdam/dense_1/bias/v*
_output_shapes
: 
Y
VarIsInitializedOp_17VarIsInitializedOpAdam/conv2d_1/bias/m*
_output_shapes
: 
N
VarIsInitializedOp_18VarIsInitializedOp	Adam/iter*
_output_shapes
: 
Q
VarIsInitializedOp_19VarIsInitializedOpdense/kernel*
_output_shapes
: 
[
VarIsInitializedOp_20VarIsInitializedOpAdam/conv2d_1/kernel/v*
_output_shapes
: 
Z
VarIsInitializedOp_21VarIsInitializedOpAdam/dense_2/kernel/m*
_output_shapes
: 
X
VarIsInitializedOp_22VarIsInitializedOpAdam/dense_1/bias/m*
_output_shapes
: 
X
VarIsInitializedOp_23VarIsInitializedOpAdam/dense_2/bias/m*
_output_shapes
: 
Y
VarIsInitializedOp_24VarIsInitializedOpAdam/conv2d/kernel/v*
_output_shapes
: 
X
VarIsInitializedOp_25VarIsInitializedOpAdam/dense/kernel/v*
_output_shapes
: 
T
VarIsInitializedOp_26VarIsInitializedOpconv2d_2/kernel*
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
R
VarIsInitializedOp_29VarIsInitializedOpconv2d_2/bias*
_output_shapes
: 
V
VarIsInitializedOp_30VarIsInitializedOpAdam/dense/bias/m*
_output_shapes
: 
P
VarIsInitializedOp_31VarIsInitializedOpAdam/beta_2*
_output_shapes
: 
X
VarIsInitializedOp_32VarIsInitializedOpAdam/dense_2/bias/v*
_output_shapes
: 
O
VarIsInitializedOp_33VarIsInitializedOp
Adam/decay*
_output_shapes
: 
W
VarIsInitializedOp_34VarIsInitializedOpAdam/learning_rate*
_output_shapes
: 
Z
VarIsInitializedOp_35VarIsInitializedOpAdam/dense_1/kernel/m*
_output_shapes
: 
P
VarIsInitializedOp_36VarIsInitializedOpAdam/beta_1*
_output_shapes
: 
Z
VarIsInitializedOp_37VarIsInitializedOpAdam/dense_1/kernel/v*
_output_shapes
: 
J
VarIsInitializedOp_38VarIsInitializedOptotal*
_output_shapes
: 
Q
VarIsInitializedOp_39VarIsInitializedOpdense_2/bias*
_output_shapes
: 
J
VarIsInitializedOp_40VarIsInitializedOpcount*
_output_shapes
: 
S
VarIsInitializedOp_41VarIsInitializedOpdense_2/kernel*
_output_shapes
: 
T
VarIsInitializedOp_42VarIsInitializedOpconv2d_1/kernel*
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
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_1/filenamePlaceholderWithDefaultsave_1/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
dtype0*
_output_shapes
: *
shape: 

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_3ecc9213495b4cf2b0dc4c8ff90157b0/part*
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

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
ч
save_1/SaveV2/tensor_namesConst*
valueB)BAdam/beta_1BAdam/beta_2BAdam/conv2d/bias/mBAdam/conv2d/bias/vBAdam/conv2d/kernel/mBAdam/conv2d/kernel/vBAdam/conv2d_1/bias/mBAdam/conv2d_1/bias/vBAdam/conv2d_1/kernel/mBAdam/conv2d_1/kernel/vBAdam/conv2d_2/bias/mBAdam/conv2d_2/bias/vBAdam/conv2d_2/kernel/mBAdam/conv2d_2/kernel/vB
Adam/decayBAdam/dense/bias/mBAdam/dense/bias/vBAdam/dense/kernel/mBAdam/dense/kernel/vBAdam/dense_1/bias/mBAdam/dense_1/bias/vBAdam/dense_1/kernel/mBAdam/dense_1/kernel/vBAdam/dense_2/bias/mBAdam/dense_2/bias/vBAdam/dense_2/kernel/mBAdam/dense_2/kernel/vB	Adam/iterBAdam/learning_rateBconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernel*
dtype0*
_output_shapes
:)
З
save_1/SaveV2/shape_and_slicesConst*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:)
л
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOp&Adam/conv2d/bias/m/Read/ReadVariableOp&Adam/conv2d/bias/v/Read/ReadVariableOp(Adam/conv2d/kernel/m/Read/ReadVariableOp(Adam/conv2d/kernel/v/Read/ReadVariableOp(Adam/conv2d_1/bias/m/Read/ReadVariableOp(Adam/conv2d_1/bias/v/Read/ReadVariableOp*Adam/conv2d_1/kernel/m/Read/ReadVariableOp*Adam/conv2d_1/kernel/v/Read/ReadVariableOp(Adam/conv2d_2/bias/m/Read/ReadVariableOp(Adam/conv2d_2/bias/v/Read/ReadVariableOp*Adam/conv2d_2/kernel/m/Read/ReadVariableOp*Adam/conv2d_2/kernel/v/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOpAdam/iter/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp*7
dtypes-
+2)	

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
Ѓ
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
T0*

axis *
N*
_output_shapes
:

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
T0*
_output_shapes
: 
ъ
save_1/RestoreV2/tensor_namesConst*
valueB)BAdam/beta_1BAdam/beta_2BAdam/conv2d/bias/mBAdam/conv2d/bias/vBAdam/conv2d/kernel/mBAdam/conv2d/kernel/vBAdam/conv2d_1/bias/mBAdam/conv2d_1/bias/vBAdam/conv2d_1/kernel/mBAdam/conv2d_1/kernel/vBAdam/conv2d_2/bias/mBAdam/conv2d_2/bias/vBAdam/conv2d_2/kernel/mBAdam/conv2d_2/kernel/vB
Adam/decayBAdam/dense/bias/mBAdam/dense/bias/vBAdam/dense/kernel/mBAdam/dense/kernel/vBAdam/dense_1/bias/mBAdam/dense_1/bias/vBAdam/dense_1/kernel/mBAdam/dense_1/kernel/vBAdam/dense_2/bias/mBAdam/dense_2/bias/vBAdam/dense_2/kernel/mBAdam/dense_2/kernel/vB	Adam/iterBAdam/learning_rateBconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernel*
dtype0*
_output_shapes
:)
К
!save_1/RestoreV2/shape_and_slicesConst*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:)
у
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*7
dtypes-
+2)	*К
_output_shapesЇ
Є:::::::::::::::::::::::::::::::::::::::::
R
save_1/Identity_1Identitysave_1/RestoreV2*
T0*
_output_shapes
:
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
save_1/Identity_7Identitysave_1/RestoreV2:6*
T0*
_output_shapes
:
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
save_1/Identity_10Identitysave_1/RestoreV2:9*
T0*
_output_shapes
:
f
save_1/AssignVariableOp_9AssignVariableOpAdam/conv2d_1/kernel/vsave_1/Identity_10*
dtype0
V
save_1/Identity_11Identitysave_1/RestoreV2:10*
T0*
_output_shapes
:
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
save_1/Identity_13Identitysave_1/RestoreV2:12*
T0*
_output_shapes
:
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
save_1/Identity_15Identitysave_1/RestoreV2:14*
T0*
_output_shapes
:
[
save_1/AssignVariableOp_14AssignVariableOp
Adam/decaysave_1/Identity_15*
dtype0
V
save_1/Identity_16Identitysave_1/RestoreV2:15*
T0*
_output_shapes
:
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
save_1/Identity_18Identitysave_1/RestoreV2:17*
T0*
_output_shapes
:
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
save_1/Identity_23Identitysave_1/RestoreV2:22*
T0*
_output_shapes
:
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
save_1/Identity_25Identitysave_1/RestoreV2:24*
T0*
_output_shapes
:
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
save_1/Identity_27Identitysave_1/RestoreV2:26*
T0*
_output_shapes
:
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
save_1/Identity_29Identitysave_1/RestoreV2:28*
T0*
_output_shapes
:
c
save_1/AssignVariableOp_28AssignVariableOpAdam/learning_ratesave_1/Identity_29*
dtype0
V
save_1/Identity_30Identitysave_1/RestoreV2:29*
T0*
_output_shapes
:
\
save_1/AssignVariableOp_29AssignVariableOpconv2d/biassave_1/Identity_30*
dtype0
V
save_1/Identity_31Identitysave_1/RestoreV2:30*
T0*
_output_shapes
:
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
save_1/Identity_33Identitysave_1/RestoreV2:32*
T0*
_output_shapes
:
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
save_1/Identity_36Identitysave_1/RestoreV2:35*
T0*
_output_shapes
:
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
save_1/Identity_38Identitysave_1/RestoreV2:37*
T0*
_output_shapes
:
]
save_1/AssignVariableOp_37AssignVariableOpdense_1/biassave_1/Identity_38*
dtype0
V
save_1/Identity_39Identitysave_1/RestoreV2:38*
T0*
_output_shapes
:
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
save_1/Identity_41Identitysave_1/RestoreV2:40*
T0*
_output_shapes
:
_
save_1/AssignVariableOp_40AssignVariableOpdense_2/kernelsave_1/Identity_41*
dtype0
Е	
save_1/restore_shardNoOp^save_1/AssignVariableOp^save_1/AssignVariableOp_1^save_1/AssignVariableOp_10^save_1/AssignVariableOp_11^save_1/AssignVariableOp_12^save_1/AssignVariableOp_13^save_1/AssignVariableOp_14^save_1/AssignVariableOp_15^save_1/AssignVariableOp_16^save_1/AssignVariableOp_17^save_1/AssignVariableOp_18^save_1/AssignVariableOp_19^save_1/AssignVariableOp_2^save_1/AssignVariableOp_20^save_1/AssignVariableOp_21^save_1/AssignVariableOp_22^save_1/AssignVariableOp_23^save_1/AssignVariableOp_24^save_1/AssignVariableOp_25^save_1/AssignVariableOp_26^save_1/AssignVariableOp_27^save_1/AssignVariableOp_28^save_1/AssignVariableOp_29^save_1/AssignVariableOp_3^save_1/AssignVariableOp_30^save_1/AssignVariableOp_31^save_1/AssignVariableOp_32^save_1/AssignVariableOp_33^save_1/AssignVariableOp_34^save_1/AssignVariableOp_35^save_1/AssignVariableOp_36^save_1/AssignVariableOp_37^save_1/AssignVariableOp_38^save_1/AssignVariableOp_39^save_1/AssignVariableOp_4^save_1/AssignVariableOp_40^save_1/AssignVariableOp_5^save_1/AssignVariableOp_6^save_1/AssignVariableOp_7^save_1/AssignVariableOp_8^save_1/AssignVariableOp_9
1
save_1/restore_allNoOp^save_1/restore_shard "&B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"ц
cond_contextев
д
dropout/cond/cond_textdropout/cond/pred_id:0dropout/cond/switch_t:0 *
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
Ј
dropout/cond/cond_text_1dropout/cond/pred_id:0dropout/cond/switch_f:0*к
dense/Relu:0
dropout/cond/Identity/Switch:0
dropout/cond/Identity:0
dropout/cond/pred_id:0
dropout/cond/switch_f:00
dropout/cond/pred_id:0dropout/cond/pred_id:0.
dense/Relu:0dropout/cond/Identity/Switch:0

dropout_1/cond/cond_textdropout_1/cond/pred_id:0dropout_1/cond/switch_t:0 *Ж
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
Р
dropout_1/cond/cond_text_1dropout_1/cond/pred_id:0dropout_1/cond/switch_f:0*ь
dense_1/Relu:0
 dropout_1/cond/Identity/Switch:0
dropout_1/cond/Identity:0
dropout_1/cond/pred_id:0
dropout_1/cond/switch_f:04
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:02
dense_1/Relu:0 dropout_1/cond/Identity/Switch:0"+
	variablesѓ*№*
|
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2*conv2d/kernel/Initializer/random_uniform:08
k
conv2d/bias:0conv2d/bias/Assign!conv2d/bias/Read/ReadVariableOp:0(2conv2d/bias/Initializer/zeros:08

conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2,conv2d_1/kernel/Initializer/random_uniform:08
s
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2!conv2d_1/bias/Initializer/zeros:08

conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2,conv2d_2/kernel/Initializer/random_uniform:08
s
conv2d_2/bias:0conv2d_2/bias/Assign#conv2d_2/bias/Read/ReadVariableOp:0(2!conv2d_2/bias/Initializer/zeros:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08

dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08

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

Adam/learning_rate:0Adam/learning_rate/Assign(Adam/learning_rate/Read/ReadVariableOp:0(2.Adam/learning_rate/Initializer/initial_value:0H

Adam/conv2d/kernel/m:0Adam/conv2d/kernel/m/Assign*Adam/conv2d/kernel/m/Read/ReadVariableOp:0(2(Adam/conv2d/kernel/m/Initializer/zeros:0

Adam/conv2d/bias/m:0Adam/conv2d/bias/m/Assign(Adam/conv2d/bias/m/Read/ReadVariableOp:0(2&Adam/conv2d/bias/m/Initializer/zeros:0

Adam/conv2d_1/kernel/m:0Adam/conv2d_1/kernel/m/Assign,Adam/conv2d_1/kernel/m/Read/ReadVariableOp:0(2*Adam/conv2d_1/kernel/m/Initializer/zeros:0

Adam/conv2d_1/bias/m:0Adam/conv2d_1/bias/m/Assign*Adam/conv2d_1/bias/m/Read/ReadVariableOp:0(2(Adam/conv2d_1/bias/m/Initializer/zeros:0

Adam/conv2d_2/kernel/m:0Adam/conv2d_2/kernel/m/Assign,Adam/conv2d_2/kernel/m/Read/ReadVariableOp:0(2*Adam/conv2d_2/kernel/m/Initializer/zeros:0

Adam/conv2d_2/bias/m:0Adam/conv2d_2/bias/m/Assign*Adam/conv2d_2/bias/m/Read/ReadVariableOp:0(2(Adam/conv2d_2/bias/m/Initializer/zeros:0

Adam/dense/kernel/m:0Adam/dense/kernel/m/Assign)Adam/dense/kernel/m/Read/ReadVariableOp:0(2'Adam/dense/kernel/m/Initializer/zeros:0

Adam/dense/bias/m:0Adam/dense/bias/m/Assign'Adam/dense/bias/m/Read/ReadVariableOp:0(2%Adam/dense/bias/m/Initializer/zeros:0

Adam/dense_1/kernel/m:0Adam/dense_1/kernel/m/Assign+Adam/dense_1/kernel/m/Read/ReadVariableOp:0(2)Adam/dense_1/kernel/m/Initializer/zeros:0

Adam/dense_1/bias/m:0Adam/dense_1/bias/m/Assign)Adam/dense_1/bias/m/Read/ReadVariableOp:0(2'Adam/dense_1/bias/m/Initializer/zeros:0

Adam/dense_2/kernel/m:0Adam/dense_2/kernel/m/Assign+Adam/dense_2/kernel/m/Read/ReadVariableOp:0(2)Adam/dense_2/kernel/m/Initializer/zeros:0

Adam/dense_2/bias/m:0Adam/dense_2/bias/m/Assign)Adam/dense_2/bias/m/Read/ReadVariableOp:0(2'Adam/dense_2/bias/m/Initializer/zeros:0

Adam/conv2d/kernel/v:0Adam/conv2d/kernel/v/Assign*Adam/conv2d/kernel/v/Read/ReadVariableOp:0(2(Adam/conv2d/kernel/v/Initializer/zeros:0

Adam/conv2d/bias/v:0Adam/conv2d/bias/v/Assign(Adam/conv2d/bias/v/Read/ReadVariableOp:0(2&Adam/conv2d/bias/v/Initializer/zeros:0

Adam/conv2d_1/kernel/v:0Adam/conv2d_1/kernel/v/Assign,Adam/conv2d_1/kernel/v/Read/ReadVariableOp:0(2*Adam/conv2d_1/kernel/v/Initializer/zeros:0

Adam/conv2d_1/bias/v:0Adam/conv2d_1/bias/v/Assign*Adam/conv2d_1/bias/v/Read/ReadVariableOp:0(2(Adam/conv2d_1/bias/v/Initializer/zeros:0

Adam/conv2d_2/kernel/v:0Adam/conv2d_2/kernel/v/Assign,Adam/conv2d_2/kernel/v/Read/ReadVariableOp:0(2*Adam/conv2d_2/kernel/v/Initializer/zeros:0

Adam/conv2d_2/bias/v:0Adam/conv2d_2/bias/v/Assign*Adam/conv2d_2/bias/v/Read/ReadVariableOp:0(2(Adam/conv2d_2/bias/v/Initializer/zeros:0

Adam/dense/kernel/v:0Adam/dense/kernel/v/Assign)Adam/dense/kernel/v/Read/ReadVariableOp:0(2'Adam/dense/kernel/v/Initializer/zeros:0

Adam/dense/bias/v:0Adam/dense/bias/v/Assign'Adam/dense/bias/v/Read/ReadVariableOp:0(2%Adam/dense/bias/v/Initializer/zeros:0

Adam/dense_1/kernel/v:0Adam/dense_1/kernel/v/Assign+Adam/dense_1/kernel/v/Read/ReadVariableOp:0(2)Adam/dense_1/kernel/v/Initializer/zeros:0

Adam/dense_1/bias/v:0Adam/dense_1/bias/v/Assign)Adam/dense_1/bias/v/Read/ReadVariableOp:0(2'Adam/dense_1/bias/v/Initializer/zeros:0

Adam/dense_2/kernel/v:0Adam/dense_2/kernel/v/Assign+Adam/dense_2/kernel/v/Read/ReadVariableOp:0(2)Adam/dense_2/kernel/v/Initializer/zeros:0

Adam/dense_2/bias/v:0Adam/dense_2/bias/v/Assign)Adam/dense_2/bias/v/Read/ReadVariableOp:0(2'Adam/dense_2/bias/v/Initializer/zeros:0"Щ
trainable_variablesБЎ
|
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2*conv2d/kernel/Initializer/random_uniform:08
k
conv2d/bias:0conv2d/bias/Assign!conv2d/bias/Read/ReadVariableOp:0(2conv2d/bias/Initializer/zeros:08

conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2,conv2d_1/kernel/Initializer/random_uniform:08
s
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2!conv2d_1/bias/Initializer/zeros:08

conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2,conv2d_2/kernel/Initializer/random_uniform:08
s
conv2d_2/bias:0conv2d_2/bias/Assign#conv2d_2/bias/Read/ReadVariableOp:0(2!conv2d_2/bias/Initializer/zeros:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08

dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08

dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2+dense_2/kernel/Initializer/random_uniform:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08*
serving_default
6
input-
conv2d_input:0џџџџџџџџџ  2
output(
dense_2/Softmax:0џџџџџџџџџtensorflow/serving/predict