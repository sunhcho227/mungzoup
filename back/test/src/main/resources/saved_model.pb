��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
9
	IdentityN

input2T
output2T"
T
list(type)(0
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_type��out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements(
handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
�
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
�"serve*2.13.0-dev202304042v1.12.1-92086-gdb5105b5bad8��
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
|
Adam/v/output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/v/output/bias
u
&Adam/v/output/bias/Read/ReadVariableOpReadVariableOpAdam/v/output/bias*
_output_shapes
:*
dtype0
|
Adam/m/output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/m/output/bias
u
&Adam/m/output/bias/Read/ReadVariableOpReadVariableOpAdam/m/output/bias*
_output_shapes
:*
dtype0
�
Adam/v/output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0*%
shared_nameAdam/v/output/kernel
}
(Adam/v/output/kernel/Read/ReadVariableOpReadVariableOpAdam/v/output/kernel*
_output_shapes

:0*
dtype0
�
Adam/m/output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0*%
shared_nameAdam/m/output/kernel
}
(Adam/m/output/kernel/Read/ReadVariableOpReadVariableOpAdam/m/output/kernel*
_output_shapes

:0*
dtype0
�
Adam/v/LSTM2/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_nameAdam/v/LSTM2/lstm_cell/bias
�
/Adam/v/LSTM2/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/v/LSTM2/lstm_cell/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/LSTM2/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_nameAdam/m/LSTM2/lstm_cell/bias
�
/Adam/m/LSTM2/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/m/LSTM2/lstm_cell/bias*
_output_shapes	
:�*
dtype0
�
'Adam/v/LSTM2/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	0�*8
shared_name)'Adam/v/LSTM2/lstm_cell/recurrent_kernel
�
;Adam/v/LSTM2/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp'Adam/v/LSTM2/lstm_cell/recurrent_kernel*
_output_shapes
:	0�*
dtype0
�
'Adam/m/LSTM2/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	0�*8
shared_name)'Adam/m/LSTM2/lstm_cell/recurrent_kernel
�
;Adam/m/LSTM2/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp'Adam/m/LSTM2/lstm_cell/recurrent_kernel*
_output_shapes
:	0�*
dtype0
�
Adam/v/LSTM2/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	`�*.
shared_nameAdam/v/LSTM2/lstm_cell/kernel
�
1Adam/v/LSTM2/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/v/LSTM2/lstm_cell/kernel*
_output_shapes
:	`�*
dtype0
�
Adam/m/LSTM2/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	`�*.
shared_nameAdam/m/LSTM2/lstm_cell/kernel
�
1Adam/m/LSTM2/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/m/LSTM2/lstm_cell/kernel*
_output_shapes
:	`�*
dtype0
�
Adam/v/LSTM1/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_nameAdam/v/LSTM1/lstm_cell/bias
�
/Adam/v/LSTM1/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/v/LSTM1/lstm_cell/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/LSTM1/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_nameAdam/m/LSTM1/lstm_cell/bias
�
/Adam/m/LSTM1/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/m/LSTM1/lstm_cell/bias*
_output_shapes	
:�*
dtype0
�
'Adam/v/LSTM1/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	`�*8
shared_name)'Adam/v/LSTM1/lstm_cell/recurrent_kernel
�
;Adam/v/LSTM1/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp'Adam/v/LSTM1/lstm_cell/recurrent_kernel*
_output_shapes
:	`�*
dtype0
�
'Adam/m/LSTM1/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	`�*8
shared_name)'Adam/m/LSTM1/lstm_cell/recurrent_kernel
�
;Adam/m/LSTM1/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp'Adam/m/LSTM1/lstm_cell/recurrent_kernel*
_output_shapes
:	`�*
dtype0
�
Adam/v/LSTM1/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*.
shared_nameAdam/v/LSTM1/lstm_cell/kernel
�
1Adam/v/LSTM1/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/v/LSTM1/lstm_cell/kernel*
_output_shapes
:	�*
dtype0
�
Adam/m/LSTM1/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*.
shared_nameAdam/m/LSTM1/lstm_cell/kernel
�
1Adam/m/LSTM1/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/m/LSTM1/lstm_cell/kernel*
_output_shapes
:	�*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
�
LSTM2/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameLSTM2/lstm_cell/bias
z
(LSTM2/lstm_cell/bias/Read/ReadVariableOpReadVariableOpLSTM2/lstm_cell/bias*
_output_shapes	
:�*
dtype0
�
 LSTM2/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	0�*1
shared_name" LSTM2/lstm_cell/recurrent_kernel
�
4LSTM2/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp LSTM2/lstm_cell/recurrent_kernel*
_output_shapes
:	0�*
dtype0
�
LSTM2/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	`�*'
shared_nameLSTM2/lstm_cell/kernel
�
*LSTM2/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpLSTM2/lstm_cell/kernel*
_output_shapes
:	`�*
dtype0
�
LSTM1/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameLSTM1/lstm_cell/bias
z
(LSTM1/lstm_cell/bias/Read/ReadVariableOpReadVariableOpLSTM1/lstm_cell/bias*
_output_shapes	
:�*
dtype0
�
 LSTM1/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	`�*1
shared_name" LSTM1/lstm_cell/recurrent_kernel
�
4LSTM1/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp LSTM1/lstm_cell/recurrent_kernel*
_output_shapes
:	`�*
dtype0
�
LSTM1/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*'
shared_nameLSTM1/lstm_cell/kernel
�
*LSTM1/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpLSTM1/lstm_cell/kernel*
_output_shapes
:	�*
dtype0
n
output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameoutput/bias
g
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_output_shapes
:*
dtype0
v
output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0*
shared_nameoutput/kernel
o
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes

:0*
dtype0
�
serving_default_inputPlaceholder*+
_output_shapes
:���������0*
dtype0* 
shape:���������0
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputLSTM1/lstm_cell/kernel LSTM1/lstm_cell/recurrent_kernelLSTM1/lstm_cell/biasLSTM2/lstm_cell/kernel LSTM2/lstm_cell/recurrent_kernelLSTM2/lstm_cell/biasoutput/kerneloutput/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference_signature_wrapper_6916

NoOpNoOp
�>
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�=
value�=B�= B�=
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
�
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses

&kernel
'bias*
<
(0
)1
*2
+3
,4
-5
&6
'7*
<
(0
)1
*2
+3
,4
-5
&6
'7*
* 
�
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*

3trace_0
4trace_1* 

5trace_0
6trace_1* 
* 
�
7
_variables
8_iterations
9_learning_rate
:_index_dict
;
_momentums
<_velocities
=_update_step_xla*

>serving_default* 

(0
)1
*2*

(0
)1
*2*
* 
�

?states
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Etrace_0
Ftrace_1
Gtrace_2
Htrace_3* 
6
Itrace_0
Jtrace_1
Ktrace_2
Ltrace_3* 
* 
�
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses
S_random_generator
T
state_size

(kernel
)recurrent_kernel
*bias*
* 

+0
,1
-2*

+0
,1
-2*
* 
�

Ustates
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
[trace_0
\trace_1
]trace_2
^trace_3* 
6
_trace_0
`trace_1
atrace_2
btrace_3* 
* 
�
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses
i_random_generator
j
state_size

+kernel
,recurrent_kernel
-bias*
* 

&0
'1*

&0
'1*
* 
�
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*

ptrace_0* 

qtrace_0* 
]W
VARIABLE_VALUEoutput/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEoutput/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUELSTM1/lstm_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUE LSTM1/lstm_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUELSTM1/lstm_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUELSTM2/lstm_cell/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUE LSTM2/lstm_cell/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUELSTM2/lstm_cell/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3*

r0
s1*
* 
* 
* 
* 
* 
* 
�
80
t1
u2
v3
w4
x5
y6
z7
{8
|9
}10
~11
12
�13
�14
�15
�16*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
>
t0
v1
x2
z3
|4
~5
�6
�7*
>
u0
w1
y2
{3
}4
5
�6
�7*
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

(0
)1
*2*

(0
)1
*2*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

+0
,1
-2*

+0
,1
-2*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
hb
VARIABLE_VALUEAdam/m/LSTM1/lstm_cell/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/v/LSTM1/lstm_cell/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE'Adam/m/LSTM1/lstm_cell/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE'Adam/v/LSTM1/lstm_cell/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/m/LSTM1/lstm_cell/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/v/LSTM1/lstm_cell/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/m/LSTM2/lstm_cell/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/v/LSTM2/lstm_cell/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE'Adam/m/LSTM2/lstm_cell/recurrent_kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE'Adam/v/LSTM2/lstm_cell/recurrent_kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/m/LSTM2/lstm_cell/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/LSTM2/lstm_cell/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/output/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/output/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/output/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/output/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameoutput/kerneloutput/biasLSTM1/lstm_cell/kernel LSTM1/lstm_cell/recurrent_kernelLSTM1/lstm_cell/biasLSTM2/lstm_cell/kernel LSTM2/lstm_cell/recurrent_kernelLSTM2/lstm_cell/bias	iterationlearning_rateAdam/m/LSTM1/lstm_cell/kernelAdam/v/LSTM1/lstm_cell/kernel'Adam/m/LSTM1/lstm_cell/recurrent_kernel'Adam/v/LSTM1/lstm_cell/recurrent_kernelAdam/m/LSTM1/lstm_cell/biasAdam/v/LSTM1/lstm_cell/biasAdam/m/LSTM2/lstm_cell/kernelAdam/v/LSTM2/lstm_cell/kernel'Adam/m/LSTM2/lstm_cell/recurrent_kernel'Adam/v/LSTM2/lstm_cell/recurrent_kernelAdam/m/LSTM2/lstm_cell/biasAdam/v/LSTM2/lstm_cell/biasAdam/m/output/kernelAdam/v/output/kernelAdam/m/output/biasAdam/v/output/biastotal_1count_1totalcountConst*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *&
f!R
__inference__traced_save_8667
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameoutput/kerneloutput/biasLSTM1/lstm_cell/kernel LSTM1/lstm_cell/recurrent_kernelLSTM1/lstm_cell/biasLSTM2/lstm_cell/kernel LSTM2/lstm_cell/recurrent_kernelLSTM2/lstm_cell/bias	iterationlearning_rateAdam/m/LSTM1/lstm_cell/kernelAdam/v/LSTM1/lstm_cell/kernel'Adam/m/LSTM1/lstm_cell/recurrent_kernel'Adam/v/LSTM1/lstm_cell/recurrent_kernelAdam/m/LSTM1/lstm_cell/biasAdam/v/LSTM1/lstm_cell/biasAdam/m/LSTM2/lstm_cell/kernelAdam/v/LSTM2/lstm_cell/kernel'Adam/m/LSTM2/lstm_cell/recurrent_kernel'Adam/v/LSTM2/lstm_cell/recurrent_kernelAdam/m/LSTM2/lstm_cell/biasAdam/v/LSTM2/lstm_cell/biasAdam/m/output/kernelAdam/v/output/kernelAdam/m/output/biasAdam/v/output/biastotal_1count_1totalcount**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__traced_restore_8767͔
�
�
C__inference_lstm_cell_layer_call_and_return_conditional_losses_8348

inputs
states_0
states_11
matmul_readvariableop_resource:	`�3
 matmul_1_readvariableop_resource:	0�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	`�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������0V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������0U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������0N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������0_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������0T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������0V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������0K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������0c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������0X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������0Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������0Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������0m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������`:���������0:���������0: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:QM
'
_output_shapes
:���������0
"
_user_specified_name
states_1:QM
'
_output_shapes
:���������0
"
_user_specified_name
states_0:O K
'
_output_shapes
:���������`
 
_user_specified_nameinputs
�
�
C__inference_lstm_cell_layer_call_and_return_conditional_losses_5861

inputs

states
states_11
matmul_readvariableop_resource:	`�3
 matmul_1_readvariableop_resource:	0�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	`�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������0V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������0U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������0N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������0_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������0T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������0V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������0K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������0c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������0X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������0Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������0Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������0m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������`:���������0:���������0: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:OK
'
_output_shapes
:���������0
 
_user_specified_namestates:OK
'
_output_shapes
:���������0
 
_user_specified_namestates:O K
'
_output_shapes
:���������`
 
_user_specified_nameinputs
�	
�
while_cond_7925
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_7925___redundant_placeholder02
.while_while_cond_7925___redundant_placeholder12
.while_while_cond_7925___redundant_placeholder22
.while_while_cond_7925___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�%
�
while_body_6023
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0)
while_lstm_cell_6047_0:	`�)
while_lstm_cell_6049_0:	0�%
while_lstm_cell_6051_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor'
while_lstm_cell_6047:	`�'
while_lstm_cell_6049:	0�#
while_lstm_cell_6051:	���'while/lstm_cell/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������`*
element_dtype0�
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_6047_0while_lstm_cell_6049_0while_lstm_cell_6051_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������0:���������0:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_cell_layer_call_and_return_conditional_losses_6008r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������0�
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������0R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0".
while_lstm_cell_6047while_lstm_cell_6047_0".
while_lstm_cell_6049while_lstm_cell_6049_0".
while_lstm_cell_6051while_lstm_cell_6051_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:$
 

_user_specified_name6051:$	 

_user_specified_name6049:$ 

_user_specified_name6047:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�J
�
?__inference_LSTM1_layer_call_and_return_conditional_losses_7103
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	�=
*lstm_cell_matmul_1_readvariableop_resource:	`�8
)lstm_cell_biasadd_readvariableop_resource:	�
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileK
ShapeShapeinputs_0*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������`R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������`c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	`�*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������`:���������`:���������`:���������`*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:���������`j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:���������`q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������`b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:���������`}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������`r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������`j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:���������`_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������`�
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������`n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������`:���������`: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_7019*
condR
while_cond_7018*K
output_shapes:
8: : : : :���������`:���������`: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������`*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������`*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������`[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������`�
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs_0
�
�
$__inference_LSTM2_layer_call_fn_7576

inputs
unknown:	`�
	unknown_0:	0�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_LSTM2_layer_call_and_return_conditional_losses_6780o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������0<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������0`: : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name7572:$ 

_user_specified_name7570:$ 

_user_specified_name7568:S O
+
_output_shapes
:���������0`
 
_user_specified_nameinputs
�8
�
while_body_7162
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	�E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	`�@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	�C
0while_lstm_cell_matmul_1_readvariableop_resource:	`�>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	`�*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������`:���������`:���������`:���������`*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������`v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������`�
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������`n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������`�
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������`�
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������`v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������`k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������`�
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������`�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������`v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������`�

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������`:���������`: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������`:-)
'
_output_shapes
:���������`:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�8
�
while_body_7019
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	�E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	`�@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	�C
0while_lstm_cell_matmul_1_readvariableop_resource:	`�>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	`�*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������`:���������`:���������`:���������`*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������`v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������`�
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������`n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������`�
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������`�
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������`v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������`k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������`�
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������`�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������`v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������`�

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������`:���������`: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������`:-)
'
_output_shapes
:���������`:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�
�
$__inference_LSTM1_layer_call_fn_6960

inputs
unknown:	�
	unknown_0:	`�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������0`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_LSTM1_layer_call_and_return_conditional_losses_6628s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������0`<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������0: : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name6956:$ 

_user_specified_name6954:$ 

_user_specified_name6952:S O
+
_output_shapes
:���������0
 
_user_specified_nameinputs
�
�
C__inference_lstm_cell_layer_call_and_return_conditional_losses_8282

inputs
states_0
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	`�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	`�*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������`:���������`:���������`:���������`*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������`V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������`U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������`N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������`_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������`T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������`V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������`K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������`c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������`X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������`Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������`Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������`m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������`:���������`: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:QM
'
_output_shapes
:���������`
"
_user_specified_name
states_1:QM
'
_output_shapes
:���������`
"
_user_specified_name
states_0:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
while_cond_7635
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_7635___redundant_placeholder02
.while_while_cond_7635___redundant_placeholder12
.while_while_cond_7635___redundant_placeholder22
.while_while_cond_7635___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�
�
C__inference_lstm_cell_layer_call_and_return_conditional_losses_5511

inputs

states
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	`�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	`�*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������`:���������`:���������`:���������`*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������`V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������`U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������`N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������`_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������`T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������`V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������`K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������`c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������`X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������`Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������`Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������`m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������`:���������`: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:OK
'
_output_shapes
:���������`
 
_user_specified_namestates:OK
'
_output_shapes
:���������`
 
_user_specified_namestates:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
while_cond_6543
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_6543___redundant_placeholder02
.while_while_cond_6543___redundant_placeholder12
.while_while_cond_6543___redundant_placeholder22
.while_while_cond_6543___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������`:���������`: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������`:-)
'
_output_shapes
:���������`:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�:
�
while_body_6364
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	`�E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	0�@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	`�C
0while_lstm_cell_matmul_1_readvariableop_resource:	0�>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������`*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	`�*
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	0�*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������0v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������0�
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������0n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������0�
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������0�
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������0v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������0k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������0�
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������0r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������0v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������0�

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�I
�
?__inference_LSTM1_layer_call_and_return_conditional_losses_7532

inputs;
(lstm_cell_matmul_readvariableop_resource:	�=
*lstm_cell_matmul_1_readvariableop_resource:	`�8
)lstm_cell_biasadd_readvariableop_resource:	�
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������`R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������`c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:0���������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	`�*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������`:���������`:���������`:���������`*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:���������`j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:���������`q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������`b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:���������`}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������`r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������`j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:���������`_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������`�
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������`n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������`:���������`: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_7448*
condR
while_cond_7447*K
output_shapes:
8: : : : :���������`:���������`: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:0���������`*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������`*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������0`[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������0`�
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������0: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:���������0
 
_user_specified_nameinputs
�
�
model_LSTM2_while_cond_53464
0model_lstm2_while_model_lstm2_while_loop_counter:
6model_lstm2_while_model_lstm2_while_maximum_iterations!
model_lstm2_while_placeholder#
model_lstm2_while_placeholder_1#
model_lstm2_while_placeholder_2#
model_lstm2_while_placeholder_36
2model_lstm2_while_less_model_lstm2_strided_slice_1J
Fmodel_lstm2_while_model_lstm2_while_cond_5346___redundant_placeholder0J
Fmodel_lstm2_while_model_lstm2_while_cond_5346___redundant_placeholder1J
Fmodel_lstm2_while_model_lstm2_while_cond_5346___redundant_placeholder2J
Fmodel_lstm2_while_model_lstm2_while_cond_5346___redundant_placeholder3
model_lstm2_while_identity
�
model/LSTM2/while/LessLessmodel_lstm2_while_placeholder2model_lstm2_while_less_model_lstm2_strided_slice_1*
T0*
_output_shapes
: c
model/LSTM2/while/IdentityIdentitymodel/LSTM2/while/Less:z:0*
T0
*
_output_shapes
: "A
model_lstm2_while_identity#model/LSTM2/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: :::::

_output_shapes
::SO

_output_shapes
: 
5
_user_specified_namemodel/LSTM2/strided_slice_1:-)
'
_output_shapes
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: :\X

_output_shapes
: 
>
_user_specified_name&$model/LSTM2/while/maximum_iterations:V R

_output_shapes
: 
8
_user_specified_name model/LSTM2/while/loop_counter
�
�
model_LSTM1_while_cond_52064
0model_lstm1_while_model_lstm1_while_loop_counter:
6model_lstm1_while_model_lstm1_while_maximum_iterations!
model_lstm1_while_placeholder#
model_lstm1_while_placeholder_1#
model_lstm1_while_placeholder_2#
model_lstm1_while_placeholder_36
2model_lstm1_while_less_model_lstm1_strided_slice_1J
Fmodel_lstm1_while_model_lstm1_while_cond_5206___redundant_placeholder0J
Fmodel_lstm1_while_model_lstm1_while_cond_5206___redundant_placeholder1J
Fmodel_lstm1_while_model_lstm1_while_cond_5206___redundant_placeholder2J
Fmodel_lstm1_while_model_lstm1_while_cond_5206___redundant_placeholder3
model_lstm1_while_identity
�
model/LSTM1/while/LessLessmodel_lstm1_while_placeholder2model_lstm1_while_less_model_lstm1_strided_slice_1*
T0*
_output_shapes
: c
model/LSTM1/while/IdentityIdentitymodel/LSTM1/while/Less:z:0*
T0
*
_output_shapes
: "A
model_lstm1_while_identity#model/LSTM1/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������`:���������`: :::::

_output_shapes
::SO

_output_shapes
: 
5
_user_specified_namemodel/LSTM1/strided_slice_1:-)
'
_output_shapes
:���������`:-)
'
_output_shapes
:���������`:

_output_shapes
: :

_output_shapes
: :\X

_output_shapes
: 
>
_user_specified_name&$model/LSTM1/while/maximum_iterations:V R

_output_shapes
: 
8
_user_specified_name model/LSTM1/while/loop_counter
�	
�
while_cond_5669
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_5669___redundant_placeholder02
.while_while_cond_5669___redundant_placeholder12
.while_while_cond_5669___redundant_placeholder22
.while_while_cond_5669___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������`:���������`: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������`:-)
'
_output_shapes
:���������`:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�
�
$__inference_LSTM2_layer_call_fn_7543
inputs_0
unknown:	`�
	unknown_0:	0�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_LSTM2_layer_call_and_return_conditional_losses_5946o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������0<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������`: : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name7539:$ 

_user_specified_name7537:$ 

_user_specified_name7535:^ Z
4
_output_shapes"
 :������������������`
"
_user_specified_name
inputs_0
�	
�
while_cond_7304
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_7304___redundant_placeholder02
.while_while_cond_7304___redundant_placeholder12
.while_while_cond_7304___redundant_placeholder22
.while_while_cond_7304___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������`:���������`: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������`:-)
'
_output_shapes
:���������`:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�
�
!__inference_internal_grad_fn_8471
result_grads_0
result_grads_1
result_grads_2
mul_beta
mul_biasadd
identity

identity_1d
mulMulmul_betamul_biasadd^result_grads_0*
T0*'
_output_shapes
:���������M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:���������U
mul_1Mulmul_betamul_biasadd*
T0*'
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:���������R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Y
addAddV2add/x:output:0	mul_2:z:0*
T0*'
_output_shapes
:���������T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:���������O
SquareSquaremul_biasadd*
T0*'
_output_shapes
:���������Z
mul_4Mulresult_grads_0
Square:y:0*
T0*'
_output_shapes
:���������V
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*'
_output_shapes
:���������L
sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?]
sub_1Subsub_1/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:���������T
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*'
_output_shapes
:���������V
ConstConst*
_output_shapes
:*
dtype0*
valueB"       F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: Y
mul_7Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:���������Q
IdentityIdentity	mul_7:z:0*
T0*'
_output_shapes
:���������E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:���������:���������: : :���������:PL
'
_output_shapes
:���������
!
_user_specified_name	BiasAdd:<8

_output_shapes
: 

_user_specified_namebeta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:WS
'
_output_shapes
:���������
(
_user_specified_nameresult_grads_1: {
&
 _has_manual_control_dependencies(
'
_output_shapes
:���������
(
_user_specified_nameresult_grads_0
�
�
%__inference_output_layer_call_fn_8165

inputs
unknown:0
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_output_layer_call_and_return_conditional_losses_6476o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������0: : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name8161:$ 

_user_specified_name8159:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs
�I
�
?__inference_LSTM1_layer_call_and_return_conditional_losses_6297

inputs;
(lstm_cell_matmul_readvariableop_resource:	�=
*lstm_cell_matmul_1_readvariableop_resource:	`�8
)lstm_cell_biasadd_readvariableop_resource:	�
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������`R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������`c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:0���������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	`�*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������`:���������`:���������`:���������`*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:���������`j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:���������`q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������`b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:���������`}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������`r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������`j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:���������`_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������`�
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������`n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������`:���������`: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_6213*
condR
while_cond_6212*K
output_shapes:
8: : : : :���������`:���������`: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:0���������`*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������`*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������0`[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������0`�
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������0: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:���������0
 
_user_specified_nameinputs
�J
�
?__inference_LSTM2_layer_call_and_return_conditional_losses_8156

inputs;
(lstm_cell_matmul_readvariableop_resource:	`�=
*lstm_cell_matmul_1_readvariableop_resource:	0�8
)lstm_cell_biasadd_readvariableop_resource:	�
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :0s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������0R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :0w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������0c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:0���������`R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������`*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	`�*
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:���������0j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:���������0q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������0b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:���������0}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������0r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������0j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:���������0_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������0�
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������0n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_8071*
condR
while_cond_8070*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������0*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������0[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������0�
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������0`: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:���������0`
 
_user_specified_nameinputs
�
�
C__inference_lstm_cell_layer_call_and_return_conditional_losses_6008

inputs

states
states_11
matmul_readvariableop_resource:	`�3
 matmul_1_readvariableop_resource:	0�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	`�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������0V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������0U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������0N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������0_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������0T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������0V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������0K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������0c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������0X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������0Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������0Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������0m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������`:���������0:���������0: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:OK
'
_output_shapes
:���������0
 
_user_specified_namestates:OK
'
_output_shapes
:���������0
 
_user_specified_namestates:O K
'
_output_shapes
:���������`
 
_user_specified_nameinputs
�:
�
while_body_7781
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	`�E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	0�@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	`�C
0while_lstm_cell_matmul_1_readvariableop_resource:	0�>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������`*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	`�*
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	0�*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������0v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������0�
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������0n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������0�
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������0�
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������0v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������0k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������0�
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������0r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������0v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������0�

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�J
�
?__inference_LSTM2_layer_call_and_return_conditional_losses_6449

inputs;
(lstm_cell_matmul_readvariableop_resource:	`�=
*lstm_cell_matmul_1_readvariableop_resource:	0�8
)lstm_cell_biasadd_readvariableop_resource:	�
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :0s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������0R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :0w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������0c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:0���������`R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������`*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	`�*
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:���������0j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:���������0q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������0b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:���������0}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������0r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������0j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:���������0_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������0�
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������0n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_6364*
condR
while_cond_6363*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������0*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������0[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������0�
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������0`: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:���������0`
 
_user_specified_nameinputs
�
�
@__inference_output_layer_call_and_return_conditional_losses_6476

inputs0
matmul_readvariableop_resource:0-
biasadd_readvariableop_resource:

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:0*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?]
mulMulbeta:output:0BiasAdd:output:0*
T0*'
_output_shapes
:���������M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:���������]
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*'
_output_shapes
:���������Q
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:����������
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0beta:output:0*
T
2**
_gradient_op_typeCustomGradient-6467*<
_output_shapes*
(:���������:���������: c

Identity_1IdentityIdentityN:output:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs
�	
�
while_cond_7018
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_7018___redundant_placeholder02
.while_while_cond_7018___redundant_placeholder12
.while_while_cond_7018___redundant_placeholder22
.while_while_cond_7018___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������`:���������`: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������`:-)
'
_output_shapes
:���������`:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�J
�
?__inference_LSTM2_layer_call_and_return_conditional_losses_8011

inputs;
(lstm_cell_matmul_readvariableop_resource:	`�=
*lstm_cell_matmul_1_readvariableop_resource:	0�8
)lstm_cell_biasadd_readvariableop_resource:	�
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :0s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������0R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :0w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������0c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:0���������`R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������`*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	`�*
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:���������0j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:���������0q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������0b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:���������0}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������0r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������0j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:���������0_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������0�
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������0n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_7926*
condR
while_cond_7925*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������0*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������0[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������0�
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������0`: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:���������0`
 
_user_specified_nameinputs
�
�
(__inference_lstm_cell_layer_call_fn_8316

inputs
states_0
states_1
unknown:	`�
	unknown_0:	0�
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������0:���������0:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_cell_layer_call_and_return_conditional_losses_6008o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������0q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������0q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������0<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������`:���������0:���������0: : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name8308:$ 

_user_specified_name8306:$ 

_user_specified_name8304:QM
'
_output_shapes
:���������0
"
_user_specified_name
states_1:QM
'
_output_shapes
:���������0
"
_user_specified_name
states_0:O K
'
_output_shapes
:���������`
 
_user_specified_nameinputs
�	
�
while_cond_5875
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_5875___redundant_placeholder02
.while_while_cond_5875___redundant_placeholder12
.while_while_cond_5875___redundant_placeholder22
.while_while_cond_5875___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�8
�
?__inference_LSTM1_layer_call_and_return_conditional_losses_5594

inputs!
lstm_cell_5512:	�!
lstm_cell_5514:	`�
lstm_cell_5516:	�
identity��!lstm_cell/StatefulPartitionedCall�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������`R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������`c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_5512lstm_cell_5514lstm_cell_5516*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������`:���������`:���������`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_cell_layer_call_and_return_conditional_losses_5511n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_5512lstm_cell_5514lstm_cell_5516*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������`:���������`: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_5525*
condR
while_cond_5524*K
output_shapes:
8: : : : :���������`:���������`: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������`*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������`*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������`[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������`N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:$ 

_user_specified_name5516:$ 

_user_specified_name5514:$ 

_user_specified_name5512:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�I
�
?__inference_LSTM1_layer_call_and_return_conditional_losses_7389

inputs;
(lstm_cell_matmul_readvariableop_resource:	�=
*lstm_cell_matmul_1_readvariableop_resource:	`�8
)lstm_cell_biasadd_readvariableop_resource:	�
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������`R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������`c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:0���������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	`�*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������`:���������`:���������`:���������`*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:���������`j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:���������`q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������`b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:���������`}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������`r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������`j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:���������`_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������`�
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������`n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������`:���������`: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_7305*
condR
while_cond_7304*K
output_shapes:
8: : : : :���������`:���������`: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:0���������`*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������`*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������0`[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������0`�
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������0: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:���������0
 
_user_specified_nameinputs
�	
�
while_cond_6363
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_6363___redundant_placeholder02
.while_while_cond_6363___redundant_placeholder12
.while_while_cond_6363___redundant_placeholder22
.while_while_cond_6363___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�
�
?__inference_model_layer_call_and_return_conditional_losses_6794	
input

lstm1_6629:	�

lstm1_6631:	`�

lstm1_6633:	�

lstm2_6781:	`�

lstm2_6783:	0�

lstm2_6785:	�
output_6788:0
output_6790:
identity��LSTM1/StatefulPartitionedCall�LSTM2/StatefulPartitionedCall�output/StatefulPartitionedCall�
LSTM1/StatefulPartitionedCallStatefulPartitionedCallinput
lstm1_6629
lstm1_6631
lstm1_6633*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������0`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_LSTM1_layer_call_and_return_conditional_losses_6628�
LSTM2/StatefulPartitionedCallStatefulPartitionedCall&LSTM1/StatefulPartitionedCall:output:0
lstm2_6781
lstm2_6783
lstm2_6785*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_LSTM2_layer_call_and_return_conditional_losses_6780�
output/StatefulPartitionedCallStatefulPartitionedCall&LSTM2/StatefulPartitionedCall:output:0output_6788output_6790*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_output_layer_call_and_return_conditional_losses_6476v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^LSTM1/StatefulPartitionedCall^LSTM2/StatefulPartitionedCall^output/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������0: : : : : : : : 2>
LSTM1/StatefulPartitionedCallLSTM1/StatefulPartitionedCall2>
LSTM2/StatefulPartitionedCallLSTM2/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:$ 

_user_specified_name6790:$ 

_user_specified_name6788:$ 

_user_specified_name6785:$ 

_user_specified_name6783:$ 

_user_specified_name6781:$ 

_user_specified_name6633:$ 

_user_specified_name6631:$ 

_user_specified_name6629:R N
+
_output_shapes
:���������0

_user_specified_nameinput
�
�
$__inference_LSTM1_layer_call_fn_6949

inputs
unknown:	�
	unknown_0:	`�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������0`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_LSTM1_layer_call_and_return_conditional_losses_6297s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������0`<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������0: : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name6945:$ 

_user_specified_name6943:$ 

_user_specified_name6941:S O
+
_output_shapes
:���������0
 
_user_specified_nameinputs
�
�
$__inference_LSTM2_layer_call_fn_7565

inputs
unknown:	`�
	unknown_0:	0�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_LSTM2_layer_call_and_return_conditional_losses_6449o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������0<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������0`: : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name7561:$ 

_user_specified_name7559:$ 

_user_specified_name7557:S O
+
_output_shapes
:���������0`
 
_user_specified_nameinputs
�G
�
model_LSTM1_while_body_52074
0model_lstm1_while_model_lstm1_while_loop_counter:
6model_lstm1_while_model_lstm1_while_maximum_iterations!
model_lstm1_while_placeholder#
model_lstm1_while_placeholder_1#
model_lstm1_while_placeholder_2#
model_lstm1_while_placeholder_33
/model_lstm1_while_model_lstm1_strided_slice_1_0o
kmodel_lstm1_while_tensorarrayv2read_tensorlistgetitem_model_lstm1_tensorarrayunstack_tensorlistfromtensor_0O
<model_lstm1_while_lstm_cell_matmul_readvariableop_resource_0:	�Q
>model_lstm1_while_lstm_cell_matmul_1_readvariableop_resource_0:	`�L
=model_lstm1_while_lstm_cell_biasadd_readvariableop_resource_0:	�
model_lstm1_while_identity 
model_lstm1_while_identity_1 
model_lstm1_while_identity_2 
model_lstm1_while_identity_3 
model_lstm1_while_identity_4 
model_lstm1_while_identity_51
-model_lstm1_while_model_lstm1_strided_slice_1m
imodel_lstm1_while_tensorarrayv2read_tensorlistgetitem_model_lstm1_tensorarrayunstack_tensorlistfromtensorM
:model_lstm1_while_lstm_cell_matmul_readvariableop_resource:	�O
<model_lstm1_while_lstm_cell_matmul_1_readvariableop_resource:	`�J
;model_lstm1_while_lstm_cell_biasadd_readvariableop_resource:	���2model/LSTM1/while/lstm_cell/BiasAdd/ReadVariableOp�1model/LSTM1/while/lstm_cell/MatMul/ReadVariableOp�3model/LSTM1/while/lstm_cell/MatMul_1/ReadVariableOp�
Cmodel/LSTM1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
5model/LSTM1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemkmodel_lstm1_while_tensorarrayv2read_tensorlistgetitem_model_lstm1_tensorarrayunstack_tensorlistfromtensor_0model_lstm1_while_placeholderLmodel/LSTM1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1model/LSTM1/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp<model_lstm1_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
"model/LSTM1/while/lstm_cell/MatMulMatMul<model/LSTM1/while/TensorArrayV2Read/TensorListGetItem:item:09model/LSTM1/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3model/LSTM1/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp>model_lstm1_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	`�*
dtype0�
$model/LSTM1/while/lstm_cell/MatMul_1MatMulmodel_lstm1_while_placeholder_2;model/LSTM1/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
model/LSTM1/while/lstm_cell/addAddV2,model/LSTM1/while/lstm_cell/MatMul:product:0.model/LSTM1/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
2model/LSTM1/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp=model_lstm1_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
#model/LSTM1/while/lstm_cell/BiasAddBiasAdd#model/LSTM1/while/lstm_cell/add:z:0:model/LSTM1/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
+model/LSTM1/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!model/LSTM1/while/lstm_cell/splitSplit4model/LSTM1/while/lstm_cell/split/split_dim:output:0,model/LSTM1/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������`:���������`:���������`:���������`*
	num_split�
#model/LSTM1/while/lstm_cell/SigmoidSigmoid*model/LSTM1/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������`�
%model/LSTM1/while/lstm_cell/Sigmoid_1Sigmoid*model/LSTM1/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������`�
model/LSTM1/while/lstm_cell/mulMul)model/LSTM1/while/lstm_cell/Sigmoid_1:y:0model_lstm1_while_placeholder_3*
T0*'
_output_shapes
:���������`�
 model/LSTM1/while/lstm_cell/ReluRelu*model/LSTM1/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������`�
!model/LSTM1/while/lstm_cell/mul_1Mul'model/LSTM1/while/lstm_cell/Sigmoid:y:0.model/LSTM1/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������`�
!model/LSTM1/while/lstm_cell/add_1AddV2#model/LSTM1/while/lstm_cell/mul:z:0%model/LSTM1/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������`�
%model/LSTM1/while/lstm_cell/Sigmoid_2Sigmoid*model/LSTM1/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������`�
"model/LSTM1/while/lstm_cell/Relu_1Relu%model/LSTM1/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������`�
!model/LSTM1/while/lstm_cell/mul_2Mul)model/LSTM1/while/lstm_cell/Sigmoid_2:y:00model/LSTM1/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������`�
6model/LSTM1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmodel_lstm1_while_placeholder_1model_lstm1_while_placeholder%model/LSTM1/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���Y
model/LSTM1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
model/LSTM1/while/addAddV2model_lstm1_while_placeholder model/LSTM1/while/add/y:output:0*
T0*
_output_shapes
: [
model/LSTM1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
model/LSTM1/while/add_1AddV20model_lstm1_while_model_lstm1_while_loop_counter"model/LSTM1/while/add_1/y:output:0*
T0*
_output_shapes
: }
model/LSTM1/while/IdentityIdentitymodel/LSTM1/while/add_1:z:0^model/LSTM1/while/NoOp*
T0*
_output_shapes
: �
model/LSTM1/while/Identity_1Identity6model_lstm1_while_model_lstm1_while_maximum_iterations^model/LSTM1/while/NoOp*
T0*
_output_shapes
: }
model/LSTM1/while/Identity_2Identitymodel/LSTM1/while/add:z:0^model/LSTM1/while/NoOp*
T0*
_output_shapes
: �
model/LSTM1/while/Identity_3IdentityFmodel/LSTM1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^model/LSTM1/while/NoOp*
T0*
_output_shapes
: �
model/LSTM1/while/Identity_4Identity%model/LSTM1/while/lstm_cell/mul_2:z:0^model/LSTM1/while/NoOp*
T0*'
_output_shapes
:���������`�
model/LSTM1/while/Identity_5Identity%model/LSTM1/while/lstm_cell/add_1:z:0^model/LSTM1/while/NoOp*
T0*'
_output_shapes
:���������`�
model/LSTM1/while/NoOpNoOp3^model/LSTM1/while/lstm_cell/BiasAdd/ReadVariableOp2^model/LSTM1/while/lstm_cell/MatMul/ReadVariableOp4^model/LSTM1/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "E
model_lstm1_while_identity_1%model/LSTM1/while/Identity_1:output:0"E
model_lstm1_while_identity_2%model/LSTM1/while/Identity_2:output:0"E
model_lstm1_while_identity_3%model/LSTM1/while/Identity_3:output:0"E
model_lstm1_while_identity_4%model/LSTM1/while/Identity_4:output:0"E
model_lstm1_while_identity_5%model/LSTM1/while/Identity_5:output:0"A
model_lstm1_while_identity#model/LSTM1/while/Identity:output:0"|
;model_lstm1_while_lstm_cell_biasadd_readvariableop_resource=model_lstm1_while_lstm_cell_biasadd_readvariableop_resource_0"~
<model_lstm1_while_lstm_cell_matmul_1_readvariableop_resource>model_lstm1_while_lstm_cell_matmul_1_readvariableop_resource_0"z
:model_lstm1_while_lstm_cell_matmul_readvariableop_resource<model_lstm1_while_lstm_cell_matmul_readvariableop_resource_0"`
-model_lstm1_while_model_lstm1_strided_slice_1/model_lstm1_while_model_lstm1_strided_slice_1_0"�
imodel_lstm1_while_tensorarrayv2read_tensorlistgetitem_model_lstm1_tensorarrayunstack_tensorlistfromtensorkmodel_lstm1_while_tensorarrayv2read_tensorlistgetitem_model_lstm1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������`:���������`: : : : : 2h
2model/LSTM1/while/lstm_cell/BiasAdd/ReadVariableOp2model/LSTM1/while/lstm_cell/BiasAdd/ReadVariableOp2f
1model/LSTM1/while/lstm_cell/MatMul/ReadVariableOp1model/LSTM1/while/lstm_cell/MatMul/ReadVariableOp2j
3model/LSTM1/while/lstm_cell/MatMul_1/ReadVariableOp3model/LSTM1/while/lstm_cell/MatMul_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:kg

_output_shapes
: 
M
_user_specified_name53model/LSTM1/TensorArrayUnstack/TensorListFromTensor:SO

_output_shapes
: 
5
_user_specified_namemodel/LSTM1/strided_slice_1:-)
'
_output_shapes
:���������`:-)
'
_output_shapes
:���������`:

_output_shapes
: :

_output_shapes
: :\X

_output_shapes
: 
>
_user_specified_name&$model/LSTM1/while/maximum_iterations:V R

_output_shapes
: 
8
_user_specified_name model/LSTM1/while/loop_counter
�	
�
while_cond_5524
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_5524___redundant_placeholder02
.while_while_cond_5524___redundant_placeholder12
.while_while_cond_5524___redundant_placeholder22
.while_while_cond_5524___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������`:���������`: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������`:-)
'
_output_shapes
:���������`:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�8
�
while_body_7305
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	�E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	`�@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	�C
0while_lstm_cell_matmul_1_readvariableop_resource:	`�>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	`�*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������`:���������`:���������`:���������`*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������`v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������`�
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������`n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������`�
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������`�
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������`v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������`k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������`�
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������`�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������`v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������`�

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������`:���������`: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������`:-)
'
_output_shapes
:���������`:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�
�
(__inference_lstm_cell_layer_call_fn_8218

inputs
states_0
states_1
unknown:	�
	unknown_0:	`�
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������`:���������`:���������`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_cell_layer_call_and_return_conditional_losses_5656o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������`<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������`:���������`: : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name8210:$ 

_user_specified_name8208:$ 

_user_specified_name8206:QM
'
_output_shapes
:���������`
"
_user_specified_name
states_1:QM
'
_output_shapes
:���������`
"
_user_specified_name
states_0:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
while_cond_8070
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_8070___redundant_placeholder02
.while_while_cond_8070___redundant_placeholder12
.while_while_cond_8070___redundant_placeholder22
.while_while_cond_8070___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�
�
$__inference_LSTM2_layer_call_fn_7554
inputs_0
unknown:	`�
	unknown_0:	0�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_LSTM2_layer_call_and_return_conditional_losses_6093o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������0<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������`: : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name7550:$ 

_user_specified_name7548:$ 

_user_specified_name7546:^ Z
4
_output_shapes"
 :������������������`
"
_user_specified_name
inputs_0
�	
�
while_cond_7447
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_7447___redundant_placeholder02
.while_while_cond_7447___redundant_placeholder12
.while_while_cond_7447___redundant_placeholder22
.while_while_cond_7447___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������`:���������`: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������`:-)
'
_output_shapes
:���������`:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�
�
(__inference_lstm_cell_layer_call_fn_8299

inputs
states_0
states_1
unknown:	`�
	unknown_0:	0�
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������0:���������0:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_cell_layer_call_and_return_conditional_losses_5861o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������0q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������0q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������0<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������`:���������0:���������0: : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name8291:$ 

_user_specified_name8289:$ 

_user_specified_name8287:QM
'
_output_shapes
:���������0
"
_user_specified_name
states_1:QM
'
_output_shapes
:���������0
"
_user_specified_name
states_0:O K
'
_output_shapes
:���������`
 
_user_specified_nameinputs
�	
�
while_cond_6212
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_6212___redundant_placeholder02
.while_while_cond_6212___redundant_placeholder12
.while_while_cond_6212___redundant_placeholder22
.while_while_cond_6212___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������`:���������`: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������`:-)
'
_output_shapes
:���������`:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�:
�
while_body_7926
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	`�E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	0�@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	`�C
0while_lstm_cell_matmul_1_readvariableop_resource:	0�>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������`*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	`�*
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	0�*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������0v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������0�
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������0n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������0�
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������0�
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������0v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������0k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������0�
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������0r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������0v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������0�

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�$
�
while_body_5670
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0)
while_lstm_cell_5694_0:	�)
while_lstm_cell_5696_0:	`�%
while_lstm_cell_5698_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor'
while_lstm_cell_5694:	�'
while_lstm_cell_5696:	`�#
while_lstm_cell_5698:	���'while/lstm_cell/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_5694_0while_lstm_cell_5696_0while_lstm_cell_5698_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������`:���������`:���������`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_cell_layer_call_and_return_conditional_losses_5656�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������`�
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������`R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0".
while_lstm_cell_5694while_lstm_cell_5694_0".
while_lstm_cell_5696while_lstm_cell_5696_0".
while_lstm_cell_5698while_lstm_cell_5698_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������`:���������`: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:$
 

_user_specified_name5698:$	 

_user_specified_name5696:$ 

_user_specified_name5694:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������`:-)
'
_output_shapes
:���������`:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�8
�
while_body_6544
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	�E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	`�@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	�C
0while_lstm_cell_matmul_1_readvariableop_resource:	`�>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	`�*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������`:���������`:���������`:���������`*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������`v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������`�
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������`n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������`�
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������`�
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������`v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������`k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������`�
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������`�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������`v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������`�

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������`:���������`: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������`:-)
'
_output_shapes
:���������`:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�
�
?__inference_model_layer_call_and_return_conditional_losses_6483	
input

lstm1_6298:	�

lstm1_6300:	`�

lstm1_6302:	�

lstm2_6450:	`�

lstm2_6452:	0�

lstm2_6454:	�
output_6477:0
output_6479:
identity��LSTM1/StatefulPartitionedCall�LSTM2/StatefulPartitionedCall�output/StatefulPartitionedCall�
LSTM1/StatefulPartitionedCallStatefulPartitionedCallinput
lstm1_6298
lstm1_6300
lstm1_6302*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������0`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_LSTM1_layer_call_and_return_conditional_losses_6297�
LSTM2/StatefulPartitionedCallStatefulPartitionedCall&LSTM1/StatefulPartitionedCall:output:0
lstm2_6450
lstm2_6452
lstm2_6454*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_LSTM2_layer_call_and_return_conditional_losses_6449�
output/StatefulPartitionedCallStatefulPartitionedCall&LSTM2/StatefulPartitionedCall:output:0output_6477output_6479*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_output_layer_call_and_return_conditional_losses_6476v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^LSTM1/StatefulPartitionedCall^LSTM2/StatefulPartitionedCall^output/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������0: : : : : : : : 2>
LSTM1/StatefulPartitionedCallLSTM1/StatefulPartitionedCall2>
LSTM2/StatefulPartitionedCallLSTM2/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:$ 

_user_specified_name6479:$ 

_user_specified_name6477:$ 

_user_specified_name6454:$ 

_user_specified_name6452:$ 

_user_specified_name6450:$ 

_user_specified_name6302:$ 

_user_specified_name6300:$ 

_user_specified_name6298:R N
+
_output_shapes
:���������0

_user_specified_nameinput
�J
�
?__inference_LSTM2_layer_call_and_return_conditional_losses_7866
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	`�=
*lstm_cell_matmul_1_readvariableop_resource:	0�8
)lstm_cell_biasadd_readvariableop_resource:	�
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileK
ShapeShapeinputs_0*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :0s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������0R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :0w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������0c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������`R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������`*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	`�*
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:���������0j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:���������0q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������0b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:���������0}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������0r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������0j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:���������0_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������0�
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������0n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_7781*
condR
while_cond_7780*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������0*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������0[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������0�
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������`: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:^ Z
4
_output_shapes"
 :������������������`
"
_user_specified_name
inputs_0
�:
�
while_body_7636
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	`�E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	0�@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	`�C
0while_lstm_cell_matmul_1_readvariableop_resource:	0�>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������`*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	`�*
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	0�*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������0v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������0�
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������0n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������0�
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������0�
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������0v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������0k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������0�
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������0r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������0v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������0�

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�8
�
while_body_6213
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	�E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	`�@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	�C
0while_lstm_cell_matmul_1_readvariableop_resource:	`�>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	`�*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������`:���������`:���������`:���������`*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������`v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������`�
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������`n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������`�
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������`�
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������`v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������`k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������`�
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������`�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������`v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������`�

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������`:���������`: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������`:-)
'
_output_shapes
:���������`:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�
�
(__inference_lstm_cell_layer_call_fn_8201

inputs
states_0
states_1
unknown:	�
	unknown_0:	`�
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������`:���������`:���������`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_cell_layer_call_and_return_conditional_losses_5511o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������`<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������`:���������`: : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name8193:$ 

_user_specified_name8191:$ 

_user_specified_name8189:QM
'
_output_shapes
:���������`
"
_user_specified_name
states_1:QM
'
_output_shapes
:���������`
"
_user_specified_name
states_0:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
C__inference_lstm_cell_layer_call_and_return_conditional_losses_8380

inputs
states_0
states_11
matmul_readvariableop_resource:	`�3
 matmul_1_readvariableop_resource:	0�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	`�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������0V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������0U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������0N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������0_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������0T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������0V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������0K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������0c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������0X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������0Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������0Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������0m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������`:���������0:���������0: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:QM
'
_output_shapes
:���������0
"
_user_specified_name
states_1:QM
'
_output_shapes
:���������0
"
_user_specified_name
states_0:O K
'
_output_shapes
:���������`
 
_user_specified_nameinputs
�:
�
while_body_8071
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	`�E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	0�@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	`�C
0while_lstm_cell_matmul_1_readvariableop_resource:	0�>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������`*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	`�*
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	0�*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������0v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������0�
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������0n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������0�
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������0�
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������0v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������0k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������0�
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������0r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������0v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������0�

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�9
�
?__inference_LSTM2_layer_call_and_return_conditional_losses_6093

inputs!
lstm_cell_6009:	`�!
lstm_cell_6011:	0�
lstm_cell_6013:	�
identity��!lstm_cell/StatefulPartitionedCall�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :0s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������0R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :0w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������0c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������`R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������`*
shrink_axis_mask�
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_6009lstm_cell_6011lstm_cell_6013*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������0:���������0:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_cell_layer_call_and_return_conditional_losses_6008n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_6009lstm_cell_6011lstm_cell_6013*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_6023*
condR
while_cond_6022*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������0*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������0[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������0N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������`: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:$ 

_user_specified_name6013:$ 

_user_specified_name6011:$ 

_user_specified_name6009:\ X
4
_output_shapes"
 :������������������`
 
_user_specified_nameinputs
�
�
$__inference_model_layer_call_fn_6816	
input
unknown:	�
	unknown_0:	`�
	unknown_1:	�
	unknown_2:	`�
	unknown_3:	0�
	unknown_4:	�
	unknown_5:0
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_6483o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������0: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name6812:$ 

_user_specified_name6810:$ 

_user_specified_name6808:$ 

_user_specified_name6806:$ 

_user_specified_name6804:$ 

_user_specified_name6802:$ 

_user_specified_name6800:$ 

_user_specified_name6798:R N
+
_output_shapes
:���������0

_user_specified_nameinput
�J
�
?__inference_LSTM1_layer_call_and_return_conditional_losses_7246
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	�=
*lstm_cell_matmul_1_readvariableop_resource:	`�8
)lstm_cell_biasadd_readvariableop_resource:	�
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileK
ShapeShapeinputs_0*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������`R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������`c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	`�*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������`:���������`:���������`:���������`*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:���������`j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:���������`q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������`b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:���������`}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������`r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������`j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:���������`_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������`�
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������`n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������`:���������`: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_7162*
condR
while_cond_7161*K
output_shapes:
8: : : : :���������`:���������`: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������`*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������`*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������`[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������`�
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs_0
�8
�
?__inference_LSTM1_layer_call_and_return_conditional_losses_5739

inputs!
lstm_cell_5657:	�!
lstm_cell_5659:	`�
lstm_cell_5661:	�
identity��!lstm_cell/StatefulPartitionedCall�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������`R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������`c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_5657lstm_cell_5659lstm_cell_5661*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������`:���������`:���������`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_cell_layer_call_and_return_conditional_losses_5656n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_5657lstm_cell_5659lstm_cell_5661*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������`:���������`: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_5670*
condR
while_cond_5669*K
output_shapes:
8: : : : :���������`:���������`: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������`*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������`*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������`[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������`N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:$ 

_user_specified_name5661:$ 

_user_specified_name5659:$ 

_user_specified_name5657:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
C__inference_lstm_cell_layer_call_and_return_conditional_losses_8250

inputs
states_0
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	`�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	`�*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������`:���������`:���������`:���������`*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������`V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������`U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������`N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������`_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������`T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������`V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������`K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������`c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������`X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������`Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������`Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������`m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������`:���������`: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:QM
'
_output_shapes
:���������`
"
_user_specified_name
states_1:QM
'
_output_shapes
:���������`
"
_user_specified_name
states_0:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�J
�
?__inference_LSTM2_layer_call_and_return_conditional_losses_6780

inputs;
(lstm_cell_matmul_readvariableop_resource:	`�=
*lstm_cell_matmul_1_readvariableop_resource:	0�8
)lstm_cell_biasadd_readvariableop_resource:	�
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :0s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������0R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :0w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������0c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:0���������`R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������`*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	`�*
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:���������0j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:���������0q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������0b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:���������0}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������0r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������0j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:���������0_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������0�
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������0n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_6695*
condR
while_cond_6694*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������0*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������0[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������0�
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������0`: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:���������0`
 
_user_specified_nameinputs
�
�
$__inference_model_layer_call_fn_6837	
input
unknown:	�
	unknown_0:	`�
	unknown_1:	�
	unknown_2:	`�
	unknown_3:	0�
	unknown_4:	�
	unknown_5:0
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_6794o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������0: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name6833:$ 

_user_specified_name6831:$ 

_user_specified_name6829:$ 

_user_specified_name6827:$ 

_user_specified_name6825:$ 

_user_specified_name6823:$ 

_user_specified_name6821:$ 

_user_specified_name6819:R N
+
_output_shapes
:���������0

_user_specified_nameinput
��
�
__inference__wrapped_model_5447	
inputG
4model_lstm1_lstm_cell_matmul_readvariableop_resource:	�I
6model_lstm1_lstm_cell_matmul_1_readvariableop_resource:	`�D
5model_lstm1_lstm_cell_biasadd_readvariableop_resource:	�G
4model_lstm2_lstm_cell_matmul_readvariableop_resource:	`�I
6model_lstm2_lstm_cell_matmul_1_readvariableop_resource:	0�D
5model_lstm2_lstm_cell_biasadd_readvariableop_resource:	�=
+model_output_matmul_readvariableop_resource:0:
,model_output_biasadd_readvariableop_resource:
identity��,model/LSTM1/lstm_cell/BiasAdd/ReadVariableOp�+model/LSTM1/lstm_cell/MatMul/ReadVariableOp�-model/LSTM1/lstm_cell/MatMul_1/ReadVariableOp�model/LSTM1/while�,model/LSTM2/lstm_cell/BiasAdd/ReadVariableOp�+model/LSTM2/lstm_cell/MatMul/ReadVariableOp�-model/LSTM2/lstm_cell/MatMul_1/ReadVariableOp�model/LSTM2/while�#model/output/BiasAdd/ReadVariableOp�"model/output/MatMul/ReadVariableOpT
model/LSTM1/ShapeShapeinput*
T0*
_output_shapes
::��i
model/LSTM1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!model/LSTM1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!model/LSTM1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
model/LSTM1/strided_sliceStridedSlicemodel/LSTM1/Shape:output:0(model/LSTM1/strided_slice/stack:output:0*model/LSTM1/strided_slice/stack_1:output:0*model/LSTM1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
model/LSTM1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`�
model/LSTM1/zeros/packedPack"model/LSTM1/strided_slice:output:0#model/LSTM1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
model/LSTM1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
model/LSTM1/zerosFill!model/LSTM1/zeros/packed:output:0 model/LSTM1/zeros/Const:output:0*
T0*'
_output_shapes
:���������`^
model/LSTM1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`�
model/LSTM1/zeros_1/packedPack"model/LSTM1/strided_slice:output:0%model/LSTM1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:^
model/LSTM1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
model/LSTM1/zeros_1Fill#model/LSTM1/zeros_1/packed:output:0"model/LSTM1/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������`o
model/LSTM1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
model/LSTM1/transpose	Transposeinput#model/LSTM1/transpose/perm:output:0*
T0*+
_output_shapes
:0���������j
model/LSTM1/Shape_1Shapemodel/LSTM1/transpose:y:0*
T0*
_output_shapes
::��k
!model/LSTM1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#model/LSTM1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#model/LSTM1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
model/LSTM1/strided_slice_1StridedSlicemodel/LSTM1/Shape_1:output:0*model/LSTM1/strided_slice_1/stack:output:0,model/LSTM1/strided_slice_1/stack_1:output:0,model/LSTM1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
'model/LSTM1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
model/LSTM1/TensorArrayV2TensorListReserve0model/LSTM1/TensorArrayV2/element_shape:output:0$model/LSTM1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Amodel/LSTM1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
3model/LSTM1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormodel/LSTM1/transpose:y:0Jmodel/LSTM1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���k
!model/LSTM1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#model/LSTM1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#model/LSTM1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
model/LSTM1/strided_slice_2StridedSlicemodel/LSTM1/transpose:y:0*model/LSTM1/strided_slice_2/stack:output:0,model/LSTM1/strided_slice_2/stack_1:output:0,model/LSTM1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
+model/LSTM1/lstm_cell/MatMul/ReadVariableOpReadVariableOp4model_lstm1_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
model/LSTM1/lstm_cell/MatMulMatMul$model/LSTM1/strided_slice_2:output:03model/LSTM1/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-model/LSTM1/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp6model_lstm1_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	`�*
dtype0�
model/LSTM1/lstm_cell/MatMul_1MatMulmodel/LSTM1/zeros:output:05model/LSTM1/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
model/LSTM1/lstm_cell/addAddV2&model/LSTM1/lstm_cell/MatMul:product:0(model/LSTM1/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
,model/LSTM1/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp5model_lstm1_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/LSTM1/lstm_cell/BiasAddBiasAddmodel/LSTM1/lstm_cell/add:z:04model/LSTM1/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
%model/LSTM1/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
model/LSTM1/lstm_cell/splitSplit.model/LSTM1/lstm_cell/split/split_dim:output:0&model/LSTM1/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������`:���������`:���������`:���������`*
	num_split�
model/LSTM1/lstm_cell/SigmoidSigmoid$model/LSTM1/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������`�
model/LSTM1/lstm_cell/Sigmoid_1Sigmoid$model/LSTM1/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������`�
model/LSTM1/lstm_cell/mulMul#model/LSTM1/lstm_cell/Sigmoid_1:y:0model/LSTM1/zeros_1:output:0*
T0*'
_output_shapes
:���������`z
model/LSTM1/lstm_cell/ReluRelu$model/LSTM1/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������`�
model/LSTM1/lstm_cell/mul_1Mul!model/LSTM1/lstm_cell/Sigmoid:y:0(model/LSTM1/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������`�
model/LSTM1/lstm_cell/add_1AddV2model/LSTM1/lstm_cell/mul:z:0model/LSTM1/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������`�
model/LSTM1/lstm_cell/Sigmoid_2Sigmoid$model/LSTM1/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������`w
model/LSTM1/lstm_cell/Relu_1Relumodel/LSTM1/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������`�
model/LSTM1/lstm_cell/mul_2Mul#model/LSTM1/lstm_cell/Sigmoid_2:y:0*model/LSTM1/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������`z
)model/LSTM1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
model/LSTM1/TensorArrayV2_1TensorListReserve2model/LSTM1/TensorArrayV2_1/element_shape:output:0$model/LSTM1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���R
model/LSTM1/timeConst*
_output_shapes
: *
dtype0*
value	B : o
$model/LSTM1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������`
model/LSTM1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
model/LSTM1/whileWhile'model/LSTM1/while/loop_counter:output:0-model/LSTM1/while/maximum_iterations:output:0model/LSTM1/time:output:0$model/LSTM1/TensorArrayV2_1:handle:0model/LSTM1/zeros:output:0model/LSTM1/zeros_1:output:0$model/LSTM1/strided_slice_1:output:0Cmodel/LSTM1/TensorArrayUnstack/TensorListFromTensor:output_handle:04model_lstm1_lstm_cell_matmul_readvariableop_resource6model_lstm1_lstm_cell_matmul_1_readvariableop_resource5model_lstm1_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������`:���������`: : : : : *%
_read_only_resource_inputs
	
*'
bodyR
model_LSTM1_while_body_5207*'
condR
model_LSTM1_while_cond_5206*K
output_shapes:
8: : : : :���������`:���������`: : : : : *
parallel_iterations �
<model/LSTM1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
.model/LSTM1/TensorArrayV2Stack/TensorListStackTensorListStackmodel/LSTM1/while:output:3Emodel/LSTM1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:0���������`*
element_dtype0t
!model/LSTM1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������m
#model/LSTM1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: m
#model/LSTM1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
model/LSTM1/strided_slice_3StridedSlice7model/LSTM1/TensorArrayV2Stack/TensorListStack:tensor:0*model/LSTM1/strided_slice_3/stack:output:0,model/LSTM1/strided_slice_3/stack_1:output:0,model/LSTM1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������`*
shrink_axis_maskq
model/LSTM1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
model/LSTM1/transpose_1	Transpose7model/LSTM1/TensorArrayV2Stack/TensorListStack:tensor:0%model/LSTM1/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������0`g
model/LSTM1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    j
model/LSTM2/ShapeShapemodel/LSTM1/transpose_1:y:0*
T0*
_output_shapes
::��i
model/LSTM2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!model/LSTM2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!model/LSTM2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
model/LSTM2/strided_sliceStridedSlicemodel/LSTM2/Shape:output:0(model/LSTM2/strided_slice/stack:output:0*model/LSTM2/strided_slice/stack_1:output:0*model/LSTM2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
model/LSTM2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :0�
model/LSTM2/zeros/packedPack"model/LSTM2/strided_slice:output:0#model/LSTM2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
model/LSTM2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
model/LSTM2/zerosFill!model/LSTM2/zeros/packed:output:0 model/LSTM2/zeros/Const:output:0*
T0*'
_output_shapes
:���������0^
model/LSTM2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :0�
model/LSTM2/zeros_1/packedPack"model/LSTM2/strided_slice:output:0%model/LSTM2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:^
model/LSTM2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
model/LSTM2/zeros_1Fill#model/LSTM2/zeros_1/packed:output:0"model/LSTM2/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������0o
model/LSTM2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
model/LSTM2/transpose	Transposemodel/LSTM1/transpose_1:y:0#model/LSTM2/transpose/perm:output:0*
T0*+
_output_shapes
:0���������`j
model/LSTM2/Shape_1Shapemodel/LSTM2/transpose:y:0*
T0*
_output_shapes
::��k
!model/LSTM2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#model/LSTM2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#model/LSTM2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
model/LSTM2/strided_slice_1StridedSlicemodel/LSTM2/Shape_1:output:0*model/LSTM2/strided_slice_1/stack:output:0,model/LSTM2/strided_slice_1/stack_1:output:0,model/LSTM2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
'model/LSTM2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
model/LSTM2/TensorArrayV2TensorListReserve0model/LSTM2/TensorArrayV2/element_shape:output:0$model/LSTM2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Amodel/LSTM2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
3model/LSTM2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormodel/LSTM2/transpose:y:0Jmodel/LSTM2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���k
!model/LSTM2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#model/LSTM2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#model/LSTM2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
model/LSTM2/strided_slice_2StridedSlicemodel/LSTM2/transpose:y:0*model/LSTM2/strided_slice_2/stack:output:0,model/LSTM2/strided_slice_2/stack_1:output:0,model/LSTM2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������`*
shrink_axis_mask�
+model/LSTM2/lstm_cell/MatMul/ReadVariableOpReadVariableOp4model_lstm2_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	`�*
dtype0�
model/LSTM2/lstm_cell/MatMulMatMul$model/LSTM2/strided_slice_2:output:03model/LSTM2/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-model/LSTM2/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp6model_lstm2_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype0�
model/LSTM2/lstm_cell/MatMul_1MatMulmodel/LSTM2/zeros:output:05model/LSTM2/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
model/LSTM2/lstm_cell/addAddV2&model/LSTM2/lstm_cell/MatMul:product:0(model/LSTM2/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
,model/LSTM2/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp5model_lstm2_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/LSTM2/lstm_cell/BiasAddBiasAddmodel/LSTM2/lstm_cell/add:z:04model/LSTM2/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
%model/LSTM2/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
model/LSTM2/lstm_cell/splitSplit.model/LSTM2/lstm_cell/split/split_dim:output:0&model/LSTM2/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split�
model/LSTM2/lstm_cell/SigmoidSigmoid$model/LSTM2/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������0�
model/LSTM2/lstm_cell/Sigmoid_1Sigmoid$model/LSTM2/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������0�
model/LSTM2/lstm_cell/mulMul#model/LSTM2/lstm_cell/Sigmoid_1:y:0model/LSTM2/zeros_1:output:0*
T0*'
_output_shapes
:���������0z
model/LSTM2/lstm_cell/ReluRelu$model/LSTM2/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������0�
model/LSTM2/lstm_cell/mul_1Mul!model/LSTM2/lstm_cell/Sigmoid:y:0(model/LSTM2/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������0�
model/LSTM2/lstm_cell/add_1AddV2model/LSTM2/lstm_cell/mul:z:0model/LSTM2/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������0�
model/LSTM2/lstm_cell/Sigmoid_2Sigmoid$model/LSTM2/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������0w
model/LSTM2/lstm_cell/Relu_1Relumodel/LSTM2/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������0�
model/LSTM2/lstm_cell/mul_2Mul#model/LSTM2/lstm_cell/Sigmoid_2:y:0*model/LSTM2/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������0z
)model/LSTM2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   j
(model/LSTM2/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
model/LSTM2/TensorArrayV2_1TensorListReserve2model/LSTM2/TensorArrayV2_1/element_shape:output:01model/LSTM2/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���R
model/LSTM2/timeConst*
_output_shapes
: *
dtype0*
value	B : o
$model/LSTM2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������`
model/LSTM2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
model/LSTM2/whileWhile'model/LSTM2/while/loop_counter:output:0-model/LSTM2/while/maximum_iterations:output:0model/LSTM2/time:output:0$model/LSTM2/TensorArrayV2_1:handle:0model/LSTM2/zeros:output:0model/LSTM2/zeros_1:output:0$model/LSTM2/strided_slice_1:output:0Cmodel/LSTM2/TensorArrayUnstack/TensorListFromTensor:output_handle:04model_lstm2_lstm_cell_matmul_readvariableop_resource6model_lstm2_lstm_cell_matmul_1_readvariableop_resource5model_lstm2_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*'
bodyR
model_LSTM2_while_body_5347*'
condR
model_LSTM2_while_cond_5346*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations �
<model/LSTM2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   �
.model/LSTM2/TensorArrayV2Stack/TensorListStackTensorListStackmodel/LSTM2/while:output:3Emodel/LSTM2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������0*
element_dtype0*
num_elementst
!model/LSTM2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������m
#model/LSTM2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: m
#model/LSTM2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
model/LSTM2/strided_slice_3StridedSlice7model/LSTM2/TensorArrayV2Stack/TensorListStack:tensor:0*model/LSTM2/strided_slice_3/stack:output:0,model/LSTM2/strided_slice_3/stack_1:output:0,model/LSTM2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_maskq
model/LSTM2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
model/LSTM2/transpose_1	Transpose7model/LSTM2/TensorArrayV2Stack/TensorListStack:tensor:0%model/LSTM2/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������0g
model/LSTM2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
"model/output/MatMul/ReadVariableOpReadVariableOp+model_output_matmul_readvariableop_resource*
_output_shapes

:0*
dtype0�
model/output/MatMulMatMul$model/LSTM2/strided_slice_3:output:0*model/output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
#model/output/BiasAdd/ReadVariableOpReadVariableOp,model_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/output/BiasAddBiasAddmodel/output/MatMul:product:0+model/output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
model/output/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
model/output/mulMulmodel/output/beta:output:0model/output/BiasAdd:output:0*
T0*'
_output_shapes
:���������g
model/output/SigmoidSigmoidmodel/output/mul:z:0*
T0*'
_output_shapes
:����������
model/output/mul_1Mulmodel/output/BiasAdd:output:0model/output/Sigmoid:y:0*
T0*'
_output_shapes
:���������k
model/output/IdentityIdentitymodel/output/mul_1:z:0*
T0*'
_output_shapes
:����������
model/output/IdentityN	IdentityNmodel/output/mul_1:z:0model/output/BiasAdd:output:0model/output/beta:output:0*
T
2**
_gradient_op_typeCustomGradient-5438*<
_output_shapes*
(:���������:���������: n
IdentityIdentitymodel/output/IdentityN:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp-^model/LSTM1/lstm_cell/BiasAdd/ReadVariableOp,^model/LSTM1/lstm_cell/MatMul/ReadVariableOp.^model/LSTM1/lstm_cell/MatMul_1/ReadVariableOp^model/LSTM1/while-^model/LSTM2/lstm_cell/BiasAdd/ReadVariableOp,^model/LSTM2/lstm_cell/MatMul/ReadVariableOp.^model/LSTM2/lstm_cell/MatMul_1/ReadVariableOp^model/LSTM2/while$^model/output/BiasAdd/ReadVariableOp#^model/output/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������0: : : : : : : : 2\
,model/LSTM1/lstm_cell/BiasAdd/ReadVariableOp,model/LSTM1/lstm_cell/BiasAdd/ReadVariableOp2Z
+model/LSTM1/lstm_cell/MatMul/ReadVariableOp+model/LSTM1/lstm_cell/MatMul/ReadVariableOp2^
-model/LSTM1/lstm_cell/MatMul_1/ReadVariableOp-model/LSTM1/lstm_cell/MatMul_1/ReadVariableOp2&
model/LSTM1/whilemodel/LSTM1/while2\
,model/LSTM2/lstm_cell/BiasAdd/ReadVariableOp,model/LSTM2/lstm_cell/BiasAdd/ReadVariableOp2Z
+model/LSTM2/lstm_cell/MatMul/ReadVariableOp+model/LSTM2/lstm_cell/MatMul/ReadVariableOp2^
-model/LSTM2/lstm_cell/MatMul_1/ReadVariableOp-model/LSTM2/lstm_cell/MatMul_1/ReadVariableOp2&
model/LSTM2/whilemodel/LSTM2/while2J
#model/output/BiasAdd/ReadVariableOp#model/output/BiasAdd/ReadVariableOp2H
"model/output/MatMul/ReadVariableOp"model/output/MatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:R N
+
_output_shapes
:���������0

_user_specified_nameinput
�
�
 __inference__traced_restore_8767
file_prefix0
assignvariableop_output_kernel:0,
assignvariableop_1_output_bias:<
)assignvariableop_2_lstm1_lstm_cell_kernel:	�F
3assignvariableop_3_lstm1_lstm_cell_recurrent_kernel:	`�6
'assignvariableop_4_lstm1_lstm_cell_bias:	�<
)assignvariableop_5_lstm2_lstm_cell_kernel:	`�F
3assignvariableop_6_lstm2_lstm_cell_recurrent_kernel:	0�6
'assignvariableop_7_lstm2_lstm_cell_bias:	�&
assignvariableop_8_iteration:	 *
 assignvariableop_9_learning_rate: D
1assignvariableop_10_adam_m_lstm1_lstm_cell_kernel:	�D
1assignvariableop_11_adam_v_lstm1_lstm_cell_kernel:	�N
;assignvariableop_12_adam_m_lstm1_lstm_cell_recurrent_kernel:	`�N
;assignvariableop_13_adam_v_lstm1_lstm_cell_recurrent_kernel:	`�>
/assignvariableop_14_adam_m_lstm1_lstm_cell_bias:	�>
/assignvariableop_15_adam_v_lstm1_lstm_cell_bias:	�D
1assignvariableop_16_adam_m_lstm2_lstm_cell_kernel:	`�D
1assignvariableop_17_adam_v_lstm2_lstm_cell_kernel:	`�N
;assignvariableop_18_adam_m_lstm2_lstm_cell_recurrent_kernel:	0�N
;assignvariableop_19_adam_v_lstm2_lstm_cell_recurrent_kernel:	0�>
/assignvariableop_20_adam_m_lstm2_lstm_cell_bias:	�>
/assignvariableop_21_adam_v_lstm2_lstm_cell_bias:	�:
(assignvariableop_22_adam_m_output_kernel:0:
(assignvariableop_23_adam_v_output_kernel:04
&assignvariableop_24_adam_m_output_bias:4
&assignvariableop_25_adam_v_output_bias:%
assignvariableop_26_total_1: %
assignvariableop_27_count_1: #
assignvariableop_28_total: #
assignvariableop_29_count: 
identity_31��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_output_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_output_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp)assignvariableop_2_lstm1_lstm_cell_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp3assignvariableop_3_lstm1_lstm_cell_recurrent_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp'assignvariableop_4_lstm1_lstm_cell_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp)assignvariableop_5_lstm2_lstm_cell_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp3assignvariableop_6_lstm2_lstm_cell_recurrent_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp'assignvariableop_7_lstm2_lstm_cell_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_iterationIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_learning_rateIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp1assignvariableop_10_adam_m_lstm1_lstm_cell_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp1assignvariableop_11_adam_v_lstm1_lstm_cell_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp;assignvariableop_12_adam_m_lstm1_lstm_cell_recurrent_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp;assignvariableop_13_adam_v_lstm1_lstm_cell_recurrent_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp/assignvariableop_14_adam_m_lstm1_lstm_cell_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_adam_v_lstm1_lstm_cell_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp1assignvariableop_16_adam_m_lstm2_lstm_cell_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp1assignvariableop_17_adam_v_lstm2_lstm_cell_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp;assignvariableop_18_adam_m_lstm2_lstm_cell_recurrent_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp;assignvariableop_19_adam_v_lstm2_lstm_cell_recurrent_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp/assignvariableop_20_adam_m_lstm2_lstm_cell_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp/assignvariableop_21_adam_v_lstm2_lstm_cell_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_m_output_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_v_output_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_m_output_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp&assignvariableop_25_adam_v_output_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_total_1Identity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_count_1Identity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_totalIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpassignvariableop_29_countIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_30Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_31IdentityIdentity_30:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_31Identity_31:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:%!

_user_specified_namecount:%!

_user_specified_nametotal:'#
!
_user_specified_name	count_1:'#
!
_user_specified_name	total_1:2.
,
_user_specified_nameAdam/v/output/bias:2.
,
_user_specified_nameAdam/m/output/bias:40
.
_user_specified_nameAdam/v/output/kernel:40
.
_user_specified_nameAdam/m/output/kernel:;7
5
_user_specified_nameAdam/v/LSTM2/lstm_cell/bias:;7
5
_user_specified_nameAdam/m/LSTM2/lstm_cell/bias:GC
A
_user_specified_name)'Adam/v/LSTM2/lstm_cell/recurrent_kernel:GC
A
_user_specified_name)'Adam/m/LSTM2/lstm_cell/recurrent_kernel:=9
7
_user_specified_nameAdam/v/LSTM2/lstm_cell/kernel:=9
7
_user_specified_nameAdam/m/LSTM2/lstm_cell/kernel:;7
5
_user_specified_nameAdam/v/LSTM1/lstm_cell/bias:;7
5
_user_specified_nameAdam/m/LSTM1/lstm_cell/bias:GC
A
_user_specified_name)'Adam/v/LSTM1/lstm_cell/recurrent_kernel:GC
A
_user_specified_name)'Adam/m/LSTM1/lstm_cell/recurrent_kernel:=9
7
_user_specified_nameAdam/v/LSTM1/lstm_cell/kernel:=9
7
_user_specified_nameAdam/m/LSTM1/lstm_cell/kernel:-
)
'
_user_specified_namelearning_rate:)	%
#
_user_specified_name	iteration:40
.
_user_specified_nameLSTM2/lstm_cell/bias:@<
:
_user_specified_name" LSTM2/lstm_cell/recurrent_kernel:62
0
_user_specified_nameLSTM2/lstm_cell/kernel:40
.
_user_specified_nameLSTM1/lstm_cell/bias:@<
:
_user_specified_name" LSTM1/lstm_cell/recurrent_kernel:62
0
_user_specified_nameLSTM1/lstm_cell/kernel:+'
%
_user_specified_nameoutput/bias:-)
'
_user_specified_nameoutput/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�H
�
model_LSTM2_while_body_53474
0model_lstm2_while_model_lstm2_while_loop_counter:
6model_lstm2_while_model_lstm2_while_maximum_iterations!
model_lstm2_while_placeholder#
model_lstm2_while_placeholder_1#
model_lstm2_while_placeholder_2#
model_lstm2_while_placeholder_33
/model_lstm2_while_model_lstm2_strided_slice_1_0o
kmodel_lstm2_while_tensorarrayv2read_tensorlistgetitem_model_lstm2_tensorarrayunstack_tensorlistfromtensor_0O
<model_lstm2_while_lstm_cell_matmul_readvariableop_resource_0:	`�Q
>model_lstm2_while_lstm_cell_matmul_1_readvariableop_resource_0:	0�L
=model_lstm2_while_lstm_cell_biasadd_readvariableop_resource_0:	�
model_lstm2_while_identity 
model_lstm2_while_identity_1 
model_lstm2_while_identity_2 
model_lstm2_while_identity_3 
model_lstm2_while_identity_4 
model_lstm2_while_identity_51
-model_lstm2_while_model_lstm2_strided_slice_1m
imodel_lstm2_while_tensorarrayv2read_tensorlistgetitem_model_lstm2_tensorarrayunstack_tensorlistfromtensorM
:model_lstm2_while_lstm_cell_matmul_readvariableop_resource:	`�O
<model_lstm2_while_lstm_cell_matmul_1_readvariableop_resource:	0�J
;model_lstm2_while_lstm_cell_biasadd_readvariableop_resource:	���2model/LSTM2/while/lstm_cell/BiasAdd/ReadVariableOp�1model/LSTM2/while/lstm_cell/MatMul/ReadVariableOp�3model/LSTM2/while/lstm_cell/MatMul_1/ReadVariableOp�
Cmodel/LSTM2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
5model/LSTM2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemkmodel_lstm2_while_tensorarrayv2read_tensorlistgetitem_model_lstm2_tensorarrayunstack_tensorlistfromtensor_0model_lstm2_while_placeholderLmodel/LSTM2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������`*
element_dtype0�
1model/LSTM2/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp<model_lstm2_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	`�*
dtype0�
"model/LSTM2/while/lstm_cell/MatMulMatMul<model/LSTM2/while/TensorArrayV2Read/TensorListGetItem:item:09model/LSTM2/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3model/LSTM2/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp>model_lstm2_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	0�*
dtype0�
$model/LSTM2/while/lstm_cell/MatMul_1MatMulmodel_lstm2_while_placeholder_2;model/LSTM2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
model/LSTM2/while/lstm_cell/addAddV2,model/LSTM2/while/lstm_cell/MatMul:product:0.model/LSTM2/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
2model/LSTM2/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp=model_lstm2_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
#model/LSTM2/while/lstm_cell/BiasAddBiasAdd#model/LSTM2/while/lstm_cell/add:z:0:model/LSTM2/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
+model/LSTM2/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!model/LSTM2/while/lstm_cell/splitSplit4model/LSTM2/while/lstm_cell/split/split_dim:output:0,model/LSTM2/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split�
#model/LSTM2/while/lstm_cell/SigmoidSigmoid*model/LSTM2/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������0�
%model/LSTM2/while/lstm_cell/Sigmoid_1Sigmoid*model/LSTM2/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������0�
model/LSTM2/while/lstm_cell/mulMul)model/LSTM2/while/lstm_cell/Sigmoid_1:y:0model_lstm2_while_placeholder_3*
T0*'
_output_shapes
:���������0�
 model/LSTM2/while/lstm_cell/ReluRelu*model/LSTM2/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������0�
!model/LSTM2/while/lstm_cell/mul_1Mul'model/LSTM2/while/lstm_cell/Sigmoid:y:0.model/LSTM2/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������0�
!model/LSTM2/while/lstm_cell/add_1AddV2#model/LSTM2/while/lstm_cell/mul:z:0%model/LSTM2/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������0�
%model/LSTM2/while/lstm_cell/Sigmoid_2Sigmoid*model/LSTM2/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������0�
"model/LSTM2/while/lstm_cell/Relu_1Relu%model/LSTM2/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������0�
!model/LSTM2/while/lstm_cell/mul_2Mul)model/LSTM2/while/lstm_cell/Sigmoid_2:y:00model/LSTM2/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������0~
<model/LSTM2/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
6model/LSTM2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmodel_lstm2_while_placeholder_1Emodel/LSTM2/while/TensorArrayV2Write/TensorListSetItem/index:output:0%model/LSTM2/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���Y
model/LSTM2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
model/LSTM2/while/addAddV2model_lstm2_while_placeholder model/LSTM2/while/add/y:output:0*
T0*
_output_shapes
: [
model/LSTM2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
model/LSTM2/while/add_1AddV20model_lstm2_while_model_lstm2_while_loop_counter"model/LSTM2/while/add_1/y:output:0*
T0*
_output_shapes
: }
model/LSTM2/while/IdentityIdentitymodel/LSTM2/while/add_1:z:0^model/LSTM2/while/NoOp*
T0*
_output_shapes
: �
model/LSTM2/while/Identity_1Identity6model_lstm2_while_model_lstm2_while_maximum_iterations^model/LSTM2/while/NoOp*
T0*
_output_shapes
: }
model/LSTM2/while/Identity_2Identitymodel/LSTM2/while/add:z:0^model/LSTM2/while/NoOp*
T0*
_output_shapes
: �
model/LSTM2/while/Identity_3IdentityFmodel/LSTM2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^model/LSTM2/while/NoOp*
T0*
_output_shapes
: �
model/LSTM2/while/Identity_4Identity%model/LSTM2/while/lstm_cell/mul_2:z:0^model/LSTM2/while/NoOp*
T0*'
_output_shapes
:���������0�
model/LSTM2/while/Identity_5Identity%model/LSTM2/while/lstm_cell/add_1:z:0^model/LSTM2/while/NoOp*
T0*'
_output_shapes
:���������0�
model/LSTM2/while/NoOpNoOp3^model/LSTM2/while/lstm_cell/BiasAdd/ReadVariableOp2^model/LSTM2/while/lstm_cell/MatMul/ReadVariableOp4^model/LSTM2/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "E
model_lstm2_while_identity_1%model/LSTM2/while/Identity_1:output:0"E
model_lstm2_while_identity_2%model/LSTM2/while/Identity_2:output:0"E
model_lstm2_while_identity_3%model/LSTM2/while/Identity_3:output:0"E
model_lstm2_while_identity_4%model/LSTM2/while/Identity_4:output:0"E
model_lstm2_while_identity_5%model/LSTM2/while/Identity_5:output:0"A
model_lstm2_while_identity#model/LSTM2/while/Identity:output:0"|
;model_lstm2_while_lstm_cell_biasadd_readvariableop_resource=model_lstm2_while_lstm_cell_biasadd_readvariableop_resource_0"~
<model_lstm2_while_lstm_cell_matmul_1_readvariableop_resource>model_lstm2_while_lstm_cell_matmul_1_readvariableop_resource_0"z
:model_lstm2_while_lstm_cell_matmul_readvariableop_resource<model_lstm2_while_lstm_cell_matmul_readvariableop_resource_0"`
-model_lstm2_while_model_lstm2_strided_slice_1/model_lstm2_while_model_lstm2_strided_slice_1_0"�
imodel_lstm2_while_tensorarrayv2read_tensorlistgetitem_model_lstm2_tensorarrayunstack_tensorlistfromtensorkmodel_lstm2_while_tensorarrayv2read_tensorlistgetitem_model_lstm2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2h
2model/LSTM2/while/lstm_cell/BiasAdd/ReadVariableOp2model/LSTM2/while/lstm_cell/BiasAdd/ReadVariableOp2f
1model/LSTM2/while/lstm_cell/MatMul/ReadVariableOp1model/LSTM2/while/lstm_cell/MatMul/ReadVariableOp2j
3model/LSTM2/while/lstm_cell/MatMul_1/ReadVariableOp3model/LSTM2/while/lstm_cell/MatMul_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:kg

_output_shapes
: 
M
_user_specified_name53model/LSTM2/TensorArrayUnstack/TensorListFromTensor:SO

_output_shapes
: 
5
_user_specified_namemodel/LSTM2/strided_slice_1:-)
'
_output_shapes
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: :\X

_output_shapes
: 
>
_user_specified_name&$model/LSTM2/while/maximum_iterations:V R

_output_shapes
: 
8
_user_specified_name model/LSTM2/while/loop_counter
�
�
$__inference_LSTM1_layer_call_fn_6938
inputs_0
unknown:	�
	unknown_0:	`�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_LSTM1_layer_call_and_return_conditional_losses_5739|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������`<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name6934:$ 

_user_specified_name6932:$ 

_user_specified_name6930:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs_0
�I
�
?__inference_LSTM1_layer_call_and_return_conditional_losses_6628

inputs;
(lstm_cell_matmul_readvariableop_resource:	�=
*lstm_cell_matmul_1_readvariableop_resource:	`�8
)lstm_cell_biasadd_readvariableop_resource:	�
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������`R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :`w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������`c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:0���������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	`�*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������`:���������`:���������`:���������`*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:���������`j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:���������`q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������`b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:���������`}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������`r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������`j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:���������`_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������`�
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������`n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������`:���������`: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_6544*
condR
while_cond_6543*K
output_shapes:
8: : : : :���������`:���������`: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:0���������`*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������`*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������0`[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������0`�
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������0: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:���������0
 
_user_specified_nameinputs
�
�
!__inference_internal_grad_fn_8527
result_grads_0
result_grads_1
result_grads_2
mul_model_output_beta
mul_model_output_biasadd
identity

identity_1~
mulMulmul_model_output_betamul_model_output_biasadd^result_grads_0*
T0*'
_output_shapes
:���������M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:���������o
mul_1Mulmul_model_output_betamul_model_output_biasadd*
T0*'
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:���������R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Y
addAddV2add/x:output:0	mul_2:z:0*
T0*'
_output_shapes
:���������T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:���������\
SquareSquaremul_model_output_biasadd*
T0*'
_output_shapes
:���������Z
mul_4Mulresult_grads_0
Square:y:0*
T0*'
_output_shapes
:���������V
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*'
_output_shapes
:���������L
sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?]
sub_1Subsub_1/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:���������T
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*'
_output_shapes
:���������V
ConstConst*
_output_shapes
:*
dtype0*
valueB"       F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: Y
mul_7Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:���������Q
IdentityIdentity	mul_7:z:0*
T0*'
_output_shapes
:���������E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:���������:���������: : :���������:]Y
'
_output_shapes
:���������
.
_user_specified_namemodel/output/BiasAdd:IE

_output_shapes
: 
+
_user_specified_namemodel/output/beta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:WS
'
_output_shapes
:���������
(
_user_specified_nameresult_grads_1: {
&
 _has_manual_control_dependencies(
'
_output_shapes
:���������
(
_user_specified_nameresult_grads_0
�9
�
?__inference_LSTM2_layer_call_and_return_conditional_losses_5946

inputs!
lstm_cell_5862:	`�!
lstm_cell_5864:	0�
lstm_cell_5866:	�
identity��!lstm_cell/StatefulPartitionedCall�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :0s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������0R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :0w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������0c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������`R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������`*
shrink_axis_mask�
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_5862lstm_cell_5864lstm_cell_5866*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������0:���������0:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_cell_layer_call_and_return_conditional_losses_5861n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_5862lstm_cell_5864lstm_cell_5866*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_5876*
condR
while_cond_5875*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������0*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������0[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������0N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������`: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:$ 

_user_specified_name5866:$ 

_user_specified_name5864:$ 

_user_specified_name5862:\ X
4
_output_shapes"
 :������������������`
 
_user_specified_nameinputs
�	
�
while_cond_7780
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_7780___redundant_placeholder02
.while_while_cond_7780___redundant_placeholder12
.while_while_cond_7780___redundant_placeholder22
.while_while_cond_7780___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�
�
"__inference_signature_wrapper_6916	
input
unknown:	�
	unknown_0:	`�
	unknown_1:	�
	unknown_2:	`�
	unknown_3:	0�
	unknown_4:	�
	unknown_5:0
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__wrapped_model_5447o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������0: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name6912:$ 

_user_specified_name6910:$ 

_user_specified_name6908:$ 

_user_specified_name6906:$ 

_user_specified_name6904:$ 

_user_specified_name6902:$ 

_user_specified_name6900:$ 

_user_specified_name6898:R N
+
_output_shapes
:���������0

_user_specified_nameinput
�$
�
while_body_5525
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0)
while_lstm_cell_5549_0:	�)
while_lstm_cell_5551_0:	`�%
while_lstm_cell_5553_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor'
while_lstm_cell_5549:	�'
while_lstm_cell_5551:	`�#
while_lstm_cell_5553:	���'while/lstm_cell/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_5549_0while_lstm_cell_5551_0while_lstm_cell_5553_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������`:���������`:���������`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_cell_layer_call_and_return_conditional_losses_5511�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������`�
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������`R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0".
while_lstm_cell_5549while_lstm_cell_5549_0".
while_lstm_cell_5551while_lstm_cell_5551_0".
while_lstm_cell_5553while_lstm_cell_5553_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������`:���������`: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:$
 

_user_specified_name5553:$	 

_user_specified_name5551:$ 

_user_specified_name5549:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������`:-)
'
_output_shapes
:���������`:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�
�
C__inference_lstm_cell_layer_call_and_return_conditional_losses_5656

inputs

states
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	`�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	`�*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������`:���������`:���������`:���������`*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������`V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������`U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������`N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������`_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������`T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������`V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������`K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������`c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������`X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������`Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������`Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������`m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������`:���������`: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:OK
'
_output_shapes
:���������`
 
_user_specified_namestates:OK
'
_output_shapes
:���������`
 
_user_specified_namestates:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
!__inference_internal_grad_fn_8499
result_grads_0
result_grads_1
result_grads_2
mul_beta
mul_biasadd
identity

identity_1d
mulMulmul_betamul_biasadd^result_grads_0*
T0*'
_output_shapes
:���������M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:���������U
mul_1Mulmul_betamul_biasadd*
T0*'
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:���������R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Y
addAddV2add/x:output:0	mul_2:z:0*
T0*'
_output_shapes
:���������T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:���������O
SquareSquaremul_biasadd*
T0*'
_output_shapes
:���������Z
mul_4Mulresult_grads_0
Square:y:0*
T0*'
_output_shapes
:���������V
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*'
_output_shapes
:���������L
sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?]
sub_1Subsub_1/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:���������T
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*'
_output_shapes
:���������V
ConstConst*
_output_shapes
:*
dtype0*
valueB"       F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: Y
mul_7Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:���������Q
IdentityIdentity	mul_7:z:0*
T0*'
_output_shapes
:���������E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:���������:���������: : :���������:PL
'
_output_shapes
:���������
!
_user_specified_name	BiasAdd:<8

_output_shapes
: 

_user_specified_namebeta:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:WS
'
_output_shapes
:���������
(
_user_specified_nameresult_grads_1: {
&
 _has_manual_control_dependencies(
'
_output_shapes
:���������
(
_user_specified_nameresult_grads_0
�	
�
while_cond_6022
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_6022___redundant_placeholder02
.while_while_cond_6022___redundant_placeholder12
.while_while_cond_6022___redundant_placeholder22
.while_while_cond_6022___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�	
�
while_cond_7161
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_7161___redundant_placeholder02
.while_while_cond_7161___redundant_placeholder12
.while_while_cond_7161___redundant_placeholder22
.while_while_cond_7161___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������`:���������`: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������`:-)
'
_output_shapes
:���������`:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�%
�
while_body_5876
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0)
while_lstm_cell_5900_0:	`�)
while_lstm_cell_5902_0:	0�%
while_lstm_cell_5904_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor'
while_lstm_cell_5900:	`�'
while_lstm_cell_5902:	0�#
while_lstm_cell_5904:	���'while/lstm_cell/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������`*
element_dtype0�
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_5900_0while_lstm_cell_5902_0while_lstm_cell_5904_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������0:���������0:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_cell_layer_call_and_return_conditional_losses_5861r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������0�
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������0R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0".
while_lstm_cell_5900while_lstm_cell_5900_0".
while_lstm_cell_5902while_lstm_cell_5902_0".
while_lstm_cell_5904while_lstm_cell_5904_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:$
 

_user_specified_name5904:$	 

_user_specified_name5902:$ 

_user_specified_name5900:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
��
�
__inference__traced_save_8667
file_prefix6
$read_disablecopyonread_output_kernel:02
$read_1_disablecopyonread_output_bias:B
/read_2_disablecopyonread_lstm1_lstm_cell_kernel:	�L
9read_3_disablecopyonread_lstm1_lstm_cell_recurrent_kernel:	`�<
-read_4_disablecopyonread_lstm1_lstm_cell_bias:	�B
/read_5_disablecopyonread_lstm2_lstm_cell_kernel:	`�L
9read_6_disablecopyonread_lstm2_lstm_cell_recurrent_kernel:	0�<
-read_7_disablecopyonread_lstm2_lstm_cell_bias:	�,
"read_8_disablecopyonread_iteration:	 0
&read_9_disablecopyonread_learning_rate: J
7read_10_disablecopyonread_adam_m_lstm1_lstm_cell_kernel:	�J
7read_11_disablecopyonread_adam_v_lstm1_lstm_cell_kernel:	�T
Aread_12_disablecopyonread_adam_m_lstm1_lstm_cell_recurrent_kernel:	`�T
Aread_13_disablecopyonread_adam_v_lstm1_lstm_cell_recurrent_kernel:	`�D
5read_14_disablecopyonread_adam_m_lstm1_lstm_cell_bias:	�D
5read_15_disablecopyonread_adam_v_lstm1_lstm_cell_bias:	�J
7read_16_disablecopyonread_adam_m_lstm2_lstm_cell_kernel:	`�J
7read_17_disablecopyonread_adam_v_lstm2_lstm_cell_kernel:	`�T
Aread_18_disablecopyonread_adam_m_lstm2_lstm_cell_recurrent_kernel:	0�T
Aread_19_disablecopyonread_adam_v_lstm2_lstm_cell_recurrent_kernel:	0�D
5read_20_disablecopyonread_adam_m_lstm2_lstm_cell_bias:	�D
5read_21_disablecopyonread_adam_v_lstm2_lstm_cell_bias:	�@
.read_22_disablecopyonread_adam_m_output_kernel:0@
.read_23_disablecopyonread_adam_v_output_kernel:0:
,read_24_disablecopyonread_adam_m_output_bias::
,read_25_disablecopyonread_adam_v_output_bias:+
!read_26_disablecopyonread_total_1: +
!read_27_disablecopyonread_count_1: )
read_28_disablecopyonread_total: )
read_29_disablecopyonread_count: 
savev2_const
identity_61��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: v
Read/DisableCopyOnReadDisableCopyOnRead$read_disablecopyonread_output_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp$read_disablecopyonread_output_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:0*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:0a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:0x
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_output_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_output_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_2/DisableCopyOnReadDisableCopyOnRead/read_2_disablecopyonread_lstm1_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp/read_2_disablecopyonread_lstm1_lstm_cell_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0n

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�d

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_3/DisableCopyOnReadDisableCopyOnRead9read_3_disablecopyonread_lstm1_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp9read_3_disablecopyonread_lstm1_lstm_cell_recurrent_kernel^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	`�*
dtype0n

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	`�d

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:	`��
Read_4/DisableCopyOnReadDisableCopyOnRead-read_4_disablecopyonread_lstm1_lstm_cell_bias"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp-read_4_disablecopyonread_lstm1_lstm_cell_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_5/DisableCopyOnReadDisableCopyOnRead/read_5_disablecopyonread_lstm2_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp/read_5_disablecopyonread_lstm2_lstm_cell_kernel^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	`�*
dtype0o
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	`�f
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:	`��
Read_6/DisableCopyOnReadDisableCopyOnRead9read_6_disablecopyonread_lstm2_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp9read_6_disablecopyonread_lstm2_lstm_cell_recurrent_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	0�*
dtype0o
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	0�f
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:	0��
Read_7/DisableCopyOnReadDisableCopyOnRead-read_7_disablecopyonread_lstm2_lstm_cell_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp-read_7_disablecopyonread_lstm2_lstm_cell_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes	
:�v
Read_8/DisableCopyOnReadDisableCopyOnRead"read_8_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp"read_8_disablecopyonread_iteration^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_9/DisableCopyOnReadDisableCopyOnRead&read_9_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp&read_9_disablecopyonread_learning_rate^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_10/DisableCopyOnReadDisableCopyOnRead7read_10_disablecopyonread_adam_m_lstm1_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp7read_10_disablecopyonread_adam_m_lstm1_lstm_cell_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_11/DisableCopyOnReadDisableCopyOnRead7read_11_disablecopyonread_adam_v_lstm1_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp7read_11_disablecopyonread_adam_v_lstm1_lstm_cell_kernel^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_12/DisableCopyOnReadDisableCopyOnReadAread_12_disablecopyonread_adam_m_lstm1_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOpAread_12_disablecopyonread_adam_m_lstm1_lstm_cell_recurrent_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	`�*
dtype0p
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	`�f
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:	`��
Read_13/DisableCopyOnReadDisableCopyOnReadAread_13_disablecopyonread_adam_v_lstm1_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOpAread_13_disablecopyonread_adam_v_lstm1_lstm_cell_recurrent_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	`�*
dtype0p
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	`�f
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:	`��
Read_14/DisableCopyOnReadDisableCopyOnRead5read_14_disablecopyonread_adam_m_lstm1_lstm_cell_bias"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp5read_14_disablecopyonread_adam_m_lstm1_lstm_cell_bias^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_15/DisableCopyOnReadDisableCopyOnRead5read_15_disablecopyonread_adam_v_lstm1_lstm_cell_bias"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp5read_15_disablecopyonread_adam_v_lstm1_lstm_cell_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_16/DisableCopyOnReadDisableCopyOnRead7read_16_disablecopyonread_adam_m_lstm2_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp7read_16_disablecopyonread_adam_m_lstm2_lstm_cell_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	`�*
dtype0p
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	`�f
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:	`��
Read_17/DisableCopyOnReadDisableCopyOnRead7read_17_disablecopyonread_adam_v_lstm2_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp7read_17_disablecopyonread_adam_v_lstm2_lstm_cell_kernel^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	`�*
dtype0p
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	`�f
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:	`��
Read_18/DisableCopyOnReadDisableCopyOnReadAread_18_disablecopyonread_adam_m_lstm2_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOpAread_18_disablecopyonread_adam_m_lstm2_lstm_cell_recurrent_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	0�*
dtype0p
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	0�f
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:	0��
Read_19/DisableCopyOnReadDisableCopyOnReadAread_19_disablecopyonread_adam_v_lstm2_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOpAread_19_disablecopyonread_adam_v_lstm2_lstm_cell_recurrent_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	0�*
dtype0p
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	0�f
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:	0��
Read_20/DisableCopyOnReadDisableCopyOnRead5read_20_disablecopyonread_adam_m_lstm2_lstm_cell_bias"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp5read_20_disablecopyonread_adam_m_lstm2_lstm_cell_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_21/DisableCopyOnReadDisableCopyOnRead5read_21_disablecopyonread_adam_v_lstm2_lstm_cell_bias"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp5read_21_disablecopyonread_adam_v_lstm2_lstm_cell_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_22/DisableCopyOnReadDisableCopyOnRead.read_22_disablecopyonread_adam_m_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp.read_22_disablecopyonread_adam_m_output_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:0*
dtype0o
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:0e
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes

:0�
Read_23/DisableCopyOnReadDisableCopyOnRead.read_23_disablecopyonread_adam_v_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp.read_23_disablecopyonread_adam_v_output_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:0*
dtype0o
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:0e
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes

:0�
Read_24/DisableCopyOnReadDisableCopyOnRead,read_24_disablecopyonread_adam_m_output_bias"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp,read_24_disablecopyonread_adam_m_output_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_25/DisableCopyOnReadDisableCopyOnRead,read_25_disablecopyonread_adam_v_output_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp,read_25_disablecopyonread_adam_v_output_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_26/DisableCopyOnReadDisableCopyOnRead!read_26_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp!read_26_disablecopyonread_total_1^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_27/DisableCopyOnReadDisableCopyOnRead!read_27_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp!read_27_disablecopyonread_count_1^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_28/DisableCopyOnReadDisableCopyOnReadread_28_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOpread_28_disablecopyonread_total^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_29/DisableCopyOnReadDisableCopyOnReadread_29_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOpread_29_disablecopyonread_count^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *-
dtypes#
!2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_60Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_61IdentityIdentity_60:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_61Identity_61:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:%!

_user_specified_namecount:%!

_user_specified_nametotal:'#
!
_user_specified_name	count_1:'#
!
_user_specified_name	total_1:2.
,
_user_specified_nameAdam/v/output/bias:2.
,
_user_specified_nameAdam/m/output/bias:40
.
_user_specified_nameAdam/v/output/kernel:40
.
_user_specified_nameAdam/m/output/kernel:;7
5
_user_specified_nameAdam/v/LSTM2/lstm_cell/bias:;7
5
_user_specified_nameAdam/m/LSTM2/lstm_cell/bias:GC
A
_user_specified_name)'Adam/v/LSTM2/lstm_cell/recurrent_kernel:GC
A
_user_specified_name)'Adam/m/LSTM2/lstm_cell/recurrent_kernel:=9
7
_user_specified_nameAdam/v/LSTM2/lstm_cell/kernel:=9
7
_user_specified_nameAdam/m/LSTM2/lstm_cell/kernel:;7
5
_user_specified_nameAdam/v/LSTM1/lstm_cell/bias:;7
5
_user_specified_nameAdam/m/LSTM1/lstm_cell/bias:GC
A
_user_specified_name)'Adam/v/LSTM1/lstm_cell/recurrent_kernel:GC
A
_user_specified_name)'Adam/m/LSTM1/lstm_cell/recurrent_kernel:=9
7
_user_specified_nameAdam/v/LSTM1/lstm_cell/kernel:=9
7
_user_specified_nameAdam/m/LSTM1/lstm_cell/kernel:-
)
'
_user_specified_namelearning_rate:)	%
#
_user_specified_name	iteration:40
.
_user_specified_nameLSTM2/lstm_cell/bias:@<
:
_user_specified_name" LSTM2/lstm_cell/recurrent_kernel:62
0
_user_specified_nameLSTM2/lstm_cell/kernel:40
.
_user_specified_nameLSTM1/lstm_cell/bias:@<
:
_user_specified_name" LSTM1/lstm_cell/recurrent_kernel:62
0
_user_specified_nameLSTM1/lstm_cell/kernel:+'
%
_user_specified_nameoutput/bias:-)
'
_user_specified_nameoutput/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
@__inference_output_layer_call_and_return_conditional_losses_8184

inputs0
matmul_readvariableop_resource:0-
biasadd_readvariableop_resource:

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:0*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?]
mulMulbeta:output:0BiasAdd:output:0*
T0*'
_output_shapes
:���������M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:���������]
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*'
_output_shapes
:���������Q
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:����������
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0beta:output:0*
T
2**
_gradient_op_typeCustomGradient-8175*<
_output_shapes*
(:���������:���������: c

Identity_1IdentityIdentityN:output:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs
�	
�
while_cond_6694
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_6694___redundant_placeholder02
.while_while_cond_6694___redundant_placeholder12
.while_while_cond_6694___redundant_placeholder22
.while_while_cond_6694___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�
�
$__inference_LSTM1_layer_call_fn_6927
inputs_0
unknown:	�
	unknown_0:	`�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������`*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_LSTM1_layer_call_and_return_conditional_losses_5594|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������`<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name6923:$ 

_user_specified_name6921:$ 

_user_specified_name6919:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs_0
�J
�
?__inference_LSTM2_layer_call_and_return_conditional_losses_7721
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	`�=
*lstm_cell_matmul_1_readvariableop_resource:	0�8
)lstm_cell_biasadd_readvariableop_resource:	�
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileK
ShapeShapeinputs_0*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :0s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������0R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :0w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������0c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������`R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������`*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	`�*
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:���������0j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:���������0q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������0b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:���������0}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������0r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������0j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:���������0_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������0�
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������0n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_7636*
condR
while_cond_7635*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������0*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������0[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������0�
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������`: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:^ Z
4
_output_shapes"
 :������������������`
"
_user_specified_name
inputs_0
�:
�
while_body_6695
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	`�E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	0�@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	`�C
0while_lstm_cell_matmul_1_readvariableop_resource:	0�>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����`   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������`*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	`�*
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	0�*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������0v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������0�
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������0n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������0�
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������0�
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������0v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������0k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������0�
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������0r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������0v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������0�

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�8
�
while_body_7448
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	�E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	`�@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	�C
0while_lstm_cell_matmul_1_readvariableop_resource:	`�>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	`�*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������`:���������`:���������`:���������`*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:���������`v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:���������`�
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������`n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:���������`�
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:���������`�
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:���������`v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:���������`k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:���������`�
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:���������`�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������`v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������`�

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������`:���������`: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:���������`:-)
'
_output_shapes
:���������`:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter8
!__inference_internal_grad_fn_8471CustomGradient-81758
!__inference_internal_grad_fn_8499CustomGradient-64678
!__inference_internal_grad_fn_8527CustomGradient-5438"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
;
input2
serving_default_input:0���������0:
output0
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
�
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses

&kernel
'bias"
_tf_keras_layer
X
(0
)1
*2
+3
,4
-5
&6
'7"
trackable_list_wrapper
X
(0
)1
*2
+3
,4
-5
&6
'7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
�
3trace_0
4trace_12�
$__inference_model_layer_call_fn_6816
$__inference_model_layer_call_fn_6837�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z3trace_0z4trace_1
�
5trace_0
6trace_12�
?__inference_model_layer_call_and_return_conditional_losses_6483
?__inference_model_layer_call_and_return_conditional_losses_6794�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z5trace_0z6trace_1
�B�
__inference__wrapped_model_5447input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
7
_variables
8_iterations
9_learning_rate
:_index_dict
;
_momentums
<_velocities
=_update_step_xla"
experimentalOptimizer
,
>serving_default"
signature_map
5
(0
)1
*2"
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
 "
trackable_list_wrapper
�

?states
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Etrace_0
Ftrace_1
Gtrace_2
Htrace_32�
$__inference_LSTM1_layer_call_fn_6927
$__inference_LSTM1_layer_call_fn_6938
$__inference_LSTM1_layer_call_fn_6949
$__inference_LSTM1_layer_call_fn_6960�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zEtrace_0zFtrace_1zGtrace_2zHtrace_3
�
Itrace_0
Jtrace_1
Ktrace_2
Ltrace_32�
?__inference_LSTM1_layer_call_and_return_conditional_losses_7103
?__inference_LSTM1_layer_call_and_return_conditional_losses_7246
?__inference_LSTM1_layer_call_and_return_conditional_losses_7389
?__inference_LSTM1_layer_call_and_return_conditional_losses_7532�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zItrace_0zJtrace_1zKtrace_2zLtrace_3
"
_generic_user_object
�
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses
S_random_generator
T
state_size

(kernel
)recurrent_kernel
*bias"
_tf_keras_layer
 "
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
 "
trackable_list_wrapper
�

Ustates
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
[trace_0
\trace_1
]trace_2
^trace_32�
$__inference_LSTM2_layer_call_fn_7543
$__inference_LSTM2_layer_call_fn_7554
$__inference_LSTM2_layer_call_fn_7565
$__inference_LSTM2_layer_call_fn_7576�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z[trace_0z\trace_1z]trace_2z^trace_3
�
_trace_0
`trace_1
atrace_2
btrace_32�
?__inference_LSTM2_layer_call_and_return_conditional_losses_7721
?__inference_LSTM2_layer_call_and_return_conditional_losses_7866
?__inference_LSTM2_layer_call_and_return_conditional_losses_8011
?__inference_LSTM2_layer_call_and_return_conditional_losses_8156�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z_trace_0z`trace_1zatrace_2zbtrace_3
"
_generic_user_object
�
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses
i_random_generator
j
state_size

+kernel
,recurrent_kernel
-bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
�
ptrace_02�
%__inference_output_layer_call_fn_8165�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zptrace_0
�
qtrace_02�
@__inference_output_layer_call_and_return_conditional_losses_8184�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zqtrace_0
:02output/kernel
:2output/bias
):'	�2LSTM1/lstm_cell/kernel
3:1	`�2 LSTM1/lstm_cell/recurrent_kernel
#:!�2LSTM1/lstm_cell/bias
):'	`�2LSTM2/lstm_cell/kernel
3:1	0�2 LSTM2/lstm_cell/recurrent_kernel
#:!�2LSTM2/lstm_cell/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
r0
s1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
$__inference_model_layer_call_fn_6816input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_model_layer_call_fn_6837input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_model_layer_call_and_return_conditional_losses_6483input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_model_layer_call_and_return_conditional_losses_6794input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
80
t1
u2
v3
w4
x5
y6
z7
{8
|9
}10
~11
12
�13
�14
�15
�16"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
Z
t0
v1
x2
z3
|4
~5
�6
�7"
trackable_list_wrapper
Z
u0
w1
y2
{3
}4
5
�6
�7"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
"__inference_signature_wrapper_6916input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
$__inference_LSTM1_layer_call_fn_6927inputs_0"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_LSTM1_layer_call_fn_6938inputs_0"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_LSTM1_layer_call_fn_6949inputs"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_LSTM1_layer_call_fn_6960inputs"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_LSTM1_layer_call_and_return_conditional_losses_7103inputs_0"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_LSTM1_layer_call_and_return_conditional_losses_7246inputs_0"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_LSTM1_layer_call_and_return_conditional_losses_7389inputs"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_LSTM1_layer_call_and_return_conditional_losses_7532inputs"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
5
(0
)1
*2"
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
(__inference_lstm_cell_layer_call_fn_8201
(__inference_lstm_cell_layer_call_fn_8218�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
C__inference_lstm_cell_layer_call_and_return_conditional_losses_8250
C__inference_lstm_cell_layer_call_and_return_conditional_losses_8282�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
$__inference_LSTM2_layer_call_fn_7543inputs_0"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_LSTM2_layer_call_fn_7554inputs_0"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_LSTM2_layer_call_fn_7565inputs"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_LSTM2_layer_call_fn_7576inputs"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_LSTM2_layer_call_and_return_conditional_losses_7721inputs_0"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_LSTM2_layer_call_and_return_conditional_losses_7866inputs_0"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_LSTM2_layer_call_and_return_conditional_losses_8011inputs"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_LSTM2_layer_call_and_return_conditional_losses_8156inputs"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
5
+0
,1
-2"
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
(__inference_lstm_cell_layer_call_fn_8299
(__inference_lstm_cell_layer_call_fn_8316�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
C__inference_lstm_cell_layer_call_and_return_conditional_losses_8348
C__inference_lstm_cell_layer_call_and_return_conditional_losses_8380�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
%__inference_output_layer_call_fn_8165inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_output_layer_call_and_return_conditional_losses_8184inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
.:,	�2Adam/m/LSTM1/lstm_cell/kernel
.:,	�2Adam/v/LSTM1/lstm_cell/kernel
8:6	`�2'Adam/m/LSTM1/lstm_cell/recurrent_kernel
8:6	`�2'Adam/v/LSTM1/lstm_cell/recurrent_kernel
(:&�2Adam/m/LSTM1/lstm_cell/bias
(:&�2Adam/v/LSTM1/lstm_cell/bias
.:,	`�2Adam/m/LSTM2/lstm_cell/kernel
.:,	`�2Adam/v/LSTM2/lstm_cell/kernel
8:6	0�2'Adam/m/LSTM2/lstm_cell/recurrent_kernel
8:6	0�2'Adam/v/LSTM2/lstm_cell/recurrent_kernel
(:&�2Adam/m/LSTM2/lstm_cell/bias
(:&�2Adam/v/LSTM2/lstm_cell/bias
$:"02Adam/m/output/kernel
$:"02Adam/v/output/kernel
:2Adam/m/output/bias
:2Adam/v/output/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_lstm_cell_layer_call_fn_8201inputsstates_0states_1"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_lstm_cell_layer_call_fn_8218inputsstates_0states_1"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_lstm_cell_layer_call_and_return_conditional_losses_8250inputsstates_0states_1"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_lstm_cell_layer_call_and_return_conditional_losses_8282inputsstates_0states_1"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_lstm_cell_layer_call_fn_8299inputsstates_0states_1"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_lstm_cell_layer_call_fn_8316inputsstates_0states_1"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_lstm_cell_layer_call_and_return_conditional_losses_8348inputsstates_0states_1"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_lstm_cell_layer_call_and_return_conditional_losses_8380inputsstates_0states_1"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
LbJ
beta:0@__inference_output_layer_call_and_return_conditional_losses_8184
ObM
	BiasAdd:0@__inference_output_layer_call_and_return_conditional_losses_8184
LbJ
beta:0@__inference_output_layer_call_and_return_conditional_losses_6476
ObM
	BiasAdd:0@__inference_output_layer_call_and_return_conditional_losses_6476
8b6
model/output/beta:0__inference__wrapped_model_5447
;b9
model/output/BiasAdd:0__inference__wrapped_model_5447�
?__inference_LSTM1_layer_call_and_return_conditional_losses_7103�()*O�L
E�B
4�1
/�,
inputs_0������������������

 
p

 
� "9�6
/�,
tensor_0������������������`
� �
?__inference_LSTM1_layer_call_and_return_conditional_losses_7246�()*O�L
E�B
4�1
/�,
inputs_0������������������

 
p 

 
� "9�6
/�,
tensor_0������������������`
� �
?__inference_LSTM1_layer_call_and_return_conditional_losses_7389x()*?�<
5�2
$�!
inputs���������0

 
p

 
� "0�-
&�#
tensor_0���������0`
� �
?__inference_LSTM1_layer_call_and_return_conditional_losses_7532x()*?�<
5�2
$�!
inputs���������0

 
p 

 
� "0�-
&�#
tensor_0���������0`
� �
$__inference_LSTM1_layer_call_fn_6927�()*O�L
E�B
4�1
/�,
inputs_0������������������

 
p

 
� ".�+
unknown������������������`�
$__inference_LSTM1_layer_call_fn_6938�()*O�L
E�B
4�1
/�,
inputs_0������������������

 
p 

 
� ".�+
unknown������������������`�
$__inference_LSTM1_layer_call_fn_6949m()*?�<
5�2
$�!
inputs���������0

 
p

 
� "%�"
unknown���������0`�
$__inference_LSTM1_layer_call_fn_6960m()*?�<
5�2
$�!
inputs���������0

 
p 

 
� "%�"
unknown���������0`�
?__inference_LSTM2_layer_call_and_return_conditional_losses_7721�+,-O�L
E�B
4�1
/�,
inputs_0������������������`

 
p

 
� ",�)
"�
tensor_0���������0
� �
?__inference_LSTM2_layer_call_and_return_conditional_losses_7866�+,-O�L
E�B
4�1
/�,
inputs_0������������������`

 
p 

 
� ",�)
"�
tensor_0���������0
� �
?__inference_LSTM2_layer_call_and_return_conditional_losses_8011t+,-?�<
5�2
$�!
inputs���������0`

 
p

 
� ",�)
"�
tensor_0���������0
� �
?__inference_LSTM2_layer_call_and_return_conditional_losses_8156t+,-?�<
5�2
$�!
inputs���������0`

 
p 

 
� ",�)
"�
tensor_0���������0
� �
$__inference_LSTM2_layer_call_fn_7543y+,-O�L
E�B
4�1
/�,
inputs_0������������������`

 
p

 
� "!�
unknown���������0�
$__inference_LSTM2_layer_call_fn_7554y+,-O�L
E�B
4�1
/�,
inputs_0������������������`

 
p 

 
� "!�
unknown���������0�
$__inference_LSTM2_layer_call_fn_7565i+,-?�<
5�2
$�!
inputs���������0`

 
p

 
� "!�
unknown���������0�
$__inference_LSTM2_layer_call_fn_7576i+,-?�<
5�2
$�!
inputs���������0`

 
p 

 
� "!�
unknown���������0�
__inference__wrapped_model_5447o()*+,-&'2�/
(�%
#� 
input���������0
� "/�,
*
output �
output����������
!__inference_internal_grad_fn_8471���~�{
t�q

 
(�%
result_grads_0���������
(�%
result_grads_1���������
�
result_grads_2 
� ">�;

 
"�
tensor_1���������
�
tensor_2 �
!__inference_internal_grad_fn_8499���~�{
t�q

 
(�%
result_grads_0���������
(�%
result_grads_1���������
�
result_grads_2 
� ">�;

 
"�
tensor_1���������
�
tensor_2 �
!__inference_internal_grad_fn_8527���~�{
t�q

 
(�%
result_grads_0���������
(�%
result_grads_1���������
�
result_grads_2 
� ">�;

 
"�
tensor_1���������
�
tensor_2 �
C__inference_lstm_cell_layer_call_and_return_conditional_losses_8250�()*��}
v�s
 �
inputs���������
K�H
"�
states_0���������`
"�
states_1���������`
p
� "���
~�{
$�!

tensor_0_0���������`
S�P
&�#
tensor_0_1_0���������`
&�#
tensor_0_1_1���������`
� �
C__inference_lstm_cell_layer_call_and_return_conditional_losses_8282�()*��}
v�s
 �
inputs���������
K�H
"�
states_0���������`
"�
states_1���������`
p 
� "���
~�{
$�!

tensor_0_0���������`
S�P
&�#
tensor_0_1_0���������`
&�#
tensor_0_1_1���������`
� �
C__inference_lstm_cell_layer_call_and_return_conditional_losses_8348�+,-��}
v�s
 �
inputs���������`
K�H
"�
states_0���������0
"�
states_1���������0
p
� "���
~�{
$�!

tensor_0_0���������0
S�P
&�#
tensor_0_1_0���������0
&�#
tensor_0_1_1���������0
� �
C__inference_lstm_cell_layer_call_and_return_conditional_losses_8380�+,-��}
v�s
 �
inputs���������`
K�H
"�
states_0���������0
"�
states_1���������0
p 
� "���
~�{
$�!

tensor_0_0���������0
S�P
&�#
tensor_0_1_0���������0
&�#
tensor_0_1_1���������0
� �
(__inference_lstm_cell_layer_call_fn_8201�()*��}
v�s
 �
inputs���������
K�H
"�
states_0���������`
"�
states_1���������`
p
� "x�u
"�
tensor_0���������`
O�L
$�!

tensor_1_0���������`
$�!

tensor_1_1���������`�
(__inference_lstm_cell_layer_call_fn_8218�()*��}
v�s
 �
inputs���������
K�H
"�
states_0���������`
"�
states_1���������`
p 
� "x�u
"�
tensor_0���������`
O�L
$�!

tensor_1_0���������`
$�!

tensor_1_1���������`�
(__inference_lstm_cell_layer_call_fn_8299�+,-��}
v�s
 �
inputs���������`
K�H
"�
states_0���������0
"�
states_1���������0
p
� "x�u
"�
tensor_0���������0
O�L
$�!

tensor_1_0���������0
$�!

tensor_1_1���������0�
(__inference_lstm_cell_layer_call_fn_8316�+,-��}
v�s
 �
inputs���������`
K�H
"�
states_0���������0
"�
states_1���������0
p 
� "x�u
"�
tensor_0���������0
O�L
$�!

tensor_1_0���������0
$�!

tensor_1_1���������0�
?__inference_model_layer_call_and_return_conditional_losses_6483t()*+,-&':�7
0�-
#� 
input���������0
p

 
� ",�)
"�
tensor_0���������
� �
?__inference_model_layer_call_and_return_conditional_losses_6794t()*+,-&':�7
0�-
#� 
input���������0
p 

 
� ",�)
"�
tensor_0���������
� �
$__inference_model_layer_call_fn_6816i()*+,-&':�7
0�-
#� 
input���������0
p

 
� "!�
unknown����������
$__inference_model_layer_call_fn_6837i()*+,-&':�7
0�-
#� 
input���������0
p 

 
� "!�
unknown����������
@__inference_output_layer_call_and_return_conditional_losses_8184c&'/�,
%�"
 �
inputs���������0
� ",�)
"�
tensor_0���������
� �
%__inference_output_layer_call_fn_8165X&'/�,
%�"
 �
inputs���������0
� "!�
unknown����������
"__inference_signature_wrapper_6916x()*+,-&';�8
� 
1�.
,
input#� 
input���������0"/�,
*
output �
output���������