��
��
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
�
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	"
grad_abool( "
grad_bbool( 
�
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
f
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx" 
Tidxtype0:
2
	
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
L

StringJoin
inputs*N

output"

Nint("
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
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
9
VarIsInitializedOp
resource
is_initialized
�
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
�"serve*2.19.02v2.19.0-rc0-6-ge36baa302928Ʀ
�
sequential_6/dense_13/kernelVarHandleOp*
_output_shapes
: *-

debug_namesequential_6/dense_13/kernel/*
dtype0*
shape
:*-
shared_namesequential_6/dense_13/kernel
�
0sequential_6/dense_13/kernel/Read/ReadVariableOpReadVariableOpsequential_6/dense_13/kernel*
_output_shapes

:*
dtype0
�
sequential_6/dense_13/biasVarHandleOp*
_output_shapes
: *+

debug_namesequential_6/dense_13/bias/*
dtype0*
shape:*+
shared_namesequential_6/dense_13/bias
�
.sequential_6/dense_13/bias/Read/ReadVariableOpReadVariableOpsequential_6/dense_13/bias*
_output_shapes
:*
dtype0
�
sequential_6/dense_12/kernelVarHandleOp*
_output_shapes
: *-

debug_namesequential_6/dense_12/kernel/*
dtype0*
shape
:2*-
shared_namesequential_6/dense_12/kernel
�
0sequential_6/dense_12/kernel/Read/ReadVariableOpReadVariableOpsequential_6/dense_12/kernel*
_output_shapes

:2*
dtype0
�
sequential_6/dense_12/biasVarHandleOp*
_output_shapes
: *+

debug_namesequential_6/dense_12/bias/*
dtype0*
shape:*+
shared_namesequential_6/dense_12/bias
�
.sequential_6/dense_12/bias/Read/ReadVariableOpReadVariableOpsequential_6/dense_12/bias*
_output_shapes
:*
dtype0
�
.sequential_6/simple_rnn_4/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *?

debug_name1/sequential_6/simple_rnn_4/simple_rnn_cell/bias/*
dtype0*
shape:2*?
shared_name0.sequential_6/simple_rnn_4/simple_rnn_cell/bias
�
Bsequential_6/simple_rnn_4/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp.sequential_6/simple_rnn_4/simple_rnn_cell/bias*
_output_shapes
:2*
dtype0
�
:sequential_6/simple_rnn_4/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *K

debug_name=;sequential_6/simple_rnn_4/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:22*K
shared_name<:sequential_6/simple_rnn_4/simple_rnn_cell/recurrent_kernel
�
Nsequential_6/simple_rnn_4/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp:sequential_6/simple_rnn_4/simple_rnn_cell/recurrent_kernel*
_output_shapes

:22*
dtype0
�
0sequential_6/simple_rnn_4/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *A

debug_name31sequential_6/simple_rnn_4/simple_rnn_cell/kernel/*
dtype0*
shape
:2*A
shared_name20sequential_6/simple_rnn_4/simple_rnn_cell/kernel
�
Dsequential_6/simple_rnn_4/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp0sequential_6/simple_rnn_4/simple_rnn_cell/kernel*
_output_shapes

:2*
dtype0
�
sequential_6/dense_13/bias_1VarHandleOp*
_output_shapes
: *-

debug_namesequential_6/dense_13/bias_1/*
dtype0*
shape:*-
shared_namesequential_6/dense_13/bias_1
�
0sequential_6/dense_13/bias_1/Read/ReadVariableOpReadVariableOpsequential_6/dense_13/bias_1*
_output_shapes
:*
dtype0
�
#Variable/Initializer/ReadVariableOpReadVariableOpsequential_6/dense_13/bias_1*
_class
loc:@Variable*
_output_shapes
:*
dtype0
�
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *

debug_name	Variable/*
dtype0*
shape:*
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
_
Variable/AssignAssignVariableOpVariable#Variable/Initializer/ReadVariableOp*
dtype0
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0
�
sequential_6/dense_13/kernel_1VarHandleOp*
_output_shapes
: */

debug_name!sequential_6/dense_13/kernel_1/*
dtype0*
shape
:*/
shared_name sequential_6/dense_13/kernel_1
�
2sequential_6/dense_13/kernel_1/Read/ReadVariableOpReadVariableOpsequential_6/dense_13/kernel_1*
_output_shapes

:*
dtype0
�
%Variable_1/Initializer/ReadVariableOpReadVariableOpsequential_6/dense_13/kernel_1*
_class
loc:@Variable_1*
_output_shapes

:*
dtype0
�

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *

debug_nameVariable_1/*
dtype0*
shape
:*
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
e
Variable_1/AssignAssignVariableOp
Variable_1%Variable_1/Initializer/ReadVariableOp*
dtype0
i
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes

:*
dtype0
�
sequential_6/dense_12/bias_1VarHandleOp*
_output_shapes
: *-

debug_namesequential_6/dense_12/bias_1/*
dtype0*
shape:*-
shared_namesequential_6/dense_12/bias_1
�
0sequential_6/dense_12/bias_1/Read/ReadVariableOpReadVariableOpsequential_6/dense_12/bias_1*
_output_shapes
:*
dtype0
�
%Variable_2/Initializer/ReadVariableOpReadVariableOpsequential_6/dense_12/bias_1*
_class
loc:@Variable_2*
_output_shapes
:*
dtype0
�

Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *

debug_nameVariable_2/*
dtype0*
shape:*
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
e
Variable_2/AssignAssignVariableOp
Variable_2%Variable_2/Initializer/ReadVariableOp*
dtype0
e
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
:*
dtype0
�
sequential_6/dense_12/kernel_1VarHandleOp*
_output_shapes
: */

debug_name!sequential_6/dense_12/kernel_1/*
dtype0*
shape
:2*/
shared_name sequential_6/dense_12/kernel_1
�
2sequential_6/dense_12/kernel_1/Read/ReadVariableOpReadVariableOpsequential_6/dense_12/kernel_1*
_output_shapes

:2*
dtype0
�
%Variable_3/Initializer/ReadVariableOpReadVariableOpsequential_6/dense_12/kernel_1*
_class
loc:@Variable_3*
_output_shapes

:2*
dtype0
�

Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *

debug_nameVariable_3/*
dtype0*
shape
:2*
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
e
Variable_3/AssignAssignVariableOp
Variable_3%Variable_3/Initializer/ReadVariableOp*
dtype0
i
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes

:2*
dtype0
�
%seed_generator_6/seed_generator_stateVarHandleOp*
_output_shapes
: *6

debug_name(&seed_generator_6/seed_generator_state/*
dtype0	*
shape:*6
shared_name'%seed_generator_6/seed_generator_state
�
9seed_generator_6/seed_generator_state/Read/ReadVariableOpReadVariableOp%seed_generator_6/seed_generator_state*
_output_shapes
:*
dtype0	
�
%Variable_4/Initializer/ReadVariableOpReadVariableOp%seed_generator_6/seed_generator_state*
_class
loc:@Variable_4*
_output_shapes
:*
dtype0	
�

Variable_4VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *

debug_nameVariable_4/*
dtype0	*
shape:*
shared_name
Variable_4
e
+Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_4*
_output_shapes
: 
e
Variable_4/AssignAssignVariableOp
Variable_4%Variable_4/Initializer/ReadVariableOp*
dtype0	
e
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes
:*
dtype0	
�
0sequential_6/simple_rnn_4/simple_rnn_cell/bias_1VarHandleOp*
_output_shapes
: *A

debug_name31sequential_6/simple_rnn_4/simple_rnn_cell/bias_1/*
dtype0*
shape:2*A
shared_name20sequential_6/simple_rnn_4/simple_rnn_cell/bias_1
�
Dsequential_6/simple_rnn_4/simple_rnn_cell/bias_1/Read/ReadVariableOpReadVariableOp0sequential_6/simple_rnn_4/simple_rnn_cell/bias_1*
_output_shapes
:2*
dtype0
�
%Variable_5/Initializer/ReadVariableOpReadVariableOp0sequential_6/simple_rnn_4/simple_rnn_cell/bias_1*
_class
loc:@Variable_5*
_output_shapes
:2*
dtype0
�

Variable_5VarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *

debug_nameVariable_5/*
dtype0*
shape:2*
shared_name
Variable_5
e
+Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_5*
_output_shapes
: 
e
Variable_5/AssignAssignVariableOp
Variable_5%Variable_5/Initializer/ReadVariableOp*
dtype0
e
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5*
_output_shapes
:2*
dtype0
�
<sequential_6/simple_rnn_4/simple_rnn_cell/recurrent_kernel_1VarHandleOp*
_output_shapes
: *M

debug_name?=sequential_6/simple_rnn_4/simple_rnn_cell/recurrent_kernel_1/*
dtype0*
shape
:22*M
shared_name><sequential_6/simple_rnn_4/simple_rnn_cell/recurrent_kernel_1
�
Psequential_6/simple_rnn_4/simple_rnn_cell/recurrent_kernel_1/Read/ReadVariableOpReadVariableOp<sequential_6/simple_rnn_4/simple_rnn_cell/recurrent_kernel_1*
_output_shapes

:22*
dtype0
�
%Variable_6/Initializer/ReadVariableOpReadVariableOp<sequential_6/simple_rnn_4/simple_rnn_cell/recurrent_kernel_1*
_class
loc:@Variable_6*
_output_shapes

:22*
dtype0
�

Variable_6VarHandleOp*
_class
loc:@Variable_6*
_output_shapes
: *

debug_nameVariable_6/*
dtype0*
shape
:22*
shared_name
Variable_6
e
+Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_6*
_output_shapes
: 
e
Variable_6/AssignAssignVariableOp
Variable_6%Variable_6/Initializer/ReadVariableOp*
dtype0
i
Variable_6/Read/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes

:22*
dtype0
�
2sequential_6/simple_rnn_4/simple_rnn_cell/kernel_1VarHandleOp*
_output_shapes
: *C

debug_name53sequential_6/simple_rnn_4/simple_rnn_cell/kernel_1/*
dtype0*
shape
:2*C
shared_name42sequential_6/simple_rnn_4/simple_rnn_cell/kernel_1
�
Fsequential_6/simple_rnn_4/simple_rnn_cell/kernel_1/Read/ReadVariableOpReadVariableOp2sequential_6/simple_rnn_4/simple_rnn_cell/kernel_1*
_output_shapes

:2*
dtype0
�
%Variable_7/Initializer/ReadVariableOpReadVariableOp2sequential_6/simple_rnn_4/simple_rnn_cell/kernel_1*
_class
loc:@Variable_7*
_output_shapes

:2*
dtype0
�

Variable_7VarHandleOp*
_class
loc:@Variable_7*
_output_shapes
: *

debug_nameVariable_7/*
dtype0*
shape
:2*
shared_name
Variable_7
e
+Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_7*
_output_shapes
: 
e
Variable_7/AssignAssignVariableOp
Variable_7%Variable_7/Initializer/ReadVariableOp*
dtype0
i
Variable_7/Read/ReadVariableOpReadVariableOp
Variable_7*
_output_shapes

:2*
dtype0
�
serve_keras_tensor_42Placeholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserve_keras_tensor_422sequential_6/simple_rnn_4/simple_rnn_cell/kernel_10sequential_6/simple_rnn_4/simple_rnn_cell/bias_1<sequential_6/simple_rnn_4/simple_rnn_cell/recurrent_kernel_1sequential_6/dense_12/kernel_1sequential_6/dense_12/bias_1sequential_6/dense_13/kernel_1sequential_6/dense_13/bias_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*)
_read_only_resource_inputs
	*2
config_proto" 

CPU

GPU 2J 8� �J *6
f1R/
-__inference_signature_wrapper___call___201036
�
serving_default_keras_tensor_42Placeholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_keras_tensor_422sequential_6/simple_rnn_4/simple_rnn_cell/kernel_10sequential_6/simple_rnn_4/simple_rnn_cell/bias_1<sequential_6/simple_rnn_4/simple_rnn_cell/recurrent_kernel_1sequential_6/dense_12/kernel_1sequential_6/dense_12/bias_1sequential_6/dense_13/kernel_1sequential_6/dense_13/bias_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*)
_read_only_resource_inputs
	*2
config_proto" 

CPU

GPU 2J 8� �J *6
f1R/
-__inference_signature_wrapper___call___201055

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
	variables
trainable_variables
non_trainable_variables
_all_variables
_misc_assets
	serve

signatures*
<
0
	1

2
3
4
5
6
7*
5
0
	1

2
3
4
5
6*

0*
5
0
1
2
3
4
5
6*
* 

trace_0* 
"
	serve
serving_default* 
JD
VARIABLE_VALUE
Variable_7&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_6&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_5&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_4&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_3&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_2&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_1&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEVariable&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE2sequential_6/simple_rnn_4/simple_rnn_cell/kernel_1+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUE<sequential_6/simple_rnn_4/simple_rnn_cell/recurrent_kernel_1+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE0sequential_6/simple_rnn_4/simple_rnn_cell/bias_1+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEsequential_6/dense_12/bias_1+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEsequential_6/dense_12/kernel_1+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEsequential_6/dense_13/bias_1+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEsequential_6/dense_13/kernel_1+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variable2sequential_6/simple_rnn_4/simple_rnn_cell/kernel_1<sequential_6/simple_rnn_4/simple_rnn_cell/recurrent_kernel_10sequential_6/simple_rnn_4/simple_rnn_cell/bias_1sequential_6/dense_12/bias_1sequential_6/dense_12/kernel_1sequential_6/dense_13/bias_1sequential_6/dense_13/kernel_1Const*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J *(
f#R!
__inference__traced_save_201201
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filename
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variable2sequential_6/simple_rnn_4/simple_rnn_cell/kernel_1<sequential_6/simple_rnn_4/simple_rnn_cell/recurrent_kernel_10sequential_6/simple_rnn_4/simple_rnn_cell/bias_1sequential_6/dense_12/bias_1sequential_6/dense_12/kernel_1sequential_6/dense_13/bias_1sequential_6/dense_13/kernel_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J *+
f&R$
"__inference__traced_restore_201255��
�v
�
__inference___call___201016
keras_tensor_42^
Lsequential_6_1_simple_rnn_4_1_simple_rnn_cell_1_cast_readvariableop_resource:2Y
Ksequential_6_1_simple_rnn_4_1_simple_rnn_cell_1_add_readvariableop_resource:2`
Nsequential_6_1_simple_rnn_4_1_simple_rnn_cell_1_cast_1_readvariableop_resource:22H
6sequential_6_1_dense_12_1_cast_readvariableop_resource:2G
9sequential_6_1_dense_12_1_biasadd_readvariableop_resource:H
6sequential_6_1_dense_13_1_cast_readvariableop_resource:C
5sequential_6_1_dense_13_1_add_readvariableop_resource:
identity��0sequential_6_1/dense_12_1/BiasAdd/ReadVariableOp�-sequential_6_1/dense_12_1/Cast/ReadVariableOp�,sequential_6_1/dense_13_1/Add/ReadVariableOp�-sequential_6_1/dense_13_1/Cast/ReadVariableOp�Csequential_6_1/simple_rnn_4_1/simple_rnn_cell_1/Cast/ReadVariableOp�Esequential_6_1/simple_rnn_4_1/simple_rnn_cell_1/Cast_1/ReadVariableOp�Bsequential_6_1/simple_rnn_4_1/simple_rnn_cell_1/add/ReadVariableOp�#sequential_6_1/simple_rnn_4_1/whilep
#sequential_6_1/simple_rnn_4_1/ShapeShapekeras_tensor_42*
T0*
_output_shapes
::��{
1sequential_6_1/simple_rnn_4_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_6_1/simple_rnn_4_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_6_1/simple_rnn_4_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+sequential_6_1/simple_rnn_4_1/strided_sliceStridedSlice,sequential_6_1/simple_rnn_4_1/Shape:output:0:sequential_6_1/simple_rnn_4_1/strided_slice/stack:output:0<sequential_6_1/simple_rnn_4_1/strided_slice/stack_1:output:0<sequential_6_1/simple_rnn_4_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
,sequential_6_1/simple_rnn_4_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2�
*sequential_6_1/simple_rnn_4_1/zeros/packedPack4sequential_6_1/simple_rnn_4_1/strided_slice:output:05sequential_6_1/simple_rnn_4_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:n
)sequential_6_1/simple_rnn_4_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
#sequential_6_1/simple_rnn_4_1/zerosFill3sequential_6_1/simple_rnn_4_1/zeros/packed:output:02sequential_6_1/simple_rnn_4_1/zeros/Const:output:0*
T0*'
_output_shapes
:���������2�
3sequential_6_1/simple_rnn_4_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            �
5sequential_6_1/simple_rnn_4_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
5sequential_6_1/simple_rnn_4_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
-sequential_6_1/simple_rnn_4_1/strided_slice_1StridedSlicekeras_tensor_42<sequential_6_1/simple_rnn_4_1/strided_slice_1/stack:output:0>sequential_6_1/simple_rnn_4_1/strided_slice_1/stack_1:output:0>sequential_6_1/simple_rnn_4_1/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
,sequential_6_1/simple_rnn_4_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
'sequential_6_1/simple_rnn_4_1/transpose	Transposekeras_tensor_425sequential_6_1/simple_rnn_4_1/transpose/perm:output:0*
T0*+
_output_shapes
:����������
9sequential_6_1/simple_rnn_4_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������z
8sequential_6_1/simple_rnn_4_1/TensorArrayV2/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_6_1/simple_rnn_4_1/TensorArrayV2TensorListReserveBsequential_6_1/simple_rnn_4_1/TensorArrayV2/element_shape:output:0Asequential_6_1/simple_rnn_4_1/TensorArrayV2/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Ssequential_6_1/simple_rnn_4_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Esequential_6_1/simple_rnn_4_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor+sequential_6_1/simple_rnn_4_1/transpose:y:0\sequential_6_1/simple_rnn_4_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���}
3sequential_6_1/simple_rnn_4_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_6_1/simple_rnn_4_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_6_1/simple_rnn_4_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-sequential_6_1/simple_rnn_4_1/strided_slice_2StridedSlice+sequential_6_1/simple_rnn_4_1/transpose:y:0<sequential_6_1/simple_rnn_4_1/strided_slice_2/stack:output:0>sequential_6_1/simple_rnn_4_1/strided_slice_2/stack_1:output:0>sequential_6_1/simple_rnn_4_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
Csequential_6_1/simple_rnn_4_1/simple_rnn_cell_1/Cast/ReadVariableOpReadVariableOpLsequential_6_1_simple_rnn_4_1_simple_rnn_cell_1_cast_readvariableop_resource*
_output_shapes

:2*
dtype0�
6sequential_6_1/simple_rnn_4_1/simple_rnn_cell_1/MatMulMatMul6sequential_6_1/simple_rnn_4_1/strided_slice_2:output:0Ksequential_6_1/simple_rnn_4_1/simple_rnn_cell_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
Bsequential_6_1/simple_rnn_4_1/simple_rnn_cell_1/add/ReadVariableOpReadVariableOpKsequential_6_1_simple_rnn_4_1_simple_rnn_cell_1_add_readvariableop_resource*
_output_shapes
:2*
dtype0�
3sequential_6_1/simple_rnn_4_1/simple_rnn_cell_1/addAddV2@sequential_6_1/simple_rnn_4_1/simple_rnn_cell_1/MatMul:product:0Jsequential_6_1/simple_rnn_4_1/simple_rnn_cell_1/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
Esequential_6_1/simple_rnn_4_1/simple_rnn_cell_1/Cast_1/ReadVariableOpReadVariableOpNsequential_6_1_simple_rnn_4_1_simple_rnn_cell_1_cast_1_readvariableop_resource*
_output_shapes

:22*
dtype0�
8sequential_6_1/simple_rnn_4_1/simple_rnn_cell_1/MatMul_1MatMul,sequential_6_1/simple_rnn_4_1/zeros:output:0Msequential_6_1/simple_rnn_4_1/simple_rnn_cell_1/Cast_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
5sequential_6_1/simple_rnn_4_1/simple_rnn_cell_1/add_1AddV27sequential_6_1/simple_rnn_4_1/simple_rnn_cell_1/add:z:0Bsequential_6_1/simple_rnn_4_1/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������2�
4sequential_6_1/simple_rnn_4_1/simple_rnn_cell_1/ReluRelu9sequential_6_1/simple_rnn_4_1/simple_rnn_cell_1/add_1:z:0*
T0*'
_output_shapes
:���������2�
;sequential_6_1/simple_rnn_4_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   |
:sequential_6_1/simple_rnn_4_1/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
-sequential_6_1/simple_rnn_4_1/TensorArrayV2_1TensorListReserveDsequential_6_1/simple_rnn_4_1/TensorArrayV2_1/element_shape:output:0Csequential_6_1/simple_rnn_4_1/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���d
"sequential_6_1/simple_rnn_4_1/timeConst*
_output_shapes
: *
dtype0*
value	B : j
(sequential_6_1/simple_rnn_4_1/Rank/ConstConst*
_output_shapes
: *
dtype0*
value	B :d
"sequential_6_1/simple_rnn_4_1/RankConst*
_output_shapes
: *
dtype0*
value	B : k
)sequential_6_1/simple_rnn_4_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : k
)sequential_6_1/simple_rnn_4_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_6_1/simple_rnn_4_1/rangeRange2sequential_6_1/simple_rnn_4_1/range/start:output:0+sequential_6_1/simple_rnn_4_1/Rank:output:02sequential_6_1/simple_rnn_4_1/range/delta:output:0*
_output_shapes
: i
'sequential_6_1/simple_rnn_4_1/Max/inputConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_6_1/simple_rnn_4_1/MaxMax0sequential_6_1/simple_rnn_4_1/Max/input:output:0,sequential_6_1/simple_rnn_4_1/range:output:0*
T0*
_output_shapes
: r
0sequential_6_1/simple_rnn_4_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
#sequential_6_1/simple_rnn_4_1/whileWhile9sequential_6_1/simple_rnn_4_1/while/loop_counter:output:0*sequential_6_1/simple_rnn_4_1/Max:output:0+sequential_6_1/simple_rnn_4_1/time:output:06sequential_6_1/simple_rnn_4_1/TensorArrayV2_1:handle:0,sequential_6_1/simple_rnn_4_1/zeros:output:0Usequential_6_1/simple_rnn_4_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Lsequential_6_1_simple_rnn_4_1_simple_rnn_cell_1_cast_readvariableop_resourceKsequential_6_1_simple_rnn_4_1_simple_rnn_cell_1_add_readvariableop_resourceNsequential_6_1_simple_rnn_4_1_simple_rnn_cell_1_cast_1_readvariableop_resource*
T
2	*
_lower_using_switch_merge(*
_num_original_outputs	*7
_output_shapes%
#: : : : :���������2: : : : *%
_read_only_resource_inputs
*;
body3R1
/sequential_6_1_simple_rnn_4_1_while_body_200938*;
cond3R1
/sequential_6_1_simple_rnn_4_1_while_cond_200937*6
output_shapes%
#: : : : :���������2: : : : *
parallel_iterations �
Nsequential_6_1/simple_rnn_4_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   �
@sequential_6_1/simple_rnn_4_1/TensorArrayV2Stack/TensorListStackTensorListStack,sequential_6_1/simple_rnn_4_1/while:output:3Wsequential_6_1/simple_rnn_4_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype0*
num_elements�
3sequential_6_1/simple_rnn_4_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������
5sequential_6_1/simple_rnn_4_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
5sequential_6_1/simple_rnn_4_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-sequential_6_1/simple_rnn_4_1/strided_slice_3StridedSliceIsequential_6_1/simple_rnn_4_1/TensorArrayV2Stack/TensorListStack:tensor:0<sequential_6_1/simple_rnn_4_1/strided_slice_3/stack:output:0>sequential_6_1/simple_rnn_4_1/strided_slice_3/stack_1:output:0>sequential_6_1/simple_rnn_4_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask�
.sequential_6_1/simple_rnn_4_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
)sequential_6_1/simple_rnn_4_1/transpose_1	TransposeIsequential_6_1/simple_rnn_4_1/TensorArrayV2Stack/TensorListStack:tensor:07sequential_6_1/simple_rnn_4_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2�
-sequential_6_1/dense_12_1/Cast/ReadVariableOpReadVariableOp6sequential_6_1_dense_12_1_cast_readvariableop_resource*
_output_shapes

:2*
dtype0�
 sequential_6_1/dense_12_1/MatMulMatMul6sequential_6_1/simple_rnn_4_1/strided_slice_3:output:05sequential_6_1/dense_12_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
0sequential_6_1/dense_12_1/BiasAdd/ReadVariableOpReadVariableOp9sequential_6_1_dense_12_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!sequential_6_1/dense_12_1/BiasAddBiasAdd*sequential_6_1/dense_12_1/MatMul:product:08sequential_6_1/dense_12_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-sequential_6_1/dense_13_1/Cast/ReadVariableOpReadVariableOp6sequential_6_1_dense_13_1_cast_readvariableop_resource*
_output_shapes

:*
dtype0�
 sequential_6_1/dense_13_1/MatMulMatMul*sequential_6_1/dense_12_1/BiasAdd:output:05sequential_6_1/dense_13_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,sequential_6_1/dense_13_1/Add/ReadVariableOpReadVariableOp5sequential_6_1_dense_13_1_add_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_6_1/dense_13_1/AddAddV2*sequential_6_1/dense_13_1/MatMul:product:04sequential_6_1/dense_13_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������p
IdentityIdentity!sequential_6_1/dense_13_1/Add:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp1^sequential_6_1/dense_12_1/BiasAdd/ReadVariableOp.^sequential_6_1/dense_12_1/Cast/ReadVariableOp-^sequential_6_1/dense_13_1/Add/ReadVariableOp.^sequential_6_1/dense_13_1/Cast/ReadVariableOpD^sequential_6_1/simple_rnn_4_1/simple_rnn_cell_1/Cast/ReadVariableOpF^sequential_6_1/simple_rnn_4_1/simple_rnn_cell_1/Cast_1/ReadVariableOpC^sequential_6_1/simple_rnn_4_1/simple_rnn_cell_1/add/ReadVariableOp$^sequential_6_1/simple_rnn_4_1/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:���������: : : : : : : 2d
0sequential_6_1/dense_12_1/BiasAdd/ReadVariableOp0sequential_6_1/dense_12_1/BiasAdd/ReadVariableOp2^
-sequential_6_1/dense_12_1/Cast/ReadVariableOp-sequential_6_1/dense_12_1/Cast/ReadVariableOp2\
,sequential_6_1/dense_13_1/Add/ReadVariableOp,sequential_6_1/dense_13_1/Add/ReadVariableOp2^
-sequential_6_1/dense_13_1/Cast/ReadVariableOp-sequential_6_1/dense_13_1/Cast/ReadVariableOp2�
Csequential_6_1/simple_rnn_4_1/simple_rnn_cell_1/Cast/ReadVariableOpCsequential_6_1/simple_rnn_4_1/simple_rnn_cell_1/Cast/ReadVariableOp2�
Esequential_6_1/simple_rnn_4_1/simple_rnn_cell_1/Cast_1/ReadVariableOpEsequential_6_1/simple_rnn_4_1/simple_rnn_cell_1/Cast_1/ReadVariableOp2�
Bsequential_6_1/simple_rnn_4_1/simple_rnn_cell_1/add/ReadVariableOpBsequential_6_1/simple_rnn_4_1/simple_rnn_cell_1/add/ReadVariableOp2J
#sequential_6_1/simple_rnn_4_1/while#sequential_6_1/simple_rnn_4_1/while:($
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
resource:\ X
+
_output_shapes
:���������
)
_user_specified_namekeras_tensor_42
�
�
-__inference_signature_wrapper___call___201055
keras_tensor_42
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:
	unknown_4:
	unknown_5:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallkeras_tensor_42unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*)
_read_only_resource_inputs
	*2
config_proto" 

CPU

GPU 2J 8� �J *$
fR
__inference___call___201016o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:���������: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name201051:&"
 
_user_specified_name201049:&"
 
_user_specified_name201047:&"
 
_user_specified_name201045:&"
 
_user_specified_name201043:&"
 
_user_specified_name201041:&"
 
_user_specified_name201039:\ X
+
_output_shapes
:���������
)
_user_specified_namekeras_tensor_42
�
�
/sequential_6_1_simple_rnn_4_1_while_cond_200937X
Tsequential_6_1_simple_rnn_4_1_while_sequential_6_1_simple_rnn_4_1_while_loop_counterI
Esequential_6_1_simple_rnn_4_1_while_sequential_6_1_simple_rnn_4_1_max3
/sequential_6_1_simple_rnn_4_1_while_placeholder5
1sequential_6_1_simple_rnn_4_1_while_placeholder_15
1sequential_6_1_simple_rnn_4_1_while_placeholder_2p
lsequential_6_1_simple_rnn_4_1_while_sequential_6_1_simple_rnn_4_1_while_cond_200937___redundant_placeholder0p
lsequential_6_1_simple_rnn_4_1_while_sequential_6_1_simple_rnn_4_1_while_cond_200937___redundant_placeholder1p
lsequential_6_1_simple_rnn_4_1_while_sequential_6_1_simple_rnn_4_1_while_cond_200937___redundant_placeholder2p
lsequential_6_1_simple_rnn_4_1_while_sequential_6_1_simple_rnn_4_1_while_cond_200937___redundant_placeholder30
,sequential_6_1_simple_rnn_4_1_while_identity
l
*sequential_6_1/simple_rnn_4_1/while/Less/yConst*
_output_shapes
: *
dtype0*
value	B :�
(sequential_6_1/simple_rnn_4_1/while/LessLess/sequential_6_1_simple_rnn_4_1_while_placeholder3sequential_6_1/simple_rnn_4_1/while/Less/y:output:0*
T0*
_output_shapes
: �
*sequential_6_1/simple_rnn_4_1/while/Less_1LessTsequential_6_1_simple_rnn_4_1_while_sequential_6_1_simple_rnn_4_1_while_loop_counterEsequential_6_1_simple_rnn_4_1_while_sequential_6_1_simple_rnn_4_1_max*
T0*
_output_shapes
: �
.sequential_6_1/simple_rnn_4_1/while/LogicalAnd
LogicalAnd.sequential_6_1/simple_rnn_4_1/while/Less_1:z:0,sequential_6_1/simple_rnn_4_1/while/Less:z:0*
_output_shapes
: �
,sequential_6_1/simple_rnn_4_1/while/IdentityIdentity2sequential_6_1/simple_rnn_4_1/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "e
,sequential_6_1_simple_rnn_4_1_while_identity5sequential_6_1/simple_rnn_4_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+: : : : :���������2:::::

_output_shapes
::-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: :YU

_output_shapes
: 
;
_user_specified_name#!sequential_6_1/simple_rnn_4_1/Max:h d

_output_shapes
: 
J
_user_specified_name20sequential_6_1/simple_rnn_4_1/while/loop_counter
�H
�
/sequential_6_1_simple_rnn_4_1_while_body_200938X
Tsequential_6_1_simple_rnn_4_1_while_sequential_6_1_simple_rnn_4_1_while_loop_counterI
Esequential_6_1_simple_rnn_4_1_while_sequential_6_1_simple_rnn_4_1_max3
/sequential_6_1_simple_rnn_4_1_while_placeholder5
1sequential_6_1_simple_rnn_4_1_while_placeholder_15
1sequential_6_1_simple_rnn_4_1_while_placeholder_2�
�sequential_6_1_simple_rnn_4_1_while_tensorarrayv2read_tensorlistgetitem_sequential_6_1_simple_rnn_4_1_tensorarrayunstack_tensorlistfromtensor_0f
Tsequential_6_1_simple_rnn_4_1_while_simple_rnn_cell_1_cast_readvariableop_resource_0:2a
Ssequential_6_1_simple_rnn_4_1_while_simple_rnn_cell_1_add_readvariableop_resource_0:2h
Vsequential_6_1_simple_rnn_4_1_while_simple_rnn_cell_1_cast_1_readvariableop_resource_0:220
,sequential_6_1_simple_rnn_4_1_while_identity2
.sequential_6_1_simple_rnn_4_1_while_identity_12
.sequential_6_1_simple_rnn_4_1_while_identity_22
.sequential_6_1_simple_rnn_4_1_while_identity_32
.sequential_6_1_simple_rnn_4_1_while_identity_4�
�sequential_6_1_simple_rnn_4_1_while_tensorarrayv2read_tensorlistgetitem_sequential_6_1_simple_rnn_4_1_tensorarrayunstack_tensorlistfromtensord
Rsequential_6_1_simple_rnn_4_1_while_simple_rnn_cell_1_cast_readvariableop_resource:2_
Qsequential_6_1_simple_rnn_4_1_while_simple_rnn_cell_1_add_readvariableop_resource:2f
Tsequential_6_1_simple_rnn_4_1_while_simple_rnn_cell_1_cast_1_readvariableop_resource:22��Isequential_6_1/simple_rnn_4_1/while/simple_rnn_cell_1/Cast/ReadVariableOp�Ksequential_6_1/simple_rnn_4_1/while/simple_rnn_cell_1/Cast_1/ReadVariableOp�Hsequential_6_1/simple_rnn_4_1/while/simple_rnn_cell_1/add/ReadVariableOp�
Usequential_6_1/simple_rnn_4_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Gsequential_6_1/simple_rnn_4_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_6_1_simple_rnn_4_1_while_tensorarrayv2read_tensorlistgetitem_sequential_6_1_simple_rnn_4_1_tensorarrayunstack_tensorlistfromtensor_0/sequential_6_1_simple_rnn_4_1_while_placeholder^sequential_6_1/simple_rnn_4_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Isequential_6_1/simple_rnn_4_1/while/simple_rnn_cell_1/Cast/ReadVariableOpReadVariableOpTsequential_6_1_simple_rnn_4_1_while_simple_rnn_cell_1_cast_readvariableop_resource_0*
_output_shapes

:2*
dtype0�
<sequential_6_1/simple_rnn_4_1/while/simple_rnn_cell_1/MatMulMatMulNsequential_6_1/simple_rnn_4_1/while/TensorArrayV2Read/TensorListGetItem:item:0Qsequential_6_1/simple_rnn_4_1/while/simple_rnn_cell_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
Hsequential_6_1/simple_rnn_4_1/while/simple_rnn_cell_1/add/ReadVariableOpReadVariableOpSsequential_6_1_simple_rnn_4_1_while_simple_rnn_cell_1_add_readvariableop_resource_0*
_output_shapes
:2*
dtype0�
9sequential_6_1/simple_rnn_4_1/while/simple_rnn_cell_1/addAddV2Fsequential_6_1/simple_rnn_4_1/while/simple_rnn_cell_1/MatMul:product:0Psequential_6_1/simple_rnn_4_1/while/simple_rnn_cell_1/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
Ksequential_6_1/simple_rnn_4_1/while/simple_rnn_cell_1/Cast_1/ReadVariableOpReadVariableOpVsequential_6_1_simple_rnn_4_1_while_simple_rnn_cell_1_cast_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0�
>sequential_6_1/simple_rnn_4_1/while/simple_rnn_cell_1/MatMul_1MatMul1sequential_6_1_simple_rnn_4_1_while_placeholder_2Ssequential_6_1/simple_rnn_4_1/while/simple_rnn_cell_1/Cast_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
;sequential_6_1/simple_rnn_4_1/while/simple_rnn_cell_1/add_1AddV2=sequential_6_1/simple_rnn_4_1/while/simple_rnn_cell_1/add:z:0Hsequential_6_1/simple_rnn_4_1/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������2�
:sequential_6_1/simple_rnn_4_1/while/simple_rnn_cell_1/ReluRelu?sequential_6_1/simple_rnn_4_1/while/simple_rnn_cell_1/add_1:z:0*
T0*'
_output_shapes
:���������2�
Nsequential_6_1/simple_rnn_4_1/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
Hsequential_6_1/simple_rnn_4_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem1sequential_6_1_simple_rnn_4_1_while_placeholder_1Wsequential_6_1/simple_rnn_4_1/while/TensorArrayV2Write/TensorListSetItem/index:output:0Hsequential_6_1/simple_rnn_4_1/while/simple_rnn_cell_1/Relu:activations:0*
_output_shapes
: *
element_dtype0:���k
)sequential_6_1/simple_rnn_4_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
'sequential_6_1/simple_rnn_4_1/while/addAddV2/sequential_6_1_simple_rnn_4_1_while_placeholder2sequential_6_1/simple_rnn_4_1/while/add/y:output:0*
T0*
_output_shapes
: m
+sequential_6_1/simple_rnn_4_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
)sequential_6_1/simple_rnn_4_1/while/add_1AddV2Tsequential_6_1_simple_rnn_4_1_while_sequential_6_1_simple_rnn_4_1_while_loop_counter4sequential_6_1/simple_rnn_4_1/while/add_1/y:output:0*
T0*
_output_shapes
: �
,sequential_6_1/simple_rnn_4_1/while/IdentityIdentity-sequential_6_1/simple_rnn_4_1/while/add_1:z:0)^sequential_6_1/simple_rnn_4_1/while/NoOp*
T0*
_output_shapes
: �
.sequential_6_1/simple_rnn_4_1/while/Identity_1IdentityEsequential_6_1_simple_rnn_4_1_while_sequential_6_1_simple_rnn_4_1_max)^sequential_6_1/simple_rnn_4_1/while/NoOp*
T0*
_output_shapes
: �
.sequential_6_1/simple_rnn_4_1/while/Identity_2Identity+sequential_6_1/simple_rnn_4_1/while/add:z:0)^sequential_6_1/simple_rnn_4_1/while/NoOp*
T0*
_output_shapes
: �
.sequential_6_1/simple_rnn_4_1/while/Identity_3IdentityXsequential_6_1/simple_rnn_4_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^sequential_6_1/simple_rnn_4_1/while/NoOp*
T0*
_output_shapes
: �
.sequential_6_1/simple_rnn_4_1/while/Identity_4IdentityHsequential_6_1/simple_rnn_4_1/while/simple_rnn_cell_1/Relu:activations:0)^sequential_6_1/simple_rnn_4_1/while/NoOp*
T0*'
_output_shapes
:���������2�
(sequential_6_1/simple_rnn_4_1/while/NoOpNoOpJ^sequential_6_1/simple_rnn_4_1/while/simple_rnn_cell_1/Cast/ReadVariableOpL^sequential_6_1/simple_rnn_4_1/while/simple_rnn_cell_1/Cast_1/ReadVariableOpI^sequential_6_1/simple_rnn_4_1/while/simple_rnn_cell_1/add/ReadVariableOp*
_output_shapes
 "i
.sequential_6_1_simple_rnn_4_1_while_identity_17sequential_6_1/simple_rnn_4_1/while/Identity_1:output:0"i
.sequential_6_1_simple_rnn_4_1_while_identity_27sequential_6_1/simple_rnn_4_1/while/Identity_2:output:0"i
.sequential_6_1_simple_rnn_4_1_while_identity_37sequential_6_1/simple_rnn_4_1/while/Identity_3:output:0"i
.sequential_6_1_simple_rnn_4_1_while_identity_47sequential_6_1/simple_rnn_4_1/while/Identity_4:output:0"e
,sequential_6_1_simple_rnn_4_1_while_identity5sequential_6_1/simple_rnn_4_1/while/Identity:output:0"�
Qsequential_6_1_simple_rnn_4_1_while_simple_rnn_cell_1_add_readvariableop_resourceSsequential_6_1_simple_rnn_4_1_while_simple_rnn_cell_1_add_readvariableop_resource_0"�
Tsequential_6_1_simple_rnn_4_1_while_simple_rnn_cell_1_cast_1_readvariableop_resourceVsequential_6_1_simple_rnn_4_1_while_simple_rnn_cell_1_cast_1_readvariableop_resource_0"�
Rsequential_6_1_simple_rnn_4_1_while_simple_rnn_cell_1_cast_readvariableop_resourceTsequential_6_1_simple_rnn_4_1_while_simple_rnn_cell_1_cast_readvariableop_resource_0"�
�sequential_6_1_simple_rnn_4_1_while_tensorarrayv2read_tensorlistgetitem_sequential_6_1_simple_rnn_4_1_tensorarrayunstack_tensorlistfromtensor�sequential_6_1_simple_rnn_4_1_while_tensorarrayv2read_tensorlistgetitem_sequential_6_1_simple_rnn_4_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#: : : : :���������2: : : : 2�
Isequential_6_1/simple_rnn_4_1/while/simple_rnn_cell_1/Cast/ReadVariableOpIsequential_6_1/simple_rnn_4_1/while/simple_rnn_cell_1/Cast/ReadVariableOp2�
Ksequential_6_1/simple_rnn_4_1/while/simple_rnn_cell_1/Cast_1/ReadVariableOpKsequential_6_1/simple_rnn_4_1/while/simple_rnn_cell_1/Cast_1/ReadVariableOp2�
Hsequential_6_1/simple_rnn_4_1/while/simple_rnn_cell_1/add/ReadVariableOpHsequential_6_1/simple_rnn_4_1/while/simple_rnn_cell_1/add/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:}y

_output_shapes
: 
_
_user_specified_nameGEsequential_6_1/simple_rnn_4_1/TensorArrayUnstack/TensorListFromTensor:-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: :YU

_output_shapes
: 
;
_user_specified_name#!sequential_6_1/simple_rnn_4_1/Max:h d

_output_shapes
: 
J
_user_specified_name20sequential_6_1/simple_rnn_4_1/while/loop_counter
�x
�
__inference__traced_save_201201
file_prefix3
!read_disablecopyonread_variable_7:25
#read_1_disablecopyonread_variable_6:221
#read_2_disablecopyonread_variable_5:21
#read_3_disablecopyonread_variable_4:	5
#read_4_disablecopyonread_variable_3:21
#read_5_disablecopyonread_variable_2:5
#read_6_disablecopyonread_variable_1:/
!read_7_disablecopyonread_variable:]
Kread_8_disablecopyonread_sequential_6_simple_rnn_4_simple_rnn_cell_kernel_1:2g
Uread_9_disablecopyonread_sequential_6_simple_rnn_4_simple_rnn_cell_recurrent_kernel_1:22X
Jread_10_disablecopyonread_sequential_6_simple_rnn_4_simple_rnn_cell_bias_1:2D
6read_11_disablecopyonread_sequential_6_dense_12_bias_1:J
8read_12_disablecopyonread_sequential_6_dense_12_kernel_1:2D
6read_13_disablecopyonread_sequential_6_dense_13_bias_1:J
8read_14_disablecopyonread_sequential_6_dense_13_kernel_1:
savev2_const
identity_31��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
: d
Read/DisableCopyOnReadDisableCopyOnRead!read_disablecopyonread_variable_7*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp!read_disablecopyonread_variable_7^Read/DisableCopyOnRead*
_output_shapes

:2*
dtype0Z
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes

:2a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:2h
Read_1/DisableCopyOnReadDisableCopyOnRead#read_1_disablecopyonread_variable_6*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp#read_1_disablecopyonread_variable_6^Read_1/DisableCopyOnRead*
_output_shapes

:22*
dtype0^

Identity_2IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:22c

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes

:22h
Read_2/DisableCopyOnReadDisableCopyOnRead#read_2_disablecopyonread_variable_5*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp#read_2_disablecopyonread_variable_5^Read_2/DisableCopyOnRead*
_output_shapes
:2*
dtype0Z

Identity_4IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:2_

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:2h
Read_3/DisableCopyOnReadDisableCopyOnRead#read_3_disablecopyonread_variable_4*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp#read_3_disablecopyonread_variable_4^Read_3/DisableCopyOnRead*
_output_shapes
:*
dtype0	Z

Identity_6IdentityRead_3/ReadVariableOp:value:0*
T0	*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0	*
_output_shapes
:h
Read_4/DisableCopyOnReadDisableCopyOnRead#read_4_disablecopyonread_variable_3*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp#read_4_disablecopyonread_variable_3^Read_4/DisableCopyOnRead*
_output_shapes

:2*
dtype0^

Identity_8IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes

:2c

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes

:2h
Read_5/DisableCopyOnReadDisableCopyOnRead#read_5_disablecopyonread_variable_2*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp#read_5_disablecopyonread_variable_2^Read_5/DisableCopyOnRead*
_output_shapes
:*
dtype0[
Identity_10IdentityRead_5/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:h
Read_6/DisableCopyOnReadDisableCopyOnRead#read_6_disablecopyonread_variable_1*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp#read_6_disablecopyonread_variable_1^Read_6/DisableCopyOnRead*
_output_shapes

:*
dtype0_
Identity_12IdentityRead_6/ReadVariableOp:value:0*
T0*
_output_shapes

:e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

:f
Read_7/DisableCopyOnReadDisableCopyOnRead!read_7_disablecopyonread_variable*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp!read_7_disablecopyonread_variable^Read_7/DisableCopyOnRead*
_output_shapes
:*
dtype0[
Identity_14IdentityRead_7/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_8/DisableCopyOnReadDisableCopyOnReadKread_8_disablecopyonread_sequential_6_simple_rnn_4_simple_rnn_cell_kernel_1*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOpKread_8_disablecopyonread_sequential_6_simple_rnn_4_simple_rnn_cell_kernel_1^Read_8/DisableCopyOnRead*
_output_shapes

:2*
dtype0_
Identity_16IdentityRead_8/ReadVariableOp:value:0*
T0*
_output_shapes

:2e
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes

:2�
Read_9/DisableCopyOnReadDisableCopyOnReadUread_9_disablecopyonread_sequential_6_simple_rnn_4_simple_rnn_cell_recurrent_kernel_1*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOpUread_9_disablecopyonread_sequential_6_simple_rnn_4_simple_rnn_cell_recurrent_kernel_1^Read_9/DisableCopyOnRead*
_output_shapes

:22*
dtype0_
Identity_18IdentityRead_9/ReadVariableOp:value:0*
T0*
_output_shapes

:22e
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes

:22�
Read_10/DisableCopyOnReadDisableCopyOnReadJread_10_disablecopyonread_sequential_6_simple_rnn_4_simple_rnn_cell_bias_1*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOpJread_10_disablecopyonread_sequential_6_simple_rnn_4_simple_rnn_cell_bias_1^Read_10/DisableCopyOnRead*
_output_shapes
:2*
dtype0\
Identity_20IdentityRead_10/ReadVariableOp:value:0*
T0*
_output_shapes
:2a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:2|
Read_11/DisableCopyOnReadDisableCopyOnRead6read_11_disablecopyonread_sequential_6_dense_12_bias_1*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp6read_11_disablecopyonread_sequential_6_dense_12_bias_1^Read_11/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_22IdentityRead_11/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_12/DisableCopyOnReadDisableCopyOnRead8read_12_disablecopyonread_sequential_6_dense_12_kernel_1*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp8read_12_disablecopyonread_sequential_6_dense_12_kernel_1^Read_12/DisableCopyOnRead*
_output_shapes

:2*
dtype0`
Identity_24IdentityRead_12/ReadVariableOp:value:0*
T0*
_output_shapes

:2e
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes

:2|
Read_13/DisableCopyOnReadDisableCopyOnRead6read_13_disablecopyonread_sequential_6_dense_13_bias_1*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp6read_13_disablecopyonread_sequential_6_dense_13_bias_1^Read_13/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_26IdentityRead_13/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_14/DisableCopyOnReadDisableCopyOnRead8read_14_disablecopyonread_sequential_6_dense_13_kernel_1*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp8read_14_disablecopyonread_sequential_6_dense_13_kernel_1^Read_14/DisableCopyOnRead*
_output_shapes

:*
dtype0`
Identity_28IdentityRead_14/ReadVariableOp:value:0*
T0*
_output_shapes

:e
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

:L

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
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_30Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_31IdentityIdentity_30:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_31Identity_31:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
": : : : : : : : : : : : : : : : : 2(
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
Read_14/ReadVariableOpRead_14/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
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
Read_9/ReadVariableOpRead_9/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:>:
8
_user_specified_name sequential_6/dense_13/kernel_1:<8
6
_user_specified_namesequential_6/dense_13/bias_1:>:
8
_user_specified_name sequential_6/dense_12/kernel_1:<8
6
_user_specified_namesequential_6/dense_12/bias_1:PL
J
_user_specified_name20sequential_6/simple_rnn_4/simple_rnn_cell/bias_1:\
X
V
_user_specified_name><sequential_6/simple_rnn_4/simple_rnn_cell/recurrent_kernel_1:R	N
L
_user_specified_name42sequential_6/simple_rnn_4/simple_rnn_cell/kernel_1:($
"
_user_specified_name
Variable:*&
$
_user_specified_name
Variable_1:*&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_7:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�J
�

"__inference__traced_restore_201255
file_prefix-
assignvariableop_variable_7:2/
assignvariableop_1_variable_6:22+
assignvariableop_2_variable_5:2+
assignvariableop_3_variable_4:	/
assignvariableop_4_variable_3:2+
assignvariableop_5_variable_2:/
assignvariableop_6_variable_1:)
assignvariableop_7_variable:W
Eassignvariableop_8_sequential_6_simple_rnn_4_simple_rnn_cell_kernel_1:2a
Oassignvariableop_9_sequential_6_simple_rnn_4_simple_rnn_cell_recurrent_kernel_1:22R
Dassignvariableop_10_sequential_6_simple_rnn_4_simple_rnn_cell_bias_1:2>
0assignvariableop_11_sequential_6_dense_12_bias_1:D
2assignvariableop_12_sequential_6_dense_12_kernel_1:2>
0assignvariableop_13_sequential_6_dense_13_bias_1:D
2assignvariableop_14_sequential_6_dense_13_kernel_1:
identity_16��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*T
_output_shapesB
@::::::::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_variable_7Identity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_6Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_variable_5Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_variable_4Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_variable_3Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_variable_2Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_variable_1Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_variableIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpEassignvariableop_8_sequential_6_simple_rnn_4_simple_rnn_cell_kernel_1Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpOassignvariableop_9_sequential_6_simple_rnn_4_simple_rnn_cell_recurrent_kernel_1Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpDassignvariableop_10_sequential_6_simple_rnn_4_simple_rnn_cell_bias_1Identity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp0assignvariableop_11_sequential_6_dense_12_bias_1Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp2assignvariableop_12_sequential_6_dense_12_kernel_1Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp0assignvariableop_13_sequential_6_dense_13_bias_1Identity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp2assignvariableop_14_sequential_6_dense_13_kernel_1Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_15Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_16IdentityIdentity_15:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_16Identity_16:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:>:
8
_user_specified_name sequential_6/dense_13/kernel_1:<8
6
_user_specified_namesequential_6/dense_13/bias_1:>:
8
_user_specified_name sequential_6/dense_12/kernel_1:<8
6
_user_specified_namesequential_6/dense_12/bias_1:PL
J
_user_specified_name20sequential_6/simple_rnn_4/simple_rnn_cell/bias_1:\
X
V
_user_specified_name><sequential_6/simple_rnn_4/simple_rnn_cell/recurrent_kernel_1:R	N
L
_user_specified_name42sequential_6/simple_rnn_4/simple_rnn_cell/kernel_1:($
"
_user_specified_name
Variable:*&
$
_user_specified_name
Variable_1:*&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_7:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
-__inference_signature_wrapper___call___201036
keras_tensor_42
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:
	unknown_4:
	unknown_5:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallkeras_tensor_42unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*)
_read_only_resource_inputs
	*2
config_proto" 

CPU

GPU 2J 8� �J *$
fR
__inference___call___201016o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:���������: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name201032:&"
 
_user_specified_name201030:&"
 
_user_specified_name201028:&"
 
_user_specified_name201026:&"
 
_user_specified_name201024:&"
 
_user_specified_name201022:&"
 
_user_specified_name201020:\ X
+
_output_shapes
:���������
)
_user_specified_namekeras_tensor_42"�L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serve�
E
keras_tensor_422
serve_keras_tensor_42:0���������<
output_00
StatefulPartitionedCall:0���������tensorflow/serving/predict*�
serving_default�
O
keras_tensor_42<
!serving_default_keras_tensor_42:0���������>
output_02
StatefulPartitionedCall_1:0���������tensorflow/serving/predict:�
�
	variables
trainable_variables
non_trainable_variables
_all_variables
_misc_assets
	serve

signatures"
_generic_user_object
X
0
	1

2
3
4
5
6
7"
trackable_list_wrapper
Q
0
	1

2
3
4
5
6"
trackable_list_wrapper
'
0"
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
 "
trackable_list_wrapper
�
trace_02�
__inference___call___201016�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *2�/
-�*
keras_tensor_42���������ztrace_0
7
	serve
serving_default"
signature_map
B:@220sequential_6/simple_rnn_4/simple_rnn_cell/kernel
L:J222:sequential_6/simple_rnn_4/simple_rnn_cell/recurrent_kernel
<::22.sequential_6/simple_rnn_4/simple_rnn_cell/bias
1:/	2%seed_generator_6/seed_generator_state
.:,22sequential_6/dense_12/kernel
(:&2sequential_6/dense_12/bias
.:,2sequential_6/dense_13/kernel
(:&2sequential_6/dense_13/bias
B:@220sequential_6/simple_rnn_4/simple_rnn_cell/kernel
L:J222:sequential_6/simple_rnn_4/simple_rnn_cell/recurrent_kernel
<::22.sequential_6/simple_rnn_4/simple_rnn_cell/bias
(:&2sequential_6/dense_12/bias
.:,22sequential_6/dense_12/kernel
(:&2sequential_6/dense_13/bias
.:,2sequential_6/dense_13/kernel
�B�
__inference___call___201016keras_tensor_42"�
���
FullArgSpec
args�

jargs_0
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
-__inference_signature_wrapper___call___201036keras_tensor_42"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 $

kwonlyargs�
jkeras_tensor_42
kwonlydefaults
 
annotations� *
 
�B�
-__inference_signature_wrapper___call___201055keras_tensor_42"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 $

kwonlyargs�
jkeras_tensor_42
kwonlydefaults
 
annotations� *
 �
__inference___call___201016j
	<�9
2�/
-�*
keras_tensor_42���������
� "!�
unknown����������
-__inference_signature_wrapper___call___201036�
	O�L
� 
E�B
@
keras_tensor_42-�*
keras_tensor_42���������"3�0
.
output_0"�
output_0����������
-__inference_signature_wrapper___call___201055�
	O�L
� 
E�B
@
keras_tensor_42-�*
keras_tensor_42���������"3�0
.
output_0"�
output_0���������