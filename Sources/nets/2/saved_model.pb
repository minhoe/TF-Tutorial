∆н
д4ї4
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
о
	ApplyAdam
var"TА	
m"TА	
v"TА
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"TА" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
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
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
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
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
м
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

Т
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

С
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

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
,
Floor
x"T
y"T"
Ttype:
2
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
Ш
FusedBatchNorm
x"T

scale"T
offset"T	
mean"T
variance"T
y"T

batch_mean"T
batch_variance"T
reserve_space_1"T
reserve_space_2"T"
Ttype:
2"
epsilonfloat%Ј—8"-
data_formatstringNHWC:
NHWCNCHW"
is_trainingbool(
ј
FusedBatchNormGrad

y_backprop"T
x"T

scale"T
reserve_space_1"T
reserve_space_2"T

x_backprop"T
scale_backprop"T
offset_backprop"T
reserve_space_3"T
reserve_space_4"T"
Ttype:
2"
epsilonfloat%Ј—8"-
data_formatstringNHWC:
NHWCNCHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
‘
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
о
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
;
Maximum
x"T
y"T
z"T"
Ttype:

2	Р
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
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
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
.
Rsqrt
x"T
y"T"
Ttype:

2
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
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
ц
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
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.12.02v1.12.0-0-ga6d8ffae09С«
~
PlaceholderPlaceholder*
dtype0*/
_output_shapes
:€€€€€€€€€*$
shape:€€€€€€€€€
p
Placeholder_1Placeholder*
dtype0*'
_output_shapes
:€€€€€€€€€
*
shape:€€€€€€€€€

R
Placeholder_2Placeholder*
dtype0
*
_output_shapes
:*
shape:
G
ConstConst*
value	B :*
dtype0*
_output_shapes
: 
Q
split/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 
…
splitSplitsplit/split_dimPlaceholder*
T0*
	num_split*А
_output_shapesn
l:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
I
Const_1Const*
dtype0*
_output_shapes
: *
value	B :
S
split_1/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 
Ѓ
split_1Splitsplit_1/split_dimPlaceholder_1*
T0*
	num_split*`
_output_shapesN
L:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€

Ђ
-L1/batch_normalization/gamma/Initializer/onesConst*
dtype0*
_output_shapes
:*
valueB*  А?*/
_class%
#!loc:@L1/batch_normalization/gamma
є
L1/batch_normalization/gamma
VariableV2*
shared_name */
_class%
#!loc:@L1/batch_normalization/gamma*
	container *
shape:*
dtype0*
_output_shapes
:
щ
#L1/batch_normalization/gamma/AssignAssignL1/batch_normalization/gamma-L1/batch_normalization/gamma/Initializer/ones*
use_locking(*
T0*/
_class%
#!loc:@L1/batch_normalization/gamma*
validate_shape(*
_output_shapes
:
°
!L1/batch_normalization/gamma/readIdentityL1/batch_normalization/gamma*
_output_shapes
:*
T0*/
_class%
#!loc:@L1/batch_normalization/gamma
™
-L1/batch_normalization/beta/Initializer/zerosConst*
valueB*    *.
_class$
" loc:@L1/batch_normalization/beta*
dtype0*
_output_shapes
:
Ј
L1/batch_normalization/beta
VariableV2*.
_class$
" loc:@L1/batch_normalization/beta*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
ц
"L1/batch_normalization/beta/AssignAssignL1/batch_normalization/beta-L1/batch_normalization/beta/Initializer/zeros*
use_locking(*
T0*.
_class$
" loc:@L1/batch_normalization/beta*
validate_shape(*
_output_shapes
:
Ю
 L1/batch_normalization/beta/readIdentityL1/batch_normalization/beta*
_output_shapes
:*
T0*.
_class$
" loc:@L1/batch_normalization/beta
Є
4L1/batch_normalization/moving_mean/Initializer/zerosConst*
valueB*    *5
_class+
)'loc:@L1/batch_normalization/moving_mean*
dtype0*
_output_shapes
:
≈
"L1/batch_normalization/moving_mean
VariableV2*
shared_name *5
_class+
)'loc:@L1/batch_normalization/moving_mean*
	container *
shape:*
dtype0*
_output_shapes
:
Т
)L1/batch_normalization/moving_mean/AssignAssign"L1/batch_normalization/moving_mean4L1/batch_normalization/moving_mean/Initializer/zeros*
use_locking(*
T0*5
_class+
)'loc:@L1/batch_normalization/moving_mean*
validate_shape(*
_output_shapes
:
≥
'L1/batch_normalization/moving_mean/readIdentity"L1/batch_normalization/moving_mean*
T0*5
_class+
)'loc:@L1/batch_normalization/moving_mean*
_output_shapes
:
њ
7L1/batch_normalization/moving_variance/Initializer/onesConst*
valueB*  А?*9
_class/
-+loc:@L1/batch_normalization/moving_variance*
dtype0*
_output_shapes
:
Ќ
&L1/batch_normalization/moving_variance
VariableV2*
shared_name *9
_class/
-+loc:@L1/batch_normalization/moving_variance*
	container *
shape:*
dtype0*
_output_shapes
:
°
-L1/batch_normalization/moving_variance/AssignAssign&L1/batch_normalization/moving_variance7L1/batch_normalization/moving_variance/Initializer/ones*
use_locking(*
T0*9
_class/
-+loc:@L1/batch_normalization/moving_variance*
validate_shape(*
_output_shapes
:
њ
+L1/batch_normalization/moving_variance/readIdentity&L1/batch_normalization/moving_variance*
T0*9
_class/
-+loc:@L1/batch_normalization/moving_variance*
_output_shapes
:
з
%L1/batch_normalization/FusedBatchNormFusedBatchNormsplit!L1/batch_normalization/gamma/read L1/batch_normalization/beta/read'L1/batch_normalization/moving_mean/read+L1/batch_normalization/moving_variance/read*
is_training( *G
_output_shapes5
3:€€€€€€€€€::::*
epsilon%oГ:*
T0*
data_formatNHWC
a
L1/batch_normalization/ConstConst*
valueB
 *§p}?*
dtype0*
_output_shapes
: 
ѓ
1L1/conv2d/kernel/Initializer/random_uniform/shapeConst*%
valueB"         @   *#
_class
loc:@L1/conv2d/kernel*
dtype0*
_output_shapes
:
Щ
/L1/conv2d/kernel/Initializer/random_uniform/minConst*
valueB
 *ґhѕљ*#
_class
loc:@L1/conv2d/kernel*
dtype0*
_output_shapes
: 
Щ
/L1/conv2d/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *ґhѕ=*#
_class
loc:@L1/conv2d/kernel*
dtype0
щ
9L1/conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform1L1/conv2d/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:@*

seed *
T0*#
_class
loc:@L1/conv2d/kernel*
seed2 
ё
/L1/conv2d/kernel/Initializer/random_uniform/subSub/L1/conv2d/kernel/Initializer/random_uniform/max/L1/conv2d/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@L1/conv2d/kernel*
_output_shapes
: 
ш
/L1/conv2d/kernel/Initializer/random_uniform/mulMul9L1/conv2d/kernel/Initializer/random_uniform/RandomUniform/L1/conv2d/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@L1/conv2d/kernel*&
_output_shapes
:@
к
+L1/conv2d/kernel/Initializer/random_uniformAdd/L1/conv2d/kernel/Initializer/random_uniform/mul/L1/conv2d/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@L1/conv2d/kernel*&
_output_shapes
:@
є
L1/conv2d/kernel
VariableV2*
	container *
shape:@*
dtype0*&
_output_shapes
:@*
shared_name *#
_class
loc:@L1/conv2d/kernel
я
L1/conv2d/kernel/AssignAssignL1/conv2d/kernel+L1/conv2d/kernel/Initializer/random_uniform*
validate_shape(*&
_output_shapes
:@*
use_locking(*
T0*#
_class
loc:@L1/conv2d/kernel
Й
L1/conv2d/kernel/readIdentityL1/conv2d/kernel*
T0*#
_class
loc:@L1/conv2d/kernel*&
_output_shapes
:@
Р
 L1/conv2d/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    *!
_class
loc:@L1/conv2d/bias
Э
L1/conv2d/bias
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *!
_class
loc:@L1/conv2d/bias*
	container 
¬
L1/conv2d/bias/AssignAssignL1/conv2d/bias L1/conv2d/bias/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@L1/conv2d/bias*
validate_shape(*
_output_shapes
:@
w
L1/conv2d/bias/readIdentityL1/conv2d/bias*
_output_shapes
:@*
T0*!
_class
loc:@L1/conv2d/bias
h
L1/conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
А
L1/conv2d/Conv2DConv2D%L1/batch_normalization/FusedBatchNormL1/conv2d/kernel/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€@*
	dilations

Ф
L1/conv2d/BiasAddBiasAddL1/conv2d/Conv2DL1/conv2d/bias/read*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€@*
T0
c
L1/conv2d/ReluReluL1/conv2d/BiasAdd*/
_output_shapes
:€€€€€€€€€@*
T0
ј
L1/max_pooling2d/MaxPoolMaxPoolL1/conv2d/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:€€€€€€€€€@
a
L1/dropout/dropout/keep_probConst*
dtype0*
_output_shapes
: *
valueB
 *ЪЩЩ>
p
L1/dropout/dropout/ShapeShapeL1/max_pooling2d/MaxPool*
T0*
out_type0*
_output_shapes
:
j
%L1/dropout/dropout/random_uniform/minConst*
_output_shapes
: *
valueB
 *    *
dtype0
j
%L1/dropout/dropout/random_uniform/maxConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Ї
/L1/dropout/dropout/random_uniform/RandomUniformRandomUniformL1/dropout/dropout/Shape*
dtype0*
seed2 */
_output_shapes
:€€€€€€€€€@*

seed *
T0
Ы
%L1/dropout/dropout/random_uniform/subSub%L1/dropout/dropout/random_uniform/max%L1/dropout/dropout/random_uniform/min*
T0*
_output_shapes
: 
Њ
%L1/dropout/dropout/random_uniform/mulMul/L1/dropout/dropout/random_uniform/RandomUniform%L1/dropout/dropout/random_uniform/sub*/
_output_shapes
:€€€€€€€€€@*
T0
∞
!L1/dropout/dropout/random_uniformAdd%L1/dropout/dropout/random_uniform/mul%L1/dropout/dropout/random_uniform/min*/
_output_shapes
:€€€€€€€€€@*
T0
Ш
L1/dropout/dropout/addAddL1/dropout/dropout/keep_prob!L1/dropout/dropout/random_uniform*/
_output_shapes
:€€€€€€€€€@*
T0
s
L1/dropout/dropout/FloorFloorL1/dropout/dropout/add*/
_output_shapes
:€€€€€€€€€@*
T0
У
L1/dropout/dropout/divRealDivL1/max_pooling2d/MaxPoolL1/dropout/dropout/keep_prob*
T0*/
_output_shapes
:€€€€€€€€€@
Й
L1/dropout/dropout/mulMulL1/dropout/dropout/divL1/dropout/dropout/Floor*/
_output_shapes
:€€€€€€€€€@*
T0
Ђ
-L2/batch_normalization/gamma/Initializer/onesConst*
_output_shapes
:@*
valueB@*  А?*/
_class%
#!loc:@L2/batch_normalization/gamma*
dtype0
є
L2/batch_normalization/gamma
VariableV2*
shared_name */
_class%
#!loc:@L2/batch_normalization/gamma*
	container *
shape:@*
dtype0*
_output_shapes
:@
щ
#L2/batch_normalization/gamma/AssignAssignL2/batch_normalization/gamma-L2/batch_normalization/gamma/Initializer/ones*
use_locking(*
T0*/
_class%
#!loc:@L2/batch_normalization/gamma*
validate_shape(*
_output_shapes
:@
°
!L2/batch_normalization/gamma/readIdentityL2/batch_normalization/gamma*
_output_shapes
:@*
T0*/
_class%
#!loc:@L2/batch_normalization/gamma
™
-L2/batch_normalization/beta/Initializer/zerosConst*
_output_shapes
:@*
valueB@*    *.
_class$
" loc:@L2/batch_normalization/beta*
dtype0
Ј
L2/batch_normalization/beta
VariableV2*
shared_name *.
_class$
" loc:@L2/batch_normalization/beta*
	container *
shape:@*
dtype0*
_output_shapes
:@
ц
"L2/batch_normalization/beta/AssignAssignL2/batch_normalization/beta-L2/batch_normalization/beta/Initializer/zeros*
use_locking(*
T0*.
_class$
" loc:@L2/batch_normalization/beta*
validate_shape(*
_output_shapes
:@
Ю
 L2/batch_normalization/beta/readIdentityL2/batch_normalization/beta*
T0*.
_class$
" loc:@L2/batch_normalization/beta*
_output_shapes
:@
Є
4L2/batch_normalization/moving_mean/Initializer/zerosConst*
valueB@*    *5
_class+
)'loc:@L2/batch_normalization/moving_mean*
dtype0*
_output_shapes
:@
≈
"L2/batch_normalization/moving_mean
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *5
_class+
)'loc:@L2/batch_normalization/moving_mean*
	container *
shape:@
Т
)L2/batch_normalization/moving_mean/AssignAssign"L2/batch_normalization/moving_mean4L2/batch_normalization/moving_mean/Initializer/zeros*
use_locking(*
T0*5
_class+
)'loc:@L2/batch_normalization/moving_mean*
validate_shape(*
_output_shapes
:@
≥
'L2/batch_normalization/moving_mean/readIdentity"L2/batch_normalization/moving_mean*
_output_shapes
:@*
T0*5
_class+
)'loc:@L2/batch_normalization/moving_mean
њ
7L2/batch_normalization/moving_variance/Initializer/onesConst*
valueB@*  А?*9
_class/
-+loc:@L2/batch_normalization/moving_variance*
dtype0*
_output_shapes
:@
Ќ
&L2/batch_normalization/moving_variance
VariableV2*
shared_name *9
_class/
-+loc:@L2/batch_normalization/moving_variance*
	container *
shape:@*
dtype0*
_output_shapes
:@
°
-L2/batch_normalization/moving_variance/AssignAssign&L2/batch_normalization/moving_variance7L2/batch_normalization/moving_variance/Initializer/ones*
T0*9
_class/
-+loc:@L2/batch_normalization/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(
њ
+L2/batch_normalization/moving_variance/readIdentity&L2/batch_normalization/moving_variance*9
_class/
-+loc:@L2/batch_normalization/moving_variance*
_output_shapes
:@*
T0
ш
%L2/batch_normalization/FusedBatchNormFusedBatchNormL1/dropout/dropout/mul!L2/batch_normalization/gamma/read L2/batch_normalization/beta/read'L2/batch_normalization/moving_mean/read+L2/batch_normalization/moving_variance/read*
is_training( *G
_output_shapes5
3:€€€€€€€€€@:@:@:@:@*
epsilon%oГ:*
T0*
data_formatNHWC
a
L2/batch_normalization/ConstConst*
valueB
 *§p}?*
dtype0*
_output_shapes
: 
ѓ
1L2/conv2d/kernel/Initializer/random_uniform/shapeConst*%
valueB"      @   А   *#
_class
loc:@L2/conv2d/kernel*
dtype0*
_output_shapes
:
Щ
/L2/conv2d/kernel/Initializer/random_uniform/minConst*
valueB
 *п[qљ*#
_class
loc:@L2/conv2d/kernel*
dtype0*
_output_shapes
: 
Щ
/L2/conv2d/kernel/Initializer/random_uniform/maxConst*
valueB
 *п[q=*#
_class
loc:@L2/conv2d/kernel*
dtype0*
_output_shapes
: 
ъ
9L2/conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform1L2/conv2d/kernel/Initializer/random_uniform/shape*

seed *
T0*#
_class
loc:@L2/conv2d/kernel*
seed2 *
dtype0*'
_output_shapes
:@А
ё
/L2/conv2d/kernel/Initializer/random_uniform/subSub/L2/conv2d/kernel/Initializer/random_uniform/max/L2/conv2d/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@L2/conv2d/kernel*
_output_shapes
: 
щ
/L2/conv2d/kernel/Initializer/random_uniform/mulMul9L2/conv2d/kernel/Initializer/random_uniform/RandomUniform/L2/conv2d/kernel/Initializer/random_uniform/sub*'
_output_shapes
:@А*
T0*#
_class
loc:@L2/conv2d/kernel
л
+L2/conv2d/kernel/Initializer/random_uniformAdd/L2/conv2d/kernel/Initializer/random_uniform/mul/L2/conv2d/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@L2/conv2d/kernel*'
_output_shapes
:@А
ї
L2/conv2d/kernel
VariableV2*#
_class
loc:@L2/conv2d/kernel*
	container *
shape:@А*
dtype0*'
_output_shapes
:@А*
shared_name 
а
L2/conv2d/kernel/AssignAssignL2/conv2d/kernel+L2/conv2d/kernel/Initializer/random_uniform*
validate_shape(*'
_output_shapes
:@А*
use_locking(*
T0*#
_class
loc:@L2/conv2d/kernel
К
L2/conv2d/kernel/readIdentityL2/conv2d/kernel*
T0*#
_class
loc:@L2/conv2d/kernel*'
_output_shapes
:@А
Т
 L2/conv2d/bias/Initializer/zerosConst*
valueBА*    *!
_class
loc:@L2/conv2d/bias*
dtype0*
_output_shapes	
:А
Я
L2/conv2d/bias
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *!
_class
loc:@L2/conv2d/bias*
	container *
shape:А
√
L2/conv2d/bias/AssignAssignL2/conv2d/bias L2/conv2d/bias/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@L2/conv2d/bias*
validate_shape(*
_output_shapes	
:А
x
L2/conv2d/bias/readIdentityL2/conv2d/bias*
T0*!
_class
loc:@L2/conv2d/bias*
_output_shapes	
:А
h
L2/conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Б
L2/conv2d/Conv2DConv2D%L2/batch_normalization/FusedBatchNormL2/conv2d/kernel/read*
paddingSAME*0
_output_shapes
:€€€€€€€€€А*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Х
L2/conv2d/BiasAddBiasAddL2/conv2d/Conv2DL2/conv2d/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:€€€€€€€€€А
d
L2/conv2d/ReluReluL2/conv2d/BiasAdd*
T0*0
_output_shapes
:€€€€€€€€€А
Ѕ
L2/max_pooling2d/MaxPoolMaxPoolL2/conv2d/Relu*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*0
_output_shapes
:€€€€€€€€€А*
T0
a
L2/dropout/dropout/keep_probConst*
dtype0*
_output_shapes
: *
valueB
 *ЪЩЩ>
p
L2/dropout/dropout/ShapeShapeL2/max_pooling2d/MaxPool*
_output_shapes
:*
T0*
out_type0
j
%L2/dropout/dropout/random_uniform/minConst*
_output_shapes
: *
valueB
 *    *
dtype0
j
%L2/dropout/dropout/random_uniform/maxConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
ї
/L2/dropout/dropout/random_uniform/RandomUniformRandomUniformL2/dropout/dropout/Shape*
T0*
dtype0*
seed2 *0
_output_shapes
:€€€€€€€€€А*

seed 
Ы
%L2/dropout/dropout/random_uniform/subSub%L2/dropout/dropout/random_uniform/max%L2/dropout/dropout/random_uniform/min*
_output_shapes
: *
T0
њ
%L2/dropout/dropout/random_uniform/mulMul/L2/dropout/dropout/random_uniform/RandomUniform%L2/dropout/dropout/random_uniform/sub*
T0*0
_output_shapes
:€€€€€€€€€А
±
!L2/dropout/dropout/random_uniformAdd%L2/dropout/dropout/random_uniform/mul%L2/dropout/dropout/random_uniform/min*
T0*0
_output_shapes
:€€€€€€€€€А
Щ
L2/dropout/dropout/addAddL2/dropout/dropout/keep_prob!L2/dropout/dropout/random_uniform*0
_output_shapes
:€€€€€€€€€А*
T0
t
L2/dropout/dropout/FloorFloorL2/dropout/dropout/add*
T0*0
_output_shapes
:€€€€€€€€€А
Ф
L2/dropout/dropout/divRealDivL2/max_pooling2d/MaxPoolL2/dropout/dropout/keep_prob*0
_output_shapes
:€€€€€€€€€А*
T0
К
L2/dropout/dropout/mulMulL2/dropout/dropout/divL2/dropout/dropout/Floor*0
_output_shapes
:€€€€€€€€€А*
T0
±
/L2-1/batch_normalization/gamma/Initializer/onesConst*
valueBА*  А?*1
_class'
%#loc:@L2-1/batch_normalization/gamma*
dtype0*
_output_shapes	
:А
њ
L2-1/batch_normalization/gamma
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *1
_class'
%#loc:@L2-1/batch_normalization/gamma*
	container *
shape:А
В
%L2-1/batch_normalization/gamma/AssignAssignL2-1/batch_normalization/gamma/L2-1/batch_normalization/gamma/Initializer/ones*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*1
_class'
%#loc:@L2-1/batch_normalization/gamma
®
#L2-1/batch_normalization/gamma/readIdentityL2-1/batch_normalization/gamma*
T0*1
_class'
%#loc:@L2-1/batch_normalization/gamma*
_output_shapes	
:А
∞
/L2-1/batch_normalization/beta/Initializer/zerosConst*
dtype0*
_output_shapes	
:А*
valueBА*    *0
_class&
$"loc:@L2-1/batch_normalization/beta
љ
L2-1/batch_normalization/beta
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *0
_class&
$"loc:@L2-1/batch_normalization/beta*
	container *
shape:А
€
$L2-1/batch_normalization/beta/AssignAssignL2-1/batch_normalization/beta/L2-1/batch_normalization/beta/Initializer/zeros*
T0*0
_class&
$"loc:@L2-1/batch_normalization/beta*
validate_shape(*
_output_shapes	
:А*
use_locking(
•
"L2-1/batch_normalization/beta/readIdentityL2-1/batch_normalization/beta*
_output_shapes	
:А*
T0*0
_class&
$"loc:@L2-1/batch_normalization/beta
Њ
6L2-1/batch_normalization/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes	
:А*
valueBА*    *7
_class-
+)loc:@L2-1/batch_normalization/moving_mean
Ћ
$L2-1/batch_normalization/moving_mean
VariableV2*7
_class-
+)loc:@L2-1/batch_normalization/moving_mean*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name 
Ы
+L2-1/batch_normalization/moving_mean/AssignAssign$L2-1/batch_normalization/moving_mean6L2-1/batch_normalization/moving_mean/Initializer/zeros*
_output_shapes	
:А*
use_locking(*
T0*7
_class-
+)loc:@L2-1/batch_normalization/moving_mean*
validate_shape(
Ї
)L2-1/batch_normalization/moving_mean/readIdentity$L2-1/batch_normalization/moving_mean*
T0*7
_class-
+)loc:@L2-1/batch_normalization/moving_mean*
_output_shapes	
:А
≈
9L2-1/batch_normalization/moving_variance/Initializer/onesConst*
valueBА*  А?*;
_class1
/-loc:@L2-1/batch_normalization/moving_variance*
dtype0*
_output_shapes	
:А
”
(L2-1/batch_normalization/moving_variance
VariableV2*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *;
_class1
/-loc:@L2-1/batch_normalization/moving_variance
™
/L2-1/batch_normalization/moving_variance/AssignAssign(L2-1/batch_normalization/moving_variance9L2-1/batch_normalization/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*;
_class1
/-loc:@L2-1/batch_normalization/moving_variance
∆
-L2-1/batch_normalization/moving_variance/readIdentity(L2-1/batch_normalization/moving_variance*
T0*;
_class1
/-loc:@L2-1/batch_normalization/moving_variance*
_output_shapes	
:А
З
'L2-1/batch_normalization/FusedBatchNormFusedBatchNormL2/dropout/dropout/mul#L2-1/batch_normalization/gamma/read"L2-1/batch_normalization/beta/read)L2-1/batch_normalization/moving_mean/read-L2-1/batch_normalization/moving_variance/read*
epsilon%oГ:*
T0*
data_formatNHWC*
is_training( *L
_output_shapes:
8:€€€€€€€€€А:А:А:А:А
c
L2-1/batch_normalization/ConstConst*
valueB
 *§p}?*
dtype0*
_output_shapes
: 
≥
3L2-1/conv2d/kernel/Initializer/random_uniform/shapeConst*%
valueB"      А   А   *%
_class
loc:@L2-1/conv2d/kernel*
dtype0*
_output_shapes
:
Э
1L2-1/conv2d/kernel/Initializer/random_uniform/minConst*
valueB
 *мQљ*%
_class
loc:@L2-1/conv2d/kernel*
dtype0*
_output_shapes
: 
Э
1L2-1/conv2d/kernel/Initializer/random_uniform/maxConst*
valueB
 *мQ=*%
_class
loc:@L2-1/conv2d/kernel*
dtype0*
_output_shapes
: 
Б
;L2-1/conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform3L2-1/conv2d/kernel/Initializer/random_uniform/shape*(
_output_shapes
:АА*

seed *
T0*%
_class
loc:@L2-1/conv2d/kernel*
seed2 *
dtype0
ж
1L2-1/conv2d/kernel/Initializer/random_uniform/subSub1L2-1/conv2d/kernel/Initializer/random_uniform/max1L2-1/conv2d/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@L2-1/conv2d/kernel*
_output_shapes
: 
В
1L2-1/conv2d/kernel/Initializer/random_uniform/mulMul;L2-1/conv2d/kernel/Initializer/random_uniform/RandomUniform1L2-1/conv2d/kernel/Initializer/random_uniform/sub*%
_class
loc:@L2-1/conv2d/kernel*(
_output_shapes
:АА*
T0
ф
-L2-1/conv2d/kernel/Initializer/random_uniformAdd1L2-1/conv2d/kernel/Initializer/random_uniform/mul1L2-1/conv2d/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@L2-1/conv2d/kernel*(
_output_shapes
:АА
Ѕ
L2-1/conv2d/kernel
VariableV2*
dtype0*(
_output_shapes
:АА*
shared_name *%
_class
loc:@L2-1/conv2d/kernel*
	container *
shape:АА
й
L2-1/conv2d/kernel/AssignAssignL2-1/conv2d/kernel-L2-1/conv2d/kernel/Initializer/random_uniform*
use_locking(*
T0*%
_class
loc:@L2-1/conv2d/kernel*
validate_shape(*(
_output_shapes
:АА
С
L2-1/conv2d/kernel/readIdentityL2-1/conv2d/kernel*
T0*%
_class
loc:@L2-1/conv2d/kernel*(
_output_shapes
:АА
Ц
"L2-1/conv2d/bias/Initializer/zerosConst*
valueBА*    *#
_class
loc:@L2-1/conv2d/bias*
dtype0*
_output_shapes	
:А
£
L2-1/conv2d/bias
VariableV2*
_output_shapes	
:А*
shared_name *#
_class
loc:@L2-1/conv2d/bias*
	container *
shape:А*
dtype0
Ћ
L2-1/conv2d/bias/AssignAssignL2-1/conv2d/bias"L2-1/conv2d/bias/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@L2-1/conv2d/bias*
validate_shape(*
_output_shapes	
:А
~
L2-1/conv2d/bias/readIdentityL2-1/conv2d/bias*
T0*#
_class
loc:@L2-1/conv2d/bias*
_output_shapes	
:А
j
L2-1/conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
З
L2-1/conv2d/Conv2DConv2D'L2-1/batch_normalization/FusedBatchNormL2-1/conv2d/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:€€€€€€€€€А
Ы
L2-1/conv2d/BiasAddBiasAddL2-1/conv2d/Conv2DL2-1/conv2d/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:€€€€€€€€€А
h
L2-1/conv2d/ReluReluL2-1/conv2d/BiasAdd*
T0*0
_output_shapes
:€€€€€€€€€А
≈
L2-1/max_pooling2d/MaxPoolMaxPoolL2-1/conv2d/Relu*
strides
*
data_formatNHWC*
ksize
*
paddingVALID*0
_output_shapes
:€€€€€€€€€А*
T0
c
L2-1/dropout/dropout/keep_probConst*
valueB
 *ЪЩЩ>*
dtype0*
_output_shapes
: 
t
L2-1/dropout/dropout/ShapeShapeL2-1/max_pooling2d/MaxPool*
_output_shapes
:*
T0*
out_type0
l
'L2-1/dropout/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
l
'L2-1/dropout/dropout/random_uniform/maxConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
њ
1L2-1/dropout/dropout/random_uniform/RandomUniformRandomUniformL2-1/dropout/dropout/Shape*
dtype0*
seed2 *0
_output_shapes
:€€€€€€€€€А*

seed *
T0
°
'L2-1/dropout/dropout/random_uniform/subSub'L2-1/dropout/dropout/random_uniform/max'L2-1/dropout/dropout/random_uniform/min*
T0*
_output_shapes
: 
≈
'L2-1/dropout/dropout/random_uniform/mulMul1L2-1/dropout/dropout/random_uniform/RandomUniform'L2-1/dropout/dropout/random_uniform/sub*
T0*0
_output_shapes
:€€€€€€€€€А
Ј
#L2-1/dropout/dropout/random_uniformAdd'L2-1/dropout/dropout/random_uniform/mul'L2-1/dropout/dropout/random_uniform/min*
T0*0
_output_shapes
:€€€€€€€€€А
Я
L2-1/dropout/dropout/addAddL2-1/dropout/dropout/keep_prob#L2-1/dropout/dropout/random_uniform*0
_output_shapes
:€€€€€€€€€А*
T0
x
L2-1/dropout/dropout/FloorFloorL2-1/dropout/dropout/add*0
_output_shapes
:€€€€€€€€€А*
T0
Ъ
L2-1/dropout/dropout/divRealDivL2-1/max_pooling2d/MaxPoolL2-1/dropout/dropout/keep_prob*
T0*0
_output_shapes
:€€€€€€€€€А
Р
L2-1/dropout/dropout/mulMulL2-1/dropout/dropout/divL2-1/dropout/dropout/Floor*
T0*0
_output_shapes
:€€€€€€€€€А
≠
-L3/batch_normalization/gamma/Initializer/onesConst*
_output_shapes	
:А*
valueBА*  А?*/
_class%
#!loc:@L3/batch_normalization/gamma*
dtype0
ї
L3/batch_normalization/gamma
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name */
_class%
#!loc:@L3/batch_normalization/gamma*
	container *
shape:А
ъ
#L3/batch_normalization/gamma/AssignAssignL3/batch_normalization/gamma-L3/batch_normalization/gamma/Initializer/ones*
use_locking(*
T0*/
_class%
#!loc:@L3/batch_normalization/gamma*
validate_shape(*
_output_shapes	
:А
Ґ
!L3/batch_normalization/gamma/readIdentityL3/batch_normalization/gamma*/
_class%
#!loc:@L3/batch_normalization/gamma*
_output_shapes	
:А*
T0
ђ
-L3/batch_normalization/beta/Initializer/zerosConst*
valueBА*    *.
_class$
" loc:@L3/batch_normalization/beta*
dtype0*
_output_shapes	
:А
є
L3/batch_normalization/beta
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *.
_class$
" loc:@L3/batch_normalization/beta*
	container *
shape:А
ч
"L3/batch_normalization/beta/AssignAssignL3/batch_normalization/beta-L3/batch_normalization/beta/Initializer/zeros*
T0*.
_class$
" loc:@L3/batch_normalization/beta*
validate_shape(*
_output_shapes	
:А*
use_locking(
Я
 L3/batch_normalization/beta/readIdentityL3/batch_normalization/beta*
T0*.
_class$
" loc:@L3/batch_normalization/beta*
_output_shapes	
:А
Ї
4L3/batch_normalization/moving_mean/Initializer/zerosConst*
_output_shapes	
:А*
valueBА*    *5
_class+
)'loc:@L3/batch_normalization/moving_mean*
dtype0
«
"L3/batch_normalization/moving_mean
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *5
_class+
)'loc:@L3/batch_normalization/moving_mean*
	container *
shape:А
У
)L3/batch_normalization/moving_mean/AssignAssign"L3/batch_normalization/moving_mean4L3/batch_normalization/moving_mean/Initializer/zeros*
_output_shapes	
:А*
use_locking(*
T0*5
_class+
)'loc:@L3/batch_normalization/moving_mean*
validate_shape(
і
'L3/batch_normalization/moving_mean/readIdentity"L3/batch_normalization/moving_mean*
T0*5
_class+
)'loc:@L3/batch_normalization/moving_mean*
_output_shapes	
:А
Ѕ
7L3/batch_normalization/moving_variance/Initializer/onesConst*
valueBА*  А?*9
_class/
-+loc:@L3/batch_normalization/moving_variance*
dtype0*
_output_shapes	
:А
ѕ
&L3/batch_normalization/moving_variance
VariableV2*
shared_name *9
_class/
-+loc:@L3/batch_normalization/moving_variance*
	container *
shape:А*
dtype0*
_output_shapes	
:А
Ґ
-L3/batch_normalization/moving_variance/AssignAssign&L3/batch_normalization/moving_variance7L3/batch_normalization/moving_variance/Initializer/ones*9
_class/
-+loc:@L3/batch_normalization/moving_variance*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0
ј
+L3/batch_normalization/moving_variance/readIdentity&L3/batch_normalization/moving_variance*
T0*9
_class/
-+loc:@L3/batch_normalization/moving_variance*
_output_shapes	
:А
О
%L3/batch_normalization/FusedBatchNormFusedBatchNorm'L2-1/batch_normalization/FusedBatchNorm!L3/batch_normalization/gamma/read L3/batch_normalization/beta/read'L3/batch_normalization/moving_mean/read+L3/batch_normalization/moving_variance/read*
epsilon%oГ:*
T0*
data_formatNHWC*
is_training( *L
_output_shapes:
8:€€€€€€€€€А:А:А:А:А
a
L3/batch_normalization/ConstConst*
valueB
 *§p}?*
dtype0*
_output_shapes
: 
}
L3/Flatten/flatten/ShapeShape%L3/batch_normalization/FusedBatchNorm*
T0*
out_type0*
_output_shapes
:
p
&L3/Flatten/flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
r
(L3/Flatten/flatten/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
r
(L3/Flatten/flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ў
 L3/Flatten/flatten/strided_sliceStridedSliceL3/Flatten/flatten/Shape&L3/Flatten/flatten/strided_slice/stack(L3/Flatten/flatten/strided_slice/stack_1(L3/Flatten/flatten/strided_slice/stack_2*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask 
m
"L3/Flatten/flatten/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
®
 L3/Flatten/flatten/Reshape/shapePack L3/Flatten/flatten/strided_slice"L3/Flatten/flatten/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
ѓ
L3/Flatten/flatten/ReshapeReshape%L3/batch_normalization/FusedBatchNorm L3/Flatten/flatten/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А1
•
0L3/dense/kernel/Initializer/random_uniform/shapeConst*
valueB"А     *"
_class
loc:@L3/dense/kernel*
dtype0*
_output_shapes
:
Ч
.L3/dense/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *хлкЉ*"
_class
loc:@L3/dense/kernel*
dtype0
Ч
.L3/dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *хлк<*"
_class
loc:@L3/dense/kernel*
dtype0*
_output_shapes
: 
р
8L3/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform0L3/dense/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@L3/dense/kernel*
seed2 *
dtype0* 
_output_shapes
:
А1А*

seed 
Џ
.L3/dense/kernel/Initializer/random_uniform/subSub.L3/dense/kernel/Initializer/random_uniform/max.L3/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@L3/dense/kernel*
_output_shapes
: 
о
.L3/dense/kernel/Initializer/random_uniform/mulMul8L3/dense/kernel/Initializer/random_uniform/RandomUniform.L3/dense/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
А1А*
T0*"
_class
loc:@L3/dense/kernel
а
*L3/dense/kernel/Initializer/random_uniformAdd.L3/dense/kernel/Initializer/random_uniform/mul.L3/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@L3/dense/kernel* 
_output_shapes
:
А1А
Ђ
L3/dense/kernel
VariableV2*
	container *
shape:
А1А*
dtype0* 
_output_shapes
:
А1А*
shared_name *"
_class
loc:@L3/dense/kernel
’
L3/dense/kernel/AssignAssignL3/dense/kernel*L3/dense/kernel/Initializer/random_uniform*"
_class
loc:@L3/dense/kernel*
validate_shape(* 
_output_shapes
:
А1А*
use_locking(*
T0
А
L3/dense/kernel/readIdentityL3/dense/kernel*
T0*"
_class
loc:@L3/dense/kernel* 
_output_shapes
:
А1А
Ь
/L3/dense/bias/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
valueB:А* 
_class
loc:@L3/dense/bias*
dtype0
М
%L3/dense/bias/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@L3/dense/bias*
dtype0*
_output_shapes
: 
ў
L3/dense/bias/Initializer/zerosFill/L3/dense/bias/Initializer/zeros/shape_as_tensor%L3/dense/bias/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@L3/dense/bias*
_output_shapes	
:А
Э
L3/dense/bias
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name * 
_class
loc:@L3/dense/bias*
	container *
shape:А
њ
L3/dense/bias/AssignAssignL3/dense/biasL3/dense/bias/Initializer/zeros* 
_class
loc:@L3/dense/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0
u
L3/dense/bias/readIdentityL3/dense/bias*
T0* 
_class
loc:@L3/dense/bias*
_output_shapes	
:А
§
L3/dense/MatMulMatMulL3/Flatten/flatten/ReshapeL3/dense/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:€€€€€€€€€А
К
L3/dense/BiasAddBiasAddL3/dense/MatMulL3/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:€€€€€€€€€А
Z
L3/dense/ReluReluL3/dense/BiasAdd*(
_output_shapes
:€€€€€€€€€А*
T0
a
L3/dropout/IdentityIdentityL3/dense/Relu*
T0*(
_output_shapes
:€€€€€€€€€А
є
=L4/batch_normalization/gamma/Initializer/ones/shape_as_tensorConst*
valueB:А*/
_class%
#!loc:@L4/batch_normalization/gamma*
dtype0*
_output_shapes
:
©
3L4/batch_normalization/gamma/Initializer/ones/ConstConst*
valueB
 *  А?*/
_class%
#!loc:@L4/batch_normalization/gamma*
dtype0*
_output_shapes
: 
Т
-L4/batch_normalization/gamma/Initializer/onesFill=L4/batch_normalization/gamma/Initializer/ones/shape_as_tensor3L4/batch_normalization/gamma/Initializer/ones/Const*
_output_shapes	
:А*
T0*

index_type0*/
_class%
#!loc:@L4/batch_normalization/gamma
ї
L4/batch_normalization/gamma
VariableV2*/
_class%
#!loc:@L4/batch_normalization/gamma*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name 
ъ
#L4/batch_normalization/gamma/AssignAssignL4/batch_normalization/gamma-L4/batch_normalization/gamma/Initializer/ones*
use_locking(*
T0*/
_class%
#!loc:@L4/batch_normalization/gamma*
validate_shape(*
_output_shapes	
:А
Ґ
!L4/batch_normalization/gamma/readIdentityL4/batch_normalization/gamma*
T0*/
_class%
#!loc:@L4/batch_normalization/gamma*
_output_shapes	
:А
Є
=L4/batch_normalization/beta/Initializer/zeros/shape_as_tensorConst*
valueB:А*.
_class$
" loc:@L4/batch_normalization/beta*
dtype0*
_output_shapes
:
®
3L4/batch_normalization/beta/Initializer/zeros/ConstConst*
valueB
 *    *.
_class$
" loc:@L4/batch_normalization/beta*
dtype0*
_output_shapes
: 
С
-L4/batch_normalization/beta/Initializer/zerosFill=L4/batch_normalization/beta/Initializer/zeros/shape_as_tensor3L4/batch_normalization/beta/Initializer/zeros/Const*
T0*

index_type0*.
_class$
" loc:@L4/batch_normalization/beta*
_output_shapes	
:А
є
L4/batch_normalization/beta
VariableV2*.
_class$
" loc:@L4/batch_normalization/beta*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name 
ч
"L4/batch_normalization/beta/AssignAssignL4/batch_normalization/beta-L4/batch_normalization/beta/Initializer/zeros*
use_locking(*
T0*.
_class$
" loc:@L4/batch_normalization/beta*
validate_shape(*
_output_shapes	
:А
Я
 L4/batch_normalization/beta/readIdentityL4/batch_normalization/beta*.
_class$
" loc:@L4/batch_normalization/beta*
_output_shapes	
:А*
T0
∆
DL4/batch_normalization/moving_mean/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
valueB:А*5
_class+
)'loc:@L4/batch_normalization/moving_mean*
dtype0
ґ
:L4/batch_normalization/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *5
_class+
)'loc:@L4/batch_normalization/moving_mean*
dtype0*
_output_shapes
: 
≠
4L4/batch_normalization/moving_mean/Initializer/zerosFillDL4/batch_normalization/moving_mean/Initializer/zeros/shape_as_tensor:L4/batch_normalization/moving_mean/Initializer/zeros/Const*
T0*

index_type0*5
_class+
)'loc:@L4/batch_normalization/moving_mean*
_output_shapes	
:А
«
"L4/batch_normalization/moving_mean
VariableV2*5
_class+
)'loc:@L4/batch_normalization/moving_mean*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name 
У
)L4/batch_normalization/moving_mean/AssignAssign"L4/batch_normalization/moving_mean4L4/batch_normalization/moving_mean/Initializer/zeros*
T0*5
_class+
)'loc:@L4/batch_normalization/moving_mean*
validate_shape(*
_output_shapes	
:А*
use_locking(
і
'L4/batch_normalization/moving_mean/readIdentity"L4/batch_normalization/moving_mean*
T0*5
_class+
)'loc:@L4/batch_normalization/moving_mean*
_output_shapes	
:А
Ќ
GL4/batch_normalization/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:А*9
_class/
-+loc:@L4/batch_normalization/moving_variance*
dtype0*
_output_shapes
:
љ
=L4/batch_normalization/moving_variance/Initializer/ones/ConstConst*
valueB
 *  А?*9
_class/
-+loc:@L4/batch_normalization/moving_variance*
dtype0*
_output_shapes
: 
Ї
7L4/batch_normalization/moving_variance/Initializer/onesFillGL4/batch_normalization/moving_variance/Initializer/ones/shape_as_tensor=L4/batch_normalization/moving_variance/Initializer/ones/Const*
T0*

index_type0*9
_class/
-+loc:@L4/batch_normalization/moving_variance*
_output_shapes	
:А
ѕ
&L4/batch_normalization/moving_variance
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *9
_class/
-+loc:@L4/batch_normalization/moving_variance*
	container *
shape:А
Ґ
-L4/batch_normalization/moving_variance/AssignAssign&L4/batch_normalization/moving_variance7L4/batch_normalization/moving_variance/Initializer/ones*
use_locking(*
T0*9
_class/
-+loc:@L4/batch_normalization/moving_variance*
validate_shape(*
_output_shapes	
:А
ј
+L4/batch_normalization/moving_variance/readIdentity&L4/batch_normalization/moving_variance*9
_class/
-+loc:@L4/batch_normalization/moving_variance*
_output_shapes	
:А*
T0
k
&L4/batch_normalization/batchnorm/add/yConst*
valueB
 *oГ:*
dtype0*
_output_shapes
: 
¶
$L4/batch_normalization/batchnorm/addAdd+L4/batch_normalization/moving_variance/read&L4/batch_normalization/batchnorm/add/y*
_output_shapes	
:А*
T0
{
&L4/batch_normalization/batchnorm/RsqrtRsqrt$L4/batch_normalization/batchnorm/add*
_output_shapes	
:А*
T0
Ь
$L4/batch_normalization/batchnorm/mulMul&L4/batch_normalization/batchnorm/Rsqrt!L4/batch_normalization/gamma/read*
T0*
_output_shapes	
:А
Ы
&L4/batch_normalization/batchnorm/mul_1MulL3/dropout/Identity$L4/batch_normalization/batchnorm/mul*
T0*(
_output_shapes
:€€€€€€€€€А
Ґ
&L4/batch_normalization/batchnorm/mul_2Mul'L4/batch_normalization/moving_mean/read$L4/batch_normalization/batchnorm/mul*
T0*
_output_shapes	
:А
Ы
$L4/batch_normalization/batchnorm/subSub L4/batch_normalization/beta/read&L4/batch_normalization/batchnorm/mul_2*
T0*
_output_shapes	
:А
Ѓ
&L4/batch_normalization/batchnorm/add_1Add&L4/batch_normalization/batchnorm/mul_1$L4/batch_normalization/batchnorm/sub*(
_output_shapes
:€€€€€€€€€А*
T0
•
0L4/dense/kernel/Initializer/random_uniform/shapeConst*
valueB"      *"
_class
loc:@L4/dense/kernel*
dtype0*
_output_shapes
:
Ч
.L4/dense/kernel/Initializer/random_uniform/minConst*
valueB
 *М7Мљ*"
_class
loc:@L4/dense/kernel*
dtype0*
_output_shapes
: 
Ч
.L4/dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *М7М=*"
_class
loc:@L4/dense/kernel*
dtype0*
_output_shapes
: 
р
8L4/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform0L4/dense/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
АА*

seed *
T0*"
_class
loc:@L4/dense/kernel*
seed2 
Џ
.L4/dense/kernel/Initializer/random_uniform/subSub.L4/dense/kernel/Initializer/random_uniform/max.L4/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@L4/dense/kernel*
_output_shapes
: 
о
.L4/dense/kernel/Initializer/random_uniform/mulMul8L4/dense/kernel/Initializer/random_uniform/RandomUniform.L4/dense/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@L4/dense/kernel* 
_output_shapes
:
АА
а
*L4/dense/kernel/Initializer/random_uniformAdd.L4/dense/kernel/Initializer/random_uniform/mul.L4/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@L4/dense/kernel* 
_output_shapes
:
АА
Ђ
L4/dense/kernel
VariableV2*
shared_name *"
_class
loc:@L4/dense/kernel*
	container *
shape:
АА*
dtype0* 
_output_shapes
:
АА
’
L4/dense/kernel/AssignAssignL4/dense/kernel*L4/dense/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@L4/dense/kernel*
validate_shape(* 
_output_shapes
:
АА
А
L4/dense/kernel/readIdentityL4/dense/kernel* 
_output_shapes
:
АА*
T0*"
_class
loc:@L4/dense/kernel
Р
L4/dense/bias/Initializer/zerosConst*
valueBА*    * 
_class
loc:@L4/dense/bias*
dtype0*
_output_shapes	
:А
Э
L4/dense/bias
VariableV2*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name * 
_class
loc:@L4/dense/bias
њ
L4/dense/bias/AssignAssignL4/dense/biasL4/dense/bias/Initializer/zeros*
_output_shapes	
:А*
use_locking(*
T0* 
_class
loc:@L4/dense/bias*
validate_shape(
u
L4/dense/bias/readIdentityL4/dense/bias*
T0* 
_class
loc:@L4/dense/bias*
_output_shapes	
:А
∞
L4/dense/MatMulMatMul&L4/batch_normalization/batchnorm/add_1L4/dense/kernel/read*
T0*
transpose_a( *(
_output_shapes
:€€€€€€€€€А*
transpose_b( 
К
L4/dense/BiasAddBiasAddL4/dense/MatMulL4/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:€€€€€€€€€А
Z
L4/dense/ReluReluL4/dense/BiasAdd*(
_output_shapes
:€€€€€€€€€А*
T0
•
0LF/dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"   
   *"
_class
loc:@LF/dense/kernel
Ч
.LF/dense/kernel/Initializer/random_uniform/minConst*
valueB
 *Ў Њ*"
_class
loc:@LF/dense/kernel*
dtype0*
_output_shapes
: 
Ч
.LF/dense/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *Ў >*"
_class
loc:@LF/dense/kernel*
dtype0
п
8LF/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform0LF/dense/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*
_output_shapes
:	А
*

seed *
T0*"
_class
loc:@LF/dense/kernel
Џ
.LF/dense/kernel/Initializer/random_uniform/subSub.LF/dense/kernel/Initializer/random_uniform/max.LF/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@LF/dense/kernel*
_output_shapes
: 
н
.LF/dense/kernel/Initializer/random_uniform/mulMul8LF/dense/kernel/Initializer/random_uniform/RandomUniform.LF/dense/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@LF/dense/kernel*
_output_shapes
:	А

я
*LF/dense/kernel/Initializer/random_uniformAdd.LF/dense/kernel/Initializer/random_uniform/mul.LF/dense/kernel/Initializer/random_uniform/min*
_output_shapes
:	А
*
T0*"
_class
loc:@LF/dense/kernel
©
LF/dense/kernel
VariableV2*
shape:	А
*
dtype0*
_output_shapes
:	А
*
shared_name *"
_class
loc:@LF/dense/kernel*
	container 
‘
LF/dense/kernel/AssignAssignLF/dense/kernel*LF/dense/kernel/Initializer/random_uniform*
_output_shapes
:	А
*
use_locking(*
T0*"
_class
loc:@LF/dense/kernel*
validate_shape(

LF/dense/kernel/readIdentityLF/dense/kernel*
_output_shapes
:	А
*
T0*"
_class
loc:@LF/dense/kernel
О
LF/dense/bias/Initializer/zerosConst*
valueB
*    * 
_class
loc:@LF/dense/bias*
dtype0*
_output_shapes
:

Ы
LF/dense/bias
VariableV2*
	container *
shape:
*
dtype0*
_output_shapes
:
*
shared_name * 
_class
loc:@LF/dense/bias
Њ
LF/dense/bias/AssignAssignLF/dense/biasLF/dense/bias/Initializer/zeros*
_output_shapes
:
*
use_locking(*
T0* 
_class
loc:@LF/dense/bias*
validate_shape(
t
LF/dense/bias/readIdentityLF/dense/bias*
T0* 
_class
loc:@LF/dense/bias*
_output_shapes
:

Ц
LF/dense/MatMulMatMulL4/dense/ReluLF/dense/kernel/read*
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€
*
transpose_b( 
Й
LF/dense/BiasAddBiasAddLF/dense/MatMulLF/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€

h
&softmax_cross_entropy_with_logits/RankConst*
dtype0*
_output_shapes
: *
value	B :
w
'softmax_cross_entropy_with_logits/ShapeShapeLF/dense/BiasAdd*
_output_shapes
:*
T0*
out_type0
j
(softmax_cross_entropy_with_logits/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
y
)softmax_cross_entropy_with_logits/Shape_1ShapeLF/dense/BiasAdd*
T0*
out_type0*
_output_shapes
:
i
'softmax_cross_entropy_with_logits/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
†
%softmax_cross_entropy_with_logits/SubSub(softmax_cross_entropy_with_logits/Rank_1'softmax_cross_entropy_with_logits/Sub/y*
_output_shapes
: *
T0
Ц
-softmax_cross_entropy_with_logits/Slice/beginPack%softmax_cross_entropy_with_logits/Sub*
T0*

axis *
N*
_output_shapes
:
v
,softmax_cross_entropy_with_logits/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
к
'softmax_cross_entropy_with_logits/SliceSlice)softmax_cross_entropy_with_logits/Shape_1-softmax_cross_entropy_with_logits/Slice/begin,softmax_cross_entropy_with_logits/Slice/size*
T0*
Index0*
_output_shapes
:
Д
1softmax_cross_entropy_with_logits/concat/values_0Const*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
o
-softmax_cross_entropy_with_logits/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
щ
(softmax_cross_entropy_with_logits/concatConcatV21softmax_cross_entropy_with_logits/concat/values_0'softmax_cross_entropy_with_logits/Slice-softmax_cross_entropy_with_logits/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
є
)softmax_cross_entropy_with_logits/ReshapeReshapeLF/dense/BiasAdd(softmax_cross_entropy_with_logits/concat*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
j
(softmax_cross_entropy_with_logits/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
p
)softmax_cross_entropy_with_logits/Shape_2Shapesplit_1*
T0*
out_type0*
_output_shapes
:
k
)softmax_cross_entropy_with_logits/Sub_1/yConst*
_output_shapes
: *
value	B :*
dtype0
§
'softmax_cross_entropy_with_logits/Sub_1Sub(softmax_cross_entropy_with_logits/Rank_2)softmax_cross_entropy_with_logits/Sub_1/y*
T0*
_output_shapes
: 
Ъ
/softmax_cross_entropy_with_logits/Slice_1/beginPack'softmax_cross_entropy_with_logits/Sub_1*

axis *
N*
_output_shapes
:*
T0
x
.softmax_cross_entropy_with_logits/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
р
)softmax_cross_entropy_with_logits/Slice_1Slice)softmax_cross_entropy_with_logits/Shape_2/softmax_cross_entropy_with_logits/Slice_1/begin.softmax_cross_entropy_with_logits/Slice_1/size*
T0*
Index0*
_output_shapes
:
Ж
3softmax_cross_entropy_with_logits/concat_1/values_0Const*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
q
/softmax_cross_entropy_with_logits/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Б
*softmax_cross_entropy_with_logits/concat_1ConcatV23softmax_cross_entropy_with_logits/concat_1/values_0)softmax_cross_entropy_with_logits/Slice_1/softmax_cross_entropy_with_logits/concat_1/axis*
N*
_output_shapes
:*

Tidx0*
T0
і
+softmax_cross_entropy_with_logits/Reshape_1Reshapesplit_1*softmax_cross_entropy_with_logits/concat_1*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
д
!softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits)softmax_cross_entropy_with_logits/Reshape+softmax_cross_entropy_with_logits/Reshape_1*?
_output_shapes-
+:€€€€€€€€€:€€€€€€€€€€€€€€€€€€*
T0
k
)softmax_cross_entropy_with_logits/Sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
Ґ
'softmax_cross_entropy_with_logits/Sub_2Sub&softmax_cross_entropy_with_logits/Rank)softmax_cross_entropy_with_logits/Sub_2/y*
T0*
_output_shapes
: 
y
/softmax_cross_entropy_with_logits/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB: 
Щ
.softmax_cross_entropy_with_logits/Slice_2/sizePack'softmax_cross_entropy_with_logits/Sub_2*
T0*

axis *
N*
_output_shapes
:
о
)softmax_cross_entropy_with_logits/Slice_2Slice'softmax_cross_entropy_with_logits/Shape/softmax_cross_entropy_with_logits/Slice_2/begin.softmax_cross_entropy_with_logits/Slice_2/size*
T0*
Index0*
_output_shapes
:
ј
+softmax_cross_entropy_with_logits/Reshape_2Reshape!softmax_cross_entropy_with_logits)softmax_cross_entropy_with_logits/Slice_2*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
Б
ArgMaxArgMaxLF/dense/BiasAddArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:€€€€€€€€€
T
ArgMax_1/dimensionConst*
_output_shapes
: *
value	B :*
dtype0
|
ArgMax_1ArgMaxsplit_1ArgMax_1/dimension*
output_type0	*#
_output_shapes
:€€€€€€€€€*

Tidx0*
T0
N
EqualEqualArgMaxArgMax_1*#
_output_shapes
:€€€€€€€€€*
T0	
`
CastCastEqual*

DstT0*#
_output_shapes
:€€€€€€€€€*

SrcT0
*
Truncate( 
Q
Const_2Const*
valueB: *
dtype0*
_output_shapes
:
Y
MeanMeanCastConst_2*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
л
'L1_1/batch_normalization/FusedBatchNormFusedBatchNormsplit:1!L1/batch_normalization/gamma/read L1/batch_normalization/beta/read'L1/batch_normalization/moving_mean/read+L1/batch_normalization/moving_variance/read*
T0*
data_formatNHWC*
is_training( *G
_output_shapes5
3:€€€€€€€€€::::*
epsilon%oГ:
c
L1_1/batch_normalization/ConstConst*
valueB
 *§p}?*
dtype0*
_output_shapes
: 
j
L1_1/conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Д
L1_1/conv2d/Conv2DConv2D'L1_1/batch_normalization/FusedBatchNormL1/conv2d/kernel/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€@*
	dilations
*
T0
Ш
L1_1/conv2d/BiasAddBiasAddL1_1/conv2d/Conv2DL1/conv2d/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€@
g
L1_1/conv2d/ReluReluL1_1/conv2d/BiasAdd*
T0*/
_output_shapes
:€€€€€€€€€@
ƒ
L1_1/max_pooling2d/MaxPoolMaxPoolL1_1/conv2d/Relu*
paddingVALID*/
_output_shapes
:€€€€€€€€€@*
T0*
strides
*
data_formatNHWC*
ksize

c
L1_1/dropout/dropout/keep_probConst*
valueB
 *ЪЩЩ>*
dtype0*
_output_shapes
: 
t
L1_1/dropout/dropout/ShapeShapeL1_1/max_pooling2d/MaxPool*
T0*
out_type0*
_output_shapes
:
l
'L1_1/dropout/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
l
'L1_1/dropout/dropout/random_uniform/maxConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Њ
1L1_1/dropout/dropout/random_uniform/RandomUniformRandomUniformL1_1/dropout/dropout/Shape*
dtype0*
seed2 */
_output_shapes
:€€€€€€€€€@*

seed *
T0
°
'L1_1/dropout/dropout/random_uniform/subSub'L1_1/dropout/dropout/random_uniform/max'L1_1/dropout/dropout/random_uniform/min*
T0*
_output_shapes
: 
ƒ
'L1_1/dropout/dropout/random_uniform/mulMul1L1_1/dropout/dropout/random_uniform/RandomUniform'L1_1/dropout/dropout/random_uniform/sub*
T0*/
_output_shapes
:€€€€€€€€€@
ґ
#L1_1/dropout/dropout/random_uniformAdd'L1_1/dropout/dropout/random_uniform/mul'L1_1/dropout/dropout/random_uniform/min*
T0*/
_output_shapes
:€€€€€€€€€@
Ю
L1_1/dropout/dropout/addAddL1_1/dropout/dropout/keep_prob#L1_1/dropout/dropout/random_uniform*/
_output_shapes
:€€€€€€€€€@*
T0
w
L1_1/dropout/dropout/FloorFloorL1_1/dropout/dropout/add*
T0*/
_output_shapes
:€€€€€€€€€@
Щ
L1_1/dropout/dropout/divRealDivL1_1/max_pooling2d/MaxPoolL1_1/dropout/dropout/keep_prob*
T0*/
_output_shapes
:€€€€€€€€€@
П
L1_1/dropout/dropout/mulMulL1_1/dropout/dropout/divL1_1/dropout/dropout/Floor*
T0*/
_output_shapes
:€€€€€€€€€@
ь
'L2_1/batch_normalization/FusedBatchNormFusedBatchNormL1_1/dropout/dropout/mul!L2/batch_normalization/gamma/read L2/batch_normalization/beta/read'L2/batch_normalization/moving_mean/read+L2/batch_normalization/moving_variance/read*
epsilon%oГ:*
T0*
data_formatNHWC*
is_training( *G
_output_shapes5
3:€€€€€€€€€@:@:@:@:@
c
L2_1/batch_normalization/ConstConst*
valueB
 *§p}?*
dtype0*
_output_shapes
: 
j
L2_1/conv2d/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
Е
L2_1/conv2d/Conv2DConv2D'L2_1/batch_normalization/FusedBatchNormL2/conv2d/kernel/read*
paddingSAME*0
_output_shapes
:€€€€€€€€€А*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Щ
L2_1/conv2d/BiasAddBiasAddL2_1/conv2d/Conv2DL2/conv2d/bias/read*
data_formatNHWC*0
_output_shapes
:€€€€€€€€€А*
T0
h
L2_1/conv2d/ReluReluL2_1/conv2d/BiasAdd*
T0*0
_output_shapes
:€€€€€€€€€А
≈
L2_1/max_pooling2d/MaxPoolMaxPoolL2_1/conv2d/Relu*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingVALID*0
_output_shapes
:€€€€€€€€€А
c
L2_1/dropout/dropout/keep_probConst*
valueB
 *ЪЩЩ>*
dtype0*
_output_shapes
: 
t
L2_1/dropout/dropout/ShapeShapeL2_1/max_pooling2d/MaxPool*
_output_shapes
:*
T0*
out_type0
l
'L2_1/dropout/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
l
'L2_1/dropout/dropout/random_uniform/maxConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
њ
1L2_1/dropout/dropout/random_uniform/RandomUniformRandomUniformL2_1/dropout/dropout/Shape*
T0*
dtype0*
seed2 *0
_output_shapes
:€€€€€€€€€А*

seed 
°
'L2_1/dropout/dropout/random_uniform/subSub'L2_1/dropout/dropout/random_uniform/max'L2_1/dropout/dropout/random_uniform/min*
T0*
_output_shapes
: 
≈
'L2_1/dropout/dropout/random_uniform/mulMul1L2_1/dropout/dropout/random_uniform/RandomUniform'L2_1/dropout/dropout/random_uniform/sub*
T0*0
_output_shapes
:€€€€€€€€€А
Ј
#L2_1/dropout/dropout/random_uniformAdd'L2_1/dropout/dropout/random_uniform/mul'L2_1/dropout/dropout/random_uniform/min*0
_output_shapes
:€€€€€€€€€А*
T0
Я
L2_1/dropout/dropout/addAddL2_1/dropout/dropout/keep_prob#L2_1/dropout/dropout/random_uniform*
T0*0
_output_shapes
:€€€€€€€€€А
x
L2_1/dropout/dropout/FloorFloorL2_1/dropout/dropout/add*
T0*0
_output_shapes
:€€€€€€€€€А
Ъ
L2_1/dropout/dropout/divRealDivL2_1/max_pooling2d/MaxPoolL2_1/dropout/dropout/keep_prob*
T0*0
_output_shapes
:€€€€€€€€€А
Р
L2_1/dropout/dropout/mulMulL2_1/dropout/dropout/divL2_1/dropout/dropout/Floor*
T0*0
_output_shapes
:€€€€€€€€€А
Л
)L2-1_1/batch_normalization/FusedBatchNormFusedBatchNormL2_1/dropout/dropout/mul#L2-1/batch_normalization/gamma/read"L2-1/batch_normalization/beta/read)L2-1/batch_normalization/moving_mean/read-L2-1/batch_normalization/moving_variance/read*
epsilon%oГ:*
T0*
data_formatNHWC*
is_training( *L
_output_shapes:
8:€€€€€€€€€А:А:А:А:А
e
 L2-1_1/batch_normalization/ConstConst*
valueB
 *§p}?*
dtype0*
_output_shapes
: 
l
L2-1_1/conv2d/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0
Л
L2-1_1/conv2d/Conv2DConv2D)L2-1_1/batch_normalization/FusedBatchNormL2-1/conv2d/kernel/read*
paddingSAME*0
_output_shapes
:€€€€€€€€€А*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Я
L2-1_1/conv2d/BiasAddBiasAddL2-1_1/conv2d/Conv2DL2-1/conv2d/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:€€€€€€€€€А
l
L2-1_1/conv2d/ReluReluL2-1_1/conv2d/BiasAdd*0
_output_shapes
:€€€€€€€€€А*
T0
…
L2-1_1/max_pooling2d/MaxPoolMaxPoolL2-1_1/conv2d/Relu*
ksize
*
paddingVALID*0
_output_shapes
:€€€€€€€€€А*
T0*
data_formatNHWC*
strides

e
 L2-1_1/dropout/dropout/keep_probConst*
valueB
 *ЪЩЩ>*
dtype0*
_output_shapes
: 
x
L2-1_1/dropout/dropout/ShapeShapeL2-1_1/max_pooling2d/MaxPool*
out_type0*
_output_shapes
:*
T0
n
)L2-1_1/dropout/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n
)L2-1_1/dropout/dropout/random_uniform/maxConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
√
3L2-1_1/dropout/dropout/random_uniform/RandomUniformRandomUniformL2-1_1/dropout/dropout/Shape*
seed2 *0
_output_shapes
:€€€€€€€€€А*

seed *
T0*
dtype0
І
)L2-1_1/dropout/dropout/random_uniform/subSub)L2-1_1/dropout/dropout/random_uniform/max)L2-1_1/dropout/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ћ
)L2-1_1/dropout/dropout/random_uniform/mulMul3L2-1_1/dropout/dropout/random_uniform/RandomUniform)L2-1_1/dropout/dropout/random_uniform/sub*0
_output_shapes
:€€€€€€€€€А*
T0
љ
%L2-1_1/dropout/dropout/random_uniformAdd)L2-1_1/dropout/dropout/random_uniform/mul)L2-1_1/dropout/dropout/random_uniform/min*
T0*0
_output_shapes
:€€€€€€€€€А
•
L2-1_1/dropout/dropout/addAdd L2-1_1/dropout/dropout/keep_prob%L2-1_1/dropout/dropout/random_uniform*
T0*0
_output_shapes
:€€€€€€€€€А
|
L2-1_1/dropout/dropout/FloorFloorL2-1_1/dropout/dropout/add*
T0*0
_output_shapes
:€€€€€€€€€А
†
L2-1_1/dropout/dropout/divRealDivL2-1_1/max_pooling2d/MaxPool L2-1_1/dropout/dropout/keep_prob*
T0*0
_output_shapes
:€€€€€€€€€А
Ц
L2-1_1/dropout/dropout/mulMulL2-1_1/dropout/dropout/divL2-1_1/dropout/dropout/Floor*
T0*0
_output_shapes
:€€€€€€€€€А
Т
'L3_1/batch_normalization/FusedBatchNormFusedBatchNorm)L2-1_1/batch_normalization/FusedBatchNorm!L3/batch_normalization/gamma/read L3/batch_normalization/beta/read'L3/batch_normalization/moving_mean/read+L3/batch_normalization/moving_variance/read*
T0*
data_formatNHWC*
is_training( *L
_output_shapes:
8:€€€€€€€€€А:А:А:А:А*
epsilon%oГ:
c
L3_1/batch_normalization/ConstConst*
valueB
 *§p}?*
dtype0*
_output_shapes
: 
Б
L3_1/Flatten/flatten/ShapeShape'L3_1/batch_normalization/FusedBatchNorm*
_output_shapes
:*
T0*
out_type0
r
(L3_1/Flatten/flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
t
*L3_1/Flatten/flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*L3_1/Flatten/flatten/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
в
"L3_1/Flatten/flatten/strided_sliceStridedSliceL3_1/Flatten/flatten/Shape(L3_1/Flatten/flatten/strided_slice/stack*L3_1/Flatten/flatten/strided_slice/stack_1*L3_1/Flatten/flatten/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
o
$L3_1/Flatten/flatten/Reshape/shape/1Const*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Ѓ
"L3_1/Flatten/flatten/Reshape/shapePack"L3_1/Flatten/flatten/strided_slice$L3_1/Flatten/flatten/Reshape/shape/1*
N*
_output_shapes
:*
T0*

axis 
µ
L3_1/Flatten/flatten/ReshapeReshape'L3_1/batch_normalization/FusedBatchNorm"L3_1/Flatten/flatten/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А1
®
L3_1/dense/MatMulMatMulL3_1/Flatten/flatten/ReshapeL3/dense/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:€€€€€€€€€А
О
L3_1/dense/BiasAddBiasAddL3_1/dense/MatMulL3/dense/bias/read*
data_formatNHWC*(
_output_shapes
:€€€€€€€€€А*
T0
^
L3_1/dense/ReluReluL3_1/dense/BiasAdd*(
_output_shapes
:€€€€€€€€€А*
T0
e
L3_1/dropout/IdentityIdentityL3_1/dense/Relu*
T0*(
_output_shapes
:€€€€€€€€€А
m
(L4_1/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
valueB
 *oГ:*
dtype0
™
&L4_1/batch_normalization/batchnorm/addAdd+L4/batch_normalization/moving_variance/read(L4_1/batch_normalization/batchnorm/add/y*
T0*
_output_shapes	
:А

(L4_1/batch_normalization/batchnorm/RsqrtRsqrt&L4_1/batch_normalization/batchnorm/add*
_output_shapes	
:А*
T0
†
&L4_1/batch_normalization/batchnorm/mulMul(L4_1/batch_normalization/batchnorm/Rsqrt!L4/batch_normalization/gamma/read*
T0*
_output_shapes	
:А
°
(L4_1/batch_normalization/batchnorm/mul_1MulL3_1/dropout/Identity&L4_1/batch_normalization/batchnorm/mul*
T0*(
_output_shapes
:€€€€€€€€€А
¶
(L4_1/batch_normalization/batchnorm/mul_2Mul'L4/batch_normalization/moving_mean/read&L4_1/batch_normalization/batchnorm/mul*
_output_shapes	
:А*
T0
Я
&L4_1/batch_normalization/batchnorm/subSub L4/batch_normalization/beta/read(L4_1/batch_normalization/batchnorm/mul_2*
_output_shapes	
:А*
T0
і
(L4_1/batch_normalization/batchnorm/add_1Add(L4_1/batch_normalization/batchnorm/mul_1&L4_1/batch_normalization/batchnorm/sub*
T0*(
_output_shapes
:€€€€€€€€€А
і
L4_1/dense/MatMulMatMul(L4_1/batch_normalization/batchnorm/add_1L4/dense/kernel/read*
transpose_a( *(
_output_shapes
:€€€€€€€€€А*
transpose_b( *
T0
О
L4_1/dense/BiasAddBiasAddL4_1/dense/MatMulL4/dense/bias/read*
data_formatNHWC*(
_output_shapes
:€€€€€€€€€А*
T0
^
L4_1/dense/ReluReluL4_1/dense/BiasAdd*
T0*(
_output_shapes
:€€€€€€€€€А
Ъ
LF_1/dense/MatMulMatMulL4_1/dense/ReluLF/dense/kernel/read*
transpose_a( *'
_output_shapes
:€€€€€€€€€
*
transpose_b( *
T0
Н
LF_1/dense/BiasAddBiasAddLF_1/dense/MatMulLF/dense/bias/read*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€
*
T0
j
(softmax_cross_entropy_with_logits_1/RankConst*
dtype0*
_output_shapes
: *
value	B :
{
)softmax_cross_entropy_with_logits_1/ShapeShapeLF_1/dense/BiasAdd*
_output_shapes
:*
T0*
out_type0
l
*softmax_cross_entropy_with_logits_1/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
}
+softmax_cross_entropy_with_logits_1/Shape_1ShapeLF_1/dense/BiasAdd*
out_type0*
_output_shapes
:*
T0
k
)softmax_cross_entropy_with_logits_1/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
¶
'softmax_cross_entropy_with_logits_1/SubSub*softmax_cross_entropy_with_logits_1/Rank_1)softmax_cross_entropy_with_logits_1/Sub/y*
_output_shapes
: *
T0
Ъ
/softmax_cross_entropy_with_logits_1/Slice/beginPack'softmax_cross_entropy_with_logits_1/Sub*
T0*

axis *
N*
_output_shapes
:
x
.softmax_cross_entropy_with_logits_1/Slice/sizeConst*
_output_shapes
:*
valueB:*
dtype0
т
)softmax_cross_entropy_with_logits_1/SliceSlice+softmax_cross_entropy_with_logits_1/Shape_1/softmax_cross_entropy_with_logits_1/Slice/begin.softmax_cross_entropy_with_logits_1/Slice/size*
_output_shapes
:*
T0*
Index0
Ж
3softmax_cross_entropy_with_logits_1/concat/values_0Const*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
q
/softmax_cross_entropy_with_logits_1/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Б
*softmax_cross_entropy_with_logits_1/concatConcatV23softmax_cross_entropy_with_logits_1/concat/values_0)softmax_cross_entropy_with_logits_1/Slice/softmax_cross_entropy_with_logits_1/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
њ
+softmax_cross_entropy_with_logits_1/ReshapeReshapeLF_1/dense/BiasAdd*softmax_cross_entropy_with_logits_1/concat*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
l
*softmax_cross_entropy_with_logits_1/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
t
+softmax_cross_entropy_with_logits_1/Shape_2Shape	split_1:1*
out_type0*
_output_shapes
:*
T0
m
+softmax_cross_entropy_with_logits_1/Sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
™
)softmax_cross_entropy_with_logits_1/Sub_1Sub*softmax_cross_entropy_with_logits_1/Rank_2+softmax_cross_entropy_with_logits_1/Sub_1/y*
_output_shapes
: *
T0
Ю
1softmax_cross_entropy_with_logits_1/Slice_1/beginPack)softmax_cross_entropy_with_logits_1/Sub_1*
T0*

axis *
N*
_output_shapes
:
z
0softmax_cross_entropy_with_logits_1/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
ш
+softmax_cross_entropy_with_logits_1/Slice_1Slice+softmax_cross_entropy_with_logits_1/Shape_21softmax_cross_entropy_with_logits_1/Slice_1/begin0softmax_cross_entropy_with_logits_1/Slice_1/size*
T0*
Index0*
_output_shapes
:
И
5softmax_cross_entropy_with_logits_1/concat_1/values_0Const*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
s
1softmax_cross_entropy_with_logits_1/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Й
,softmax_cross_entropy_with_logits_1/concat_1ConcatV25softmax_cross_entropy_with_logits_1/concat_1/values_0+softmax_cross_entropy_with_logits_1/Slice_11softmax_cross_entropy_with_logits_1/concat_1/axis*
N*
_output_shapes
:*

Tidx0*
T0
Ї
-softmax_cross_entropy_with_logits_1/Reshape_1Reshape	split_1:1,softmax_cross_entropy_with_logits_1/concat_1*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
к
#softmax_cross_entropy_with_logits_1SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_1/Reshape-softmax_cross_entropy_with_logits_1/Reshape_1*?
_output_shapes-
+:€€€€€€€€€:€€€€€€€€€€€€€€€€€€*
T0
m
+softmax_cross_entropy_with_logits_1/Sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
®
)softmax_cross_entropy_with_logits_1/Sub_2Sub(softmax_cross_entropy_with_logits_1/Rank+softmax_cross_entropy_with_logits_1/Sub_2/y*
_output_shapes
: *
T0
{
1softmax_cross_entropy_with_logits_1/Slice_2/beginConst*
valueB: *
dtype0*
_output_shapes
:
Э
0softmax_cross_entropy_with_logits_1/Slice_2/sizePack)softmax_cross_entropy_with_logits_1/Sub_2*
_output_shapes
:*
T0*

axis *
N
ц
+softmax_cross_entropy_with_logits_1/Slice_2Slice)softmax_cross_entropy_with_logits_1/Shape1softmax_cross_entropy_with_logits_1/Slice_2/begin0softmax_cross_entropy_with_logits_1/Slice_2/size*
T0*
Index0*
_output_shapes
:
∆
-softmax_cross_entropy_with_logits_1/Reshape_2Reshape#softmax_cross_entropy_with_logits_1+softmax_cross_entropy_with_logits_1/Slice_2*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
T
ArgMax_2/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
З
ArgMax_2ArgMaxLF_1/dense/BiasAddArgMax_2/dimension*
T0*
output_type0	*#
_output_shapes
:€€€€€€€€€*

Tidx0
T
ArgMax_3/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
~
ArgMax_3ArgMax	split_1:1ArgMax_3/dimension*
T0*
output_type0	*#
_output_shapes
:€€€€€€€€€*

Tidx0
R
Equal_1EqualArgMax_2ArgMax_3*
T0	*#
_output_shapes
:€€€€€€€€€
d
Cast_1CastEqual_1*

SrcT0
*
Truncate( *

DstT0*#
_output_shapes
:€€€€€€€€€
Q
Const_3Const*
valueB: *
dtype0*
_output_shapes
:
]
Mean_1MeanCast_1Const_3*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
л
'L1_2/batch_normalization/FusedBatchNormFusedBatchNormsplit:2!L1/batch_normalization/gamma/read L1/batch_normalization/beta/read'L1/batch_normalization/moving_mean/read+L1/batch_normalization/moving_variance/read*
epsilon%oГ:*
T0*
data_formatNHWC*
is_training( *G
_output_shapes5
3:€€€€€€€€€::::
c
L1_2/batch_normalization/ConstConst*
valueB
 *§p}?*
dtype0*
_output_shapes
: 
j
L1_2/conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Д
L1_2/conv2d/Conv2DConv2D'L1_2/batch_normalization/FusedBatchNormL1/conv2d/kernel/read*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€@*
	dilations
*
T0
Ш
L1_2/conv2d/BiasAddBiasAddL1_2/conv2d/Conv2DL1/conv2d/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€@
g
L1_2/conv2d/ReluReluL1_2/conv2d/BiasAdd*/
_output_shapes
:€€€€€€€€€@*
T0
ƒ
L1_2/max_pooling2d/MaxPoolMaxPoolL1_2/conv2d/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:€€€€€€€€€@
c
L1_2/dropout/dropout/keep_probConst*
valueB
 *ЪЩЩ>*
dtype0*
_output_shapes
: 
t
L1_2/dropout/dropout/ShapeShapeL1_2/max_pooling2d/MaxPool*
T0*
out_type0*
_output_shapes
:
l
'L1_2/dropout/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
l
'L1_2/dropout/dropout/random_uniform/maxConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Њ
1L1_2/dropout/dropout/random_uniform/RandomUniformRandomUniformL1_2/dropout/dropout/Shape*
dtype0*
seed2 */
_output_shapes
:€€€€€€€€€@*

seed *
T0
°
'L1_2/dropout/dropout/random_uniform/subSub'L1_2/dropout/dropout/random_uniform/max'L1_2/dropout/dropout/random_uniform/min*
_output_shapes
: *
T0
ƒ
'L1_2/dropout/dropout/random_uniform/mulMul1L1_2/dropout/dropout/random_uniform/RandomUniform'L1_2/dropout/dropout/random_uniform/sub*/
_output_shapes
:€€€€€€€€€@*
T0
ґ
#L1_2/dropout/dropout/random_uniformAdd'L1_2/dropout/dropout/random_uniform/mul'L1_2/dropout/dropout/random_uniform/min*
T0*/
_output_shapes
:€€€€€€€€€@
Ю
L1_2/dropout/dropout/addAddL1_2/dropout/dropout/keep_prob#L1_2/dropout/dropout/random_uniform*/
_output_shapes
:€€€€€€€€€@*
T0
w
L1_2/dropout/dropout/FloorFloorL1_2/dropout/dropout/add*
T0*/
_output_shapes
:€€€€€€€€€@
Щ
L1_2/dropout/dropout/divRealDivL1_2/max_pooling2d/MaxPoolL1_2/dropout/dropout/keep_prob*
T0*/
_output_shapes
:€€€€€€€€€@
П
L1_2/dropout/dropout/mulMulL1_2/dropout/dropout/divL1_2/dropout/dropout/Floor*
T0*/
_output_shapes
:€€€€€€€€€@
ь
'L2_2/batch_normalization/FusedBatchNormFusedBatchNormL1_2/dropout/dropout/mul!L2/batch_normalization/gamma/read L2/batch_normalization/beta/read'L2/batch_normalization/moving_mean/read+L2/batch_normalization/moving_variance/read*
data_formatNHWC*
is_training( *G
_output_shapes5
3:€€€€€€€€€@:@:@:@:@*
epsilon%oГ:*
T0
c
L2_2/batch_normalization/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *§p}?
j
L2_2/conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Е
L2_2/conv2d/Conv2DConv2D'L2_2/batch_normalization/FusedBatchNormL2/conv2d/kernel/read*0
_output_shapes
:€€€€€€€€€А*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
Щ
L2_2/conv2d/BiasAddBiasAddL2_2/conv2d/Conv2DL2/conv2d/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:€€€€€€€€€А
h
L2_2/conv2d/ReluReluL2_2/conv2d/BiasAdd*
T0*0
_output_shapes
:€€€€€€€€€А
≈
L2_2/max_pooling2d/MaxPoolMaxPoolL2_2/conv2d/Relu*
ksize
*
paddingVALID*0
_output_shapes
:€€€€€€€€€А*
T0*
data_formatNHWC*
strides

c
L2_2/dropout/dropout/keep_probConst*
dtype0*
_output_shapes
: *
valueB
 *ЪЩЩ>
t
L2_2/dropout/dropout/ShapeShapeL2_2/max_pooling2d/MaxPool*
T0*
out_type0*
_output_shapes
:
l
'L2_2/dropout/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
l
'L2_2/dropout/dropout/random_uniform/maxConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
њ
1L2_2/dropout/dropout/random_uniform/RandomUniformRandomUniformL2_2/dropout/dropout/Shape*

seed *
T0*
dtype0*
seed2 *0
_output_shapes
:€€€€€€€€€А
°
'L2_2/dropout/dropout/random_uniform/subSub'L2_2/dropout/dropout/random_uniform/max'L2_2/dropout/dropout/random_uniform/min*
T0*
_output_shapes
: 
≈
'L2_2/dropout/dropout/random_uniform/mulMul1L2_2/dropout/dropout/random_uniform/RandomUniform'L2_2/dropout/dropout/random_uniform/sub*
T0*0
_output_shapes
:€€€€€€€€€А
Ј
#L2_2/dropout/dropout/random_uniformAdd'L2_2/dropout/dropout/random_uniform/mul'L2_2/dropout/dropout/random_uniform/min*
T0*0
_output_shapes
:€€€€€€€€€А
Я
L2_2/dropout/dropout/addAddL2_2/dropout/dropout/keep_prob#L2_2/dropout/dropout/random_uniform*0
_output_shapes
:€€€€€€€€€А*
T0
x
L2_2/dropout/dropout/FloorFloorL2_2/dropout/dropout/add*0
_output_shapes
:€€€€€€€€€А*
T0
Ъ
L2_2/dropout/dropout/divRealDivL2_2/max_pooling2d/MaxPoolL2_2/dropout/dropout/keep_prob*0
_output_shapes
:€€€€€€€€€А*
T0
Р
L2_2/dropout/dropout/mulMulL2_2/dropout/dropout/divL2_2/dropout/dropout/Floor*
T0*0
_output_shapes
:€€€€€€€€€А
Л
)L2-1_2/batch_normalization/FusedBatchNormFusedBatchNormL2_2/dropout/dropout/mul#L2-1/batch_normalization/gamma/read"L2-1/batch_normalization/beta/read)L2-1/batch_normalization/moving_mean/read-L2-1/batch_normalization/moving_variance/read*
data_formatNHWC*
is_training( *L
_output_shapes:
8:€€€€€€€€€А:А:А:А:А*
epsilon%oГ:*
T0
e
 L2-1_2/batch_normalization/ConstConst*
valueB
 *§p}?*
dtype0*
_output_shapes
: 
l
L2-1_2/conv2d/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0
Л
L2-1_2/conv2d/Conv2DConv2D)L2-1_2/batch_normalization/FusedBatchNormL2-1/conv2d/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:€€€€€€€€€А
Я
L2-1_2/conv2d/BiasAddBiasAddL2-1_2/conv2d/Conv2DL2-1/conv2d/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:€€€€€€€€€А
l
L2-1_2/conv2d/ReluReluL2-1_2/conv2d/BiasAdd*
T0*0
_output_shapes
:€€€€€€€€€А
…
L2-1_2/max_pooling2d/MaxPoolMaxPoolL2-1_2/conv2d/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*0
_output_shapes
:€€€€€€€€€А
e
 L2-1_2/dropout/dropout/keep_probConst*
valueB
 *ЪЩЩ>*
dtype0*
_output_shapes
: 
x
L2-1_2/dropout/dropout/ShapeShapeL2-1_2/max_pooling2d/MaxPool*
T0*
out_type0*
_output_shapes
:
n
)L2-1_2/dropout/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n
)L2-1_2/dropout/dropout/random_uniform/maxConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
√
3L2-1_2/dropout/dropout/random_uniform/RandomUniformRandomUniformL2-1_2/dropout/dropout/Shape*

seed *
T0*
dtype0*
seed2 *0
_output_shapes
:€€€€€€€€€А
І
)L2-1_2/dropout/dropout/random_uniform/subSub)L2-1_2/dropout/dropout/random_uniform/max)L2-1_2/dropout/dropout/random_uniform/min*
_output_shapes
: *
T0
Ћ
)L2-1_2/dropout/dropout/random_uniform/mulMul3L2-1_2/dropout/dropout/random_uniform/RandomUniform)L2-1_2/dropout/dropout/random_uniform/sub*0
_output_shapes
:€€€€€€€€€А*
T0
љ
%L2-1_2/dropout/dropout/random_uniformAdd)L2-1_2/dropout/dropout/random_uniform/mul)L2-1_2/dropout/dropout/random_uniform/min*
T0*0
_output_shapes
:€€€€€€€€€А
•
L2-1_2/dropout/dropout/addAdd L2-1_2/dropout/dropout/keep_prob%L2-1_2/dropout/dropout/random_uniform*
T0*0
_output_shapes
:€€€€€€€€€А
|
L2-1_2/dropout/dropout/FloorFloorL2-1_2/dropout/dropout/add*0
_output_shapes
:€€€€€€€€€А*
T0
†
L2-1_2/dropout/dropout/divRealDivL2-1_2/max_pooling2d/MaxPool L2-1_2/dropout/dropout/keep_prob*0
_output_shapes
:€€€€€€€€€А*
T0
Ц
L2-1_2/dropout/dropout/mulMulL2-1_2/dropout/dropout/divL2-1_2/dropout/dropout/Floor*0
_output_shapes
:€€€€€€€€€А*
T0
Т
'L3_2/batch_normalization/FusedBatchNormFusedBatchNorm)L2-1_2/batch_normalization/FusedBatchNorm!L3/batch_normalization/gamma/read L3/batch_normalization/beta/read'L3/batch_normalization/moving_mean/read+L3/batch_normalization/moving_variance/read*
is_training( *L
_output_shapes:
8:€€€€€€€€€А:А:А:А:А*
epsilon%oГ:*
T0*
data_formatNHWC
c
L3_2/batch_normalization/ConstConst*
_output_shapes
: *
valueB
 *§p}?*
dtype0
Б
L3_2/Flatten/flatten/ShapeShape'L3_2/batch_normalization/FusedBatchNorm*
T0*
out_type0*
_output_shapes
:
r
(L3_2/Flatten/flatten/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
t
*L3_2/Flatten/flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*L3_2/Flatten/flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
в
"L3_2/Flatten/flatten/strided_sliceStridedSliceL3_2/Flatten/flatten/Shape(L3_2/Flatten/flatten/strided_slice/stack*L3_2/Flatten/flatten/strided_slice/stack_1*L3_2/Flatten/flatten/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
o
$L3_2/Flatten/flatten/Reshape/shape/1Const*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Ѓ
"L3_2/Flatten/flatten/Reshape/shapePack"L3_2/Flatten/flatten/strided_slice$L3_2/Flatten/flatten/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
µ
L3_2/Flatten/flatten/ReshapeReshape'L3_2/batch_normalization/FusedBatchNorm"L3_2/Flatten/flatten/Reshape/shape*(
_output_shapes
:€€€€€€€€€А1*
T0*
Tshape0
®
L3_2/dense/MatMulMatMulL3_2/Flatten/flatten/ReshapeL3/dense/kernel/read*
transpose_a( *(
_output_shapes
:€€€€€€€€€А*
transpose_b( *
T0
О
L3_2/dense/BiasAddBiasAddL3_2/dense/MatMulL3/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:€€€€€€€€€А
^
L3_2/dense/ReluReluL3_2/dense/BiasAdd*
T0*(
_output_shapes
:€€€€€€€€€А
e
L3_2/dropout/IdentityIdentityL3_2/dense/Relu*
T0*(
_output_shapes
:€€€€€€€€€А
m
(L4_2/batch_normalization/batchnorm/add/yConst*
valueB
 *oГ:*
dtype0*
_output_shapes
: 
™
&L4_2/batch_normalization/batchnorm/addAdd+L4/batch_normalization/moving_variance/read(L4_2/batch_normalization/batchnorm/add/y*
_output_shapes	
:А*
T0

(L4_2/batch_normalization/batchnorm/RsqrtRsqrt&L4_2/batch_normalization/batchnorm/add*
T0*
_output_shapes	
:А
†
&L4_2/batch_normalization/batchnorm/mulMul(L4_2/batch_normalization/batchnorm/Rsqrt!L4/batch_normalization/gamma/read*
T0*
_output_shapes	
:А
°
(L4_2/batch_normalization/batchnorm/mul_1MulL3_2/dropout/Identity&L4_2/batch_normalization/batchnorm/mul*
T0*(
_output_shapes
:€€€€€€€€€А
¶
(L4_2/batch_normalization/batchnorm/mul_2Mul'L4/batch_normalization/moving_mean/read&L4_2/batch_normalization/batchnorm/mul*
T0*
_output_shapes	
:А
Я
&L4_2/batch_normalization/batchnorm/subSub L4/batch_normalization/beta/read(L4_2/batch_normalization/batchnorm/mul_2*
T0*
_output_shapes	
:А
і
(L4_2/batch_normalization/batchnorm/add_1Add(L4_2/batch_normalization/batchnorm/mul_1&L4_2/batch_normalization/batchnorm/sub*
T0*(
_output_shapes
:€€€€€€€€€А
і
L4_2/dense/MatMulMatMul(L4_2/batch_normalization/batchnorm/add_1L4/dense/kernel/read*
T0*
transpose_a( *(
_output_shapes
:€€€€€€€€€А*
transpose_b( 
О
L4_2/dense/BiasAddBiasAddL4_2/dense/MatMulL4/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:€€€€€€€€€А
^
L4_2/dense/ReluReluL4_2/dense/BiasAdd*(
_output_shapes
:€€€€€€€€€А*
T0
Ъ
LF_2/dense/MatMulMatMulL4_2/dense/ReluLF/dense/kernel/read*
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€
*
transpose_b( 
Н
LF_2/dense/BiasAddBiasAddLF_2/dense/MatMulLF/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€

j
(softmax_cross_entropy_with_logits_2/RankConst*
dtype0*
_output_shapes
: *
value	B :
{
)softmax_cross_entropy_with_logits_2/ShapeShapeLF_2/dense/BiasAdd*
_output_shapes
:*
T0*
out_type0
l
*softmax_cross_entropy_with_logits_2/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
}
+softmax_cross_entropy_with_logits_2/Shape_1ShapeLF_2/dense/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
)softmax_cross_entropy_with_logits_2/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
¶
'softmax_cross_entropy_with_logits_2/SubSub*softmax_cross_entropy_with_logits_2/Rank_1)softmax_cross_entropy_with_logits_2/Sub/y*
T0*
_output_shapes
: 
Ъ
/softmax_cross_entropy_with_logits_2/Slice/beginPack'softmax_cross_entropy_with_logits_2/Sub*
N*
_output_shapes
:*
T0*

axis 
x
.softmax_cross_entropy_with_logits_2/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
т
)softmax_cross_entropy_with_logits_2/SliceSlice+softmax_cross_entropy_with_logits_2/Shape_1/softmax_cross_entropy_with_logits_2/Slice/begin.softmax_cross_entropy_with_logits_2/Slice/size*
_output_shapes
:*
T0*
Index0
Ж
3softmax_cross_entropy_with_logits_2/concat/values_0Const*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
q
/softmax_cross_entropy_with_logits_2/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Б
*softmax_cross_entropy_with_logits_2/concatConcatV23softmax_cross_entropy_with_logits_2/concat/values_0)softmax_cross_entropy_with_logits_2/Slice/softmax_cross_entropy_with_logits_2/concat/axis*
_output_shapes
:*

Tidx0*
T0*
N
њ
+softmax_cross_entropy_with_logits_2/ReshapeReshapeLF_2/dense/BiasAdd*softmax_cross_entropy_with_logits_2/concat*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
l
*softmax_cross_entropy_with_logits_2/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
t
+softmax_cross_entropy_with_logits_2/Shape_2Shape	split_1:2*
T0*
out_type0*
_output_shapes
:
m
+softmax_cross_entropy_with_logits_2/Sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
™
)softmax_cross_entropy_with_logits_2/Sub_1Sub*softmax_cross_entropy_with_logits_2/Rank_2+softmax_cross_entropy_with_logits_2/Sub_1/y*
_output_shapes
: *
T0
Ю
1softmax_cross_entropy_with_logits_2/Slice_1/beginPack)softmax_cross_entropy_with_logits_2/Sub_1*

axis *
N*
_output_shapes
:*
T0
z
0softmax_cross_entropy_with_logits_2/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
ш
+softmax_cross_entropy_with_logits_2/Slice_1Slice+softmax_cross_entropy_with_logits_2/Shape_21softmax_cross_entropy_with_logits_2/Slice_1/begin0softmax_cross_entropy_with_logits_2/Slice_1/size*
T0*
Index0*
_output_shapes
:
И
5softmax_cross_entropy_with_logits_2/concat_1/values_0Const*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
s
1softmax_cross_entropy_with_logits_2/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Й
,softmax_cross_entropy_with_logits_2/concat_1ConcatV25softmax_cross_entropy_with_logits_2/concat_1/values_0+softmax_cross_entropy_with_logits_2/Slice_11softmax_cross_entropy_with_logits_2/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ї
-softmax_cross_entropy_with_logits_2/Reshape_1Reshape	split_1:2,softmax_cross_entropy_with_logits_2/concat_1*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
к
#softmax_cross_entropy_with_logits_2SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_2/Reshape-softmax_cross_entropy_with_logits_2/Reshape_1*?
_output_shapes-
+:€€€€€€€€€:€€€€€€€€€€€€€€€€€€*
T0
m
+softmax_cross_entropy_with_logits_2/Sub_2/yConst*
dtype0*
_output_shapes
: *
value	B :
®
)softmax_cross_entropy_with_logits_2/Sub_2Sub(softmax_cross_entropy_with_logits_2/Rank+softmax_cross_entropy_with_logits_2/Sub_2/y*
T0*
_output_shapes
: 
{
1softmax_cross_entropy_with_logits_2/Slice_2/beginConst*
valueB: *
dtype0*
_output_shapes
:
Э
0softmax_cross_entropy_with_logits_2/Slice_2/sizePack)softmax_cross_entropy_with_logits_2/Sub_2*

axis *
N*
_output_shapes
:*
T0
ц
+softmax_cross_entropy_with_logits_2/Slice_2Slice)softmax_cross_entropy_with_logits_2/Shape1softmax_cross_entropy_with_logits_2/Slice_2/begin0softmax_cross_entropy_with_logits_2/Slice_2/size*
T0*
Index0*
_output_shapes
:
∆
-softmax_cross_entropy_with_logits_2/Reshape_2Reshape#softmax_cross_entropy_with_logits_2+softmax_cross_entropy_with_logits_2/Slice_2*#
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
T
ArgMax_4/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
З
ArgMax_4ArgMaxLF_2/dense/BiasAddArgMax_4/dimension*
output_type0	*#
_output_shapes
:€€€€€€€€€*

Tidx0*
T0
T
ArgMax_5/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
~
ArgMax_5ArgMax	split_1:2ArgMax_5/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:€€€€€€€€€
R
Equal_2EqualArgMax_4ArgMax_5*
T0	*#
_output_shapes
:€€€€€€€€€
d
Cast_2CastEqual_2*

SrcT0
*
Truncate( *

DstT0*#
_output_shapes
:€€€€€€€€€
Q
Const_4Const*
valueB: *
dtype0*
_output_shapes
:
]
Mean_2MeanCast_2Const_4*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
л
'L1_3/batch_normalization/FusedBatchNormFusedBatchNormsplit:3!L1/batch_normalization/gamma/read L1/batch_normalization/beta/read'L1/batch_normalization/moving_mean/read+L1/batch_normalization/moving_variance/read*
epsilon%oГ:*
T0*
data_formatNHWC*
is_training( *G
_output_shapes5
3:€€€€€€€€€::::
c
L1_3/batch_normalization/ConstConst*
valueB
 *§p}?*
dtype0*
_output_shapes
: 
j
L1_3/conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Д
L1_3/conv2d/Conv2DConv2D'L1_3/batch_normalization/FusedBatchNormL1/conv2d/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€@
Ш
L1_3/conv2d/BiasAddBiasAddL1_3/conv2d/Conv2DL1/conv2d/bias/read*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€@*
T0
g
L1_3/conv2d/ReluReluL1_3/conv2d/BiasAdd*
T0*/
_output_shapes
:€€€€€€€€€@
ƒ
L1_3/max_pooling2d/MaxPoolMaxPoolL1_3/conv2d/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:€€€€€€€€€@
c
L1_3/dropout/dropout/keep_probConst*
valueB
 *ЪЩЩ>*
dtype0*
_output_shapes
: 
t
L1_3/dropout/dropout/ShapeShapeL1_3/max_pooling2d/MaxPool*
T0*
out_type0*
_output_shapes
:
l
'L1_3/dropout/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
l
'L1_3/dropout/dropout/random_uniform/maxConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Њ
1L1_3/dropout/dropout/random_uniform/RandomUniformRandomUniformL1_3/dropout/dropout/Shape*

seed *
T0*
dtype0*
seed2 */
_output_shapes
:€€€€€€€€€@
°
'L1_3/dropout/dropout/random_uniform/subSub'L1_3/dropout/dropout/random_uniform/max'L1_3/dropout/dropout/random_uniform/min*
_output_shapes
: *
T0
ƒ
'L1_3/dropout/dropout/random_uniform/mulMul1L1_3/dropout/dropout/random_uniform/RandomUniform'L1_3/dropout/dropout/random_uniform/sub*/
_output_shapes
:€€€€€€€€€@*
T0
ґ
#L1_3/dropout/dropout/random_uniformAdd'L1_3/dropout/dropout/random_uniform/mul'L1_3/dropout/dropout/random_uniform/min*
T0*/
_output_shapes
:€€€€€€€€€@
Ю
L1_3/dropout/dropout/addAddL1_3/dropout/dropout/keep_prob#L1_3/dropout/dropout/random_uniform*
T0*/
_output_shapes
:€€€€€€€€€@
w
L1_3/dropout/dropout/FloorFloorL1_3/dropout/dropout/add*/
_output_shapes
:€€€€€€€€€@*
T0
Щ
L1_3/dropout/dropout/divRealDivL1_3/max_pooling2d/MaxPoolL1_3/dropout/dropout/keep_prob*/
_output_shapes
:€€€€€€€€€@*
T0
П
L1_3/dropout/dropout/mulMulL1_3/dropout/dropout/divL1_3/dropout/dropout/Floor*/
_output_shapes
:€€€€€€€€€@*
T0
ь
'L2_3/batch_normalization/FusedBatchNormFusedBatchNormL1_3/dropout/dropout/mul!L2/batch_normalization/gamma/read L2/batch_normalization/beta/read'L2/batch_normalization/moving_mean/read+L2/batch_normalization/moving_variance/read*
data_formatNHWC*
is_training( *G
_output_shapes5
3:€€€€€€€€€@:@:@:@:@*
epsilon%oГ:*
T0
c
L2_3/batch_normalization/ConstConst*
valueB
 *§p}?*
dtype0*
_output_shapes
: 
j
L2_3/conv2d/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
Е
L2_3/conv2d/Conv2DConv2D'L2_3/batch_normalization/FusedBatchNormL2/conv2d/kernel/read*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:€€€€€€€€€А*
	dilations
*
T0*
data_formatNHWC*
strides

Щ
L2_3/conv2d/BiasAddBiasAddL2_3/conv2d/Conv2DL2/conv2d/bias/read*
data_formatNHWC*0
_output_shapes
:€€€€€€€€€А*
T0
h
L2_3/conv2d/ReluReluL2_3/conv2d/BiasAdd*
T0*0
_output_shapes
:€€€€€€€€€А
≈
L2_3/max_pooling2d/MaxPoolMaxPoolL2_3/conv2d/Relu*0
_output_shapes
:€€€€€€€€€А*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
c
L2_3/dropout/dropout/keep_probConst*
valueB
 *ЪЩЩ>*
dtype0*
_output_shapes
: 
t
L2_3/dropout/dropout/ShapeShapeL2_3/max_pooling2d/MaxPool*
_output_shapes
:*
T0*
out_type0
l
'L2_3/dropout/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
l
'L2_3/dropout/dropout/random_uniform/maxConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
њ
1L2_3/dropout/dropout/random_uniform/RandomUniformRandomUniformL2_3/dropout/dropout/Shape*

seed *
T0*
dtype0*
seed2 *0
_output_shapes
:€€€€€€€€€А
°
'L2_3/dropout/dropout/random_uniform/subSub'L2_3/dropout/dropout/random_uniform/max'L2_3/dropout/dropout/random_uniform/min*
T0*
_output_shapes
: 
≈
'L2_3/dropout/dropout/random_uniform/mulMul1L2_3/dropout/dropout/random_uniform/RandomUniform'L2_3/dropout/dropout/random_uniform/sub*
T0*0
_output_shapes
:€€€€€€€€€А
Ј
#L2_3/dropout/dropout/random_uniformAdd'L2_3/dropout/dropout/random_uniform/mul'L2_3/dropout/dropout/random_uniform/min*0
_output_shapes
:€€€€€€€€€А*
T0
Я
L2_3/dropout/dropout/addAddL2_3/dropout/dropout/keep_prob#L2_3/dropout/dropout/random_uniform*0
_output_shapes
:€€€€€€€€€А*
T0
x
L2_3/dropout/dropout/FloorFloorL2_3/dropout/dropout/add*
T0*0
_output_shapes
:€€€€€€€€€А
Ъ
L2_3/dropout/dropout/divRealDivL2_3/max_pooling2d/MaxPoolL2_3/dropout/dropout/keep_prob*
T0*0
_output_shapes
:€€€€€€€€€А
Р
L2_3/dropout/dropout/mulMulL2_3/dropout/dropout/divL2_3/dropout/dropout/Floor*0
_output_shapes
:€€€€€€€€€А*
T0
Л
)L2-1_3/batch_normalization/FusedBatchNormFusedBatchNormL2_3/dropout/dropout/mul#L2-1/batch_normalization/gamma/read"L2-1/batch_normalization/beta/read)L2-1/batch_normalization/moving_mean/read-L2-1/batch_normalization/moving_variance/read*
epsilon%oГ:*
T0*
data_formatNHWC*
is_training( *L
_output_shapes:
8:€€€€€€€€€А:А:А:А:А
e
 L2-1_3/batch_normalization/ConstConst*
valueB
 *§p}?*
dtype0*
_output_shapes
: 
l
L2-1_3/conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Л
L2-1_3/conv2d/Conv2DConv2D)L2-1_3/batch_normalization/FusedBatchNormL2-1/conv2d/kernel/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:€€€€€€€€€А*
	dilations
*
T0
Я
L2-1_3/conv2d/BiasAddBiasAddL2-1_3/conv2d/Conv2DL2-1/conv2d/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:€€€€€€€€€А
l
L2-1_3/conv2d/ReluReluL2-1_3/conv2d/BiasAdd*
T0*0
_output_shapes
:€€€€€€€€€А
…
L2-1_3/max_pooling2d/MaxPoolMaxPoolL2-1_3/conv2d/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*0
_output_shapes
:€€€€€€€€€А
e
 L2-1_3/dropout/dropout/keep_probConst*
valueB
 *ЪЩЩ>*
dtype0*
_output_shapes
: 
x
L2-1_3/dropout/dropout/ShapeShapeL2-1_3/max_pooling2d/MaxPool*
T0*
out_type0*
_output_shapes
:
n
)L2-1_3/dropout/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n
)L2-1_3/dropout/dropout/random_uniform/maxConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
√
3L2-1_3/dropout/dropout/random_uniform/RandomUniformRandomUniformL2-1_3/dropout/dropout/Shape*
T0*
dtype0*
seed2 *0
_output_shapes
:€€€€€€€€€А*

seed 
І
)L2-1_3/dropout/dropout/random_uniform/subSub)L2-1_3/dropout/dropout/random_uniform/max)L2-1_3/dropout/dropout/random_uniform/min*
_output_shapes
: *
T0
Ћ
)L2-1_3/dropout/dropout/random_uniform/mulMul3L2-1_3/dropout/dropout/random_uniform/RandomUniform)L2-1_3/dropout/dropout/random_uniform/sub*
T0*0
_output_shapes
:€€€€€€€€€А
љ
%L2-1_3/dropout/dropout/random_uniformAdd)L2-1_3/dropout/dropout/random_uniform/mul)L2-1_3/dropout/dropout/random_uniform/min*
T0*0
_output_shapes
:€€€€€€€€€А
•
L2-1_3/dropout/dropout/addAdd L2-1_3/dropout/dropout/keep_prob%L2-1_3/dropout/dropout/random_uniform*
T0*0
_output_shapes
:€€€€€€€€€А
|
L2-1_3/dropout/dropout/FloorFloorL2-1_3/dropout/dropout/add*0
_output_shapes
:€€€€€€€€€А*
T0
†
L2-1_3/dropout/dropout/divRealDivL2-1_3/max_pooling2d/MaxPool L2-1_3/dropout/dropout/keep_prob*
T0*0
_output_shapes
:€€€€€€€€€А
Ц
L2-1_3/dropout/dropout/mulMulL2-1_3/dropout/dropout/divL2-1_3/dropout/dropout/Floor*
T0*0
_output_shapes
:€€€€€€€€€А
Т
'L3_3/batch_normalization/FusedBatchNormFusedBatchNorm)L2-1_3/batch_normalization/FusedBatchNorm!L3/batch_normalization/gamma/read L3/batch_normalization/beta/read'L3/batch_normalization/moving_mean/read+L3/batch_normalization/moving_variance/read*
epsilon%oГ:*
T0*
data_formatNHWC*
is_training( *L
_output_shapes:
8:€€€€€€€€€А:А:А:А:А
c
L3_3/batch_normalization/ConstConst*
valueB
 *§p}?*
dtype0*
_output_shapes
: 
Б
L3_3/Flatten/flatten/ShapeShape'L3_3/batch_normalization/FusedBatchNorm*
T0*
out_type0*
_output_shapes
:
r
(L3_3/Flatten/flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
t
*L3_3/Flatten/flatten/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
t
*L3_3/Flatten/flatten/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
в
"L3_3/Flatten/flatten/strided_sliceStridedSliceL3_3/Flatten/flatten/Shape(L3_3/Flatten/flatten/strided_slice/stack*L3_3/Flatten/flatten/strided_slice/stack_1*L3_3/Flatten/flatten/strided_slice/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
o
$L3_3/Flatten/flatten/Reshape/shape/1Const*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Ѓ
"L3_3/Flatten/flatten/Reshape/shapePack"L3_3/Flatten/flatten/strided_slice$L3_3/Flatten/flatten/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
µ
L3_3/Flatten/flatten/ReshapeReshape'L3_3/batch_normalization/FusedBatchNorm"L3_3/Flatten/flatten/Reshape/shape*(
_output_shapes
:€€€€€€€€€А1*
T0*
Tshape0
®
L3_3/dense/MatMulMatMulL3_3/Flatten/flatten/ReshapeL3/dense/kernel/read*
transpose_a( *(
_output_shapes
:€€€€€€€€€А*
transpose_b( *
T0
О
L3_3/dense/BiasAddBiasAddL3_3/dense/MatMulL3/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:€€€€€€€€€А
^
L3_3/dense/ReluReluL3_3/dense/BiasAdd*
T0*(
_output_shapes
:€€€€€€€€€А
e
L3_3/dropout/IdentityIdentityL3_3/dense/Relu*(
_output_shapes
:€€€€€€€€€А*
T0
m
(L4_3/batch_normalization/batchnorm/add/yConst*
valueB
 *oГ:*
dtype0*
_output_shapes
: 
™
&L4_3/batch_normalization/batchnorm/addAdd+L4/batch_normalization/moving_variance/read(L4_3/batch_normalization/batchnorm/add/y*
T0*
_output_shapes	
:А

(L4_3/batch_normalization/batchnorm/RsqrtRsqrt&L4_3/batch_normalization/batchnorm/add*
T0*
_output_shapes	
:А
†
&L4_3/batch_normalization/batchnorm/mulMul(L4_3/batch_normalization/batchnorm/Rsqrt!L4/batch_normalization/gamma/read*
T0*
_output_shapes	
:А
°
(L4_3/batch_normalization/batchnorm/mul_1MulL3_3/dropout/Identity&L4_3/batch_normalization/batchnorm/mul*
T0*(
_output_shapes
:€€€€€€€€€А
¶
(L4_3/batch_normalization/batchnorm/mul_2Mul'L4/batch_normalization/moving_mean/read&L4_3/batch_normalization/batchnorm/mul*
T0*
_output_shapes	
:А
Я
&L4_3/batch_normalization/batchnorm/subSub L4/batch_normalization/beta/read(L4_3/batch_normalization/batchnorm/mul_2*
T0*
_output_shapes	
:А
і
(L4_3/batch_normalization/batchnorm/add_1Add(L4_3/batch_normalization/batchnorm/mul_1&L4_3/batch_normalization/batchnorm/sub*
T0*(
_output_shapes
:€€€€€€€€€А
і
L4_3/dense/MatMulMatMul(L4_3/batch_normalization/batchnorm/add_1L4/dense/kernel/read*
T0*
transpose_a( *(
_output_shapes
:€€€€€€€€€А*
transpose_b( 
О
L4_3/dense/BiasAddBiasAddL4_3/dense/MatMulL4/dense/bias/read*
data_formatNHWC*(
_output_shapes
:€€€€€€€€€А*
T0
^
L4_3/dense/ReluReluL4_3/dense/BiasAdd*
T0*(
_output_shapes
:€€€€€€€€€А
Ъ
LF_3/dense/MatMulMatMulL4_3/dense/ReluLF/dense/kernel/read*
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€
*
transpose_b( 
Н
LF_3/dense/BiasAddBiasAddLF_3/dense/MatMulLF/dense/bias/read*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€
*
T0
j
(softmax_cross_entropy_with_logits_3/RankConst*
value	B :*
dtype0*
_output_shapes
: 
{
)softmax_cross_entropy_with_logits_3/ShapeShapeLF_3/dense/BiasAdd*
_output_shapes
:*
T0*
out_type0
l
*softmax_cross_entropy_with_logits_3/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
}
+softmax_cross_entropy_with_logits_3/Shape_1ShapeLF_3/dense/BiasAdd*
_output_shapes
:*
T0*
out_type0
k
)softmax_cross_entropy_with_logits_3/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
¶
'softmax_cross_entropy_with_logits_3/SubSub*softmax_cross_entropy_with_logits_3/Rank_1)softmax_cross_entropy_with_logits_3/Sub/y*
T0*
_output_shapes
: 
Ъ
/softmax_cross_entropy_with_logits_3/Slice/beginPack'softmax_cross_entropy_with_logits_3/Sub*
T0*

axis *
N*
_output_shapes
:
x
.softmax_cross_entropy_with_logits_3/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
т
)softmax_cross_entropy_with_logits_3/SliceSlice+softmax_cross_entropy_with_logits_3/Shape_1/softmax_cross_entropy_with_logits_3/Slice/begin.softmax_cross_entropy_with_logits_3/Slice/size*
_output_shapes
:*
T0*
Index0
Ж
3softmax_cross_entropy_with_logits_3/concat/values_0Const*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
q
/softmax_cross_entropy_with_logits_3/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Б
*softmax_cross_entropy_with_logits_3/concatConcatV23softmax_cross_entropy_with_logits_3/concat/values_0)softmax_cross_entropy_with_logits_3/Slice/softmax_cross_entropy_with_logits_3/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
њ
+softmax_cross_entropy_with_logits_3/ReshapeReshapeLF_3/dense/BiasAdd*softmax_cross_entropy_with_logits_3/concat*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0*
Tshape0
l
*softmax_cross_entropy_with_logits_3/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
t
+softmax_cross_entropy_with_logits_3/Shape_2Shape	split_1:3*
_output_shapes
:*
T0*
out_type0
m
+softmax_cross_entropy_with_logits_3/Sub_1/yConst*
dtype0*
_output_shapes
: *
value	B :
™
)softmax_cross_entropy_with_logits_3/Sub_1Sub*softmax_cross_entropy_with_logits_3/Rank_2+softmax_cross_entropy_with_logits_3/Sub_1/y*
T0*
_output_shapes
: 
Ю
1softmax_cross_entropy_with_logits_3/Slice_1/beginPack)softmax_cross_entropy_with_logits_3/Sub_1*
_output_shapes
:*
T0*

axis *
N
z
0softmax_cross_entropy_with_logits_3/Slice_1/sizeConst*
_output_shapes
:*
valueB:*
dtype0
ш
+softmax_cross_entropy_with_logits_3/Slice_1Slice+softmax_cross_entropy_with_logits_3/Shape_21softmax_cross_entropy_with_logits_3/Slice_1/begin0softmax_cross_entropy_with_logits_3/Slice_1/size*
T0*
Index0*
_output_shapes
:
И
5softmax_cross_entropy_with_logits_3/concat_1/values_0Const*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
s
1softmax_cross_entropy_with_logits_3/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Й
,softmax_cross_entropy_with_logits_3/concat_1ConcatV25softmax_cross_entropy_with_logits_3/concat_1/values_0+softmax_cross_entropy_with_logits_3/Slice_11softmax_cross_entropy_with_logits_3/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ї
-softmax_cross_entropy_with_logits_3/Reshape_1Reshape	split_1:3,softmax_cross_entropy_with_logits_3/concat_1*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
к
#softmax_cross_entropy_with_logits_3SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_3/Reshape-softmax_cross_entropy_with_logits_3/Reshape_1*?
_output_shapes-
+:€€€€€€€€€:€€€€€€€€€€€€€€€€€€*
T0
m
+softmax_cross_entropy_with_logits_3/Sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
®
)softmax_cross_entropy_with_logits_3/Sub_2Sub(softmax_cross_entropy_with_logits_3/Rank+softmax_cross_entropy_with_logits_3/Sub_2/y*
_output_shapes
: *
T0
{
1softmax_cross_entropy_with_logits_3/Slice_2/beginConst*
valueB: *
dtype0*
_output_shapes
:
Э
0softmax_cross_entropy_with_logits_3/Slice_2/sizePack)softmax_cross_entropy_with_logits_3/Sub_2*
T0*

axis *
N*
_output_shapes
:
ц
+softmax_cross_entropy_with_logits_3/Slice_2Slice)softmax_cross_entropy_with_logits_3/Shape1softmax_cross_entropy_with_logits_3/Slice_2/begin0softmax_cross_entropy_with_logits_3/Slice_2/size*
T0*
Index0*
_output_shapes
:
∆
-softmax_cross_entropy_with_logits_3/Reshape_2Reshape#softmax_cross_entropy_with_logits_3+softmax_cross_entropy_with_logits_3/Slice_2*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
T
ArgMax_6/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
З
ArgMax_6ArgMaxLF_3/dense/BiasAddArgMax_6/dimension*
T0*
output_type0	*#
_output_shapes
:€€€€€€€€€*

Tidx0
T
ArgMax_7/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
~
ArgMax_7ArgMax	split_1:3ArgMax_7/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:€€€€€€€€€
R
Equal_3EqualArgMax_6ArgMax_7*
T0	*#
_output_shapes
:€€€€€€€€€
d
Cast_3CastEqual_3*

DstT0*#
_output_shapes
:€€€€€€€€€*

SrcT0
*
Truncate( 
Q
Const_5Const*
valueB: *
dtype0*
_output_shapes
:
]
Mean_3MeanCast_3Const_5*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
M
concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ь
concatConcatV2+softmax_cross_entropy_with_logits/Reshape_2-softmax_cross_entropy_with_logits_1/Reshape_2-softmax_cross_entropy_with_logits_2/Reshape_2-softmax_cross_entropy_with_logits_3/Reshape_2concat/axis*

Tidx0*
T0*
N*#
_output_shapes
:€€€€€€€€€
Q
Const_6Const*
_output_shapes
:*
valueB: *
dtype0
]
Mean_4MeanconcatConst_6*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
k
Rank/packedPackMeanMean_1Mean_2Mean_3*
T0*

axis *
N*
_output_shapes
:
F
RankConst*
_output_shapes
: *
value	B :*
dtype0
M
range/startConst*
value	B : *
dtype0*
_output_shapes
: 
M
range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
V
rangeRangerange/startRankrange/delta*
_output_shapes
:*

Tidx0
l
Mean_5/inputPackMeanMean_1Mean_2Mean_3*

axis *
N*
_output_shapes
:*
T0
a
Mean_5MeanMean_5/inputrange*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
m
gradients/ShapeConst*
valueB *
_class
loc:@Mean_4*
dtype0*
_output_shapes
: 
s
gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  А?*
_class
loc:@Mean_4
К
gradients/FillFillgradients/Shapegradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0*
_class
loc:@Mean_4
И
#gradients/Mean_4_grad/Reshape/shapeConst*
_output_shapes
:*
valueB:*
_class
loc:@Mean_4*
dtype0
Ђ
gradients/Mean_4_grad/ReshapeReshapegradients/Fill#gradients/Mean_4_grad/Reshape/shape*
T0*
Tshape0*
_class
loc:@Mean_4*
_output_shapes
:
|
gradients/Mean_4_grad/ShapeShapeconcat*
T0*
out_type0*
_class
loc:@Mean_4*
_output_shapes
:
є
gradients/Mean_4_grad/TileTilegradients/Mean_4_grad/Reshapegradients/Mean_4_grad/Shape*

Tmultiples0*
T0*
_class
loc:@Mean_4*#
_output_shapes
:€€€€€€€€€
~
gradients/Mean_4_grad/Shape_1Shapeconcat*
_output_shapes
:*
T0*
out_type0*
_class
loc:@Mean_4
{
gradients/Mean_4_grad/Shape_2Const*
valueB *
_class
loc:@Mean_4*
dtype0*
_output_shapes
: 
А
gradients/Mean_4_grad/ConstConst*
_output_shapes
:*
valueB: *
_class
loc:@Mean_4*
dtype0
Ј
gradients/Mean_4_grad/ProdProdgradients/Mean_4_grad/Shape_1gradients/Mean_4_grad/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*
_class
loc:@Mean_4
В
gradients/Mean_4_grad/Const_1Const*
valueB: *
_class
loc:@Mean_4*
dtype0*
_output_shapes
:
ї
gradients/Mean_4_grad/Prod_1Prodgradients/Mean_4_grad/Shape_2gradients/Mean_4_grad/Const_1*

Tidx0*
	keep_dims( *
T0*
_class
loc:@Mean_4*
_output_shapes
: 
|
gradients/Mean_4_grad/Maximum/yConst*
value	B :*
_class
loc:@Mean_4*
dtype0*
_output_shapes
: 
£
gradients/Mean_4_grad/MaximumMaximumgradients/Mean_4_grad/Prod_1gradients/Mean_4_grad/Maximum/y*
_class
loc:@Mean_4*
_output_shapes
: *
T0
°
gradients/Mean_4_grad/floordivFloorDivgradients/Mean_4_grad/Prodgradients/Mean_4_grad/Maximum*
T0*
_class
loc:@Mean_4*
_output_shapes
: 
Э
gradients/Mean_4_grad/CastCastgradients/Mean_4_grad/floordiv*

SrcT0*
_class
loc:@Mean_4*
Truncate( *

DstT0*
_output_shapes
: 
©
gradients/Mean_4_grad/truedivRealDivgradients/Mean_4_grad/Tilegradients/Mean_4_grad/Cast*
T0*
_class
loc:@Mean_4*#
_output_shapes
:€€€€€€€€€
w
gradients/concat_grad/RankConst*
value	B :*
_class
loc:@concat*
dtype0*
_output_shapes
: 
К
gradients/concat_grad/modFloorModconcat/axisgradients/concat_grad/Rank*
T0*
_class
loc:@concat*
_output_shapes
: 
°
gradients/concat_grad/ShapeShape+softmax_cross_entropy_with_logits/Reshape_2*
_output_shapes
:*
T0*
out_type0*
_class
loc:@concat
Ћ
gradients/concat_grad/ShapeNShapeN+softmax_cross_entropy_with_logits/Reshape_2-softmax_cross_entropy_with_logits_1/Reshape_2-softmax_cross_entropy_with_logits_2/Reshape_2-softmax_cross_entropy_with_logits_3/Reshape_2*
T0*
out_type0*
_class
loc:@concat*
N*,
_output_shapes
::::
Э
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/modgradients/concat_grad/ShapeNgradients/concat_grad/ShapeN:1gradients/concat_grad/ShapeN:2gradients/concat_grad/ShapeN:3*
N*,
_output_shapes
::::*
_class
loc:@concat
џ
gradients/concat_grad/SliceSlicegradients/Mean_4_grad/truediv"gradients/concat_grad/ConcatOffsetgradients/concat_grad/ShapeN*
T0*
Index0*
_class
loc:@concat*#
_output_shapes
:€€€€€€€€€
б
gradients/concat_grad/Slice_1Slicegradients/Mean_4_grad/truediv$gradients/concat_grad/ConcatOffset:1gradients/concat_grad/ShapeN:1*
T0*
Index0*
_class
loc:@concat*#
_output_shapes
:€€€€€€€€€
б
gradients/concat_grad/Slice_2Slicegradients/Mean_4_grad/truediv$gradients/concat_grad/ConcatOffset:2gradients/concat_grad/ShapeN:2*#
_output_shapes
:€€€€€€€€€*
T0*
Index0*
_class
loc:@concat
б
gradients/concat_grad/Slice_3Slicegradients/Mean_4_grad/truediv$gradients/concat_grad/ConcatOffset:3gradients/concat_grad/ShapeN:3*
_class
loc:@concat*#
_output_shapes
:€€€€€€€€€*
T0*
Index0
ђ
&gradients/concat_grad/tuple/group_depsNoOp^gradients/concat_grad/Slice^gradients/concat_grad/Slice_1^gradients/concat_grad/Slice_2^gradients/concat_grad/Slice_3
…
.gradients/concat_grad/tuple/control_dependencyIdentitygradients/concat_grad/Slice'^gradients/concat_grad/tuple/group_deps*
T0*
_class
loc:@concat*#
_output_shapes
:€€€€€€€€€
Ќ
0gradients/concat_grad/tuple/control_dependency_1Identitygradients/concat_grad/Slice_1'^gradients/concat_grad/tuple/group_deps*
T0*
_class
loc:@concat*#
_output_shapes
:€€€€€€€€€
Ќ
0gradients/concat_grad/tuple/control_dependency_2Identitygradients/concat_grad/Slice_2'^gradients/concat_grad/tuple/group_deps*
T0*
_class
loc:@concat*#
_output_shapes
:€€€€€€€€€
Ќ
0gradients/concat_grad/tuple/control_dependency_3Identitygradients/concat_grad/Slice_3'^gradients/concat_grad/tuple/group_deps*
T0*
_class
loc:@concat*#
_output_shapes
:€€€€€€€€€
б
@gradients/softmax_cross_entropy_with_logits/Reshape_2_grad/ShapeShape!softmax_cross_entropy_with_logits*
T0*
out_type0*>
_class4
20loc:@softmax_cross_entropy_with_logits/Reshape_2*
_output_shapes
:
ї
Bgradients/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeReshape.gradients/concat_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits/Reshape_2_grad/Shape*
Tshape0*>
_class4
20loc:@softmax_cross_entropy_with_logits/Reshape_2*#
_output_shapes
:€€€€€€€€€*
T0
з
Bgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_1*
out_type0*@
_class6
42loc:@softmax_cross_entropy_with_logits_1/Reshape_2*
_output_shapes
:*
T0
√
Dgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ReshapeReshape0gradients/concat_grad/tuple/control_dependency_1Bgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/Shape*
T0*
Tshape0*@
_class6
42loc:@softmax_cross_entropy_with_logits_1/Reshape_2*#
_output_shapes
:€€€€€€€€€
з
Bgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_2*
T0*
out_type0*@
_class6
42loc:@softmax_cross_entropy_with_logits_2/Reshape_2*
_output_shapes
:
√
Dgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ReshapeReshape0gradients/concat_grad/tuple/control_dependency_2Bgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/Shape*
T0*
Tshape0*@
_class6
42loc:@softmax_cross_entropy_with_logits_2/Reshape_2*#
_output_shapes
:€€€€€€€€€
з
Bgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_3*
T0*
out_type0*@
_class6
42loc:@softmax_cross_entropy_with_logits_3/Reshape_2*
_output_shapes
:
√
Dgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ReshapeReshape0gradients/concat_grad/tuple/control_dependency_3Bgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/Shape*
T0*
Tshape0*@
_class6
42loc:@softmax_cross_entropy_with_logits_3/Reshape_2*#
_output_shapes
:€€€€€€€€€
Ј
gradients/zeros_like	ZerosLike#softmax_cross_entropy_with_logits:1*
T0*4
_class*
(&loc:@softmax_cross_entropy_with_logits*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ј
?gradients/softmax_cross_entropy_with_logits_grad/ExpandDims/dimConst*
valueB :
€€€€€€€€€*4
_class*
(&loc:@softmax_cross_entropy_with_logits*
dtype0*
_output_shapes
: 
¬
;gradients/softmax_cross_entropy_with_logits_grad/ExpandDims
ExpandDimsBgradients/softmax_cross_entropy_with_logits/Reshape_2_grad/Reshape?gradients/softmax_cross_entropy_with_logits_grad/ExpandDims/dim*
T0*4
_class*
(&loc:@softmax_cross_entropy_with_logits*'
_output_shapes
:€€€€€€€€€*

Tdim0
О
4gradients/softmax_cross_entropy_with_logits_grad/mulMul;gradients/softmax_cross_entropy_with_logits_grad/ExpandDims#softmax_cross_entropy_with_logits:1*
T0*4
_class*
(&loc:@softmax_cross_entropy_with_logits*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
е
;gradients/softmax_cross_entropy_with_logits_grad/LogSoftmax
LogSoftmax)softmax_cross_entropy_with_logits/Reshape*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0*4
_class*
(&loc:@softmax_cross_entropy_with_logits
й
4gradients/softmax_cross_entropy_with_logits_grad/NegNeg;gradients/softmax_cross_entropy_with_logits_grad/LogSoftmax*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0*4
_class*
(&loc:@softmax_cross_entropy_with_logits
¬
Agradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€*4
_class*
(&loc:@softmax_cross_entropy_with_logits
∆
=gradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1
ExpandDimsBgradients/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dim*
T0*4
_class*
(&loc:@softmax_cross_entropy_with_logits*'
_output_shapes
:€€€€€€€€€*

Tdim0
£
6gradients/softmax_cross_entropy_with_logits_grad/mul_1Mul=gradients/softmax_cross_entropy_with_logits_grad/ExpandDims_14gradients/softmax_cross_entropy_with_logits_grad/Neg*
T0*4
_class*
(&loc:@softmax_cross_entropy_with_logits*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
є
Agradients/softmax_cross_entropy_with_logits_grad/tuple/group_depsNoOp5^gradients/softmax_cross_entropy_with_logits_grad/mul7^gradients/softmax_cross_entropy_with_logits_grad/mul_1
ј
Igradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependencyIdentity4gradients/softmax_cross_entropy_with_logits_grad/mulB^gradients/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*4
_class*
(&loc:@softmax_cross_entropy_with_logits*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ƒ
Kgradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependency_1Identity6gradients/softmax_cross_entropy_with_logits_grad/mul_1B^gradients/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*4
_class*
(&loc:@softmax_cross_entropy_with_logits*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
љ
gradients/zeros_like_1	ZerosLike%softmax_cross_entropy_with_logits_1:1*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0*6
_class,
*(loc:@softmax_cross_entropy_with_logits_1
ƒ
Agradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims/dimConst*
valueB :
€€€€€€€€€*6
_class,
*(loc:@softmax_cross_entropy_with_logits_1*
dtype0*
_output_shapes
: 
 
=gradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims
ExpandDimsDgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims/dim*

Tdim0*
T0*6
_class,
*(loc:@softmax_cross_entropy_with_logits_1*'
_output_shapes
:€€€€€€€€€
Ц
6gradients/softmax_cross_entropy_with_logits_1_grad/mulMul=gradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims%softmax_cross_entropy_with_logits_1:1*
T0*6
_class,
*(loc:@softmax_cross_entropy_with_logits_1*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
л
=gradients/softmax_cross_entropy_with_logits_1_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_1/Reshape*
T0*6
_class,
*(loc:@softmax_cross_entropy_with_logits_1*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
п
6gradients/softmax_cross_entropy_with_logits_1_grad/NegNeg=gradients/softmax_cross_entropy_with_logits_1_grad/LogSoftmax*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0*6
_class,
*(loc:@softmax_cross_entropy_with_logits_1
∆
Cgradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_1/dimConst*
valueB :
€€€€€€€€€*6
_class,
*(loc:@softmax_cross_entropy_with_logits_1*
dtype0*
_output_shapes
: 
ќ
?gradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_1
ExpandDimsDgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ReshapeCgradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_1/dim*

Tdim0*
T0*6
_class,
*(loc:@softmax_cross_entropy_with_logits_1*'
_output_shapes
:€€€€€€€€€
Ђ
8gradients/softmax_cross_entropy_with_logits_1_grad/mul_1Mul?gradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_16gradients/softmax_cross_entropy_with_logits_1_grad/Neg*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0*6
_class,
*(loc:@softmax_cross_entropy_with_logits_1
њ
Cgradients/softmax_cross_entropy_with_logits_1_grad/tuple/group_depsNoOp7^gradients/softmax_cross_entropy_with_logits_1_grad/mul9^gradients/softmax_cross_entropy_with_logits_1_grad/mul_1
»
Kgradients/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependencyIdentity6gradients/softmax_cross_entropy_with_logits_1_grad/mulD^gradients/softmax_cross_entropy_with_logits_1_grad/tuple/group_deps*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0*6
_class,
*(loc:@softmax_cross_entropy_with_logits_1
ћ
Mgradients/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependency_1Identity8gradients/softmax_cross_entropy_with_logits_1_grad/mul_1D^gradients/softmax_cross_entropy_with_logits_1_grad/tuple/group_deps*
T0*6
_class,
*(loc:@softmax_cross_entropy_with_logits_1*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
љ
gradients/zeros_like_2	ZerosLike%softmax_cross_entropy_with_logits_2:1*6
_class,
*(loc:@softmax_cross_entropy_with_logits_2*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
ƒ
Agradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims/dimConst*
valueB :
€€€€€€€€€*6
_class,
*(loc:@softmax_cross_entropy_with_logits_2*
dtype0*
_output_shapes
: 
 
=gradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims
ExpandDimsDgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims/dim*'
_output_shapes
:€€€€€€€€€*

Tdim0*
T0*6
_class,
*(loc:@softmax_cross_entropy_with_logits_2
Ц
6gradients/softmax_cross_entropy_with_logits_2_grad/mulMul=gradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims%softmax_cross_entropy_with_logits_2:1*
T0*6
_class,
*(loc:@softmax_cross_entropy_with_logits_2*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
л
=gradients/softmax_cross_entropy_with_logits_2_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_2/Reshape*
T0*6
_class,
*(loc:@softmax_cross_entropy_with_logits_2*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
п
6gradients/softmax_cross_entropy_with_logits_2_grad/NegNeg=gradients/softmax_cross_entropy_with_logits_2_grad/LogSoftmax*
T0*6
_class,
*(loc:@softmax_cross_entropy_with_logits_2*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
∆
Cgradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims_1/dimConst*
valueB :
€€€€€€€€€*6
_class,
*(loc:@softmax_cross_entropy_with_logits_2*
dtype0*
_output_shapes
: 
ќ
?gradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims_1
ExpandDimsDgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ReshapeCgradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims_1/dim*'
_output_shapes
:€€€€€€€€€*

Tdim0*
T0*6
_class,
*(loc:@softmax_cross_entropy_with_logits_2
Ђ
8gradients/softmax_cross_entropy_with_logits_2_grad/mul_1Mul?gradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims_16gradients/softmax_cross_entropy_with_logits_2_grad/Neg*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0*6
_class,
*(loc:@softmax_cross_entropy_with_logits_2
њ
Cgradients/softmax_cross_entropy_with_logits_2_grad/tuple/group_depsNoOp7^gradients/softmax_cross_entropy_with_logits_2_grad/mul9^gradients/softmax_cross_entropy_with_logits_2_grad/mul_1
»
Kgradients/softmax_cross_entropy_with_logits_2_grad/tuple/control_dependencyIdentity6gradients/softmax_cross_entropy_with_logits_2_grad/mulD^gradients/softmax_cross_entropy_with_logits_2_grad/tuple/group_deps*
T0*6
_class,
*(loc:@softmax_cross_entropy_with_logits_2*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ћ
Mgradients/softmax_cross_entropy_with_logits_2_grad/tuple/control_dependency_1Identity8gradients/softmax_cross_entropy_with_logits_2_grad/mul_1D^gradients/softmax_cross_entropy_with_logits_2_grad/tuple/group_deps*
T0*6
_class,
*(loc:@softmax_cross_entropy_with_logits_2*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
љ
gradients/zeros_like_3	ZerosLike%softmax_cross_entropy_with_logits_3:1*
T0*6
_class,
*(loc:@softmax_cross_entropy_with_logits_3*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ƒ
Agradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€*6
_class,
*(loc:@softmax_cross_entropy_with_logits_3
 
=gradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims
ExpandDimsDgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims/dim*

Tdim0*
T0*6
_class,
*(loc:@softmax_cross_entropy_with_logits_3*'
_output_shapes
:€€€€€€€€€
Ц
6gradients/softmax_cross_entropy_with_logits_3_grad/mulMul=gradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims%softmax_cross_entropy_with_logits_3:1*6
_class,
*(loc:@softmax_cross_entropy_with_logits_3*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
л
=gradients/softmax_cross_entropy_with_logits_3_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_3/Reshape*
T0*6
_class,
*(loc:@softmax_cross_entropy_with_logits_3*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
п
6gradients/softmax_cross_entropy_with_logits_3_grad/NegNeg=gradients/softmax_cross_entropy_with_logits_3_grad/LogSoftmax*
T0*6
_class,
*(loc:@softmax_cross_entropy_with_logits_3*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
∆
Cgradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims_1/dimConst*
valueB :
€€€€€€€€€*6
_class,
*(loc:@softmax_cross_entropy_with_logits_3*
dtype0*
_output_shapes
: 
ќ
?gradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims_1
ExpandDimsDgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ReshapeCgradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims_1/dim*
T0*6
_class,
*(loc:@softmax_cross_entropy_with_logits_3*'
_output_shapes
:€€€€€€€€€*

Tdim0
Ђ
8gradients/softmax_cross_entropy_with_logits_3_grad/mul_1Mul?gradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims_16gradients/softmax_cross_entropy_with_logits_3_grad/Neg*
T0*6
_class,
*(loc:@softmax_cross_entropy_with_logits_3*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
њ
Cgradients/softmax_cross_entropy_with_logits_3_grad/tuple/group_depsNoOp7^gradients/softmax_cross_entropy_with_logits_3_grad/mul9^gradients/softmax_cross_entropy_with_logits_3_grad/mul_1
»
Kgradients/softmax_cross_entropy_with_logits_3_grad/tuple/control_dependencyIdentity6gradients/softmax_cross_entropy_with_logits_3_grad/mulD^gradients/softmax_cross_entropy_with_logits_3_grad/tuple/group_deps*
T0*6
_class,
*(loc:@softmax_cross_entropy_with_logits_3*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ћ
Mgradients/softmax_cross_entropy_with_logits_3_grad/tuple/control_dependency_1Identity8gradients/softmax_cross_entropy_with_logits_3_grad/mul_1D^gradients/softmax_cross_entropy_with_logits_3_grad/tuple/group_deps*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0*6
_class,
*(loc:@softmax_cross_entropy_with_logits_3
ћ
>gradients/softmax_cross_entropy_with_logits/Reshape_grad/ShapeShapeLF/dense/BiasAdd*
T0*
out_type0*<
_class2
0.loc:@softmax_cross_entropy_with_logits/Reshape*
_output_shapes
:
‘
@gradients/softmax_cross_entropy_with_logits/Reshape_grad/ReshapeReshapeIgradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependency>gradients/softmax_cross_entropy_with_logits/Reshape_grad/Shape*'
_output_shapes
:€€€€€€€€€
*
T0*
Tshape0*<
_class2
0.loc:@softmax_cross_entropy_with_logits/Reshape
“
@gradients/softmax_cross_entropy_with_logits_1/Reshape_grad/ShapeShapeLF_1/dense/BiasAdd*
T0*
out_type0*>
_class4
20loc:@softmax_cross_entropy_with_logits_1/Reshape*
_output_shapes
:
№
Bgradients/softmax_cross_entropy_with_logits_1/Reshape_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits_1/Reshape_grad/Shape*'
_output_shapes
:€€€€€€€€€
*
T0*
Tshape0*>
_class4
20loc:@softmax_cross_entropy_with_logits_1/Reshape
“
@gradients/softmax_cross_entropy_with_logits_2/Reshape_grad/ShapeShapeLF_2/dense/BiasAdd*
_output_shapes
:*
T0*
out_type0*>
_class4
20loc:@softmax_cross_entropy_with_logits_2/Reshape
№
Bgradients/softmax_cross_entropy_with_logits_2/Reshape_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_2_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits_2/Reshape_grad/Shape*
T0*
Tshape0*>
_class4
20loc:@softmax_cross_entropy_with_logits_2/Reshape*'
_output_shapes
:€€€€€€€€€

“
@gradients/softmax_cross_entropy_with_logits_3/Reshape_grad/ShapeShapeLF_3/dense/BiasAdd*
out_type0*>
_class4
20loc:@softmax_cross_entropy_with_logits_3/Reshape*
_output_shapes
:*
T0
№
Bgradients/softmax_cross_entropy_with_logits_3/Reshape_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_3_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits_3/Reshape_grad/Shape*
T0*
Tshape0*>
_class4
20loc:@softmax_cross_entropy_with_logits_3/Reshape*'
_output_shapes
:€€€€€€€€€

Ё
+gradients/LF/dense/BiasAdd_grad/BiasAddGradBiasAddGrad@gradients/softmax_cross_entropy_with_logits/Reshape_grad/Reshape*#
_class
loc:@LF/dense/BiasAdd*
data_formatNHWC*
_output_shapes
:
*
T0
©
0gradients/LF/dense/BiasAdd_grad/tuple/group_depsNoOp,^gradients/LF/dense/BiasAdd_grad/BiasAddGradA^gradients/softmax_cross_entropy_with_logits/Reshape_grad/Reshape
©
8gradients/LF/dense/BiasAdd_grad/tuple/control_dependencyIdentity@gradients/softmax_cross_entropy_with_logits/Reshape_grad/Reshape1^gradients/LF/dense/BiasAdd_grad/tuple/group_deps*
T0*<
_class2
0.loc:@softmax_cross_entropy_with_logits/Reshape*'
_output_shapes
:€€€€€€€€€

р
:gradients/LF/dense/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/LF/dense/BiasAdd_grad/BiasAddGrad1^gradients/LF/dense/BiasAdd_grad/tuple/group_deps*
T0*#
_class
loc:@LF/dense/BiasAdd*
_output_shapes
:

г
-gradients/LF_1/dense/BiasAdd_grad/BiasAddGradBiasAddGradBgradients/softmax_cross_entropy_with_logits_1/Reshape_grad/Reshape*
T0*%
_class
loc:@LF_1/dense/BiasAdd*
data_formatNHWC*
_output_shapes
:

ѓ
2gradients/LF_1/dense/BiasAdd_grad/tuple/group_depsNoOp.^gradients/LF_1/dense/BiasAdd_grad/BiasAddGradC^gradients/softmax_cross_entropy_with_logits_1/Reshape_grad/Reshape
±
:gradients/LF_1/dense/BiasAdd_grad/tuple/control_dependencyIdentityBgradients/softmax_cross_entropy_with_logits_1/Reshape_grad/Reshape3^gradients/LF_1/dense/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@softmax_cross_entropy_with_logits_1/Reshape*'
_output_shapes
:€€€€€€€€€

ш
<gradients/LF_1/dense/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/LF_1/dense/BiasAdd_grad/BiasAddGrad3^gradients/LF_1/dense/BiasAdd_grad/tuple/group_deps*%
_class
loc:@LF_1/dense/BiasAdd*
_output_shapes
:
*
T0
г
-gradients/LF_2/dense/BiasAdd_grad/BiasAddGradBiasAddGradBgradients/softmax_cross_entropy_with_logits_2/Reshape_grad/Reshape*
T0*%
_class
loc:@LF_2/dense/BiasAdd*
data_formatNHWC*
_output_shapes
:

ѓ
2gradients/LF_2/dense/BiasAdd_grad/tuple/group_depsNoOp.^gradients/LF_2/dense/BiasAdd_grad/BiasAddGradC^gradients/softmax_cross_entropy_with_logits_2/Reshape_grad/Reshape
±
:gradients/LF_2/dense/BiasAdd_grad/tuple/control_dependencyIdentityBgradients/softmax_cross_entropy_with_logits_2/Reshape_grad/Reshape3^gradients/LF_2/dense/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@softmax_cross_entropy_with_logits_2/Reshape*'
_output_shapes
:€€€€€€€€€

ш
<gradients/LF_2/dense/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/LF_2/dense/BiasAdd_grad/BiasAddGrad3^gradients/LF_2/dense/BiasAdd_grad/tuple/group_deps*
T0*%
_class
loc:@LF_2/dense/BiasAdd*
_output_shapes
:

г
-gradients/LF_3/dense/BiasAdd_grad/BiasAddGradBiasAddGradBgradients/softmax_cross_entropy_with_logits_3/Reshape_grad/Reshape*
T0*%
_class
loc:@LF_3/dense/BiasAdd*
data_formatNHWC*
_output_shapes
:

ѓ
2gradients/LF_3/dense/BiasAdd_grad/tuple/group_depsNoOp.^gradients/LF_3/dense/BiasAdd_grad/BiasAddGradC^gradients/softmax_cross_entropy_with_logits_3/Reshape_grad/Reshape
±
:gradients/LF_3/dense/BiasAdd_grad/tuple/control_dependencyIdentityBgradients/softmax_cross_entropy_with_logits_3/Reshape_grad/Reshape3^gradients/LF_3/dense/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@softmax_cross_entropy_with_logits_3/Reshape*'
_output_shapes
:€€€€€€€€€

ш
<gradients/LF_3/dense/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/LF_3/dense/BiasAdd_grad/BiasAddGrad3^gradients/LF_3/dense/BiasAdd_grad/tuple/group_deps*%
_class
loc:@LF_3/dense/BiasAdd*
_output_shapes
:
*
T0
ь
%gradients/LF/dense/MatMul_grad/MatMulMatMul8gradients/LF/dense/BiasAdd_grad/tuple/control_dependencyLF/dense/kernel/read*
transpose_b(*
T0*"
_class
loc:@LF/dense/MatMul*
transpose_a( *(
_output_shapes
:€€€€€€€€€А
о
'gradients/LF/dense/MatMul_grad/MatMul_1MatMulL4/dense/Relu8gradients/LF/dense/BiasAdd_grad/tuple/control_dependency*
T0*"
_class
loc:@LF/dense/MatMul*
transpose_a(*
_output_shapes
:	А
*
transpose_b( 
Й
/gradients/LF/dense/MatMul_grad/tuple/group_depsNoOp&^gradients/LF/dense/MatMul_grad/MatMul(^gradients/LF/dense/MatMul_grad/MatMul_1
у
7gradients/LF/dense/MatMul_grad/tuple/control_dependencyIdentity%gradients/LF/dense/MatMul_grad/MatMul0^gradients/LF/dense/MatMul_grad/tuple/group_deps*
T0*"
_class
loc:@LF/dense/MatMul*(
_output_shapes
:€€€€€€€€€А
о
9gradients/LF/dense/MatMul_grad/tuple/control_dependency_1Identity'gradients/LF/dense/MatMul_grad/MatMul_10^gradients/LF/dense/MatMul_grad/tuple/group_deps*
T0*"
_class
loc:@LF/dense/MatMul*
_output_shapes
:	А

В
'gradients/LF_1/dense/MatMul_grad/MatMulMatMul:gradients/LF_1/dense/BiasAdd_grad/tuple/control_dependencyLF/dense/kernel/read*$
_class
loc:@LF_1/dense/MatMul*
transpose_a( *(
_output_shapes
:€€€€€€€€€А*
transpose_b(*
T0
ц
)gradients/LF_1/dense/MatMul_grad/MatMul_1MatMulL4_1/dense/Relu:gradients/LF_1/dense/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
_output_shapes
:	А
*
transpose_b( *
T0*$
_class
loc:@LF_1/dense/MatMul
П
1gradients/LF_1/dense/MatMul_grad/tuple/group_depsNoOp(^gradients/LF_1/dense/MatMul_grad/MatMul*^gradients/LF_1/dense/MatMul_grad/MatMul_1
ы
9gradients/LF_1/dense/MatMul_grad/tuple/control_dependencyIdentity'gradients/LF_1/dense/MatMul_grad/MatMul2^gradients/LF_1/dense/MatMul_grad/tuple/group_deps*
T0*$
_class
loc:@LF_1/dense/MatMul*(
_output_shapes
:€€€€€€€€€А
ц
;gradients/LF_1/dense/MatMul_grad/tuple/control_dependency_1Identity)gradients/LF_1/dense/MatMul_grad/MatMul_12^gradients/LF_1/dense/MatMul_grad/tuple/group_deps*
T0*$
_class
loc:@LF_1/dense/MatMul*
_output_shapes
:	А

В
'gradients/LF_2/dense/MatMul_grad/MatMulMatMul:gradients/LF_2/dense/BiasAdd_grad/tuple/control_dependencyLF/dense/kernel/read*
T0*$
_class
loc:@LF_2/dense/MatMul*
transpose_a( *(
_output_shapes
:€€€€€€€€€А*
transpose_b(
ц
)gradients/LF_2/dense/MatMul_grad/MatMul_1MatMulL4_2/dense/Relu:gradients/LF_2/dense/BiasAdd_grad/tuple/control_dependency*
T0*$
_class
loc:@LF_2/dense/MatMul*
transpose_a(*
_output_shapes
:	А
*
transpose_b( 
П
1gradients/LF_2/dense/MatMul_grad/tuple/group_depsNoOp(^gradients/LF_2/dense/MatMul_grad/MatMul*^gradients/LF_2/dense/MatMul_grad/MatMul_1
ы
9gradients/LF_2/dense/MatMul_grad/tuple/control_dependencyIdentity'gradients/LF_2/dense/MatMul_grad/MatMul2^gradients/LF_2/dense/MatMul_grad/tuple/group_deps*$
_class
loc:@LF_2/dense/MatMul*(
_output_shapes
:€€€€€€€€€А*
T0
ц
;gradients/LF_2/dense/MatMul_grad/tuple/control_dependency_1Identity)gradients/LF_2/dense/MatMul_grad/MatMul_12^gradients/LF_2/dense/MatMul_grad/tuple/group_deps*
_output_shapes
:	А
*
T0*$
_class
loc:@LF_2/dense/MatMul
В
'gradients/LF_3/dense/MatMul_grad/MatMulMatMul:gradients/LF_3/dense/BiasAdd_grad/tuple/control_dependencyLF/dense/kernel/read*
T0*$
_class
loc:@LF_3/dense/MatMul*
transpose_a( *(
_output_shapes
:€€€€€€€€€А*
transpose_b(
ц
)gradients/LF_3/dense/MatMul_grad/MatMul_1MatMulL4_3/dense/Relu:gradients/LF_3/dense/BiasAdd_grad/tuple/control_dependency*
T0*$
_class
loc:@LF_3/dense/MatMul*
transpose_a(*
_output_shapes
:	А
*
transpose_b( 
П
1gradients/LF_3/dense/MatMul_grad/tuple/group_depsNoOp(^gradients/LF_3/dense/MatMul_grad/MatMul*^gradients/LF_3/dense/MatMul_grad/MatMul_1
ы
9gradients/LF_3/dense/MatMul_grad/tuple/control_dependencyIdentity'gradients/LF_3/dense/MatMul_grad/MatMul2^gradients/LF_3/dense/MatMul_grad/tuple/group_deps*$
_class
loc:@LF_3/dense/MatMul*(
_output_shapes
:€€€€€€€€€А*
T0
ц
;gradients/LF_3/dense/MatMul_grad/tuple/control_dependency_1Identity)gradients/LF_3/dense/MatMul_grad/MatMul_12^gradients/LF_3/dense/MatMul_grad/tuple/group_deps*
T0*$
_class
loc:@LF_3/dense/MatMul*
_output_shapes
:	А

№
gradients/AddNAddN:gradients/LF/dense/BiasAdd_grad/tuple/control_dependency_1<gradients/LF_1/dense/BiasAdd_grad/tuple/control_dependency_1<gradients/LF_2/dense/BiasAdd_grad/tuple/control_dependency_1<gradients/LF_3/dense/BiasAdd_grad/tuple/control_dependency_1* 
_class
loc:@LF/dense/bias*
N*
_output_shapes
:
*
T0
ќ
%gradients/L4/dense/Relu_grad/ReluGradReluGrad7gradients/LF/dense/MatMul_grad/tuple/control_dependencyL4/dense/Relu*
T0* 
_class
loc:@L4/dense/Relu*(
_output_shapes
:€€€€€€€€€А
÷
'gradients/L4_1/dense/Relu_grad/ReluGradReluGrad9gradients/LF_1/dense/MatMul_grad/tuple/control_dependencyL4_1/dense/Relu*
T0*"
_class
loc:@L4_1/dense/Relu*(
_output_shapes
:€€€€€€€€€А
÷
'gradients/L4_2/dense/Relu_grad/ReluGradReluGrad9gradients/LF_2/dense/MatMul_grad/tuple/control_dependencyL4_2/dense/Relu*(
_output_shapes
:€€€€€€€€€А*
T0*"
_class
loc:@L4_2/dense/Relu
÷
'gradients/L4_3/dense/Relu_grad/ReluGradReluGrad9gradients/LF_3/dense/MatMul_grad/tuple/control_dependencyL4_3/dense/Relu*"
_class
loc:@L4_3/dense/Relu*(
_output_shapes
:€€€€€€€€€А*
T0
б
gradients/AddN_1AddN9gradients/LF/dense/MatMul_grad/tuple/control_dependency_1;gradients/LF_1/dense/MatMul_grad/tuple/control_dependency_1;gradients/LF_2/dense/MatMul_grad/tuple/control_dependency_1;gradients/LF_3/dense/MatMul_grad/tuple/control_dependency_1*
N*
_output_shapes
:	А
*
T0*"
_class
loc:@LF/dense/kernel
√
+gradients/L4/dense/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/L4/dense/Relu_grad/ReluGrad*#
_class
loc:@L4/dense/BiasAdd*
data_formatNHWC*
_output_shapes	
:А*
T0
О
0gradients/L4/dense/BiasAdd_grad/tuple/group_depsNoOp,^gradients/L4/dense/BiasAdd_grad/BiasAddGrad&^gradients/L4/dense/Relu_grad/ReluGrad
у
8gradients/L4/dense/BiasAdd_grad/tuple/control_dependencyIdentity%gradients/L4/dense/Relu_grad/ReluGrad1^gradients/L4/dense/BiasAdd_grad/tuple/group_deps*
T0* 
_class
loc:@L4/dense/Relu*(
_output_shapes
:€€€€€€€€€А
с
:gradients/L4/dense/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/L4/dense/BiasAdd_grad/BiasAddGrad1^gradients/L4/dense/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:А*
T0*#
_class
loc:@L4/dense/BiasAdd
…
-gradients/L4_1/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients/L4_1/dense/Relu_grad/ReluGrad*
T0*%
_class
loc:@L4_1/dense/BiasAdd*
data_formatNHWC*
_output_shapes	
:А
Ф
2gradients/L4_1/dense/BiasAdd_grad/tuple/group_depsNoOp.^gradients/L4_1/dense/BiasAdd_grad/BiasAddGrad(^gradients/L4_1/dense/Relu_grad/ReluGrad
ы
:gradients/L4_1/dense/BiasAdd_grad/tuple/control_dependencyIdentity'gradients/L4_1/dense/Relu_grad/ReluGrad3^gradients/L4_1/dense/BiasAdd_grad/tuple/group_deps*
T0*"
_class
loc:@L4_1/dense/Relu*(
_output_shapes
:€€€€€€€€€А
щ
<gradients/L4_1/dense/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/L4_1/dense/BiasAdd_grad/BiasAddGrad3^gradients/L4_1/dense/BiasAdd_grad/tuple/group_deps*
T0*%
_class
loc:@L4_1/dense/BiasAdd*
_output_shapes	
:А
…
-gradients/L4_2/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients/L4_2/dense/Relu_grad/ReluGrad*
T0*%
_class
loc:@L4_2/dense/BiasAdd*
data_formatNHWC*
_output_shapes	
:А
Ф
2gradients/L4_2/dense/BiasAdd_grad/tuple/group_depsNoOp.^gradients/L4_2/dense/BiasAdd_grad/BiasAddGrad(^gradients/L4_2/dense/Relu_grad/ReluGrad
ы
:gradients/L4_2/dense/BiasAdd_grad/tuple/control_dependencyIdentity'gradients/L4_2/dense/Relu_grad/ReluGrad3^gradients/L4_2/dense/BiasAdd_grad/tuple/group_deps*"
_class
loc:@L4_2/dense/Relu*(
_output_shapes
:€€€€€€€€€А*
T0
щ
<gradients/L4_2/dense/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/L4_2/dense/BiasAdd_grad/BiasAddGrad3^gradients/L4_2/dense/BiasAdd_grad/tuple/group_deps*
T0*%
_class
loc:@L4_2/dense/BiasAdd*
_output_shapes	
:А
…
-gradients/L4_3/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients/L4_3/dense/Relu_grad/ReluGrad*
T0*%
_class
loc:@L4_3/dense/BiasAdd*
data_formatNHWC*
_output_shapes	
:А
Ф
2gradients/L4_3/dense/BiasAdd_grad/tuple/group_depsNoOp.^gradients/L4_3/dense/BiasAdd_grad/BiasAddGrad(^gradients/L4_3/dense/Relu_grad/ReluGrad
ы
:gradients/L4_3/dense/BiasAdd_grad/tuple/control_dependencyIdentity'gradients/L4_3/dense/Relu_grad/ReluGrad3^gradients/L4_3/dense/BiasAdd_grad/tuple/group_deps*"
_class
loc:@L4_3/dense/Relu*(
_output_shapes
:€€€€€€€€€А*
T0
щ
<gradients/L4_3/dense/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/L4_3/dense/BiasAdd_grad/BiasAddGrad3^gradients/L4_3/dense/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:А*
T0*%
_class
loc:@L4_3/dense/BiasAdd
ь
%gradients/L4/dense/MatMul_grad/MatMulMatMul8gradients/L4/dense/BiasAdd_grad/tuple/control_dependencyL4/dense/kernel/read*
transpose_a( *(
_output_shapes
:€€€€€€€€€А*
transpose_b(*
T0*"
_class
loc:@L4/dense/MatMul
И
'gradients/L4/dense/MatMul_grad/MatMul_1MatMul&L4/batch_normalization/batchnorm/add_18gradients/L4/dense/BiasAdd_grad/tuple/control_dependency*
T0*"
_class
loc:@L4/dense/MatMul*
transpose_a(* 
_output_shapes
:
АА*
transpose_b( 
Й
/gradients/L4/dense/MatMul_grad/tuple/group_depsNoOp&^gradients/L4/dense/MatMul_grad/MatMul(^gradients/L4/dense/MatMul_grad/MatMul_1
у
7gradients/L4/dense/MatMul_grad/tuple/control_dependencyIdentity%gradients/L4/dense/MatMul_grad/MatMul0^gradients/L4/dense/MatMul_grad/tuple/group_deps*
T0*"
_class
loc:@L4/dense/MatMul*(
_output_shapes
:€€€€€€€€€А
п
9gradients/L4/dense/MatMul_grad/tuple/control_dependency_1Identity'gradients/L4/dense/MatMul_grad/MatMul_10^gradients/L4/dense/MatMul_grad/tuple/group_deps*
T0*"
_class
loc:@L4/dense/MatMul* 
_output_shapes
:
АА
В
'gradients/L4_1/dense/MatMul_grad/MatMulMatMul:gradients/L4_1/dense/BiasAdd_grad/tuple/control_dependencyL4/dense/kernel/read*
transpose_a( *(
_output_shapes
:€€€€€€€€€А*
transpose_b(*
T0*$
_class
loc:@L4_1/dense/MatMul
Р
)gradients/L4_1/dense/MatMul_grad/MatMul_1MatMul(L4_1/batch_normalization/batchnorm/add_1:gradients/L4_1/dense/BiasAdd_grad/tuple/control_dependency*
T0*$
_class
loc:@L4_1/dense/MatMul*
transpose_a(* 
_output_shapes
:
АА*
transpose_b( 
П
1gradients/L4_1/dense/MatMul_grad/tuple/group_depsNoOp(^gradients/L4_1/dense/MatMul_grad/MatMul*^gradients/L4_1/dense/MatMul_grad/MatMul_1
ы
9gradients/L4_1/dense/MatMul_grad/tuple/control_dependencyIdentity'gradients/L4_1/dense/MatMul_grad/MatMul2^gradients/L4_1/dense/MatMul_grad/tuple/group_deps*
T0*$
_class
loc:@L4_1/dense/MatMul*(
_output_shapes
:€€€€€€€€€А
ч
;gradients/L4_1/dense/MatMul_grad/tuple/control_dependency_1Identity)gradients/L4_1/dense/MatMul_grad/MatMul_12^gradients/L4_1/dense/MatMul_grad/tuple/group_deps*
T0*$
_class
loc:@L4_1/dense/MatMul* 
_output_shapes
:
АА
В
'gradients/L4_2/dense/MatMul_grad/MatMulMatMul:gradients/L4_2/dense/BiasAdd_grad/tuple/control_dependencyL4/dense/kernel/read*
transpose_b(*
T0*$
_class
loc:@L4_2/dense/MatMul*
transpose_a( *(
_output_shapes
:€€€€€€€€€А
Р
)gradients/L4_2/dense/MatMul_grad/MatMul_1MatMul(L4_2/batch_normalization/batchnorm/add_1:gradients/L4_2/dense/BiasAdd_grad/tuple/control_dependency*
T0*$
_class
loc:@L4_2/dense/MatMul*
transpose_a(* 
_output_shapes
:
АА*
transpose_b( 
П
1gradients/L4_2/dense/MatMul_grad/tuple/group_depsNoOp(^gradients/L4_2/dense/MatMul_grad/MatMul*^gradients/L4_2/dense/MatMul_grad/MatMul_1
ы
9gradients/L4_2/dense/MatMul_grad/tuple/control_dependencyIdentity'gradients/L4_2/dense/MatMul_grad/MatMul2^gradients/L4_2/dense/MatMul_grad/tuple/group_deps*
T0*$
_class
loc:@L4_2/dense/MatMul*(
_output_shapes
:€€€€€€€€€А
ч
;gradients/L4_2/dense/MatMul_grad/tuple/control_dependency_1Identity)gradients/L4_2/dense/MatMul_grad/MatMul_12^gradients/L4_2/dense/MatMul_grad/tuple/group_deps*
T0*$
_class
loc:@L4_2/dense/MatMul* 
_output_shapes
:
АА
В
'gradients/L4_3/dense/MatMul_grad/MatMulMatMul:gradients/L4_3/dense/BiasAdd_grad/tuple/control_dependencyL4/dense/kernel/read*
T0*$
_class
loc:@L4_3/dense/MatMul*
transpose_a( *(
_output_shapes
:€€€€€€€€€А*
transpose_b(
Р
)gradients/L4_3/dense/MatMul_grad/MatMul_1MatMul(L4_3/batch_normalization/batchnorm/add_1:gradients/L4_3/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*$
_class
loc:@L4_3/dense/MatMul*
transpose_a(* 
_output_shapes
:
АА
П
1gradients/L4_3/dense/MatMul_grad/tuple/group_depsNoOp(^gradients/L4_3/dense/MatMul_grad/MatMul*^gradients/L4_3/dense/MatMul_grad/MatMul_1
ы
9gradients/L4_3/dense/MatMul_grad/tuple/control_dependencyIdentity'gradients/L4_3/dense/MatMul_grad/MatMul2^gradients/L4_3/dense/MatMul_grad/tuple/group_deps*$
_class
loc:@L4_3/dense/MatMul*(
_output_shapes
:€€€€€€€€€А*
T0
ч
;gradients/L4_3/dense/MatMul_grad/tuple/control_dependency_1Identity)gradients/L4_3/dense/MatMul_grad/MatMul_12^gradients/L4_3/dense/MatMul_grad/tuple/group_deps* 
_output_shapes
:
АА*
T0*$
_class
loc:@L4_3/dense/MatMul
я
gradients/AddN_2AddN:gradients/L4/dense/BiasAdd_grad/tuple/control_dependency_1<gradients/L4_1/dense/BiasAdd_grad/tuple/control_dependency_1<gradients/L4_2/dense/BiasAdd_grad/tuple/control_dependency_1<gradients/L4_3/dense/BiasAdd_grad/tuple/control_dependency_1*
N*
_output_shapes	
:А*
T0* 
_class
loc:@L4/dense/bias
№
;gradients/L4/batch_normalization/batchnorm/add_1_grad/ShapeShape&L4/batch_normalization/batchnorm/mul_1*
T0*
out_type0*9
_class/
-+loc:@L4/batch_normalization/batchnorm/add_1*
_output_shapes
:
√
=gradients/L4/batch_normalization/batchnorm/add_1_grad/Shape_1Const*
valueB:А*9
_class/
-+loc:@L4/batch_normalization/batchnorm/add_1*
dtype0*
_output_shapes
:
Ў
Kgradients/L4/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs;gradients/L4/batch_normalization/batchnorm/add_1_grad/Shape=gradients/L4/batch_normalization/batchnorm/add_1_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*9
_class/
-+loc:@L4/batch_normalization/batchnorm/add_1
Ѕ
9gradients/L4/batch_normalization/batchnorm/add_1_grad/SumSum7gradients/L4/dense/MatMul_grad/tuple/control_dependencyKgradients/L4/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs*9
_class/
-+loc:@L4/batch_normalization/batchnorm/add_1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Љ
=gradients/L4/batch_normalization/batchnorm/add_1_grad/ReshapeReshape9gradients/L4/batch_normalization/batchnorm/add_1_grad/Sum;gradients/L4/batch_normalization/batchnorm/add_1_grad/Shape*(
_output_shapes
:€€€€€€€€€А*
T0*
Tshape0*9
_class/
-+loc:@L4/batch_normalization/batchnorm/add_1
≈
;gradients/L4/batch_normalization/batchnorm/add_1_grad/Sum_1Sum7gradients/L4/dense/MatMul_grad/tuple/control_dependencyMgradients/L4/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*9
_class/
-+loc:@L4/batch_normalization/batchnorm/add_1
µ
?gradients/L4/batch_normalization/batchnorm/add_1_grad/Reshape_1Reshape;gradients/L4/batch_normalization/batchnorm/add_1_grad/Sum_1=gradients/L4/batch_normalization/batchnorm/add_1_grad/Shape_1*
T0*
Tshape0*9
_class/
-+loc:@L4/batch_normalization/batchnorm/add_1*
_output_shapes	
:А
–
Fgradients/L4/batch_normalization/batchnorm/add_1_grad/tuple/group_depsNoOp>^gradients/L4/batch_normalization/batchnorm/add_1_grad/Reshape@^gradients/L4/batch_normalization/batchnorm/add_1_grad/Reshape_1
–
Ngradients/L4/batch_normalization/batchnorm/add_1_grad/tuple/control_dependencyIdentity=gradients/L4/batch_normalization/batchnorm/add_1_grad/ReshapeG^gradients/L4/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
T0*9
_class/
-+loc:@L4/batch_normalization/batchnorm/add_1*(
_output_shapes
:€€€€€€€€€А
«
Pgradients/L4/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1Identity?gradients/L4/batch_normalization/batchnorm/add_1_grad/Reshape_1G^gradients/L4/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
_output_shapes	
:А*
T0*9
_class/
-+loc:@L4/batch_normalization/batchnorm/add_1
в
=gradients/L4_1/batch_normalization/batchnorm/add_1_grad/ShapeShape(L4_1/batch_normalization/batchnorm/mul_1*
out_type0*;
_class1
/-loc:@L4_1/batch_normalization/batchnorm/add_1*
_output_shapes
:*
T0
«
?gradients/L4_1/batch_normalization/batchnorm/add_1_grad/Shape_1Const*
valueB:А*;
_class1
/-loc:@L4_1/batch_normalization/batchnorm/add_1*
dtype0*
_output_shapes
:
а
Mgradients/L4_1/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/L4_1/batch_normalization/batchnorm/add_1_grad/Shape?gradients/L4_1/batch_normalization/batchnorm/add_1_grad/Shape_1*
T0*;
_class1
/-loc:@L4_1/batch_normalization/batchnorm/add_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
…
;gradients/L4_1/batch_normalization/batchnorm/add_1_grad/SumSum9gradients/L4_1/dense/MatMul_grad/tuple/control_dependencyMgradients/L4_1/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs*;
_class1
/-loc:@L4_1/batch_normalization/batchnorm/add_1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ƒ
?gradients/L4_1/batch_normalization/batchnorm/add_1_grad/ReshapeReshape;gradients/L4_1/batch_normalization/batchnorm/add_1_grad/Sum=gradients/L4_1/batch_normalization/batchnorm/add_1_grad/Shape*
T0*
Tshape0*;
_class1
/-loc:@L4_1/batch_normalization/batchnorm/add_1*(
_output_shapes
:€€€€€€€€€А
Ќ
=gradients/L4_1/batch_normalization/batchnorm/add_1_grad/Sum_1Sum9gradients/L4_1/dense/MatMul_grad/tuple/control_dependencyOgradients/L4_1/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*;
_class1
/-loc:@L4_1/batch_normalization/batchnorm/add_1
љ
Agradients/L4_1/batch_normalization/batchnorm/add_1_grad/Reshape_1Reshape=gradients/L4_1/batch_normalization/batchnorm/add_1_grad/Sum_1?gradients/L4_1/batch_normalization/batchnorm/add_1_grad/Shape_1*
Tshape0*;
_class1
/-loc:@L4_1/batch_normalization/batchnorm/add_1*
_output_shapes	
:А*
T0
÷
Hgradients/L4_1/batch_normalization/batchnorm/add_1_grad/tuple/group_depsNoOp@^gradients/L4_1/batch_normalization/batchnorm/add_1_grad/ReshapeB^gradients/L4_1/batch_normalization/batchnorm/add_1_grad/Reshape_1
Ў
Pgradients/L4_1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependencyIdentity?gradients/L4_1/batch_normalization/batchnorm/add_1_grad/ReshapeI^gradients/L4_1/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*;
_class1
/-loc:@L4_1/batch_normalization/batchnorm/add_1*(
_output_shapes
:€€€€€€€€€А*
T0
ѕ
Rgradients/L4_1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1IdentityAgradients/L4_1/batch_normalization/batchnorm/add_1_grad/Reshape_1I^gradients/L4_1/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@L4_1/batch_normalization/batchnorm/add_1*
_output_shapes	
:А
в
=gradients/L4_2/batch_normalization/batchnorm/add_1_grad/ShapeShape(L4_2/batch_normalization/batchnorm/mul_1*
T0*
out_type0*;
_class1
/-loc:@L4_2/batch_normalization/batchnorm/add_1*
_output_shapes
:
«
?gradients/L4_2/batch_normalization/batchnorm/add_1_grad/Shape_1Const*
valueB:А*;
_class1
/-loc:@L4_2/batch_normalization/batchnorm/add_1*
dtype0*
_output_shapes
:
а
Mgradients/L4_2/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/L4_2/batch_normalization/batchnorm/add_1_grad/Shape?gradients/L4_2/batch_normalization/batchnorm/add_1_grad/Shape_1*
T0*;
_class1
/-loc:@L4_2/batch_normalization/batchnorm/add_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
…
;gradients/L4_2/batch_normalization/batchnorm/add_1_grad/SumSum9gradients/L4_2/dense/MatMul_grad/tuple/control_dependencyMgradients/L4_2/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*;
_class1
/-loc:@L4_2/batch_normalization/batchnorm/add_1
ƒ
?gradients/L4_2/batch_normalization/batchnorm/add_1_grad/ReshapeReshape;gradients/L4_2/batch_normalization/batchnorm/add_1_grad/Sum=gradients/L4_2/batch_normalization/batchnorm/add_1_grad/Shape*
T0*
Tshape0*;
_class1
/-loc:@L4_2/batch_normalization/batchnorm/add_1*(
_output_shapes
:€€€€€€€€€А
Ќ
=gradients/L4_2/batch_normalization/batchnorm/add_1_grad/Sum_1Sum9gradients/L4_2/dense/MatMul_grad/tuple/control_dependencyOgradients/L4_2/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs:1*;
_class1
/-loc:@L4_2/batch_normalization/batchnorm/add_1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
љ
Agradients/L4_2/batch_normalization/batchnorm/add_1_grad/Reshape_1Reshape=gradients/L4_2/batch_normalization/batchnorm/add_1_grad/Sum_1?gradients/L4_2/batch_normalization/batchnorm/add_1_grad/Shape_1*
T0*
Tshape0*;
_class1
/-loc:@L4_2/batch_normalization/batchnorm/add_1*
_output_shapes	
:А
÷
Hgradients/L4_2/batch_normalization/batchnorm/add_1_grad/tuple/group_depsNoOp@^gradients/L4_2/batch_normalization/batchnorm/add_1_grad/ReshapeB^gradients/L4_2/batch_normalization/batchnorm/add_1_grad/Reshape_1
Ў
Pgradients/L4_2/batch_normalization/batchnorm/add_1_grad/tuple/control_dependencyIdentity?gradients/L4_2/batch_normalization/batchnorm/add_1_grad/ReshapeI^gradients/L4_2/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@L4_2/batch_normalization/batchnorm/add_1*(
_output_shapes
:€€€€€€€€€А
ѕ
Rgradients/L4_2/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1IdentityAgradients/L4_2/batch_normalization/batchnorm/add_1_grad/Reshape_1I^gradients/L4_2/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
_output_shapes	
:А*
T0*;
_class1
/-loc:@L4_2/batch_normalization/batchnorm/add_1
в
=gradients/L4_3/batch_normalization/batchnorm/add_1_grad/ShapeShape(L4_3/batch_normalization/batchnorm/mul_1*
out_type0*;
_class1
/-loc:@L4_3/batch_normalization/batchnorm/add_1*
_output_shapes
:*
T0
«
?gradients/L4_3/batch_normalization/batchnorm/add_1_grad/Shape_1Const*
valueB:А*;
_class1
/-loc:@L4_3/batch_normalization/batchnorm/add_1*
dtype0*
_output_shapes
:
а
Mgradients/L4_3/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/L4_3/batch_normalization/batchnorm/add_1_grad/Shape?gradients/L4_3/batch_normalization/batchnorm/add_1_grad/Shape_1*
T0*;
_class1
/-loc:@L4_3/batch_normalization/batchnorm/add_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
…
;gradients/L4_3/batch_normalization/batchnorm/add_1_grad/SumSum9gradients/L4_3/dense/MatMul_grad/tuple/control_dependencyMgradients/L4_3/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs*
T0*;
_class1
/-loc:@L4_3/batch_normalization/batchnorm/add_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
ƒ
?gradients/L4_3/batch_normalization/batchnorm/add_1_grad/ReshapeReshape;gradients/L4_3/batch_normalization/batchnorm/add_1_grad/Sum=gradients/L4_3/batch_normalization/batchnorm/add_1_grad/Shape*
T0*
Tshape0*;
_class1
/-loc:@L4_3/batch_normalization/batchnorm/add_1*(
_output_shapes
:€€€€€€€€€А
Ќ
=gradients/L4_3/batch_normalization/batchnorm/add_1_grad/Sum_1Sum9gradients/L4_3/dense/MatMul_grad/tuple/control_dependencyOgradients/L4_3/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs:1*;
_class1
/-loc:@L4_3/batch_normalization/batchnorm/add_1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
љ
Agradients/L4_3/batch_normalization/batchnorm/add_1_grad/Reshape_1Reshape=gradients/L4_3/batch_normalization/batchnorm/add_1_grad/Sum_1?gradients/L4_3/batch_normalization/batchnorm/add_1_grad/Shape_1*
T0*
Tshape0*;
_class1
/-loc:@L4_3/batch_normalization/batchnorm/add_1*
_output_shapes	
:А
÷
Hgradients/L4_3/batch_normalization/batchnorm/add_1_grad/tuple/group_depsNoOp@^gradients/L4_3/batch_normalization/batchnorm/add_1_grad/ReshapeB^gradients/L4_3/batch_normalization/batchnorm/add_1_grad/Reshape_1
Ў
Pgradients/L4_3/batch_normalization/batchnorm/add_1_grad/tuple/control_dependencyIdentity?gradients/L4_3/batch_normalization/batchnorm/add_1_grad/ReshapeI^gradients/L4_3/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@L4_3/batch_normalization/batchnorm/add_1*(
_output_shapes
:€€€€€€€€€А
ѕ
Rgradients/L4_3/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1IdentityAgradients/L4_3/batch_normalization/batchnorm/add_1_grad/Reshape_1I^gradients/L4_3/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
_output_shapes	
:А*
T0*;
_class1
/-loc:@L4_3/batch_normalization/batchnorm/add_1
в
gradients/AddN_3AddN9gradients/L4/dense/MatMul_grad/tuple/control_dependency_1;gradients/L4_1/dense/MatMul_grad/tuple/control_dependency_1;gradients/L4_2/dense/MatMul_grad/tuple/control_dependency_1;gradients/L4_3/dense/MatMul_grad/tuple/control_dependency_1*
T0*"
_class
loc:@L4/dense/kernel*
N* 
_output_shapes
:
АА
…
;gradients/L4/batch_normalization/batchnorm/mul_1_grad/ShapeShapeL3/dropout/Identity*
T0*
out_type0*9
_class/
-+loc:@L4/batch_normalization/batchnorm/mul_1*
_output_shapes
:
√
=gradients/L4/batch_normalization/batchnorm/mul_1_grad/Shape_1Const*
valueB:А*9
_class/
-+loc:@L4/batch_normalization/batchnorm/mul_1*
dtype0*
_output_shapes
:
Ў
Kgradients/L4/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs;gradients/L4/batch_normalization/batchnorm/mul_1_grad/Shape=gradients/L4/batch_normalization/batchnorm/mul_1_grad/Shape_1*
T0*9
_class/
-+loc:@L4/batch_normalization/batchnorm/mul_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
§
9gradients/L4/batch_normalization/batchnorm/mul_1_grad/MulMulNgradients/L4/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency$L4/batch_normalization/batchnorm/mul*(
_output_shapes
:€€€€€€€€€А*
T0*9
_class/
-+loc:@L4/batch_normalization/batchnorm/mul_1
√
9gradients/L4/batch_normalization/batchnorm/mul_1_grad/SumSum9gradients/L4/batch_normalization/batchnorm/mul_1_grad/MulKgradients/L4/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*9
_class/
-+loc:@L4/batch_normalization/batchnorm/mul_1
Љ
=gradients/L4/batch_normalization/batchnorm/mul_1_grad/ReshapeReshape9gradients/L4/batch_normalization/batchnorm/mul_1_grad/Sum;gradients/L4/batch_normalization/batchnorm/mul_1_grad/Shape*
T0*
Tshape0*9
_class/
-+loc:@L4/batch_normalization/batchnorm/mul_1*(
_output_shapes
:€€€€€€€€€А
Х
;gradients/L4/batch_normalization/batchnorm/mul_1_grad/Mul_1MulL3/dropout/IdentityNgradients/L4/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency*
T0*9
_class/
-+loc:@L4/batch_normalization/batchnorm/mul_1*(
_output_shapes
:€€€€€€€€€А
…
;gradients/L4/batch_normalization/batchnorm/mul_1_grad/Sum_1Sum;gradients/L4/batch_normalization/batchnorm/mul_1_grad/Mul_1Mgradients/L4/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
T0*9
_class/
-+loc:@L4/batch_normalization/batchnorm/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
µ
?gradients/L4/batch_normalization/batchnorm/mul_1_grad/Reshape_1Reshape;gradients/L4/batch_normalization/batchnorm/mul_1_grad/Sum_1=gradients/L4/batch_normalization/batchnorm/mul_1_grad/Shape_1*
T0*
Tshape0*9
_class/
-+loc:@L4/batch_normalization/batchnorm/mul_1*
_output_shapes	
:А
–
Fgradients/L4/batch_normalization/batchnorm/mul_1_grad/tuple/group_depsNoOp>^gradients/L4/batch_normalization/batchnorm/mul_1_grad/Reshape@^gradients/L4/batch_normalization/batchnorm/mul_1_grad/Reshape_1
–
Ngradients/L4/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyIdentity=gradients/L4/batch_normalization/batchnorm/mul_1_grad/ReshapeG^gradients/L4/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*
T0*9
_class/
-+loc:@L4/batch_normalization/batchnorm/mul_1*(
_output_shapes
:€€€€€€€€€А
«
Pgradients/L4/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1Identity?gradients/L4/batch_normalization/batchnorm/mul_1_grad/Reshape_1G^gradients/L4/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*
T0*9
_class/
-+loc:@L4/batch_normalization/batchnorm/mul_1*
_output_shapes	
:А
п
7gradients/L4/batch_normalization/batchnorm/sub_grad/NegNegPgradients/L4/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1*
T0*7
_class-
+)loc:@L4/batch_normalization/batchnorm/sub*
_output_shapes	
:А
ў
Dgradients/L4/batch_normalization/batchnorm/sub_grad/tuple/group_depsNoOpQ^gradients/L4/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_18^gradients/L4/batch_normalization/batchnorm/sub_grad/Neg
“
Lgradients/L4/batch_normalization/batchnorm/sub_grad/tuple/control_dependencyIdentityPgradients/L4/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1E^gradients/L4/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
_output_shapes	
:А*
T0*9
_class/
-+loc:@L4/batch_normalization/batchnorm/add_1
є
Ngradients/L4/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1Identity7gradients/L4/batch_normalization/batchnorm/sub_grad/NegE^gradients/L4/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
T0*7
_class-
+)loc:@L4/batch_normalization/batchnorm/sub*
_output_shapes	
:А
ѕ
=gradients/L4_1/batch_normalization/batchnorm/mul_1_grad/ShapeShapeL3_1/dropout/Identity*
T0*
out_type0*;
_class1
/-loc:@L4_1/batch_normalization/batchnorm/mul_1*
_output_shapes
:
«
?gradients/L4_1/batch_normalization/batchnorm/mul_1_grad/Shape_1Const*
_output_shapes
:*
valueB:А*;
_class1
/-loc:@L4_1/batch_normalization/batchnorm/mul_1*
dtype0
а
Mgradients/L4_1/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/L4_1/batch_normalization/batchnorm/mul_1_grad/Shape?gradients/L4_1/batch_normalization/batchnorm/mul_1_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*;
_class1
/-loc:@L4_1/batch_normalization/batchnorm/mul_1
ђ
;gradients/L4_1/batch_normalization/batchnorm/mul_1_grad/MulMulPgradients/L4_1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency&L4_1/batch_normalization/batchnorm/mul*(
_output_shapes
:€€€€€€€€€А*
T0*;
_class1
/-loc:@L4_1/batch_normalization/batchnorm/mul_1
Ћ
;gradients/L4_1/batch_normalization/batchnorm/mul_1_grad/SumSum;gradients/L4_1/batch_normalization/batchnorm/mul_1_grad/MulMgradients/L4_1/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*;
_class1
/-loc:@L4_1/batch_normalization/batchnorm/mul_1*
_output_shapes
:
ƒ
?gradients/L4_1/batch_normalization/batchnorm/mul_1_grad/ReshapeReshape;gradients/L4_1/batch_normalization/batchnorm/mul_1_grad/Sum=gradients/L4_1/batch_normalization/batchnorm/mul_1_grad/Shape*
T0*
Tshape0*;
_class1
/-loc:@L4_1/batch_normalization/batchnorm/mul_1*(
_output_shapes
:€€€€€€€€€А
Э
=gradients/L4_1/batch_normalization/batchnorm/mul_1_grad/Mul_1MulL3_1/dropout/IdentityPgradients/L4_1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency*(
_output_shapes
:€€€€€€€€€А*
T0*;
_class1
/-loc:@L4_1/batch_normalization/batchnorm/mul_1
—
=gradients/L4_1/batch_normalization/batchnorm/mul_1_grad/Sum_1Sum=gradients/L4_1/batch_normalization/batchnorm/mul_1_grad/Mul_1Ogradients/L4_1/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*;
_class1
/-loc:@L4_1/batch_normalization/batchnorm/mul_1*
_output_shapes
:
љ
Agradients/L4_1/batch_normalization/batchnorm/mul_1_grad/Reshape_1Reshape=gradients/L4_1/batch_normalization/batchnorm/mul_1_grad/Sum_1?gradients/L4_1/batch_normalization/batchnorm/mul_1_grad/Shape_1*
T0*
Tshape0*;
_class1
/-loc:@L4_1/batch_normalization/batchnorm/mul_1*
_output_shapes	
:А
÷
Hgradients/L4_1/batch_normalization/batchnorm/mul_1_grad/tuple/group_depsNoOp@^gradients/L4_1/batch_normalization/batchnorm/mul_1_grad/ReshapeB^gradients/L4_1/batch_normalization/batchnorm/mul_1_grad/Reshape_1
Ў
Pgradients/L4_1/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyIdentity?gradients/L4_1/batch_normalization/batchnorm/mul_1_grad/ReshapeI^gradients/L4_1/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@L4_1/batch_normalization/batchnorm/mul_1*(
_output_shapes
:€€€€€€€€€А
ѕ
Rgradients/L4_1/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1IdentityAgradients/L4_1/batch_normalization/batchnorm/mul_1_grad/Reshape_1I^gradients/L4_1/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@L4_1/batch_normalization/batchnorm/mul_1*
_output_shapes	
:А
х
9gradients/L4_1/batch_normalization/batchnorm/sub_grad/NegNegRgradients/L4_1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1*
_output_shapes	
:А*
T0*9
_class/
-+loc:@L4_1/batch_normalization/batchnorm/sub
я
Fgradients/L4_1/batch_normalization/batchnorm/sub_grad/tuple/group_depsNoOpS^gradients/L4_1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1:^gradients/L4_1/batch_normalization/batchnorm/sub_grad/Neg
Џ
Ngradients/L4_1/batch_normalization/batchnorm/sub_grad/tuple/control_dependencyIdentityRgradients/L4_1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1G^gradients/L4_1/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
_output_shapes	
:А*
T0*;
_class1
/-loc:@L4_1/batch_normalization/batchnorm/add_1
Ѕ
Pgradients/L4_1/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1Identity9gradients/L4_1/batch_normalization/batchnorm/sub_grad/NegG^gradients/L4_1/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
T0*9
_class/
-+loc:@L4_1/batch_normalization/batchnorm/sub*
_output_shapes	
:А
ѕ
=gradients/L4_2/batch_normalization/batchnorm/mul_1_grad/ShapeShapeL3_2/dropout/Identity*
T0*
out_type0*;
_class1
/-loc:@L4_2/batch_normalization/batchnorm/mul_1*
_output_shapes
:
«
?gradients/L4_2/batch_normalization/batchnorm/mul_1_grad/Shape_1Const*
valueB:А*;
_class1
/-loc:@L4_2/batch_normalization/batchnorm/mul_1*
dtype0*
_output_shapes
:
а
Mgradients/L4_2/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/L4_2/batch_normalization/batchnorm/mul_1_grad/Shape?gradients/L4_2/batch_normalization/batchnorm/mul_1_grad/Shape_1*
T0*;
_class1
/-loc:@L4_2/batch_normalization/batchnorm/mul_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ђ
;gradients/L4_2/batch_normalization/batchnorm/mul_1_grad/MulMulPgradients/L4_2/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency&L4_2/batch_normalization/batchnorm/mul*;
_class1
/-loc:@L4_2/batch_normalization/batchnorm/mul_1*(
_output_shapes
:€€€€€€€€€А*
T0
Ћ
;gradients/L4_2/batch_normalization/batchnorm/mul_1_grad/SumSum;gradients/L4_2/batch_normalization/batchnorm/mul_1_grad/MulMgradients/L4_2/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*;
_class1
/-loc:@L4_2/batch_normalization/batchnorm/mul_1*
_output_shapes
:
ƒ
?gradients/L4_2/batch_normalization/batchnorm/mul_1_grad/ReshapeReshape;gradients/L4_2/batch_normalization/batchnorm/mul_1_grad/Sum=gradients/L4_2/batch_normalization/batchnorm/mul_1_grad/Shape*
T0*
Tshape0*;
_class1
/-loc:@L4_2/batch_normalization/batchnorm/mul_1*(
_output_shapes
:€€€€€€€€€А
Э
=gradients/L4_2/batch_normalization/batchnorm/mul_1_grad/Mul_1MulL3_2/dropout/IdentityPgradients/L4_2/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency*
T0*;
_class1
/-loc:@L4_2/batch_normalization/batchnorm/mul_1*(
_output_shapes
:€€€€€€€€€А
—
=gradients/L4_2/batch_normalization/batchnorm/mul_1_grad/Sum_1Sum=gradients/L4_2/batch_normalization/batchnorm/mul_1_grad/Mul_1Ogradients/L4_2/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs:1*;
_class1
/-loc:@L4_2/batch_normalization/batchnorm/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
љ
Agradients/L4_2/batch_normalization/batchnorm/mul_1_grad/Reshape_1Reshape=gradients/L4_2/batch_normalization/batchnorm/mul_1_grad/Sum_1?gradients/L4_2/batch_normalization/batchnorm/mul_1_grad/Shape_1*
T0*
Tshape0*;
_class1
/-loc:@L4_2/batch_normalization/batchnorm/mul_1*
_output_shapes	
:А
÷
Hgradients/L4_2/batch_normalization/batchnorm/mul_1_grad/tuple/group_depsNoOp@^gradients/L4_2/batch_normalization/batchnorm/mul_1_grad/ReshapeB^gradients/L4_2/batch_normalization/batchnorm/mul_1_grad/Reshape_1
Ў
Pgradients/L4_2/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyIdentity?gradients/L4_2/batch_normalization/batchnorm/mul_1_grad/ReshapeI^gradients/L4_2/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*
T0*;
_class1
/-loc:@L4_2/batch_normalization/batchnorm/mul_1
ѕ
Rgradients/L4_2/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1IdentityAgradients/L4_2/batch_normalization/batchnorm/mul_1_grad/Reshape_1I^gradients/L4_2/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@L4_2/batch_normalization/batchnorm/mul_1*
_output_shapes	
:А
х
9gradients/L4_2/batch_normalization/batchnorm/sub_grad/NegNegRgradients/L4_2/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1*9
_class/
-+loc:@L4_2/batch_normalization/batchnorm/sub*
_output_shapes	
:А*
T0
я
Fgradients/L4_2/batch_normalization/batchnorm/sub_grad/tuple/group_depsNoOpS^gradients/L4_2/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1:^gradients/L4_2/batch_normalization/batchnorm/sub_grad/Neg
Џ
Ngradients/L4_2/batch_normalization/batchnorm/sub_grad/tuple/control_dependencyIdentityRgradients/L4_2/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1G^gradients/L4_2/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
_output_shapes	
:А*
T0*;
_class1
/-loc:@L4_2/batch_normalization/batchnorm/add_1
Ѕ
Pgradients/L4_2/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1Identity9gradients/L4_2/batch_normalization/batchnorm/sub_grad/NegG^gradients/L4_2/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
T0*9
_class/
-+loc:@L4_2/batch_normalization/batchnorm/sub*
_output_shapes	
:А
ѕ
=gradients/L4_3/batch_normalization/batchnorm/mul_1_grad/ShapeShapeL3_3/dropout/Identity*
out_type0*;
_class1
/-loc:@L4_3/batch_normalization/batchnorm/mul_1*
_output_shapes
:*
T0
«
?gradients/L4_3/batch_normalization/batchnorm/mul_1_grad/Shape_1Const*
valueB:А*;
_class1
/-loc:@L4_3/batch_normalization/batchnorm/mul_1*
dtype0*
_output_shapes
:
а
Mgradients/L4_3/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/L4_3/batch_normalization/batchnorm/mul_1_grad/Shape?gradients/L4_3/batch_normalization/batchnorm/mul_1_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*;
_class1
/-loc:@L4_3/batch_normalization/batchnorm/mul_1
ђ
;gradients/L4_3/batch_normalization/batchnorm/mul_1_grad/MulMulPgradients/L4_3/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency&L4_3/batch_normalization/batchnorm/mul*;
_class1
/-loc:@L4_3/batch_normalization/batchnorm/mul_1*(
_output_shapes
:€€€€€€€€€А*
T0
Ћ
;gradients/L4_3/batch_normalization/batchnorm/mul_1_grad/SumSum;gradients/L4_3/batch_normalization/batchnorm/mul_1_grad/MulMgradients/L4_3/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs*;
_class1
/-loc:@L4_3/batch_normalization/batchnorm/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ƒ
?gradients/L4_3/batch_normalization/batchnorm/mul_1_grad/ReshapeReshape;gradients/L4_3/batch_normalization/batchnorm/mul_1_grad/Sum=gradients/L4_3/batch_normalization/batchnorm/mul_1_grad/Shape*
T0*
Tshape0*;
_class1
/-loc:@L4_3/batch_normalization/batchnorm/mul_1*(
_output_shapes
:€€€€€€€€€А
Э
=gradients/L4_3/batch_normalization/batchnorm/mul_1_grad/Mul_1MulL3_3/dropout/IdentityPgradients/L4_3/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency*(
_output_shapes
:€€€€€€€€€А*
T0*;
_class1
/-loc:@L4_3/batch_normalization/batchnorm/mul_1
—
=gradients/L4_3/batch_normalization/batchnorm/mul_1_grad/Sum_1Sum=gradients/L4_3/batch_normalization/batchnorm/mul_1_grad/Mul_1Ogradients/L4_3/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs:1*;
_class1
/-loc:@L4_3/batch_normalization/batchnorm/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
љ
Agradients/L4_3/batch_normalization/batchnorm/mul_1_grad/Reshape_1Reshape=gradients/L4_3/batch_normalization/batchnorm/mul_1_grad/Sum_1?gradients/L4_3/batch_normalization/batchnorm/mul_1_grad/Shape_1*
_output_shapes	
:А*
T0*
Tshape0*;
_class1
/-loc:@L4_3/batch_normalization/batchnorm/mul_1
÷
Hgradients/L4_3/batch_normalization/batchnorm/mul_1_grad/tuple/group_depsNoOp@^gradients/L4_3/batch_normalization/batchnorm/mul_1_grad/ReshapeB^gradients/L4_3/batch_normalization/batchnorm/mul_1_grad/Reshape_1
Ў
Pgradients/L4_3/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyIdentity?gradients/L4_3/batch_normalization/batchnorm/mul_1_grad/ReshapeI^gradients/L4_3/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*
T0*;
_class1
/-loc:@L4_3/batch_normalization/batchnorm/mul_1
ѕ
Rgradients/L4_3/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1IdentityAgradients/L4_3/batch_normalization/batchnorm/mul_1_grad/Reshape_1I^gradients/L4_3/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*
_output_shapes	
:А*
T0*;
_class1
/-loc:@L4_3/batch_normalization/batchnorm/mul_1
х
9gradients/L4_3/batch_normalization/batchnorm/sub_grad/NegNegRgradients/L4_3/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1*
_output_shapes	
:А*
T0*9
_class/
-+loc:@L4_3/batch_normalization/batchnorm/sub
я
Fgradients/L4_3/batch_normalization/batchnorm/sub_grad/tuple/group_depsNoOpS^gradients/L4_3/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1:^gradients/L4_3/batch_normalization/batchnorm/sub_grad/Neg
Џ
Ngradients/L4_3/batch_normalization/batchnorm/sub_grad/tuple/control_dependencyIdentityRgradients/L4_3/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1G^gradients/L4_3/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
T0*;
_class1
/-loc:@L4_3/batch_normalization/batchnorm/add_1*
_output_shapes	
:А
Ѕ
Pgradients/L4_3/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1Identity9gradients/L4_3/batch_normalization/batchnorm/sub_grad/NegG^gradients/L4_3/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
_output_shapes	
:А*
T0*9
_class/
-+loc:@L4_3/batch_normalization/batchnorm/sub
Ч
9gradients/L4/batch_normalization/batchnorm/mul_2_grad/MulMulNgradients/L4/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1$L4/batch_normalization/batchnorm/mul*
T0*9
_class/
-+loc:@L4/batch_normalization/batchnorm/mul_2*
_output_shapes	
:А
Ь
;gradients/L4/batch_normalization/batchnorm/mul_2_grad/Mul_1MulNgradients/L4/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1'L4/batch_normalization/moving_mean/read*
T0*9
_class/
-+loc:@L4/batch_normalization/batchnorm/mul_2*
_output_shapes	
:А
»
Fgradients/L4/batch_normalization/batchnorm/mul_2_grad/tuple/group_depsNoOp:^gradients/L4/batch_normalization/batchnorm/mul_2_grad/Mul<^gradients/L4/batch_normalization/batchnorm/mul_2_grad/Mul_1
њ
Ngradients/L4/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyIdentity9gradients/L4/batch_normalization/batchnorm/mul_2_grad/MulG^gradients/L4/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*9
_class/
-+loc:@L4/batch_normalization/batchnorm/mul_2*
_output_shapes	
:А*
T0
√
Pgradients/L4/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1Identity;gradients/L4/batch_normalization/batchnorm/mul_2_grad/Mul_1G^gradients/L4/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
_output_shapes	
:А*
T0*9
_class/
-+loc:@L4/batch_normalization/batchnorm/mul_2
Я
;gradients/L4_1/batch_normalization/batchnorm/mul_2_grad/MulMulPgradients/L4_1/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1&L4_1/batch_normalization/batchnorm/mul*
T0*;
_class1
/-loc:@L4_1/batch_normalization/batchnorm/mul_2*
_output_shapes	
:А
Ґ
=gradients/L4_1/batch_normalization/batchnorm/mul_2_grad/Mul_1MulPgradients/L4_1/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1'L4/batch_normalization/moving_mean/read*
T0*;
_class1
/-loc:@L4_1/batch_normalization/batchnorm/mul_2*
_output_shapes	
:А
ќ
Hgradients/L4_1/batch_normalization/batchnorm/mul_2_grad/tuple/group_depsNoOp<^gradients/L4_1/batch_normalization/batchnorm/mul_2_grad/Mul>^gradients/L4_1/batch_normalization/batchnorm/mul_2_grad/Mul_1
«
Pgradients/L4_1/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyIdentity;gradients/L4_1/batch_normalization/batchnorm/mul_2_grad/MulI^gradients/L4_1/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*;
_class1
/-loc:@L4_1/batch_normalization/batchnorm/mul_2*
_output_shapes	
:А*
T0
Ћ
Rgradients/L4_1/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1Identity=gradients/L4_1/batch_normalization/batchnorm/mul_2_grad/Mul_1I^gradients/L4_1/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
T0*;
_class1
/-loc:@L4_1/batch_normalization/batchnorm/mul_2*
_output_shapes	
:А
Я
;gradients/L4_2/batch_normalization/batchnorm/mul_2_grad/MulMulPgradients/L4_2/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1&L4_2/batch_normalization/batchnorm/mul*
T0*;
_class1
/-loc:@L4_2/batch_normalization/batchnorm/mul_2*
_output_shapes	
:А
Ґ
=gradients/L4_2/batch_normalization/batchnorm/mul_2_grad/Mul_1MulPgradients/L4_2/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1'L4/batch_normalization/moving_mean/read*
_output_shapes	
:А*
T0*;
_class1
/-loc:@L4_2/batch_normalization/batchnorm/mul_2
ќ
Hgradients/L4_2/batch_normalization/batchnorm/mul_2_grad/tuple/group_depsNoOp<^gradients/L4_2/batch_normalization/batchnorm/mul_2_grad/Mul>^gradients/L4_2/batch_normalization/batchnorm/mul_2_grad/Mul_1
«
Pgradients/L4_2/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyIdentity;gradients/L4_2/batch_normalization/batchnorm/mul_2_grad/MulI^gradients/L4_2/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
T0*;
_class1
/-loc:@L4_2/batch_normalization/batchnorm/mul_2*
_output_shapes	
:А
Ћ
Rgradients/L4_2/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1Identity=gradients/L4_2/batch_normalization/batchnorm/mul_2_grad/Mul_1I^gradients/L4_2/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
_output_shapes	
:А*
T0*;
_class1
/-loc:@L4_2/batch_normalization/batchnorm/mul_2
µ
gradients/AddN_4AddNLgradients/L4/batch_normalization/batchnorm/sub_grad/tuple/control_dependencyNgradients/L4_1/batch_normalization/batchnorm/sub_grad/tuple/control_dependencyNgradients/L4_2/batch_normalization/batchnorm/sub_grad/tuple/control_dependencyNgradients/L4_3/batch_normalization/batchnorm/sub_grad/tuple/control_dependency*
T0*.
_class$
" loc:@L4/batch_normalization/beta*
N*
_output_shapes	
:А
Я
;gradients/L4_3/batch_normalization/batchnorm/mul_2_grad/MulMulPgradients/L4_3/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1&L4_3/batch_normalization/batchnorm/mul*
T0*;
_class1
/-loc:@L4_3/batch_normalization/batchnorm/mul_2*
_output_shapes	
:А
Ґ
=gradients/L4_3/batch_normalization/batchnorm/mul_2_grad/Mul_1MulPgradients/L4_3/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1'L4/batch_normalization/moving_mean/read*
_output_shapes	
:А*
T0*;
_class1
/-loc:@L4_3/batch_normalization/batchnorm/mul_2
ќ
Hgradients/L4_3/batch_normalization/batchnorm/mul_2_grad/tuple/group_depsNoOp<^gradients/L4_3/batch_normalization/batchnorm/mul_2_grad/Mul>^gradients/L4_3/batch_normalization/batchnorm/mul_2_grad/Mul_1
«
Pgradients/L4_3/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyIdentity;gradients/L4_3/batch_normalization/batchnorm/mul_2_grad/MulI^gradients/L4_3/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
T0*;
_class1
/-loc:@L4_3/batch_normalization/batchnorm/mul_2*
_output_shapes	
:А
Ћ
Rgradients/L4_3/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1Identity=gradients/L4_3/batch_normalization/batchnorm/mul_2_grad/Mul_1I^gradients/L4_3/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
_output_shapes	
:А*
T0*;
_class1
/-loc:@L4_3/batch_normalization/batchnorm/mul_2
е
%gradients/L3/dense/Relu_grad/ReluGradReluGradNgradients/L4/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyL3/dense/Relu* 
_class
loc:@L3/dense/Relu*(
_output_shapes
:€€€€€€€€€А*
T0
¶
gradients/AddN_5AddNPgradients/L4/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1Pgradients/L4/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1*
T0*9
_class/
-+loc:@L4/batch_normalization/batchnorm/mul_1*
N*
_output_shapes	
:А
“
7gradients/L4/batch_normalization/batchnorm/mul_grad/MulMulgradients/AddN_5!L4/batch_normalization/gamma/read*
T0*7
_class-
+)loc:@L4/batch_normalization/batchnorm/mul*
_output_shapes	
:А
ў
9gradients/L4/batch_normalization/batchnorm/mul_grad/Mul_1Mulgradients/AddN_5&L4/batch_normalization/batchnorm/Rsqrt*
T0*7
_class-
+)loc:@L4/batch_normalization/batchnorm/mul*
_output_shapes	
:А
¬
Dgradients/L4/batch_normalization/batchnorm/mul_grad/tuple/group_depsNoOp8^gradients/L4/batch_normalization/batchnorm/mul_grad/Mul:^gradients/L4/batch_normalization/batchnorm/mul_grad/Mul_1
Ј
Lgradients/L4/batch_normalization/batchnorm/mul_grad/tuple/control_dependencyIdentity7gradients/L4/batch_normalization/batchnorm/mul_grad/MulE^gradients/L4/batch_normalization/batchnorm/mul_grad/tuple/group_deps*7
_class-
+)loc:@L4/batch_normalization/batchnorm/mul*
_output_shapes	
:А*
T0
ї
Ngradients/L4/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1Identity9gradients/L4/batch_normalization/batchnorm/mul_grad/Mul_1E^gradients/L4/batch_normalization/batchnorm/mul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@L4/batch_normalization/batchnorm/mul*
_output_shapes	
:А
н
'gradients/L3_1/dense/Relu_grad/ReluGradReluGradPgradients/L4_1/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyL3_1/dense/Relu*"
_class
loc:@L3_1/dense/Relu*(
_output_shapes
:€€€€€€€€€А*
T0
ђ
gradients/AddN_6AddNRgradients/L4_1/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1Rgradients/L4_1/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1*;
_class1
/-loc:@L4_1/batch_normalization/batchnorm/mul_1*
N*
_output_shapes	
:А*
T0
÷
9gradients/L4_1/batch_normalization/batchnorm/mul_grad/MulMulgradients/AddN_6!L4/batch_normalization/gamma/read*
T0*9
_class/
-+loc:@L4_1/batch_normalization/batchnorm/mul*
_output_shapes	
:А
я
;gradients/L4_1/batch_normalization/batchnorm/mul_grad/Mul_1Mulgradients/AddN_6(L4_1/batch_normalization/batchnorm/Rsqrt*9
_class/
-+loc:@L4_1/batch_normalization/batchnorm/mul*
_output_shapes	
:А*
T0
»
Fgradients/L4_1/batch_normalization/batchnorm/mul_grad/tuple/group_depsNoOp:^gradients/L4_1/batch_normalization/batchnorm/mul_grad/Mul<^gradients/L4_1/batch_normalization/batchnorm/mul_grad/Mul_1
њ
Ngradients/L4_1/batch_normalization/batchnorm/mul_grad/tuple/control_dependencyIdentity9gradients/L4_1/batch_normalization/batchnorm/mul_grad/MulG^gradients/L4_1/batch_normalization/batchnorm/mul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@L4_1/batch_normalization/batchnorm/mul*
_output_shapes	
:А
√
Pgradients/L4_1/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1Identity;gradients/L4_1/batch_normalization/batchnorm/mul_grad/Mul_1G^gradients/L4_1/batch_normalization/batchnorm/mul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@L4_1/batch_normalization/batchnorm/mul*
_output_shapes	
:А
н
'gradients/L3_2/dense/Relu_grad/ReluGradReluGradPgradients/L4_2/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyL3_2/dense/Relu*
T0*"
_class
loc:@L3_2/dense/Relu*(
_output_shapes
:€€€€€€€€€А
ђ
gradients/AddN_7AddNRgradients/L4_2/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1Rgradients/L4_2/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1*
T0*;
_class1
/-loc:@L4_2/batch_normalization/batchnorm/mul_1*
N*
_output_shapes	
:А
÷
9gradients/L4_2/batch_normalization/batchnorm/mul_grad/MulMulgradients/AddN_7!L4/batch_normalization/gamma/read*
_output_shapes	
:А*
T0*9
_class/
-+loc:@L4_2/batch_normalization/batchnorm/mul
я
;gradients/L4_2/batch_normalization/batchnorm/mul_grad/Mul_1Mulgradients/AddN_7(L4_2/batch_normalization/batchnorm/Rsqrt*
_output_shapes	
:А*
T0*9
_class/
-+loc:@L4_2/batch_normalization/batchnorm/mul
»
Fgradients/L4_2/batch_normalization/batchnorm/mul_grad/tuple/group_depsNoOp:^gradients/L4_2/batch_normalization/batchnorm/mul_grad/Mul<^gradients/L4_2/batch_normalization/batchnorm/mul_grad/Mul_1
њ
Ngradients/L4_2/batch_normalization/batchnorm/mul_grad/tuple/control_dependencyIdentity9gradients/L4_2/batch_normalization/batchnorm/mul_grad/MulG^gradients/L4_2/batch_normalization/batchnorm/mul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@L4_2/batch_normalization/batchnorm/mul*
_output_shapes	
:А
√
Pgradients/L4_2/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1Identity;gradients/L4_2/batch_normalization/batchnorm/mul_grad/Mul_1G^gradients/L4_2/batch_normalization/batchnorm/mul_grad/tuple/group_deps*9
_class/
-+loc:@L4_2/batch_normalization/batchnorm/mul*
_output_shapes	
:А*
T0
н
'gradients/L3_3/dense/Relu_grad/ReluGradReluGradPgradients/L4_3/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyL3_3/dense/Relu*
T0*"
_class
loc:@L3_3/dense/Relu*(
_output_shapes
:€€€€€€€€€А
ђ
gradients/AddN_8AddNRgradients/L4_3/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1Rgradients/L4_3/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1*
T0*;
_class1
/-loc:@L4_3/batch_normalization/batchnorm/mul_1*
N*
_output_shapes	
:А
÷
9gradients/L4_3/batch_normalization/batchnorm/mul_grad/MulMulgradients/AddN_8!L4/batch_normalization/gamma/read*
T0*9
_class/
-+loc:@L4_3/batch_normalization/batchnorm/mul*
_output_shapes	
:А
я
;gradients/L4_3/batch_normalization/batchnorm/mul_grad/Mul_1Mulgradients/AddN_8(L4_3/batch_normalization/batchnorm/Rsqrt*
_output_shapes	
:А*
T0*9
_class/
-+loc:@L4_3/batch_normalization/batchnorm/mul
»
Fgradients/L4_3/batch_normalization/batchnorm/mul_grad/tuple/group_depsNoOp:^gradients/L4_3/batch_normalization/batchnorm/mul_grad/Mul<^gradients/L4_3/batch_normalization/batchnorm/mul_grad/Mul_1
њ
Ngradients/L4_3/batch_normalization/batchnorm/mul_grad/tuple/control_dependencyIdentity9gradients/L4_3/batch_normalization/batchnorm/mul_grad/MulG^gradients/L4_3/batch_normalization/batchnorm/mul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@L4_3/batch_normalization/batchnorm/mul*
_output_shapes	
:А
√
Pgradients/L4_3/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1Identity;gradients/L4_3/batch_normalization/batchnorm/mul_grad/Mul_1G^gradients/L4_3/batch_normalization/batchnorm/mul_grad/tuple/group_deps*9
_class/
-+loc:@L4_3/batch_normalization/batchnorm/mul*
_output_shapes	
:А*
T0
√
+gradients/L3/dense/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/L3/dense/Relu_grad/ReluGrad*#
_class
loc:@L3/dense/BiasAdd*
data_formatNHWC*
_output_shapes	
:А*
T0
О
0gradients/L3/dense/BiasAdd_grad/tuple/group_depsNoOp,^gradients/L3/dense/BiasAdd_grad/BiasAddGrad&^gradients/L3/dense/Relu_grad/ReluGrad
у
8gradients/L3/dense/BiasAdd_grad/tuple/control_dependencyIdentity%gradients/L3/dense/Relu_grad/ReluGrad1^gradients/L3/dense/BiasAdd_grad/tuple/group_deps*
T0* 
_class
loc:@L3/dense/Relu*(
_output_shapes
:€€€€€€€€€А
с
:gradients/L3/dense/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/L3/dense/BiasAdd_grad/BiasAddGrad1^gradients/L3/dense/BiasAdd_grad/tuple/group_deps*
T0*#
_class
loc:@L3/dense/BiasAdd*
_output_shapes	
:А
…
-gradients/L3_1/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients/L3_1/dense/Relu_grad/ReluGrad*
T0*%
_class
loc:@L3_1/dense/BiasAdd*
data_formatNHWC*
_output_shapes	
:А
Ф
2gradients/L3_1/dense/BiasAdd_grad/tuple/group_depsNoOp.^gradients/L3_1/dense/BiasAdd_grad/BiasAddGrad(^gradients/L3_1/dense/Relu_grad/ReluGrad
ы
:gradients/L3_1/dense/BiasAdd_grad/tuple/control_dependencyIdentity'gradients/L3_1/dense/Relu_grad/ReluGrad3^gradients/L3_1/dense/BiasAdd_grad/tuple/group_deps*
T0*"
_class
loc:@L3_1/dense/Relu*(
_output_shapes
:€€€€€€€€€А
щ
<gradients/L3_1/dense/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/L3_1/dense/BiasAdd_grad/BiasAddGrad3^gradients/L3_1/dense/BiasAdd_grad/tuple/group_deps*%
_class
loc:@L3_1/dense/BiasAdd*
_output_shapes	
:А*
T0
…
-gradients/L3_2/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients/L3_2/dense/Relu_grad/ReluGrad*
T0*%
_class
loc:@L3_2/dense/BiasAdd*
data_formatNHWC*
_output_shapes	
:А
Ф
2gradients/L3_2/dense/BiasAdd_grad/tuple/group_depsNoOp.^gradients/L3_2/dense/BiasAdd_grad/BiasAddGrad(^gradients/L3_2/dense/Relu_grad/ReluGrad
ы
:gradients/L3_2/dense/BiasAdd_grad/tuple/control_dependencyIdentity'gradients/L3_2/dense/Relu_grad/ReluGrad3^gradients/L3_2/dense/BiasAdd_grad/tuple/group_deps*
T0*"
_class
loc:@L3_2/dense/Relu*(
_output_shapes
:€€€€€€€€€А
щ
<gradients/L3_2/dense/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/L3_2/dense/BiasAdd_grad/BiasAddGrad3^gradients/L3_2/dense/BiasAdd_grad/tuple/group_deps*
T0*%
_class
loc:@L3_2/dense/BiasAdd*
_output_shapes	
:А
…
-gradients/L3_3/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients/L3_3/dense/Relu_grad/ReluGrad*
T0*%
_class
loc:@L3_3/dense/BiasAdd*
data_formatNHWC*
_output_shapes	
:А
Ф
2gradients/L3_3/dense/BiasAdd_grad/tuple/group_depsNoOp.^gradients/L3_3/dense/BiasAdd_grad/BiasAddGrad(^gradients/L3_3/dense/Relu_grad/ReluGrad
ы
:gradients/L3_3/dense/BiasAdd_grad/tuple/control_dependencyIdentity'gradients/L3_3/dense/Relu_grad/ReluGrad3^gradients/L3_3/dense/BiasAdd_grad/tuple/group_deps*
T0*"
_class
loc:@L3_3/dense/Relu*(
_output_shapes
:€€€€€€€€€А
щ
<gradients/L3_3/dense/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/L3_3/dense/BiasAdd_grad/BiasAddGrad3^gradients/L3_3/dense/BiasAdd_grad/tuple/group_deps*
T0*%
_class
loc:@L3_3/dense/BiasAdd*
_output_shapes	
:А
Њ
gradients/AddN_9AddNNgradients/L4/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1Pgradients/L4_1/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1Pgradients/L4_2/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1Pgradients/L4_3/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1*
N*
_output_shapes	
:А*
T0*/
_class%
#!loc:@L4/batch_normalization/gamma
ь
%gradients/L3/dense/MatMul_grad/MatMulMatMul8gradients/L3/dense/BiasAdd_grad/tuple/control_dependencyL3/dense/kernel/read*"
_class
loc:@L3/dense/MatMul*
transpose_a( *(
_output_shapes
:€€€€€€€€€А1*
transpose_b(*
T0
ь
'gradients/L3/dense/MatMul_grad/MatMul_1MatMulL3/Flatten/flatten/Reshape8gradients/L3/dense/BiasAdd_grad/tuple/control_dependency*
T0*"
_class
loc:@L3/dense/MatMul*
transpose_a(* 
_output_shapes
:
А1А*
transpose_b( 
Й
/gradients/L3/dense/MatMul_grad/tuple/group_depsNoOp&^gradients/L3/dense/MatMul_grad/MatMul(^gradients/L3/dense/MatMul_grad/MatMul_1
у
7gradients/L3/dense/MatMul_grad/tuple/control_dependencyIdentity%gradients/L3/dense/MatMul_grad/MatMul0^gradients/L3/dense/MatMul_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А1*
T0*"
_class
loc:@L3/dense/MatMul
п
9gradients/L3/dense/MatMul_grad/tuple/control_dependency_1Identity'gradients/L3/dense/MatMul_grad/MatMul_10^gradients/L3/dense/MatMul_grad/tuple/group_deps* 
_output_shapes
:
А1А*
T0*"
_class
loc:@L3/dense/MatMul
В
'gradients/L3_1/dense/MatMul_grad/MatMulMatMul:gradients/L3_1/dense/BiasAdd_grad/tuple/control_dependencyL3/dense/kernel/read*
T0*$
_class
loc:@L3_1/dense/MatMul*
transpose_a( *(
_output_shapes
:€€€€€€€€€А1*
transpose_b(
Д
)gradients/L3_1/dense/MatMul_grad/MatMul_1MatMulL3_1/Flatten/flatten/Reshape:gradients/L3_1/dense/BiasAdd_grad/tuple/control_dependency*
T0*$
_class
loc:@L3_1/dense/MatMul*
transpose_a(* 
_output_shapes
:
А1А*
transpose_b( 
П
1gradients/L3_1/dense/MatMul_grad/tuple/group_depsNoOp(^gradients/L3_1/dense/MatMul_grad/MatMul*^gradients/L3_1/dense/MatMul_grad/MatMul_1
ы
9gradients/L3_1/dense/MatMul_grad/tuple/control_dependencyIdentity'gradients/L3_1/dense/MatMul_grad/MatMul2^gradients/L3_1/dense/MatMul_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А1*
T0*$
_class
loc:@L3_1/dense/MatMul
ч
;gradients/L3_1/dense/MatMul_grad/tuple/control_dependency_1Identity)gradients/L3_1/dense/MatMul_grad/MatMul_12^gradients/L3_1/dense/MatMul_grad/tuple/group_deps*
T0*$
_class
loc:@L3_1/dense/MatMul* 
_output_shapes
:
А1А
В
'gradients/L3_2/dense/MatMul_grad/MatMulMatMul:gradients/L3_2/dense/BiasAdd_grad/tuple/control_dependencyL3/dense/kernel/read*$
_class
loc:@L3_2/dense/MatMul*
transpose_a( *(
_output_shapes
:€€€€€€€€€А1*
transpose_b(*
T0
Д
)gradients/L3_2/dense/MatMul_grad/MatMul_1MatMulL3_2/Flatten/flatten/Reshape:gradients/L3_2/dense/BiasAdd_grad/tuple/control_dependency*$
_class
loc:@L3_2/dense/MatMul*
transpose_a(* 
_output_shapes
:
А1А*
transpose_b( *
T0
П
1gradients/L3_2/dense/MatMul_grad/tuple/group_depsNoOp(^gradients/L3_2/dense/MatMul_grad/MatMul*^gradients/L3_2/dense/MatMul_grad/MatMul_1
ы
9gradients/L3_2/dense/MatMul_grad/tuple/control_dependencyIdentity'gradients/L3_2/dense/MatMul_grad/MatMul2^gradients/L3_2/dense/MatMul_grad/tuple/group_deps*
T0*$
_class
loc:@L3_2/dense/MatMul*(
_output_shapes
:€€€€€€€€€А1
ч
;gradients/L3_2/dense/MatMul_grad/tuple/control_dependency_1Identity)gradients/L3_2/dense/MatMul_grad/MatMul_12^gradients/L3_2/dense/MatMul_grad/tuple/group_deps*
T0*$
_class
loc:@L3_2/dense/MatMul* 
_output_shapes
:
А1А
В
'gradients/L3_3/dense/MatMul_grad/MatMulMatMul:gradients/L3_3/dense/BiasAdd_grad/tuple/control_dependencyL3/dense/kernel/read*
T0*$
_class
loc:@L3_3/dense/MatMul*
transpose_a( *(
_output_shapes
:€€€€€€€€€А1*
transpose_b(
Д
)gradients/L3_3/dense/MatMul_grad/MatMul_1MatMulL3_3/Flatten/flatten/Reshape:gradients/L3_3/dense/BiasAdd_grad/tuple/control_dependency*
T0*$
_class
loc:@L3_3/dense/MatMul*
transpose_a(* 
_output_shapes
:
А1А*
transpose_b( 
П
1gradients/L3_3/dense/MatMul_grad/tuple/group_depsNoOp(^gradients/L3_3/dense/MatMul_grad/MatMul*^gradients/L3_3/dense/MatMul_grad/MatMul_1
ы
9gradients/L3_3/dense/MatMul_grad/tuple/control_dependencyIdentity'gradients/L3_3/dense/MatMul_grad/MatMul2^gradients/L3_3/dense/MatMul_grad/tuple/group_deps*
T0*$
_class
loc:@L3_3/dense/MatMul*(
_output_shapes
:€€€€€€€€€А1
ч
;gradients/L3_3/dense/MatMul_grad/tuple/control_dependency_1Identity)gradients/L3_3/dense/MatMul_grad/MatMul_12^gradients/L3_3/dense/MatMul_grad/tuple/group_deps*$
_class
loc:@L3_3/dense/MatMul* 
_output_shapes
:
А1А*
T0
а
gradients/AddN_10AddN:gradients/L3/dense/BiasAdd_grad/tuple/control_dependency_1<gradients/L3_1/dense/BiasAdd_grad/tuple/control_dependency_1<gradients/L3_2/dense/BiasAdd_grad/tuple/control_dependency_1<gradients/L3_3/dense/BiasAdd_grad/tuple/control_dependency_1*
T0* 
_class
loc:@L3/dense/bias*
N*
_output_shapes	
:А
√
/gradients/L3/Flatten/flatten/Reshape_grad/ShapeShape%L3/batch_normalization/FusedBatchNorm*
_output_shapes
:*
T0*
out_type0*-
_class#
!loc:@L3/Flatten/flatten/Reshape
Ю
1gradients/L3/Flatten/flatten/Reshape_grad/ReshapeReshape7gradients/L3/dense/MatMul_grad/tuple/control_dependency/gradients/L3/Flatten/flatten/Reshape_grad/Shape*
Tshape0*-
_class#
!loc:@L3/Flatten/flatten/Reshape*0
_output_shapes
:€€€€€€€€€А*
T0
…
1gradients/L3_1/Flatten/flatten/Reshape_grad/ShapeShape'L3_1/batch_normalization/FusedBatchNorm*
_output_shapes
:*
T0*
out_type0*/
_class%
#!loc:@L3_1/Flatten/flatten/Reshape
¶
3gradients/L3_1/Flatten/flatten/Reshape_grad/ReshapeReshape9gradients/L3_1/dense/MatMul_grad/tuple/control_dependency1gradients/L3_1/Flatten/flatten/Reshape_grad/Shape*
T0*
Tshape0*/
_class%
#!loc:@L3_1/Flatten/flatten/Reshape*0
_output_shapes
:€€€€€€€€€А
…
1gradients/L3_2/Flatten/flatten/Reshape_grad/ShapeShape'L3_2/batch_normalization/FusedBatchNorm*
_output_shapes
:*
T0*
out_type0*/
_class%
#!loc:@L3_2/Flatten/flatten/Reshape
¶
3gradients/L3_2/Flatten/flatten/Reshape_grad/ReshapeReshape9gradients/L3_2/dense/MatMul_grad/tuple/control_dependency1gradients/L3_2/Flatten/flatten/Reshape_grad/Shape*0
_output_shapes
:€€€€€€€€€А*
T0*
Tshape0*/
_class%
#!loc:@L3_2/Flatten/flatten/Reshape
…
1gradients/L3_3/Flatten/flatten/Reshape_grad/ShapeShape'L3_3/batch_normalization/FusedBatchNorm*
T0*
out_type0*/
_class%
#!loc:@L3_3/Flatten/flatten/Reshape*
_output_shapes
:
¶
3gradients/L3_3/Flatten/flatten/Reshape_grad/ReshapeReshape9gradients/L3_3/dense/MatMul_grad/tuple/control_dependency1gradients/L3_3/Flatten/flatten/Reshape_grad/Shape*
T0*
Tshape0*/
_class%
#!loc:@L3_3/Flatten/flatten/Reshape*0
_output_shapes
:€€€€€€€€€А
г
gradients/AddN_11AddN9gradients/L3/dense/MatMul_grad/tuple/control_dependency_1;gradients/L3_1/dense/MatMul_grad/tuple/control_dependency_1;gradients/L3_2/dense/MatMul_grad/tuple/control_dependency_1;gradients/L3_3/dense/MatMul_grad/tuple/control_dependency_1*
T0*"
_class
loc:@L3/dense/kernel*
N* 
_output_shapes
:
А1А
ђ
gradients/zeros_like_4	ZerosLike'L3/batch_normalization/FusedBatchNorm:1*
T0*8
_class.
,*loc:@L3/batch_normalization/FusedBatchNorm*
_output_shapes	
:А
ђ
gradients/zeros_like_5	ZerosLike'L3/batch_normalization/FusedBatchNorm:2*
T0*8
_class.
,*loc:@L3/batch_normalization/FusedBatchNorm*
_output_shapes	
:А
ђ
gradients/zeros_like_6	ZerosLike'L3/batch_normalization/FusedBatchNorm:3*
T0*8
_class.
,*loc:@L3/batch_normalization/FusedBatchNorm*
_output_shapes	
:А
ђ
gradients/zeros_like_7	ZerosLike'L3/batch_normalization/FusedBatchNorm:4*8
_class.
,*loc:@L3/batch_normalization/FusedBatchNorm*
_output_shapes	
:А*
T0
€
Ggradients/L3/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGrad1gradients/L3/Flatten/flatten/Reshape_grad/Reshape'L2-1/batch_normalization/FusedBatchNorm!L3/batch_normalization/gamma/read'L3/batch_normalization/moving_mean/read+L3/batch_normalization/moving_variance/read*
is_training( *
epsilon%oГ:*L
_output_shapes:
8:€€€€€€€€€А:А:А:А:А*
T0*8
_class.
,*loc:@L3/batch_normalization/FusedBatchNorm*
data_formatNHWC
Ч
Egradients/L3/batch_normalization/FusedBatchNorm_grad/tuple/group_depsNoOpH^gradients/L3/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad
я
Mgradients/L3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyIdentityGgradients/L3/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradF^gradients/L3/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*8
_class.
,*loc:@L3/batch_normalization/FusedBatchNorm*0
_output_shapes
:€€€€€€€€€А
ќ
Ogradients/L3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1IdentityIgradients/L3/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:1F^gradients/L3/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*8
_class.
,*loc:@L3/batch_normalization/FusedBatchNorm*
_output_shapes	
:А
ќ
Ogradients/L3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2IdentityIgradients/L3/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:2F^gradients/L3/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*8
_class.
,*loc:@L3/batch_normalization/FusedBatchNorm*
_output_shapes	
:А
∞
gradients/zeros_like_8	ZerosLike)L3_1/batch_normalization/FusedBatchNorm:1*
T0*:
_class0
.,loc:@L3_1/batch_normalization/FusedBatchNorm*
_output_shapes	
:А
∞
gradients/zeros_like_9	ZerosLike)L3_1/batch_normalization/FusedBatchNorm:2*
_output_shapes	
:А*
T0*:
_class0
.,loc:@L3_1/batch_normalization/FusedBatchNorm
±
gradients/zeros_like_10	ZerosLike)L3_1/batch_normalization/FusedBatchNorm:3*
_output_shapes	
:А*
T0*:
_class0
.,loc:@L3_1/batch_normalization/FusedBatchNorm
±
gradients/zeros_like_11	ZerosLike)L3_1/batch_normalization/FusedBatchNorm:4*
T0*:
_class0
.,loc:@L3_1/batch_normalization/FusedBatchNorm*
_output_shapes	
:А
З
Igradients/L3_1/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGrad3gradients/L3_1/Flatten/flatten/Reshape_grad/Reshape)L2-1_1/batch_normalization/FusedBatchNorm!L3/batch_normalization/gamma/read'L3/batch_normalization/moving_mean/read+L3/batch_normalization/moving_variance/read*
T0*:
_class0
.,loc:@L3_1/batch_normalization/FusedBatchNorm*
data_formatNHWC*
is_training( *
epsilon%oГ:*L
_output_shapes:
8:€€€€€€€€€А:А:А:А:А
Ы
Ggradients/L3_1/batch_normalization/FusedBatchNorm_grad/tuple/group_depsNoOpJ^gradients/L3_1/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad
з
Ogradients/L3_1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyIdentityIgradients/L3_1/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradH^gradients/L3_1/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*:
_class0
.,loc:@L3_1/batch_normalization/FusedBatchNorm*0
_output_shapes
:€€€€€€€€€А
÷
Qgradients/L3_1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1IdentityKgradients/L3_1/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:1H^gradients/L3_1/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*:
_class0
.,loc:@L3_1/batch_normalization/FusedBatchNorm*
_output_shapes	
:А
÷
Qgradients/L3_1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2IdentityKgradients/L3_1/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:2H^gradients/L3_1/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
_output_shapes	
:А*
T0*:
_class0
.,loc:@L3_1/batch_normalization/FusedBatchNorm
±
gradients/zeros_like_12	ZerosLike)L3_2/batch_normalization/FusedBatchNorm:1*
T0*:
_class0
.,loc:@L3_2/batch_normalization/FusedBatchNorm*
_output_shapes	
:А
±
gradients/zeros_like_13	ZerosLike)L3_2/batch_normalization/FusedBatchNorm:2*
_output_shapes	
:А*
T0*:
_class0
.,loc:@L3_2/batch_normalization/FusedBatchNorm
±
gradients/zeros_like_14	ZerosLike)L3_2/batch_normalization/FusedBatchNorm:3*
T0*:
_class0
.,loc:@L3_2/batch_normalization/FusedBatchNorm*
_output_shapes	
:А
±
gradients/zeros_like_15	ZerosLike)L3_2/batch_normalization/FusedBatchNorm:4*:
_class0
.,loc:@L3_2/batch_normalization/FusedBatchNorm*
_output_shapes	
:А*
T0
З
Igradients/L3_2/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGrad3gradients/L3_2/Flatten/flatten/Reshape_grad/Reshape)L2-1_2/batch_normalization/FusedBatchNorm!L3/batch_normalization/gamma/read'L3/batch_normalization/moving_mean/read+L3/batch_normalization/moving_variance/read*:
_class0
.,loc:@L3_2/batch_normalization/FusedBatchNorm*
data_formatNHWC*
is_training( *
epsilon%oГ:*L
_output_shapes:
8:€€€€€€€€€А:А:А:А:А*
T0
Ы
Ggradients/L3_2/batch_normalization/FusedBatchNorm_grad/tuple/group_depsNoOpJ^gradients/L3_2/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad
з
Ogradients/L3_2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyIdentityIgradients/L3_2/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradH^gradients/L3_2/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*:
_class0
.,loc:@L3_2/batch_normalization/FusedBatchNorm*0
_output_shapes
:€€€€€€€€€А
÷
Qgradients/L3_2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1IdentityKgradients/L3_2/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:1H^gradients/L3_2/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*:
_class0
.,loc:@L3_2/batch_normalization/FusedBatchNorm*
_output_shapes	
:А
÷
Qgradients/L3_2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2IdentityKgradients/L3_2/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:2H^gradients/L3_2/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*:
_class0
.,loc:@L3_2/batch_normalization/FusedBatchNorm*
_output_shapes	
:А
±
gradients/zeros_like_16	ZerosLike)L3_3/batch_normalization/FusedBatchNorm:1*
T0*:
_class0
.,loc:@L3_3/batch_normalization/FusedBatchNorm*
_output_shapes	
:А
±
gradients/zeros_like_17	ZerosLike)L3_3/batch_normalization/FusedBatchNorm:2*
_output_shapes	
:А*
T0*:
_class0
.,loc:@L3_3/batch_normalization/FusedBatchNorm
±
gradients/zeros_like_18	ZerosLike)L3_3/batch_normalization/FusedBatchNorm:3*
T0*:
_class0
.,loc:@L3_3/batch_normalization/FusedBatchNorm*
_output_shapes	
:А
±
gradients/zeros_like_19	ZerosLike)L3_3/batch_normalization/FusedBatchNorm:4*:
_class0
.,loc:@L3_3/batch_normalization/FusedBatchNorm*
_output_shapes	
:А*
T0
З
Igradients/L3_3/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGrad3gradients/L3_3/Flatten/flatten/Reshape_grad/Reshape)L2-1_3/batch_normalization/FusedBatchNorm!L3/batch_normalization/gamma/read'L3/batch_normalization/moving_mean/read+L3/batch_normalization/moving_variance/read*
T0*:
_class0
.,loc:@L3_3/batch_normalization/FusedBatchNorm*
data_formatNHWC*
is_training( *
epsilon%oГ:*L
_output_shapes:
8:€€€€€€€€€А:А:А:А:А
Ы
Ggradients/L3_3/batch_normalization/FusedBatchNorm_grad/tuple/group_depsNoOpJ^gradients/L3_3/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad
з
Ogradients/L3_3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyIdentityIgradients/L3_3/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradH^gradients/L3_3/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*:
_class0
.,loc:@L3_3/batch_normalization/FusedBatchNorm*0
_output_shapes
:€€€€€€€€€А
÷
Qgradients/L3_3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1IdentityKgradients/L3_3/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:1H^gradients/L3_3/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*:
_class0
.,loc:@L3_3/batch_normalization/FusedBatchNorm*
_output_shapes	
:А
÷
Qgradients/L3_3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2IdentityKgradients/L3_3/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:2H^gradients/L3_3/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*:
_class0
.,loc:@L3_3/batch_normalization/FusedBatchNorm*
_output_shapes	
:А
±
gradients/zeros_like_20	ZerosLike)L2-1/batch_normalization/FusedBatchNorm:1*
T0*:
_class0
.,loc:@L2-1/batch_normalization/FusedBatchNorm*
_output_shapes	
:А
±
gradients/zeros_like_21	ZerosLike)L2-1/batch_normalization/FusedBatchNorm:2*
_output_shapes	
:А*
T0*:
_class0
.,loc:@L2-1/batch_normalization/FusedBatchNorm
±
gradients/zeros_like_22	ZerosLike)L2-1/batch_normalization/FusedBatchNorm:3*
T0*:
_class0
.,loc:@L2-1/batch_normalization/FusedBatchNorm*
_output_shapes	
:А
±
gradients/zeros_like_23	ZerosLike)L2-1/batch_normalization/FusedBatchNorm:4*
_output_shapes	
:А*
T0*:
_class0
.,loc:@L2-1/batch_normalization/FusedBatchNorm
Ф
Igradients/L2-1/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradMgradients/L3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyL2/dropout/dropout/mul#L2-1/batch_normalization/gamma/read)L2-1/batch_normalization/moving_mean/read-L2-1/batch_normalization/moving_variance/read*
is_training( *
epsilon%oГ:*L
_output_shapes:
8:€€€€€€€€€А:А:А:А:А*
T0*:
_class0
.,loc:@L2-1/batch_normalization/FusedBatchNorm*
data_formatNHWC
Ы
Ggradients/L2-1/batch_normalization/FusedBatchNorm_grad/tuple/group_depsNoOpJ^gradients/L2-1/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad
з
Ogradients/L2-1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyIdentityIgradients/L2-1/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradH^gradients/L2-1/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*:
_class0
.,loc:@L2-1/batch_normalization/FusedBatchNorm*0
_output_shapes
:€€€€€€€€€А
÷
Qgradients/L2-1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1IdentityKgradients/L2-1/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:1H^gradients/L2-1/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
_output_shapes	
:А*
T0*:
_class0
.,loc:@L2-1/batch_normalization/FusedBatchNorm
÷
Qgradients/L2-1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2IdentityKgradients/L2-1/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:2H^gradients/L2-1/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*:
_class0
.,loc:@L2-1/batch_normalization/FusedBatchNorm*
_output_shapes	
:А
µ
gradients/zeros_like_24	ZerosLike+L2-1_1/batch_normalization/FusedBatchNorm:1*
T0*<
_class2
0.loc:@L2-1_1/batch_normalization/FusedBatchNorm*
_output_shapes	
:А
µ
gradients/zeros_like_25	ZerosLike+L2-1_1/batch_normalization/FusedBatchNorm:2*<
_class2
0.loc:@L2-1_1/batch_normalization/FusedBatchNorm*
_output_shapes	
:А*
T0
µ
gradients/zeros_like_26	ZerosLike+L2-1_1/batch_normalization/FusedBatchNorm:3*
T0*<
_class2
0.loc:@L2-1_1/batch_normalization/FusedBatchNorm*
_output_shapes	
:А
µ
gradients/zeros_like_27	ZerosLike+L2-1_1/batch_normalization/FusedBatchNorm:4*
T0*<
_class2
0.loc:@L2-1_1/batch_normalization/FusedBatchNorm*
_output_shapes	
:А
Ь
Kgradients/L2-1_1/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradOgradients/L3_1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyL2_1/dropout/dropout/mul#L2-1/batch_normalization/gamma/read)L2-1/batch_normalization/moving_mean/read-L2-1/batch_normalization/moving_variance/read*
T0*<
_class2
0.loc:@L2-1_1/batch_normalization/FusedBatchNorm*
data_formatNHWC*
is_training( *
epsilon%oГ:*L
_output_shapes:
8:€€€€€€€€€А:А:А:А:А
Я
Igradients/L2-1_1/batch_normalization/FusedBatchNorm_grad/tuple/group_depsNoOpL^gradients/L2-1_1/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad
п
Qgradients/L2-1_1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyIdentityKgradients/L2-1_1/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradJ^gradients/L2-1_1/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*<
_class2
0.loc:@L2-1_1/batch_normalization/FusedBatchNorm*0
_output_shapes
:€€€€€€€€€А
ё
Sgradients/L2-1_1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1IdentityMgradients/L2-1_1/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:1J^gradients/L2-1_1/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*<
_class2
0.loc:@L2-1_1/batch_normalization/FusedBatchNorm*
_output_shapes	
:А
ё
Sgradients/L2-1_1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2IdentityMgradients/L2-1_1/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:2J^gradients/L2-1_1/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*<
_class2
0.loc:@L2-1_1/batch_normalization/FusedBatchNorm*
_output_shapes	
:А*
T0
µ
gradients/zeros_like_28	ZerosLike+L2-1_2/batch_normalization/FusedBatchNorm:1*<
_class2
0.loc:@L2-1_2/batch_normalization/FusedBatchNorm*
_output_shapes	
:А*
T0
µ
gradients/zeros_like_29	ZerosLike+L2-1_2/batch_normalization/FusedBatchNorm:2*<
_class2
0.loc:@L2-1_2/batch_normalization/FusedBatchNorm*
_output_shapes	
:А*
T0
µ
gradients/zeros_like_30	ZerosLike+L2-1_2/batch_normalization/FusedBatchNorm:3*
T0*<
_class2
0.loc:@L2-1_2/batch_normalization/FusedBatchNorm*
_output_shapes	
:А
µ
gradients/zeros_like_31	ZerosLike+L2-1_2/batch_normalization/FusedBatchNorm:4*
_output_shapes	
:А*
T0*<
_class2
0.loc:@L2-1_2/batch_normalization/FusedBatchNorm
Ь
Kgradients/L2-1_2/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradOgradients/L3_2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyL2_2/dropout/dropout/mul#L2-1/batch_normalization/gamma/read)L2-1/batch_normalization/moving_mean/read-L2-1/batch_normalization/moving_variance/read*
epsilon%oГ:*L
_output_shapes:
8:€€€€€€€€€А:А:А:А:А*
T0*<
_class2
0.loc:@L2-1_2/batch_normalization/FusedBatchNorm*
data_formatNHWC*
is_training( 
Я
Igradients/L2-1_2/batch_normalization/FusedBatchNorm_grad/tuple/group_depsNoOpL^gradients/L2-1_2/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad
п
Qgradients/L2-1_2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyIdentityKgradients/L2-1_2/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradJ^gradients/L2-1_2/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*<
_class2
0.loc:@L2-1_2/batch_normalization/FusedBatchNorm*0
_output_shapes
:€€€€€€€€€А
ё
Sgradients/L2-1_2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1IdentityMgradients/L2-1_2/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:1J^gradients/L2-1_2/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*<
_class2
0.loc:@L2-1_2/batch_normalization/FusedBatchNorm*
_output_shapes	
:А
ё
Sgradients/L2-1_2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2IdentityMgradients/L2-1_2/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:2J^gradients/L2-1_2/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*<
_class2
0.loc:@L2-1_2/batch_normalization/FusedBatchNorm*
_output_shapes	
:А
µ
gradients/zeros_like_32	ZerosLike+L2-1_3/batch_normalization/FusedBatchNorm:1*
_output_shapes	
:А*
T0*<
_class2
0.loc:@L2-1_3/batch_normalization/FusedBatchNorm
µ
gradients/zeros_like_33	ZerosLike+L2-1_3/batch_normalization/FusedBatchNorm:2*
T0*<
_class2
0.loc:@L2-1_3/batch_normalization/FusedBatchNorm*
_output_shapes	
:А
µ
gradients/zeros_like_34	ZerosLike+L2-1_3/batch_normalization/FusedBatchNorm:3*
T0*<
_class2
0.loc:@L2-1_3/batch_normalization/FusedBatchNorm*
_output_shapes	
:А
µ
gradients/zeros_like_35	ZerosLike+L2-1_3/batch_normalization/FusedBatchNorm:4*
T0*<
_class2
0.loc:@L2-1_3/batch_normalization/FusedBatchNorm*
_output_shapes	
:А
Ь
Kgradients/L2-1_3/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradOgradients/L3_3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyL2_3/dropout/dropout/mul#L2-1/batch_normalization/gamma/read)L2-1/batch_normalization/moving_mean/read-L2-1/batch_normalization/moving_variance/read*
is_training( *
epsilon%oГ:*L
_output_shapes:
8:€€€€€€€€€А:А:А:А:А*
T0*<
_class2
0.loc:@L2-1_3/batch_normalization/FusedBatchNorm*
data_formatNHWC
Я
Igradients/L2-1_3/batch_normalization/FusedBatchNorm_grad/tuple/group_depsNoOpL^gradients/L2-1_3/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad
п
Qgradients/L2-1_3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyIdentityKgradients/L2-1_3/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradJ^gradients/L2-1_3/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*<
_class2
0.loc:@L2-1_3/batch_normalization/FusedBatchNorm*0
_output_shapes
:€€€€€€€€€А
ё
Sgradients/L2-1_3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1IdentityMgradients/L2-1_3/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:1J^gradients/L2-1_3/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*<
_class2
0.loc:@L2-1_3/batch_normalization/FusedBatchNorm*
_output_shapes	
:А
ё
Sgradients/L2-1_3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2IdentityMgradients/L2-1_3/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:2J^gradients/L2-1_3/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
_output_shapes	
:А*
T0*<
_class2
0.loc:@L2-1_3/batch_normalization/FusedBatchNorm
√
gradients/AddN_12AddNOgradients/L3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1Qgradients/L3_1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1Qgradients/L3_2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1Qgradients/L3_3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1*
T0*/
_class%
#!loc:@L3/batch_normalization/gamma*
N*
_output_shapes	
:А
¬
gradients/AddN_13AddNOgradients/L3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2Qgradients/L3_1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2Qgradients/L3_2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2Qgradients/L3_3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2*
N*
_output_shapes	
:А*
T0*.
_class$
" loc:@L3/batch_normalization/beta
ђ
+gradients/L2/dropout/dropout/mul_grad/ShapeShapeL2/dropout/dropout/div*
T0*
out_type0*)
_class
loc:@L2/dropout/dropout/mul*
_output_shapes
:
∞
-gradients/L2/dropout/dropout/mul_grad/Shape_1ShapeL2/dropout/dropout/Floor*
_output_shapes
:*
T0*
out_type0*)
_class
loc:@L2/dropout/dropout/mul
Ш
;gradients/L2/dropout/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/L2/dropout/dropout/mul_grad/Shape-gradients/L2/dropout/dropout/mul_grad/Shape_1*
T0*)
_class
loc:@L2/dropout/dropout/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Б
)gradients/L2/dropout/dropout/mul_grad/MulMulOgradients/L2-1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyL2/dropout/dropout/Floor*0
_output_shapes
:€€€€€€€€€А*
T0*)
_class
loc:@L2/dropout/dropout/mul
Г
)gradients/L2/dropout/dropout/mul_grad/SumSum)gradients/L2/dropout/dropout/mul_grad/Mul;gradients/L2/dropout/dropout/mul_grad/BroadcastGradientArgs*
T0*)
_class
loc:@L2/dropout/dropout/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
Д
-gradients/L2/dropout/dropout/mul_grad/ReshapeReshape)gradients/L2/dropout/dropout/mul_grad/Sum+gradients/L2/dropout/dropout/mul_grad/Shape*
T0*
Tshape0*)
_class
loc:@L2/dropout/dropout/mul*0
_output_shapes
:€€€€€€€€€А
Б
+gradients/L2/dropout/dropout/mul_grad/Mul_1MulL2/dropout/dropout/divOgradients/L2-1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency*0
_output_shapes
:€€€€€€€€€А*
T0*)
_class
loc:@L2/dropout/dropout/mul
Й
+gradients/L2/dropout/dropout/mul_grad/Sum_1Sum+gradients/L2/dropout/dropout/mul_grad/Mul_1=gradients/L2/dropout/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*)
_class
loc:@L2/dropout/dropout/mul
К
/gradients/L2/dropout/dropout/mul_grad/Reshape_1Reshape+gradients/L2/dropout/dropout/mul_grad/Sum_1-gradients/L2/dropout/dropout/mul_grad/Shape_1*
Tshape0*)
_class
loc:@L2/dropout/dropout/mul*0
_output_shapes
:€€€€€€€€€А*
T0
†
6gradients/L2/dropout/dropout/mul_grad/tuple/group_depsNoOp.^gradients/L2/dropout/dropout/mul_grad/Reshape0^gradients/L2/dropout/dropout/mul_grad/Reshape_1
Ш
>gradients/L2/dropout/dropout/mul_grad/tuple/control_dependencyIdentity-gradients/L2/dropout/dropout/mul_grad/Reshape7^gradients/L2/dropout/dropout/mul_grad/tuple/group_deps*
T0*)
_class
loc:@L2/dropout/dropout/mul*0
_output_shapes
:€€€€€€€€€А
Ь
@gradients/L2/dropout/dropout/mul_grad/tuple/control_dependency_1Identity/gradients/L2/dropout/dropout/mul_grad/Reshape_17^gradients/L2/dropout/dropout/mul_grad/tuple/group_deps*)
_class
loc:@L2/dropout/dropout/mul*0
_output_shapes
:€€€€€€€€€А*
T0
≤
-gradients/L2_1/dropout/dropout/mul_grad/ShapeShapeL2_1/dropout/dropout/div*
_output_shapes
:*
T0*
out_type0*+
_class!
loc:@L2_1/dropout/dropout/mul
ґ
/gradients/L2_1/dropout/dropout/mul_grad/Shape_1ShapeL2_1/dropout/dropout/Floor*
T0*
out_type0*+
_class!
loc:@L2_1/dropout/dropout/mul*
_output_shapes
:
†
=gradients/L2_1/dropout/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/L2_1/dropout/dropout/mul_grad/Shape/gradients/L2_1/dropout/dropout/mul_grad/Shape_1*
T0*+
_class!
loc:@L2_1/dropout/dropout/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Й
+gradients/L2_1/dropout/dropout/mul_grad/MulMulQgradients/L2-1_1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyL2_1/dropout/dropout/Floor*
T0*+
_class!
loc:@L2_1/dropout/dropout/mul*0
_output_shapes
:€€€€€€€€€А
Л
+gradients/L2_1/dropout/dropout/mul_grad/SumSum+gradients/L2_1/dropout/dropout/mul_grad/Mul=gradients/L2_1/dropout/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@L2_1/dropout/dropout/mul
М
/gradients/L2_1/dropout/dropout/mul_grad/ReshapeReshape+gradients/L2_1/dropout/dropout/mul_grad/Sum-gradients/L2_1/dropout/dropout/mul_grad/Shape*
T0*
Tshape0*+
_class!
loc:@L2_1/dropout/dropout/mul*0
_output_shapes
:€€€€€€€€€А
Й
-gradients/L2_1/dropout/dropout/mul_grad/Mul_1MulL2_1/dropout/dropout/divQgradients/L2-1_1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency*+
_class!
loc:@L2_1/dropout/dropout/mul*0
_output_shapes
:€€€€€€€€€А*
T0
С
-gradients/L2_1/dropout/dropout/mul_grad/Sum_1Sum-gradients/L2_1/dropout/dropout/mul_grad/Mul_1?gradients/L2_1/dropout/dropout/mul_grad/BroadcastGradientArgs:1*
T0*+
_class!
loc:@L2_1/dropout/dropout/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
Т
1gradients/L2_1/dropout/dropout/mul_grad/Reshape_1Reshape-gradients/L2_1/dropout/dropout/mul_grad/Sum_1/gradients/L2_1/dropout/dropout/mul_grad/Shape_1*0
_output_shapes
:€€€€€€€€€А*
T0*
Tshape0*+
_class!
loc:@L2_1/dropout/dropout/mul
¶
8gradients/L2_1/dropout/dropout/mul_grad/tuple/group_depsNoOp0^gradients/L2_1/dropout/dropout/mul_grad/Reshape2^gradients/L2_1/dropout/dropout/mul_grad/Reshape_1
†
@gradients/L2_1/dropout/dropout/mul_grad/tuple/control_dependencyIdentity/gradients/L2_1/dropout/dropout/mul_grad/Reshape9^gradients/L2_1/dropout/dropout/mul_grad/tuple/group_deps*
T0*+
_class!
loc:@L2_1/dropout/dropout/mul*0
_output_shapes
:€€€€€€€€€А
§
Bgradients/L2_1/dropout/dropout/mul_grad/tuple/control_dependency_1Identity1gradients/L2_1/dropout/dropout/mul_grad/Reshape_19^gradients/L2_1/dropout/dropout/mul_grad/tuple/group_deps*
T0*+
_class!
loc:@L2_1/dropout/dropout/mul*0
_output_shapes
:€€€€€€€€€А
≤
-gradients/L2_2/dropout/dropout/mul_grad/ShapeShapeL2_2/dropout/dropout/div*
T0*
out_type0*+
_class!
loc:@L2_2/dropout/dropout/mul*
_output_shapes
:
ґ
/gradients/L2_2/dropout/dropout/mul_grad/Shape_1ShapeL2_2/dropout/dropout/Floor*
T0*
out_type0*+
_class!
loc:@L2_2/dropout/dropout/mul*
_output_shapes
:
†
=gradients/L2_2/dropout/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/L2_2/dropout/dropout/mul_grad/Shape/gradients/L2_2/dropout/dropout/mul_grad/Shape_1*
T0*+
_class!
loc:@L2_2/dropout/dropout/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Й
+gradients/L2_2/dropout/dropout/mul_grad/MulMulQgradients/L2-1_2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyL2_2/dropout/dropout/Floor*
T0*+
_class!
loc:@L2_2/dropout/dropout/mul*0
_output_shapes
:€€€€€€€€€А
Л
+gradients/L2_2/dropout/dropout/mul_grad/SumSum+gradients/L2_2/dropout/dropout/mul_grad/Mul=gradients/L2_2/dropout/dropout/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@L2_2/dropout/dropout/mul*
_output_shapes
:
М
/gradients/L2_2/dropout/dropout/mul_grad/ReshapeReshape+gradients/L2_2/dropout/dropout/mul_grad/Sum-gradients/L2_2/dropout/dropout/mul_grad/Shape*
T0*
Tshape0*+
_class!
loc:@L2_2/dropout/dropout/mul*0
_output_shapes
:€€€€€€€€€А
Й
-gradients/L2_2/dropout/dropout/mul_grad/Mul_1MulL2_2/dropout/dropout/divQgradients/L2-1_2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency*
T0*+
_class!
loc:@L2_2/dropout/dropout/mul*0
_output_shapes
:€€€€€€€€€А
С
-gradients/L2_2/dropout/dropout/mul_grad/Sum_1Sum-gradients/L2_2/dropout/dropout/mul_grad/Mul_1?gradients/L2_2/dropout/dropout/mul_grad/BroadcastGradientArgs:1*
T0*+
_class!
loc:@L2_2/dropout/dropout/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
Т
1gradients/L2_2/dropout/dropout/mul_grad/Reshape_1Reshape-gradients/L2_2/dropout/dropout/mul_grad/Sum_1/gradients/L2_2/dropout/dropout/mul_grad/Shape_1*
T0*
Tshape0*+
_class!
loc:@L2_2/dropout/dropout/mul*0
_output_shapes
:€€€€€€€€€А
¶
8gradients/L2_2/dropout/dropout/mul_grad/tuple/group_depsNoOp0^gradients/L2_2/dropout/dropout/mul_grad/Reshape2^gradients/L2_2/dropout/dropout/mul_grad/Reshape_1
†
@gradients/L2_2/dropout/dropout/mul_grad/tuple/control_dependencyIdentity/gradients/L2_2/dropout/dropout/mul_grad/Reshape9^gradients/L2_2/dropout/dropout/mul_grad/tuple/group_deps*+
_class!
loc:@L2_2/dropout/dropout/mul*0
_output_shapes
:€€€€€€€€€А*
T0
§
Bgradients/L2_2/dropout/dropout/mul_grad/tuple/control_dependency_1Identity1gradients/L2_2/dropout/dropout/mul_grad/Reshape_19^gradients/L2_2/dropout/dropout/mul_grad/tuple/group_deps*
T0*+
_class!
loc:@L2_2/dropout/dropout/mul*0
_output_shapes
:€€€€€€€€€А
≤
-gradients/L2_3/dropout/dropout/mul_grad/ShapeShapeL2_3/dropout/dropout/div*
T0*
out_type0*+
_class!
loc:@L2_3/dropout/dropout/mul*
_output_shapes
:
ґ
/gradients/L2_3/dropout/dropout/mul_grad/Shape_1ShapeL2_3/dropout/dropout/Floor*
out_type0*+
_class!
loc:@L2_3/dropout/dropout/mul*
_output_shapes
:*
T0
†
=gradients/L2_3/dropout/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/L2_3/dropout/dropout/mul_grad/Shape/gradients/L2_3/dropout/dropout/mul_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*+
_class!
loc:@L2_3/dropout/dropout/mul
Й
+gradients/L2_3/dropout/dropout/mul_grad/MulMulQgradients/L2-1_3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyL2_3/dropout/dropout/Floor*0
_output_shapes
:€€€€€€€€€А*
T0*+
_class!
loc:@L2_3/dropout/dropout/mul
Л
+gradients/L2_3/dropout/dropout/mul_grad/SumSum+gradients/L2_3/dropout/dropout/mul_grad/Mul=gradients/L2_3/dropout/dropout/mul_grad/BroadcastGradientArgs*
T0*+
_class!
loc:@L2_3/dropout/dropout/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
М
/gradients/L2_3/dropout/dropout/mul_grad/ReshapeReshape+gradients/L2_3/dropout/dropout/mul_grad/Sum-gradients/L2_3/dropout/dropout/mul_grad/Shape*
Tshape0*+
_class!
loc:@L2_3/dropout/dropout/mul*0
_output_shapes
:€€€€€€€€€А*
T0
Й
-gradients/L2_3/dropout/dropout/mul_grad/Mul_1MulL2_3/dropout/dropout/divQgradients/L2-1_3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency*
T0*+
_class!
loc:@L2_3/dropout/dropout/mul*0
_output_shapes
:€€€€€€€€€А
С
-gradients/L2_3/dropout/dropout/mul_grad/Sum_1Sum-gradients/L2_3/dropout/dropout/mul_grad/Mul_1?gradients/L2_3/dropout/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@L2_3/dropout/dropout/mul
Т
1gradients/L2_3/dropout/dropout/mul_grad/Reshape_1Reshape-gradients/L2_3/dropout/dropout/mul_grad/Sum_1/gradients/L2_3/dropout/dropout/mul_grad/Shape_1*
T0*
Tshape0*+
_class!
loc:@L2_3/dropout/dropout/mul*0
_output_shapes
:€€€€€€€€€А
¶
8gradients/L2_3/dropout/dropout/mul_grad/tuple/group_depsNoOp0^gradients/L2_3/dropout/dropout/mul_grad/Reshape2^gradients/L2_3/dropout/dropout/mul_grad/Reshape_1
†
@gradients/L2_3/dropout/dropout/mul_grad/tuple/control_dependencyIdentity/gradients/L2_3/dropout/dropout/mul_grad/Reshape9^gradients/L2_3/dropout/dropout/mul_grad/tuple/group_deps*
T0*+
_class!
loc:@L2_3/dropout/dropout/mul*0
_output_shapes
:€€€€€€€€€А
§
Bgradients/L2_3/dropout/dropout/mul_grad/tuple/control_dependency_1Identity1gradients/L2_3/dropout/dropout/mul_grad/Reshape_19^gradients/L2_3/dropout/dropout/mul_grad/tuple/group_deps*+
_class!
loc:@L2_3/dropout/dropout/mul*0
_output_shapes
:€€€€€€€€€А*
T0
Ќ
gradients/AddN_14AddNQgradients/L2-1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1Sgradients/L2-1_1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1Sgradients/L2-1_2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1Sgradients/L2-1_3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1*1
_class'
%#loc:@L2-1/batch_normalization/gamma*
N*
_output_shapes	
:А*
T0
ћ
gradients/AddN_15AddNQgradients/L2-1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2Sgradients/L2-1_1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2Sgradients/L2-1_2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2Sgradients/L2-1_3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2*
_output_shapes	
:А*
T0*0
_class&
$"loc:@L2-1/batch_normalization/beta*
N
Ѓ
+gradients/L2/dropout/dropout/div_grad/ShapeShapeL2/max_pooling2d/MaxPool*
_output_shapes
:*
T0*
out_type0*)
_class
loc:@L2/dropout/dropout/div
Ы
-gradients/L2/dropout/dropout/div_grad/Shape_1Const*
valueB *)
_class
loc:@L2/dropout/dropout/div*
dtype0*
_output_shapes
: 
Ш
;gradients/L2/dropout/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/L2/dropout/dropout/div_grad/Shape-gradients/L2/dropout/dropout/div_grad/Shape_1*
T0*)
_class
loc:@L2/dropout/dropout/div*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ь
-gradients/L2/dropout/dropout/div_grad/RealDivRealDiv>gradients/L2/dropout/dropout/mul_grad/tuple/control_dependencyL2/dropout/dropout/keep_prob*
T0*)
_class
loc:@L2/dropout/dropout/div*0
_output_shapes
:€€€€€€€€€А
З
)gradients/L2/dropout/dropout/div_grad/SumSum-gradients/L2/dropout/dropout/div_grad/RealDiv;gradients/L2/dropout/dropout/div_grad/BroadcastGradientArgs*
T0*)
_class
loc:@L2/dropout/dropout/div*
_output_shapes
:*

Tidx0*
	keep_dims( 
Д
-gradients/L2/dropout/dropout/div_grad/ReshapeReshape)gradients/L2/dropout/dropout/div_grad/Sum+gradients/L2/dropout/dropout/div_grad/Shape*
T0*
Tshape0*)
_class
loc:@L2/dropout/dropout/div*0
_output_shapes
:€€€€€€€€€А
∞
)gradients/L2/dropout/dropout/div_grad/NegNegL2/max_pooling2d/MaxPool*
T0*)
_class
loc:@L2/dropout/dropout/div*0
_output_shapes
:€€€€€€€€€А
й
/gradients/L2/dropout/dropout/div_grad/RealDiv_1RealDiv)gradients/L2/dropout/dropout/div_grad/NegL2/dropout/dropout/keep_prob*
T0*)
_class
loc:@L2/dropout/dropout/div*0
_output_shapes
:€€€€€€€€€А
п
/gradients/L2/dropout/dropout/div_grad/RealDiv_2RealDiv/gradients/L2/dropout/dropout/div_grad/RealDiv_1L2/dropout/dropout/keep_prob*
T0*)
_class
loc:@L2/dropout/dropout/div*0
_output_shapes
:€€€€€€€€€А
З
)gradients/L2/dropout/dropout/div_grad/mulMul>gradients/L2/dropout/dropout/mul_grad/tuple/control_dependency/gradients/L2/dropout/dropout/div_grad/RealDiv_2*
T0*)
_class
loc:@L2/dropout/dropout/div*0
_output_shapes
:€€€€€€€€€А
З
+gradients/L2/dropout/dropout/div_grad/Sum_1Sum)gradients/L2/dropout/dropout/div_grad/mul=gradients/L2/dropout/dropout/div_grad/BroadcastGradientArgs:1*
T0*)
_class
loc:@L2/dropout/dropout/div*
_output_shapes
:*

Tidx0*
	keep_dims( 
р
/gradients/L2/dropout/dropout/div_grad/Reshape_1Reshape+gradients/L2/dropout/dropout/div_grad/Sum_1-gradients/L2/dropout/dropout/div_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*)
_class
loc:@L2/dropout/dropout/div
†
6gradients/L2/dropout/dropout/div_grad/tuple/group_depsNoOp.^gradients/L2/dropout/dropout/div_grad/Reshape0^gradients/L2/dropout/dropout/div_grad/Reshape_1
Ш
>gradients/L2/dropout/dropout/div_grad/tuple/control_dependencyIdentity-gradients/L2/dropout/dropout/div_grad/Reshape7^gradients/L2/dropout/dropout/div_grad/tuple/group_deps*
T0*)
_class
loc:@L2/dropout/dropout/div*0
_output_shapes
:€€€€€€€€€А
В
@gradients/L2/dropout/dropout/div_grad/tuple/control_dependency_1Identity/gradients/L2/dropout/dropout/div_grad/Reshape_17^gradients/L2/dropout/dropout/div_grad/tuple/group_deps*
T0*)
_class
loc:@L2/dropout/dropout/div*
_output_shapes
: 
і
-gradients/L2_1/dropout/dropout/div_grad/ShapeShapeL2_1/max_pooling2d/MaxPool*
T0*
out_type0*+
_class!
loc:@L2_1/dropout/dropout/div*
_output_shapes
:
Я
/gradients/L2_1/dropout/dropout/div_grad/Shape_1Const*
valueB *+
_class!
loc:@L2_1/dropout/dropout/div*
dtype0*
_output_shapes
: 
†
=gradients/L2_1/dropout/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/L2_1/dropout/dropout/div_grad/Shape/gradients/L2_1/dropout/dropout/div_grad/Shape_1*
T0*+
_class!
loc:@L2_1/dropout/dropout/div*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Д
/gradients/L2_1/dropout/dropout/div_grad/RealDivRealDiv@gradients/L2_1/dropout/dropout/mul_grad/tuple/control_dependencyL2_1/dropout/dropout/keep_prob*0
_output_shapes
:€€€€€€€€€А*
T0*+
_class!
loc:@L2_1/dropout/dropout/div
П
+gradients/L2_1/dropout/dropout/div_grad/SumSum/gradients/L2_1/dropout/dropout/div_grad/RealDiv=gradients/L2_1/dropout/dropout/div_grad/BroadcastGradientArgs*
T0*+
_class!
loc:@L2_1/dropout/dropout/div*
_output_shapes
:*

Tidx0*
	keep_dims( 
М
/gradients/L2_1/dropout/dropout/div_grad/ReshapeReshape+gradients/L2_1/dropout/dropout/div_grad/Sum-gradients/L2_1/dropout/dropout/div_grad/Shape*
T0*
Tshape0*+
_class!
loc:@L2_1/dropout/dropout/div*0
_output_shapes
:€€€€€€€€€А
ґ
+gradients/L2_1/dropout/dropout/div_grad/NegNegL2_1/max_pooling2d/MaxPool*0
_output_shapes
:€€€€€€€€€А*
T0*+
_class!
loc:@L2_1/dropout/dropout/div
с
1gradients/L2_1/dropout/dropout/div_grad/RealDiv_1RealDiv+gradients/L2_1/dropout/dropout/div_grad/NegL2_1/dropout/dropout/keep_prob*
T0*+
_class!
loc:@L2_1/dropout/dropout/div*0
_output_shapes
:€€€€€€€€€А
ч
1gradients/L2_1/dropout/dropout/div_grad/RealDiv_2RealDiv1gradients/L2_1/dropout/dropout/div_grad/RealDiv_1L2_1/dropout/dropout/keep_prob*
T0*+
_class!
loc:@L2_1/dropout/dropout/div*0
_output_shapes
:€€€€€€€€€А
П
+gradients/L2_1/dropout/dropout/div_grad/mulMul@gradients/L2_1/dropout/dropout/mul_grad/tuple/control_dependency1gradients/L2_1/dropout/dropout/div_grad/RealDiv_2*+
_class!
loc:@L2_1/dropout/dropout/div*0
_output_shapes
:€€€€€€€€€А*
T0
П
-gradients/L2_1/dropout/dropout/div_grad/Sum_1Sum+gradients/L2_1/dropout/dropout/div_grad/mul?gradients/L2_1/dropout/dropout/div_grad/BroadcastGradientArgs:1*
T0*+
_class!
loc:@L2_1/dropout/dropout/div*
_output_shapes
:*

Tidx0*
	keep_dims( 
ш
1gradients/L2_1/dropout/dropout/div_grad/Reshape_1Reshape-gradients/L2_1/dropout/dropout/div_grad/Sum_1/gradients/L2_1/dropout/dropout/div_grad/Shape_1*
T0*
Tshape0*+
_class!
loc:@L2_1/dropout/dropout/div*
_output_shapes
: 
¶
8gradients/L2_1/dropout/dropout/div_grad/tuple/group_depsNoOp0^gradients/L2_1/dropout/dropout/div_grad/Reshape2^gradients/L2_1/dropout/dropout/div_grad/Reshape_1
†
@gradients/L2_1/dropout/dropout/div_grad/tuple/control_dependencyIdentity/gradients/L2_1/dropout/dropout/div_grad/Reshape9^gradients/L2_1/dropout/dropout/div_grad/tuple/group_deps*0
_output_shapes
:€€€€€€€€€А*
T0*+
_class!
loc:@L2_1/dropout/dropout/div
К
Bgradients/L2_1/dropout/dropout/div_grad/tuple/control_dependency_1Identity1gradients/L2_1/dropout/dropout/div_grad/Reshape_19^gradients/L2_1/dropout/dropout/div_grad/tuple/group_deps*
T0*+
_class!
loc:@L2_1/dropout/dropout/div*
_output_shapes
: 
і
-gradients/L2_2/dropout/dropout/div_grad/ShapeShapeL2_2/max_pooling2d/MaxPool*
T0*
out_type0*+
_class!
loc:@L2_2/dropout/dropout/div*
_output_shapes
:
Я
/gradients/L2_2/dropout/dropout/div_grad/Shape_1Const*
valueB *+
_class!
loc:@L2_2/dropout/dropout/div*
dtype0*
_output_shapes
: 
†
=gradients/L2_2/dropout/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/L2_2/dropout/dropout/div_grad/Shape/gradients/L2_2/dropout/dropout/div_grad/Shape_1*
T0*+
_class!
loc:@L2_2/dropout/dropout/div*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Д
/gradients/L2_2/dropout/dropout/div_grad/RealDivRealDiv@gradients/L2_2/dropout/dropout/mul_grad/tuple/control_dependencyL2_2/dropout/dropout/keep_prob*
T0*+
_class!
loc:@L2_2/dropout/dropout/div*0
_output_shapes
:€€€€€€€€€А
П
+gradients/L2_2/dropout/dropout/div_grad/SumSum/gradients/L2_2/dropout/dropout/div_grad/RealDiv=gradients/L2_2/dropout/dropout/div_grad/BroadcastGradientArgs*
T0*+
_class!
loc:@L2_2/dropout/dropout/div*
_output_shapes
:*

Tidx0*
	keep_dims( 
М
/gradients/L2_2/dropout/dropout/div_grad/ReshapeReshape+gradients/L2_2/dropout/dropout/div_grad/Sum-gradients/L2_2/dropout/dropout/div_grad/Shape*
T0*
Tshape0*+
_class!
loc:@L2_2/dropout/dropout/div*0
_output_shapes
:€€€€€€€€€А
ґ
+gradients/L2_2/dropout/dropout/div_grad/NegNegL2_2/max_pooling2d/MaxPool*
T0*+
_class!
loc:@L2_2/dropout/dropout/div*0
_output_shapes
:€€€€€€€€€А
с
1gradients/L2_2/dropout/dropout/div_grad/RealDiv_1RealDiv+gradients/L2_2/dropout/dropout/div_grad/NegL2_2/dropout/dropout/keep_prob*
T0*+
_class!
loc:@L2_2/dropout/dropout/div*0
_output_shapes
:€€€€€€€€€А
ч
1gradients/L2_2/dropout/dropout/div_grad/RealDiv_2RealDiv1gradients/L2_2/dropout/dropout/div_grad/RealDiv_1L2_2/dropout/dropout/keep_prob*0
_output_shapes
:€€€€€€€€€А*
T0*+
_class!
loc:@L2_2/dropout/dropout/div
П
+gradients/L2_2/dropout/dropout/div_grad/mulMul@gradients/L2_2/dropout/dropout/mul_grad/tuple/control_dependency1gradients/L2_2/dropout/dropout/div_grad/RealDiv_2*+
_class!
loc:@L2_2/dropout/dropout/div*0
_output_shapes
:€€€€€€€€€А*
T0
П
-gradients/L2_2/dropout/dropout/div_grad/Sum_1Sum+gradients/L2_2/dropout/dropout/div_grad/mul?gradients/L2_2/dropout/dropout/div_grad/BroadcastGradientArgs:1*
T0*+
_class!
loc:@L2_2/dropout/dropout/div*
_output_shapes
:*

Tidx0*
	keep_dims( 
ш
1gradients/L2_2/dropout/dropout/div_grad/Reshape_1Reshape-gradients/L2_2/dropout/dropout/div_grad/Sum_1/gradients/L2_2/dropout/dropout/div_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*+
_class!
loc:@L2_2/dropout/dropout/div
¶
8gradients/L2_2/dropout/dropout/div_grad/tuple/group_depsNoOp0^gradients/L2_2/dropout/dropout/div_grad/Reshape2^gradients/L2_2/dropout/dropout/div_grad/Reshape_1
†
@gradients/L2_2/dropout/dropout/div_grad/tuple/control_dependencyIdentity/gradients/L2_2/dropout/dropout/div_grad/Reshape9^gradients/L2_2/dropout/dropout/div_grad/tuple/group_deps*
T0*+
_class!
loc:@L2_2/dropout/dropout/div*0
_output_shapes
:€€€€€€€€€А
К
Bgradients/L2_2/dropout/dropout/div_grad/tuple/control_dependency_1Identity1gradients/L2_2/dropout/dropout/div_grad/Reshape_19^gradients/L2_2/dropout/dropout/div_grad/tuple/group_deps*
_output_shapes
: *
T0*+
_class!
loc:@L2_2/dropout/dropout/div
і
-gradients/L2_3/dropout/dropout/div_grad/ShapeShapeL2_3/max_pooling2d/MaxPool*
_output_shapes
:*
T0*
out_type0*+
_class!
loc:@L2_3/dropout/dropout/div
Я
/gradients/L2_3/dropout/dropout/div_grad/Shape_1Const*
valueB *+
_class!
loc:@L2_3/dropout/dropout/div*
dtype0*
_output_shapes
: 
†
=gradients/L2_3/dropout/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/L2_3/dropout/dropout/div_grad/Shape/gradients/L2_3/dropout/dropout/div_grad/Shape_1*
T0*+
_class!
loc:@L2_3/dropout/dropout/div*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Д
/gradients/L2_3/dropout/dropout/div_grad/RealDivRealDiv@gradients/L2_3/dropout/dropout/mul_grad/tuple/control_dependencyL2_3/dropout/dropout/keep_prob*
T0*+
_class!
loc:@L2_3/dropout/dropout/div*0
_output_shapes
:€€€€€€€€€А
П
+gradients/L2_3/dropout/dropout/div_grad/SumSum/gradients/L2_3/dropout/dropout/div_grad/RealDiv=gradients/L2_3/dropout/dropout/div_grad/BroadcastGradientArgs*
T0*+
_class!
loc:@L2_3/dropout/dropout/div*
_output_shapes
:*

Tidx0*
	keep_dims( 
М
/gradients/L2_3/dropout/dropout/div_grad/ReshapeReshape+gradients/L2_3/dropout/dropout/div_grad/Sum-gradients/L2_3/dropout/dropout/div_grad/Shape*
T0*
Tshape0*+
_class!
loc:@L2_3/dropout/dropout/div*0
_output_shapes
:€€€€€€€€€А
ґ
+gradients/L2_3/dropout/dropout/div_grad/NegNegL2_3/max_pooling2d/MaxPool*
T0*+
_class!
loc:@L2_3/dropout/dropout/div*0
_output_shapes
:€€€€€€€€€А
с
1gradients/L2_3/dropout/dropout/div_grad/RealDiv_1RealDiv+gradients/L2_3/dropout/dropout/div_grad/NegL2_3/dropout/dropout/keep_prob*0
_output_shapes
:€€€€€€€€€А*
T0*+
_class!
loc:@L2_3/dropout/dropout/div
ч
1gradients/L2_3/dropout/dropout/div_grad/RealDiv_2RealDiv1gradients/L2_3/dropout/dropout/div_grad/RealDiv_1L2_3/dropout/dropout/keep_prob*0
_output_shapes
:€€€€€€€€€А*
T0*+
_class!
loc:@L2_3/dropout/dropout/div
П
+gradients/L2_3/dropout/dropout/div_grad/mulMul@gradients/L2_3/dropout/dropout/mul_grad/tuple/control_dependency1gradients/L2_3/dropout/dropout/div_grad/RealDiv_2*
T0*+
_class!
loc:@L2_3/dropout/dropout/div*0
_output_shapes
:€€€€€€€€€А
П
-gradients/L2_3/dropout/dropout/div_grad/Sum_1Sum+gradients/L2_3/dropout/dropout/div_grad/mul?gradients/L2_3/dropout/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@L2_3/dropout/dropout/div
ш
1gradients/L2_3/dropout/dropout/div_grad/Reshape_1Reshape-gradients/L2_3/dropout/dropout/div_grad/Sum_1/gradients/L2_3/dropout/dropout/div_grad/Shape_1*
Tshape0*+
_class!
loc:@L2_3/dropout/dropout/div*
_output_shapes
: *
T0
¶
8gradients/L2_3/dropout/dropout/div_grad/tuple/group_depsNoOp0^gradients/L2_3/dropout/dropout/div_grad/Reshape2^gradients/L2_3/dropout/dropout/div_grad/Reshape_1
†
@gradients/L2_3/dropout/dropout/div_grad/tuple/control_dependencyIdentity/gradients/L2_3/dropout/dropout/div_grad/Reshape9^gradients/L2_3/dropout/dropout/div_grad/tuple/group_deps*0
_output_shapes
:€€€€€€€€€А*
T0*+
_class!
loc:@L2_3/dropout/dropout/div
К
Bgradients/L2_3/dropout/dropout/div_grad/tuple/control_dependency_1Identity1gradients/L2_3/dropout/dropout/div_grad/Reshape_19^gradients/L2_3/dropout/dropout/div_grad/tuple/group_deps*
_output_shapes
: *
T0*+
_class!
loc:@L2_3/dropout/dropout/div
з
3gradients/L2/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradL2/conv2d/ReluL2/max_pooling2d/MaxPool>gradients/L2/dropout/dropout/div_grad/tuple/control_dependency*
ksize
*
paddingVALID*0
_output_shapes
:€€€€€€€€€А*
T0*+
_class!
loc:@L2/max_pooling2d/MaxPool*
data_formatNHWC*
strides

с
5gradients/L2_1/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradL2_1/conv2d/ReluL2_1/max_pooling2d/MaxPool@gradients/L2_1/dropout/dropout/div_grad/tuple/control_dependency*
T0*-
_class#
!loc:@L2_1/max_pooling2d/MaxPool*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*0
_output_shapes
:€€€€€€€€€А
с
5gradients/L2_2/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradL2_2/conv2d/ReluL2_2/max_pooling2d/MaxPool@gradients/L2_2/dropout/dropout/div_grad/tuple/control_dependency*
ksize
*
paddingVALID*0
_output_shapes
:€€€€€€€€€А*
T0*-
_class#
!loc:@L2_2/max_pooling2d/MaxPool*
data_formatNHWC*
strides

с
5gradients/L2_3/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradL2_3/conv2d/ReluL2_3/max_pooling2d/MaxPool@gradients/L2_3/dropout/dropout/div_grad/tuple/control_dependency*
paddingVALID*0
_output_shapes
:€€€€€€€€€А*
T0*-
_class#
!loc:@L2_3/max_pooling2d/MaxPool*
strides
*
data_formatNHWC*
ksize

’
&gradients/L2/conv2d/Relu_grad/ReluGradReluGrad3gradients/L2/max_pooling2d/MaxPool_grad/MaxPoolGradL2/conv2d/Relu*
T0*!
_class
loc:@L2/conv2d/Relu*0
_output_shapes
:€€€€€€€€€А
Ё
(gradients/L2_1/conv2d/Relu_grad/ReluGradReluGrad5gradients/L2_1/max_pooling2d/MaxPool_grad/MaxPoolGradL2_1/conv2d/Relu*
T0*#
_class
loc:@L2_1/conv2d/Relu*0
_output_shapes
:€€€€€€€€€А
Ё
(gradients/L2_2/conv2d/Relu_grad/ReluGradReluGrad5gradients/L2_2/max_pooling2d/MaxPool_grad/MaxPoolGradL2_2/conv2d/Relu*
T0*#
_class
loc:@L2_2/conv2d/Relu*0
_output_shapes
:€€€€€€€€€А
Ё
(gradients/L2_3/conv2d/Relu_grad/ReluGradReluGrad5gradients/L2_3/max_pooling2d/MaxPool_grad/MaxPoolGradL2_3/conv2d/Relu*
T0*#
_class
loc:@L2_3/conv2d/Relu*0
_output_shapes
:€€€€€€€€€А
∆
,gradients/L2/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad&gradients/L2/conv2d/Relu_grad/ReluGrad*
T0*$
_class
loc:@L2/conv2d/BiasAdd*
data_formatNHWC*
_output_shapes	
:А
С
1gradients/L2/conv2d/BiasAdd_grad/tuple/group_depsNoOp-^gradients/L2/conv2d/BiasAdd_grad/BiasAddGrad'^gradients/L2/conv2d/Relu_grad/ReluGrad
€
9gradients/L2/conv2d/BiasAdd_grad/tuple/control_dependencyIdentity&gradients/L2/conv2d/Relu_grad/ReluGrad2^gradients/L2/conv2d/BiasAdd_grad/tuple/group_deps*0
_output_shapes
:€€€€€€€€€А*
T0*!
_class
loc:@L2/conv2d/Relu
х
;gradients/L2/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity,gradients/L2/conv2d/BiasAdd_grad/BiasAddGrad2^gradients/L2/conv2d/BiasAdd_grad/tuple/group_deps*
T0*$
_class
loc:@L2/conv2d/BiasAdd*
_output_shapes	
:А
ћ
.gradients/L2_1/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/L2_1/conv2d/Relu_grad/ReluGrad*&
_class
loc:@L2_1/conv2d/BiasAdd*
data_formatNHWC*
_output_shapes	
:А*
T0
Ч
3gradients/L2_1/conv2d/BiasAdd_grad/tuple/group_depsNoOp/^gradients/L2_1/conv2d/BiasAdd_grad/BiasAddGrad)^gradients/L2_1/conv2d/Relu_grad/ReluGrad
З
;gradients/L2_1/conv2d/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/L2_1/conv2d/Relu_grad/ReluGrad4^gradients/L2_1/conv2d/BiasAdd_grad/tuple/group_deps*
T0*#
_class
loc:@L2_1/conv2d/Relu*0
_output_shapes
:€€€€€€€€€А
э
=gradients/L2_1/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/L2_1/conv2d/BiasAdd_grad/BiasAddGrad4^gradients/L2_1/conv2d/BiasAdd_grad/tuple/group_deps*
T0*&
_class
loc:@L2_1/conv2d/BiasAdd*
_output_shapes	
:А
ћ
.gradients/L2_2/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/L2_2/conv2d/Relu_grad/ReluGrad*
_output_shapes	
:А*
T0*&
_class
loc:@L2_2/conv2d/BiasAdd*
data_formatNHWC
Ч
3gradients/L2_2/conv2d/BiasAdd_grad/tuple/group_depsNoOp/^gradients/L2_2/conv2d/BiasAdd_grad/BiasAddGrad)^gradients/L2_2/conv2d/Relu_grad/ReluGrad
З
;gradients/L2_2/conv2d/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/L2_2/conv2d/Relu_grad/ReluGrad4^gradients/L2_2/conv2d/BiasAdd_grad/tuple/group_deps*
T0*#
_class
loc:@L2_2/conv2d/Relu*0
_output_shapes
:€€€€€€€€€А
э
=gradients/L2_2/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/L2_2/conv2d/BiasAdd_grad/BiasAddGrad4^gradients/L2_2/conv2d/BiasAdd_grad/tuple/group_deps*
T0*&
_class
loc:@L2_2/conv2d/BiasAdd*
_output_shapes	
:А
ћ
.gradients/L2_3/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/L2_3/conv2d/Relu_grad/ReluGrad*
T0*&
_class
loc:@L2_3/conv2d/BiasAdd*
data_formatNHWC*
_output_shapes	
:А
Ч
3gradients/L2_3/conv2d/BiasAdd_grad/tuple/group_depsNoOp/^gradients/L2_3/conv2d/BiasAdd_grad/BiasAddGrad)^gradients/L2_3/conv2d/Relu_grad/ReluGrad
З
;gradients/L2_3/conv2d/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/L2_3/conv2d/Relu_grad/ReluGrad4^gradients/L2_3/conv2d/BiasAdd_grad/tuple/group_deps*0
_output_shapes
:€€€€€€€€€А*
T0*#
_class
loc:@L2_3/conv2d/Relu
э
=gradients/L2_3/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/L2_3/conv2d/BiasAdd_grad/BiasAddGrad4^gradients/L2_3/conv2d/BiasAdd_grad/tuple/group_deps*
T0*&
_class
loc:@L2_3/conv2d/BiasAdd*
_output_shapes	
:А
„
&gradients/L2/conv2d/Conv2D_grad/ShapeNShapeN%L2/batch_normalization/FusedBatchNormL2/conv2d/kernel/read*
T0*
out_type0*#
_class
loc:@L2/conv2d/Conv2D*
N* 
_output_shapes
::
С
3gradients/L2/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput&gradients/L2/conv2d/Conv2D_grad/ShapeNL2/conv2d/kernel/read9gradients/L2/conv2d/BiasAdd_grad/tuple/control_dependency*
paddingSAME*/
_output_shapes
:€€€€€€€€€@*
	dilations
*
T0*#
_class
loc:@L2/conv2d/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Э
4gradients/L2/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter%L2/batch_normalization/FusedBatchNorm(gradients/L2/conv2d/Conv2D_grad/ShapeN:19gradients/L2/conv2d/BiasAdd_grad/tuple/control_dependency*'
_output_shapes
:@А*
	dilations
*
T0*#
_class
loc:@L2/conv2d/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
•
0gradients/L2/conv2d/Conv2D_grad/tuple/group_depsNoOp5^gradients/L2/conv2d/Conv2D_grad/Conv2DBackpropFilter4^gradients/L2/conv2d/Conv2D_grad/Conv2DBackpropInput
Л
8gradients/L2/conv2d/Conv2D_grad/tuple/control_dependencyIdentity3gradients/L2/conv2d/Conv2D_grad/Conv2DBackpropInput1^gradients/L2/conv2d/Conv2D_grad/tuple/group_deps*
T0*#
_class
loc:@L2/conv2d/Conv2D*/
_output_shapes
:€€€€€€€€€@
Ж
:gradients/L2/conv2d/Conv2D_grad/tuple/control_dependency_1Identity4gradients/L2/conv2d/Conv2D_grad/Conv2DBackpropFilter1^gradients/L2/conv2d/Conv2D_grad/tuple/group_deps*
T0*#
_class
loc:@L2/conv2d/Conv2D*'
_output_shapes
:@А
Ё
(gradients/L2_1/conv2d/Conv2D_grad/ShapeNShapeN'L2_1/batch_normalization/FusedBatchNormL2/conv2d/kernel/read*
T0*
out_type0*%
_class
loc:@L2_1/conv2d/Conv2D*
N* 
_output_shapes
::
Щ
5gradients/L2_1/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/L2_1/conv2d/Conv2D_grad/ShapeNL2/conv2d/kernel/read;gradients/L2_1/conv2d/BiasAdd_grad/tuple/control_dependency*
T0*%
_class
loc:@L2_1/conv2d/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€@*
	dilations

І
6gradients/L2_1/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter'L2_1/batch_normalization/FusedBatchNorm*gradients/L2_1/conv2d/Conv2D_grad/ShapeN:1;gradients/L2_1/conv2d/BiasAdd_grad/tuple/control_dependency*
paddingSAME*'
_output_shapes
:@А*
	dilations
*
T0*%
_class
loc:@L2_1/conv2d/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Ђ
2gradients/L2_1/conv2d/Conv2D_grad/tuple/group_depsNoOp7^gradients/L2_1/conv2d/Conv2D_grad/Conv2DBackpropFilter6^gradients/L2_1/conv2d/Conv2D_grad/Conv2DBackpropInput
У
:gradients/L2_1/conv2d/Conv2D_grad/tuple/control_dependencyIdentity5gradients/L2_1/conv2d/Conv2D_grad/Conv2DBackpropInput3^gradients/L2_1/conv2d/Conv2D_grad/tuple/group_deps*
T0*%
_class
loc:@L2_1/conv2d/Conv2D*/
_output_shapes
:€€€€€€€€€@
О
<gradients/L2_1/conv2d/Conv2D_grad/tuple/control_dependency_1Identity6gradients/L2_1/conv2d/Conv2D_grad/Conv2DBackpropFilter3^gradients/L2_1/conv2d/Conv2D_grad/tuple/group_deps*
T0*%
_class
loc:@L2_1/conv2d/Conv2D*'
_output_shapes
:@А
Ё
(gradients/L2_2/conv2d/Conv2D_grad/ShapeNShapeN'L2_2/batch_normalization/FusedBatchNormL2/conv2d/kernel/read*
T0*
out_type0*%
_class
loc:@L2_2/conv2d/Conv2D*
N* 
_output_shapes
::
Щ
5gradients/L2_2/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/L2_2/conv2d/Conv2D_grad/ShapeNL2/conv2d/kernel/read;gradients/L2_2/conv2d/BiasAdd_grad/tuple/control_dependency*
paddingSAME*/
_output_shapes
:€€€€€€€€€@*
	dilations
*
T0*%
_class
loc:@L2_2/conv2d/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
І
6gradients/L2_2/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter'L2_2/batch_normalization/FusedBatchNorm*gradients/L2_2/conv2d/Conv2D_grad/ShapeN:1;gradients/L2_2/conv2d/BiasAdd_grad/tuple/control_dependency*
paddingSAME*'
_output_shapes
:@А*
	dilations
*
T0*%
_class
loc:@L2_2/conv2d/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Ђ
2gradients/L2_2/conv2d/Conv2D_grad/tuple/group_depsNoOp7^gradients/L2_2/conv2d/Conv2D_grad/Conv2DBackpropFilter6^gradients/L2_2/conv2d/Conv2D_grad/Conv2DBackpropInput
У
:gradients/L2_2/conv2d/Conv2D_grad/tuple/control_dependencyIdentity5gradients/L2_2/conv2d/Conv2D_grad/Conv2DBackpropInput3^gradients/L2_2/conv2d/Conv2D_grad/tuple/group_deps*
T0*%
_class
loc:@L2_2/conv2d/Conv2D*/
_output_shapes
:€€€€€€€€€@
О
<gradients/L2_2/conv2d/Conv2D_grad/tuple/control_dependency_1Identity6gradients/L2_2/conv2d/Conv2D_grad/Conv2DBackpropFilter3^gradients/L2_2/conv2d/Conv2D_grad/tuple/group_deps*
T0*%
_class
loc:@L2_2/conv2d/Conv2D*'
_output_shapes
:@А
Ё
(gradients/L2_3/conv2d/Conv2D_grad/ShapeNShapeN'L2_3/batch_normalization/FusedBatchNormL2/conv2d/kernel/read*
out_type0*%
_class
loc:@L2_3/conv2d/Conv2D*
N* 
_output_shapes
::*
T0
Щ
5gradients/L2_3/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/L2_3/conv2d/Conv2D_grad/ShapeNL2/conv2d/kernel/read;gradients/L2_3/conv2d/BiasAdd_grad/tuple/control_dependency*/
_output_shapes
:€€€€€€€€€@*
	dilations
*
T0*%
_class
loc:@L2_3/conv2d/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
І
6gradients/L2_3/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter'L2_3/batch_normalization/FusedBatchNorm*gradients/L2_3/conv2d/Conv2D_grad/ShapeN:1;gradients/L2_3/conv2d/BiasAdd_grad/tuple/control_dependency*'
_output_shapes
:@А*
	dilations
*
T0*%
_class
loc:@L2_3/conv2d/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Ђ
2gradients/L2_3/conv2d/Conv2D_grad/tuple/group_depsNoOp7^gradients/L2_3/conv2d/Conv2D_grad/Conv2DBackpropFilter6^gradients/L2_3/conv2d/Conv2D_grad/Conv2DBackpropInput
У
:gradients/L2_3/conv2d/Conv2D_grad/tuple/control_dependencyIdentity5gradients/L2_3/conv2d/Conv2D_grad/Conv2DBackpropInput3^gradients/L2_3/conv2d/Conv2D_grad/tuple/group_deps*/
_output_shapes
:€€€€€€€€€@*
T0*%
_class
loc:@L2_3/conv2d/Conv2D
О
<gradients/L2_3/conv2d/Conv2D_grad/tuple/control_dependency_1Identity6gradients/L2_3/conv2d/Conv2D_grad/Conv2DBackpropFilter3^gradients/L2_3/conv2d/Conv2D_grad/tuple/group_deps*
T0*%
_class
loc:@L2_3/conv2d/Conv2D*'
_output_shapes
:@А
е
gradients/AddN_16AddN;gradients/L2/conv2d/BiasAdd_grad/tuple/control_dependency_1=gradients/L2_1/conv2d/BiasAdd_grad/tuple/control_dependency_1=gradients/L2_2/conv2d/BiasAdd_grad/tuple/control_dependency_1=gradients/L2_3/conv2d/BiasAdd_grad/tuple/control_dependency_1*
N*
_output_shapes	
:А*
T0*!
_class
loc:@L2/conv2d/bias
ђ
gradients/zeros_like_36	ZerosLike'L2/batch_normalization/FusedBatchNorm:1*
_output_shapes
:@*
T0*8
_class.
,*loc:@L2/batch_normalization/FusedBatchNorm
ђ
gradients/zeros_like_37	ZerosLike'L2/batch_normalization/FusedBatchNorm:2*
_output_shapes
:@*
T0*8
_class.
,*loc:@L2/batch_normalization/FusedBatchNorm
ђ
gradients/zeros_like_38	ZerosLike'L2/batch_normalization/FusedBatchNorm:3*
T0*8
_class.
,*loc:@L2/batch_normalization/FusedBatchNorm*
_output_shapes
:@
ђ
gradients/zeros_like_39	ZerosLike'L2/batch_normalization/FusedBatchNorm:4*
_output_shapes
:@*
T0*8
_class.
,*loc:@L2/batch_normalization/FusedBatchNorm
р
Ggradients/L2/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGrad8gradients/L2/conv2d/Conv2D_grad/tuple/control_dependencyL1/dropout/dropout/mul!L2/batch_normalization/gamma/read'L2/batch_normalization/moving_mean/read+L2/batch_normalization/moving_variance/read*
T0*8
_class.
,*loc:@L2/batch_normalization/FusedBatchNorm*
data_formatNHWC*
is_training( *
epsilon%oГ:*G
_output_shapes5
3:€€€€€€€€€@:@:@:@:@
Ч
Egradients/L2/batch_normalization/FusedBatchNorm_grad/tuple/group_depsNoOpH^gradients/L2/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad
ё
Mgradients/L2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyIdentityGgradients/L2/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradF^gradients/L2/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*8
_class.
,*loc:@L2/batch_normalization/FusedBatchNorm*/
_output_shapes
:€€€€€€€€€@
Ќ
Ogradients/L2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1IdentityIgradients/L2/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:1F^gradients/L2/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*8
_class.
,*loc:@L2/batch_normalization/FusedBatchNorm*
_output_shapes
:@*
T0
Ќ
Ogradients/L2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2IdentityIgradients/L2/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:2F^gradients/L2/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*8
_class.
,*loc:@L2/batch_normalization/FusedBatchNorm*
_output_shapes
:@
∞
gradients/zeros_like_40	ZerosLike)L2_1/batch_normalization/FusedBatchNorm:1*
T0*:
_class0
.,loc:@L2_1/batch_normalization/FusedBatchNorm*
_output_shapes
:@
∞
gradients/zeros_like_41	ZerosLike)L2_1/batch_normalization/FusedBatchNorm:2*
_output_shapes
:@*
T0*:
_class0
.,loc:@L2_1/batch_normalization/FusedBatchNorm
∞
gradients/zeros_like_42	ZerosLike)L2_1/batch_normalization/FusedBatchNorm:3*
_output_shapes
:@*
T0*:
_class0
.,loc:@L2_1/batch_normalization/FusedBatchNorm
∞
gradients/zeros_like_43	ZerosLike)L2_1/batch_normalization/FusedBatchNorm:4*:
_class0
.,loc:@L2_1/batch_normalization/FusedBatchNorm*
_output_shapes
:@*
T0
ш
Igradients/L2_1/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGrad:gradients/L2_1/conv2d/Conv2D_grad/tuple/control_dependencyL1_1/dropout/dropout/mul!L2/batch_normalization/gamma/read'L2/batch_normalization/moving_mean/read+L2/batch_normalization/moving_variance/read*
epsilon%oГ:*G
_output_shapes5
3:€€€€€€€€€@:@:@:@:@*
T0*:
_class0
.,loc:@L2_1/batch_normalization/FusedBatchNorm*
data_formatNHWC*
is_training( 
Ы
Ggradients/L2_1/batch_normalization/FusedBatchNorm_grad/tuple/group_depsNoOpJ^gradients/L2_1/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad
ж
Ogradients/L2_1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyIdentityIgradients/L2_1/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradH^gradients/L2_1/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*/
_output_shapes
:€€€€€€€€€@*
T0*:
_class0
.,loc:@L2_1/batch_normalization/FusedBatchNorm
’
Qgradients/L2_1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1IdentityKgradients/L2_1/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:1H^gradients/L2_1/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*:
_class0
.,loc:@L2_1/batch_normalization/FusedBatchNorm*
_output_shapes
:@
’
Qgradients/L2_1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2IdentityKgradients/L2_1/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:2H^gradients/L2_1/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*:
_class0
.,loc:@L2_1/batch_normalization/FusedBatchNorm*
_output_shapes
:@
∞
gradients/zeros_like_44	ZerosLike)L2_2/batch_normalization/FusedBatchNorm:1*
T0*:
_class0
.,loc:@L2_2/batch_normalization/FusedBatchNorm*
_output_shapes
:@
∞
gradients/zeros_like_45	ZerosLike)L2_2/batch_normalization/FusedBatchNorm:2*:
_class0
.,loc:@L2_2/batch_normalization/FusedBatchNorm*
_output_shapes
:@*
T0
∞
gradients/zeros_like_46	ZerosLike)L2_2/batch_normalization/FusedBatchNorm:3*
T0*:
_class0
.,loc:@L2_2/batch_normalization/FusedBatchNorm*
_output_shapes
:@
∞
gradients/zeros_like_47	ZerosLike)L2_2/batch_normalization/FusedBatchNorm:4*
T0*:
_class0
.,loc:@L2_2/batch_normalization/FusedBatchNorm*
_output_shapes
:@
ш
Igradients/L2_2/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGrad:gradients/L2_2/conv2d/Conv2D_grad/tuple/control_dependencyL1_2/dropout/dropout/mul!L2/batch_normalization/gamma/read'L2/batch_normalization/moving_mean/read+L2/batch_normalization/moving_variance/read*
epsilon%oГ:*G
_output_shapes5
3:€€€€€€€€€@:@:@:@:@*
T0*:
_class0
.,loc:@L2_2/batch_normalization/FusedBatchNorm*
data_formatNHWC*
is_training( 
Ы
Ggradients/L2_2/batch_normalization/FusedBatchNorm_grad/tuple/group_depsNoOpJ^gradients/L2_2/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad
ж
Ogradients/L2_2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyIdentityIgradients/L2_2/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradH^gradients/L2_2/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*:
_class0
.,loc:@L2_2/batch_normalization/FusedBatchNorm*/
_output_shapes
:€€€€€€€€€@
’
Qgradients/L2_2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1IdentityKgradients/L2_2/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:1H^gradients/L2_2/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*:
_class0
.,loc:@L2_2/batch_normalization/FusedBatchNorm*
_output_shapes
:@
’
Qgradients/L2_2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2IdentityKgradients/L2_2/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:2H^gradients/L2_2/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*:
_class0
.,loc:@L2_2/batch_normalization/FusedBatchNorm*
_output_shapes
:@
∞
gradients/zeros_like_48	ZerosLike)L2_3/batch_normalization/FusedBatchNorm:1*
T0*:
_class0
.,loc:@L2_3/batch_normalization/FusedBatchNorm*
_output_shapes
:@
∞
gradients/zeros_like_49	ZerosLike)L2_3/batch_normalization/FusedBatchNorm:2*
_output_shapes
:@*
T0*:
_class0
.,loc:@L2_3/batch_normalization/FusedBatchNorm
∞
gradients/zeros_like_50	ZerosLike)L2_3/batch_normalization/FusedBatchNorm:3*
_output_shapes
:@*
T0*:
_class0
.,loc:@L2_3/batch_normalization/FusedBatchNorm
∞
gradients/zeros_like_51	ZerosLike)L2_3/batch_normalization/FusedBatchNorm:4*
_output_shapes
:@*
T0*:
_class0
.,loc:@L2_3/batch_normalization/FusedBatchNorm
ш
Igradients/L2_3/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGrad:gradients/L2_3/conv2d/Conv2D_grad/tuple/control_dependencyL1_3/dropout/dropout/mul!L2/batch_normalization/gamma/read'L2/batch_normalization/moving_mean/read+L2/batch_normalization/moving_variance/read*
T0*:
_class0
.,loc:@L2_3/batch_normalization/FusedBatchNorm*
data_formatNHWC*
is_training( *
epsilon%oГ:*G
_output_shapes5
3:€€€€€€€€€@:@:@:@:@
Ы
Ggradients/L2_3/batch_normalization/FusedBatchNorm_grad/tuple/group_depsNoOpJ^gradients/L2_3/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad
ж
Ogradients/L2_3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyIdentityIgradients/L2_3/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradH^gradients/L2_3/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*:
_class0
.,loc:@L2_3/batch_normalization/FusedBatchNorm*/
_output_shapes
:€€€€€€€€€@*
T0
’
Qgradients/L2_3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1IdentityKgradients/L2_3/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:1H^gradients/L2_3/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*:
_class0
.,loc:@L2_3/batch_normalization/FusedBatchNorm*
_output_shapes
:@
’
Qgradients/L2_3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2IdentityKgradients/L2_3/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:2H^gradients/L2_3/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
_output_shapes
:@*
T0*:
_class0
.,loc:@L2_3/batch_normalization/FusedBatchNorm
п
gradients/AddN_17AddN:gradients/L2/conv2d/Conv2D_grad/tuple/control_dependency_1<gradients/L2_1/conv2d/Conv2D_grad/tuple/control_dependency_1<gradients/L2_2/conv2d/Conv2D_grad/tuple/control_dependency_1<gradients/L2_3/conv2d/Conv2D_grad/tuple/control_dependency_1*'
_output_shapes
:@А*
T0*#
_class
loc:@L2/conv2d/kernel*
N
ђ
+gradients/L1/dropout/dropout/mul_grad/ShapeShapeL1/dropout/dropout/div*
T0*
out_type0*)
_class
loc:@L1/dropout/dropout/mul*
_output_shapes
:
∞
-gradients/L1/dropout/dropout/mul_grad/Shape_1ShapeL1/dropout/dropout/Floor*
T0*
out_type0*)
_class
loc:@L1/dropout/dropout/mul*
_output_shapes
:
Ш
;gradients/L1/dropout/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/L1/dropout/dropout/mul_grad/Shape-gradients/L1/dropout/dropout/mul_grad/Shape_1*
T0*)
_class
loc:@L1/dropout/dropout/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ю
)gradients/L1/dropout/dropout/mul_grad/MulMulMgradients/L2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyL1/dropout/dropout/Floor*)
_class
loc:@L1/dropout/dropout/mul*/
_output_shapes
:€€€€€€€€€@*
T0
Г
)gradients/L1/dropout/dropout/mul_grad/SumSum)gradients/L1/dropout/dropout/mul_grad/Mul;gradients/L1/dropout/dropout/mul_grad/BroadcastGradientArgs*)
_class
loc:@L1/dropout/dropout/mul*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Г
-gradients/L1/dropout/dropout/mul_grad/ReshapeReshape)gradients/L1/dropout/dropout/mul_grad/Sum+gradients/L1/dropout/dropout/mul_grad/Shape*
T0*
Tshape0*)
_class
loc:@L1/dropout/dropout/mul*/
_output_shapes
:€€€€€€€€€@
ю
+gradients/L1/dropout/dropout/mul_grad/Mul_1MulL1/dropout/dropout/divMgradients/L2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency*/
_output_shapes
:€€€€€€€€€@*
T0*)
_class
loc:@L1/dropout/dropout/mul
Й
+gradients/L1/dropout/dropout/mul_grad/Sum_1Sum+gradients/L1/dropout/dropout/mul_grad/Mul_1=gradients/L1/dropout/dropout/mul_grad/BroadcastGradientArgs:1*
T0*)
_class
loc:@L1/dropout/dropout/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
Й
/gradients/L1/dropout/dropout/mul_grad/Reshape_1Reshape+gradients/L1/dropout/dropout/mul_grad/Sum_1-gradients/L1/dropout/dropout/mul_grad/Shape_1*
Tshape0*)
_class
loc:@L1/dropout/dropout/mul*/
_output_shapes
:€€€€€€€€€@*
T0
†
6gradients/L1/dropout/dropout/mul_grad/tuple/group_depsNoOp.^gradients/L1/dropout/dropout/mul_grad/Reshape0^gradients/L1/dropout/dropout/mul_grad/Reshape_1
Ч
>gradients/L1/dropout/dropout/mul_grad/tuple/control_dependencyIdentity-gradients/L1/dropout/dropout/mul_grad/Reshape7^gradients/L1/dropout/dropout/mul_grad/tuple/group_deps*/
_output_shapes
:€€€€€€€€€@*
T0*)
_class
loc:@L1/dropout/dropout/mul
Ы
@gradients/L1/dropout/dropout/mul_grad/tuple/control_dependency_1Identity/gradients/L1/dropout/dropout/mul_grad/Reshape_17^gradients/L1/dropout/dropout/mul_grad/tuple/group_deps*
T0*)
_class
loc:@L1/dropout/dropout/mul*/
_output_shapes
:€€€€€€€€€@
≤
-gradients/L1_1/dropout/dropout/mul_grad/ShapeShapeL1_1/dropout/dropout/div*
T0*
out_type0*+
_class!
loc:@L1_1/dropout/dropout/mul*
_output_shapes
:
ґ
/gradients/L1_1/dropout/dropout/mul_grad/Shape_1ShapeL1_1/dropout/dropout/Floor*
T0*
out_type0*+
_class!
loc:@L1_1/dropout/dropout/mul*
_output_shapes
:
†
=gradients/L1_1/dropout/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/L1_1/dropout/dropout/mul_grad/Shape/gradients/L1_1/dropout/dropout/mul_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*+
_class!
loc:@L1_1/dropout/dropout/mul
Ж
+gradients/L1_1/dropout/dropout/mul_grad/MulMulOgradients/L2_1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyL1_1/dropout/dropout/Floor*
T0*+
_class!
loc:@L1_1/dropout/dropout/mul*/
_output_shapes
:€€€€€€€€€@
Л
+gradients/L1_1/dropout/dropout/mul_grad/SumSum+gradients/L1_1/dropout/dropout/mul_grad/Mul=gradients/L1_1/dropout/dropout/mul_grad/BroadcastGradientArgs*+
_class!
loc:@L1_1/dropout/dropout/mul*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Л
/gradients/L1_1/dropout/dropout/mul_grad/ReshapeReshape+gradients/L1_1/dropout/dropout/mul_grad/Sum-gradients/L1_1/dropout/dropout/mul_grad/Shape*
T0*
Tshape0*+
_class!
loc:@L1_1/dropout/dropout/mul*/
_output_shapes
:€€€€€€€€€@
Ж
-gradients/L1_1/dropout/dropout/mul_grad/Mul_1MulL1_1/dropout/dropout/divOgradients/L2_1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency*
T0*+
_class!
loc:@L1_1/dropout/dropout/mul*/
_output_shapes
:€€€€€€€€€@
С
-gradients/L1_1/dropout/dropout/mul_grad/Sum_1Sum-gradients/L1_1/dropout/dropout/mul_grad/Mul_1?gradients/L1_1/dropout/dropout/mul_grad/BroadcastGradientArgs:1*
T0*+
_class!
loc:@L1_1/dropout/dropout/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
С
1gradients/L1_1/dropout/dropout/mul_grad/Reshape_1Reshape-gradients/L1_1/dropout/dropout/mul_grad/Sum_1/gradients/L1_1/dropout/dropout/mul_grad/Shape_1*/
_output_shapes
:€€€€€€€€€@*
T0*
Tshape0*+
_class!
loc:@L1_1/dropout/dropout/mul
¶
8gradients/L1_1/dropout/dropout/mul_grad/tuple/group_depsNoOp0^gradients/L1_1/dropout/dropout/mul_grad/Reshape2^gradients/L1_1/dropout/dropout/mul_grad/Reshape_1
Я
@gradients/L1_1/dropout/dropout/mul_grad/tuple/control_dependencyIdentity/gradients/L1_1/dropout/dropout/mul_grad/Reshape9^gradients/L1_1/dropout/dropout/mul_grad/tuple/group_deps*+
_class!
loc:@L1_1/dropout/dropout/mul*/
_output_shapes
:€€€€€€€€€@*
T0
£
Bgradients/L1_1/dropout/dropout/mul_grad/tuple/control_dependency_1Identity1gradients/L1_1/dropout/dropout/mul_grad/Reshape_19^gradients/L1_1/dropout/dropout/mul_grad/tuple/group_deps*
T0*+
_class!
loc:@L1_1/dropout/dropout/mul*/
_output_shapes
:€€€€€€€€€@
≤
-gradients/L1_2/dropout/dropout/mul_grad/ShapeShapeL1_2/dropout/dropout/div*
T0*
out_type0*+
_class!
loc:@L1_2/dropout/dropout/mul*
_output_shapes
:
ґ
/gradients/L1_2/dropout/dropout/mul_grad/Shape_1ShapeL1_2/dropout/dropout/Floor*
T0*
out_type0*+
_class!
loc:@L1_2/dropout/dropout/mul*
_output_shapes
:
†
=gradients/L1_2/dropout/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/L1_2/dropout/dropout/mul_grad/Shape/gradients/L1_2/dropout/dropout/mul_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*+
_class!
loc:@L1_2/dropout/dropout/mul
Ж
+gradients/L1_2/dropout/dropout/mul_grad/MulMulOgradients/L2_2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyL1_2/dropout/dropout/Floor*/
_output_shapes
:€€€€€€€€€@*
T0*+
_class!
loc:@L1_2/dropout/dropout/mul
Л
+gradients/L1_2/dropout/dropout/mul_grad/SumSum+gradients/L1_2/dropout/dropout/mul_grad/Mul=gradients/L1_2/dropout/dropout/mul_grad/BroadcastGradientArgs*
T0*+
_class!
loc:@L1_2/dropout/dropout/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
Л
/gradients/L1_2/dropout/dropout/mul_grad/ReshapeReshape+gradients/L1_2/dropout/dropout/mul_grad/Sum-gradients/L1_2/dropout/dropout/mul_grad/Shape*
Tshape0*+
_class!
loc:@L1_2/dropout/dropout/mul*/
_output_shapes
:€€€€€€€€€@*
T0
Ж
-gradients/L1_2/dropout/dropout/mul_grad/Mul_1MulL1_2/dropout/dropout/divOgradients/L2_2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency*
T0*+
_class!
loc:@L1_2/dropout/dropout/mul*/
_output_shapes
:€€€€€€€€€@
С
-gradients/L1_2/dropout/dropout/mul_grad/Sum_1Sum-gradients/L1_2/dropout/dropout/mul_grad/Mul_1?gradients/L1_2/dropout/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@L1_2/dropout/dropout/mul
С
1gradients/L1_2/dropout/dropout/mul_grad/Reshape_1Reshape-gradients/L1_2/dropout/dropout/mul_grad/Sum_1/gradients/L1_2/dropout/dropout/mul_grad/Shape_1*/
_output_shapes
:€€€€€€€€€@*
T0*
Tshape0*+
_class!
loc:@L1_2/dropout/dropout/mul
¶
8gradients/L1_2/dropout/dropout/mul_grad/tuple/group_depsNoOp0^gradients/L1_2/dropout/dropout/mul_grad/Reshape2^gradients/L1_2/dropout/dropout/mul_grad/Reshape_1
Я
@gradients/L1_2/dropout/dropout/mul_grad/tuple/control_dependencyIdentity/gradients/L1_2/dropout/dropout/mul_grad/Reshape9^gradients/L1_2/dropout/dropout/mul_grad/tuple/group_deps*+
_class!
loc:@L1_2/dropout/dropout/mul*/
_output_shapes
:€€€€€€€€€@*
T0
£
Bgradients/L1_2/dropout/dropout/mul_grad/tuple/control_dependency_1Identity1gradients/L1_2/dropout/dropout/mul_grad/Reshape_19^gradients/L1_2/dropout/dropout/mul_grad/tuple/group_deps*
T0*+
_class!
loc:@L1_2/dropout/dropout/mul*/
_output_shapes
:€€€€€€€€€@
≤
-gradients/L1_3/dropout/dropout/mul_grad/ShapeShapeL1_3/dropout/dropout/div*
out_type0*+
_class!
loc:@L1_3/dropout/dropout/mul*
_output_shapes
:*
T0
ґ
/gradients/L1_3/dropout/dropout/mul_grad/Shape_1ShapeL1_3/dropout/dropout/Floor*
out_type0*+
_class!
loc:@L1_3/dropout/dropout/mul*
_output_shapes
:*
T0
†
=gradients/L1_3/dropout/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/L1_3/dropout/dropout/mul_grad/Shape/gradients/L1_3/dropout/dropout/mul_grad/Shape_1*
T0*+
_class!
loc:@L1_3/dropout/dropout/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ж
+gradients/L1_3/dropout/dropout/mul_grad/MulMulOgradients/L2_3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyL1_3/dropout/dropout/Floor*/
_output_shapes
:€€€€€€€€€@*
T0*+
_class!
loc:@L1_3/dropout/dropout/mul
Л
+gradients/L1_3/dropout/dropout/mul_grad/SumSum+gradients/L1_3/dropout/dropout/mul_grad/Mul=gradients/L1_3/dropout/dropout/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@L1_3/dropout/dropout/mul*
_output_shapes
:
Л
/gradients/L1_3/dropout/dropout/mul_grad/ReshapeReshape+gradients/L1_3/dropout/dropout/mul_grad/Sum-gradients/L1_3/dropout/dropout/mul_grad/Shape*/
_output_shapes
:€€€€€€€€€@*
T0*
Tshape0*+
_class!
loc:@L1_3/dropout/dropout/mul
Ж
-gradients/L1_3/dropout/dropout/mul_grad/Mul_1MulL1_3/dropout/dropout/divOgradients/L2_3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency*/
_output_shapes
:€€€€€€€€€@*
T0*+
_class!
loc:@L1_3/dropout/dropout/mul
С
-gradients/L1_3/dropout/dropout/mul_grad/Sum_1Sum-gradients/L1_3/dropout/dropout/mul_grad/Mul_1?gradients/L1_3/dropout/dropout/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@L1_3/dropout/dropout/mul*
_output_shapes
:
С
1gradients/L1_3/dropout/dropout/mul_grad/Reshape_1Reshape-gradients/L1_3/dropout/dropout/mul_grad/Sum_1/gradients/L1_3/dropout/dropout/mul_grad/Shape_1*
Tshape0*+
_class!
loc:@L1_3/dropout/dropout/mul*/
_output_shapes
:€€€€€€€€€@*
T0
¶
8gradients/L1_3/dropout/dropout/mul_grad/tuple/group_depsNoOp0^gradients/L1_3/dropout/dropout/mul_grad/Reshape2^gradients/L1_3/dropout/dropout/mul_grad/Reshape_1
Я
@gradients/L1_3/dropout/dropout/mul_grad/tuple/control_dependencyIdentity/gradients/L1_3/dropout/dropout/mul_grad/Reshape9^gradients/L1_3/dropout/dropout/mul_grad/tuple/group_deps*
T0*+
_class!
loc:@L1_3/dropout/dropout/mul*/
_output_shapes
:€€€€€€€€€@
£
Bgradients/L1_3/dropout/dropout/mul_grad/tuple/control_dependency_1Identity1gradients/L1_3/dropout/dropout/mul_grad/Reshape_19^gradients/L1_3/dropout/dropout/mul_grad/tuple/group_deps*/
_output_shapes
:€€€€€€€€€@*
T0*+
_class!
loc:@L1_3/dropout/dropout/mul
¬
gradients/AddN_18AddNOgradients/L2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1Qgradients/L2_1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1Qgradients/L2_2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1Qgradients/L2_3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1*
T0*/
_class%
#!loc:@L2/batch_normalization/gamma*
N*
_output_shapes
:@
Ѕ
gradients/AddN_19AddNOgradients/L2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2Qgradients/L2_1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2Qgradients/L2_2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2Qgradients/L2_3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2*
T0*.
_class$
" loc:@L2/batch_normalization/beta*
N*
_output_shapes
:@
Ѓ
+gradients/L1/dropout/dropout/div_grad/ShapeShapeL1/max_pooling2d/MaxPool*
_output_shapes
:*
T0*
out_type0*)
_class
loc:@L1/dropout/dropout/div
Ы
-gradients/L1/dropout/dropout/div_grad/Shape_1Const*
valueB *)
_class
loc:@L1/dropout/dropout/div*
dtype0*
_output_shapes
: 
Ш
;gradients/L1/dropout/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/L1/dropout/dropout/div_grad/Shape-gradients/L1/dropout/dropout/div_grad/Shape_1*
T0*)
_class
loc:@L1/dropout/dropout/div*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ы
-gradients/L1/dropout/dropout/div_grad/RealDivRealDiv>gradients/L1/dropout/dropout/mul_grad/tuple/control_dependencyL1/dropout/dropout/keep_prob*/
_output_shapes
:€€€€€€€€€@*
T0*)
_class
loc:@L1/dropout/dropout/div
З
)gradients/L1/dropout/dropout/div_grad/SumSum-gradients/L1/dropout/dropout/div_grad/RealDiv;gradients/L1/dropout/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*)
_class
loc:@L1/dropout/dropout/div
Г
-gradients/L1/dropout/dropout/div_grad/ReshapeReshape)gradients/L1/dropout/dropout/div_grad/Sum+gradients/L1/dropout/dropout/div_grad/Shape*
T0*
Tshape0*)
_class
loc:@L1/dropout/dropout/div*/
_output_shapes
:€€€€€€€€€@
ѓ
)gradients/L1/dropout/dropout/div_grad/NegNegL1/max_pooling2d/MaxPool*/
_output_shapes
:€€€€€€€€€@*
T0*)
_class
loc:@L1/dropout/dropout/div
и
/gradients/L1/dropout/dropout/div_grad/RealDiv_1RealDiv)gradients/L1/dropout/dropout/div_grad/NegL1/dropout/dropout/keep_prob*/
_output_shapes
:€€€€€€€€€@*
T0*)
_class
loc:@L1/dropout/dropout/div
о
/gradients/L1/dropout/dropout/div_grad/RealDiv_2RealDiv/gradients/L1/dropout/dropout/div_grad/RealDiv_1L1/dropout/dropout/keep_prob*/
_output_shapes
:€€€€€€€€€@*
T0*)
_class
loc:@L1/dropout/dropout/div
Ж
)gradients/L1/dropout/dropout/div_grad/mulMul>gradients/L1/dropout/dropout/mul_grad/tuple/control_dependency/gradients/L1/dropout/dropout/div_grad/RealDiv_2*
T0*)
_class
loc:@L1/dropout/dropout/div*/
_output_shapes
:€€€€€€€€€@
З
+gradients/L1/dropout/dropout/div_grad/Sum_1Sum)gradients/L1/dropout/dropout/div_grad/mul=gradients/L1/dropout/dropout/div_grad/BroadcastGradientArgs:1*)
_class
loc:@L1/dropout/dropout/div*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
р
/gradients/L1/dropout/dropout/div_grad/Reshape_1Reshape+gradients/L1/dropout/dropout/div_grad/Sum_1-gradients/L1/dropout/dropout/div_grad/Shape_1*
T0*
Tshape0*)
_class
loc:@L1/dropout/dropout/div*
_output_shapes
: 
†
6gradients/L1/dropout/dropout/div_grad/tuple/group_depsNoOp.^gradients/L1/dropout/dropout/div_grad/Reshape0^gradients/L1/dropout/dropout/div_grad/Reshape_1
Ч
>gradients/L1/dropout/dropout/div_grad/tuple/control_dependencyIdentity-gradients/L1/dropout/dropout/div_grad/Reshape7^gradients/L1/dropout/dropout/div_grad/tuple/group_deps*
T0*)
_class
loc:@L1/dropout/dropout/div*/
_output_shapes
:€€€€€€€€€@
В
@gradients/L1/dropout/dropout/div_grad/tuple/control_dependency_1Identity/gradients/L1/dropout/dropout/div_grad/Reshape_17^gradients/L1/dropout/dropout/div_grad/tuple/group_deps*
_output_shapes
: *
T0*)
_class
loc:@L1/dropout/dropout/div
і
-gradients/L1_1/dropout/dropout/div_grad/ShapeShapeL1_1/max_pooling2d/MaxPool*
T0*
out_type0*+
_class!
loc:@L1_1/dropout/dropout/div*
_output_shapes
:
Я
/gradients/L1_1/dropout/dropout/div_grad/Shape_1Const*
valueB *+
_class!
loc:@L1_1/dropout/dropout/div*
dtype0*
_output_shapes
: 
†
=gradients/L1_1/dropout/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/L1_1/dropout/dropout/div_grad/Shape/gradients/L1_1/dropout/dropout/div_grad/Shape_1*
T0*+
_class!
loc:@L1_1/dropout/dropout/div*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Г
/gradients/L1_1/dropout/dropout/div_grad/RealDivRealDiv@gradients/L1_1/dropout/dropout/mul_grad/tuple/control_dependencyL1_1/dropout/dropout/keep_prob*/
_output_shapes
:€€€€€€€€€@*
T0*+
_class!
loc:@L1_1/dropout/dropout/div
П
+gradients/L1_1/dropout/dropout/div_grad/SumSum/gradients/L1_1/dropout/dropout/div_grad/RealDiv=gradients/L1_1/dropout/dropout/div_grad/BroadcastGradientArgs*+
_class!
loc:@L1_1/dropout/dropout/div*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Л
/gradients/L1_1/dropout/dropout/div_grad/ReshapeReshape+gradients/L1_1/dropout/dropout/div_grad/Sum-gradients/L1_1/dropout/dropout/div_grad/Shape*
T0*
Tshape0*+
_class!
loc:@L1_1/dropout/dropout/div*/
_output_shapes
:€€€€€€€€€@
µ
+gradients/L1_1/dropout/dropout/div_grad/NegNegL1_1/max_pooling2d/MaxPool*
T0*+
_class!
loc:@L1_1/dropout/dropout/div*/
_output_shapes
:€€€€€€€€€@
р
1gradients/L1_1/dropout/dropout/div_grad/RealDiv_1RealDiv+gradients/L1_1/dropout/dropout/div_grad/NegL1_1/dropout/dropout/keep_prob*
T0*+
_class!
loc:@L1_1/dropout/dropout/div*/
_output_shapes
:€€€€€€€€€@
ц
1gradients/L1_1/dropout/dropout/div_grad/RealDiv_2RealDiv1gradients/L1_1/dropout/dropout/div_grad/RealDiv_1L1_1/dropout/dropout/keep_prob*/
_output_shapes
:€€€€€€€€€@*
T0*+
_class!
loc:@L1_1/dropout/dropout/div
О
+gradients/L1_1/dropout/dropout/div_grad/mulMul@gradients/L1_1/dropout/dropout/mul_grad/tuple/control_dependency1gradients/L1_1/dropout/dropout/div_grad/RealDiv_2*
T0*+
_class!
loc:@L1_1/dropout/dropout/div*/
_output_shapes
:€€€€€€€€€@
П
-gradients/L1_1/dropout/dropout/div_grad/Sum_1Sum+gradients/L1_1/dropout/dropout/div_grad/mul?gradients/L1_1/dropout/dropout/div_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@L1_1/dropout/dropout/div*
_output_shapes
:
ш
1gradients/L1_1/dropout/dropout/div_grad/Reshape_1Reshape-gradients/L1_1/dropout/dropout/div_grad/Sum_1/gradients/L1_1/dropout/dropout/div_grad/Shape_1*
T0*
Tshape0*+
_class!
loc:@L1_1/dropout/dropout/div*
_output_shapes
: 
¶
8gradients/L1_1/dropout/dropout/div_grad/tuple/group_depsNoOp0^gradients/L1_1/dropout/dropout/div_grad/Reshape2^gradients/L1_1/dropout/dropout/div_grad/Reshape_1
Я
@gradients/L1_1/dropout/dropout/div_grad/tuple/control_dependencyIdentity/gradients/L1_1/dropout/dropout/div_grad/Reshape9^gradients/L1_1/dropout/dropout/div_grad/tuple/group_deps*
T0*+
_class!
loc:@L1_1/dropout/dropout/div*/
_output_shapes
:€€€€€€€€€@
К
Bgradients/L1_1/dropout/dropout/div_grad/tuple/control_dependency_1Identity1gradients/L1_1/dropout/dropout/div_grad/Reshape_19^gradients/L1_1/dropout/dropout/div_grad/tuple/group_deps*
_output_shapes
: *
T0*+
_class!
loc:@L1_1/dropout/dropout/div
і
-gradients/L1_2/dropout/dropout/div_grad/ShapeShapeL1_2/max_pooling2d/MaxPool*
T0*
out_type0*+
_class!
loc:@L1_2/dropout/dropout/div*
_output_shapes
:
Я
/gradients/L1_2/dropout/dropout/div_grad/Shape_1Const*
valueB *+
_class!
loc:@L1_2/dropout/dropout/div*
dtype0*
_output_shapes
: 
†
=gradients/L1_2/dropout/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/L1_2/dropout/dropout/div_grad/Shape/gradients/L1_2/dropout/dropout/div_grad/Shape_1*
T0*+
_class!
loc:@L1_2/dropout/dropout/div*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Г
/gradients/L1_2/dropout/dropout/div_grad/RealDivRealDiv@gradients/L1_2/dropout/dropout/mul_grad/tuple/control_dependencyL1_2/dropout/dropout/keep_prob*/
_output_shapes
:€€€€€€€€€@*
T0*+
_class!
loc:@L1_2/dropout/dropout/div
П
+gradients/L1_2/dropout/dropout/div_grad/SumSum/gradients/L1_2/dropout/dropout/div_grad/RealDiv=gradients/L1_2/dropout/dropout/div_grad/BroadcastGradientArgs*+
_class!
loc:@L1_2/dropout/dropout/div*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Л
/gradients/L1_2/dropout/dropout/div_grad/ReshapeReshape+gradients/L1_2/dropout/dropout/div_grad/Sum-gradients/L1_2/dropout/dropout/div_grad/Shape*
T0*
Tshape0*+
_class!
loc:@L1_2/dropout/dropout/div*/
_output_shapes
:€€€€€€€€€@
µ
+gradients/L1_2/dropout/dropout/div_grad/NegNegL1_2/max_pooling2d/MaxPool*
T0*+
_class!
loc:@L1_2/dropout/dropout/div*/
_output_shapes
:€€€€€€€€€@
р
1gradients/L1_2/dropout/dropout/div_grad/RealDiv_1RealDiv+gradients/L1_2/dropout/dropout/div_grad/NegL1_2/dropout/dropout/keep_prob*
T0*+
_class!
loc:@L1_2/dropout/dropout/div*/
_output_shapes
:€€€€€€€€€@
ц
1gradients/L1_2/dropout/dropout/div_grad/RealDiv_2RealDiv1gradients/L1_2/dropout/dropout/div_grad/RealDiv_1L1_2/dropout/dropout/keep_prob*/
_output_shapes
:€€€€€€€€€@*
T0*+
_class!
loc:@L1_2/dropout/dropout/div
О
+gradients/L1_2/dropout/dropout/div_grad/mulMul@gradients/L1_2/dropout/dropout/mul_grad/tuple/control_dependency1gradients/L1_2/dropout/dropout/div_grad/RealDiv_2*/
_output_shapes
:€€€€€€€€€@*
T0*+
_class!
loc:@L1_2/dropout/dropout/div
П
-gradients/L1_2/dropout/dropout/div_grad/Sum_1Sum+gradients/L1_2/dropout/dropout/div_grad/mul?gradients/L1_2/dropout/dropout/div_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@L1_2/dropout/dropout/div*
_output_shapes
:
ш
1gradients/L1_2/dropout/dropout/div_grad/Reshape_1Reshape-gradients/L1_2/dropout/dropout/div_grad/Sum_1/gradients/L1_2/dropout/dropout/div_grad/Shape_1*
T0*
Tshape0*+
_class!
loc:@L1_2/dropout/dropout/div*
_output_shapes
: 
¶
8gradients/L1_2/dropout/dropout/div_grad/tuple/group_depsNoOp0^gradients/L1_2/dropout/dropout/div_grad/Reshape2^gradients/L1_2/dropout/dropout/div_grad/Reshape_1
Я
@gradients/L1_2/dropout/dropout/div_grad/tuple/control_dependencyIdentity/gradients/L1_2/dropout/dropout/div_grad/Reshape9^gradients/L1_2/dropout/dropout/div_grad/tuple/group_deps*
T0*+
_class!
loc:@L1_2/dropout/dropout/div*/
_output_shapes
:€€€€€€€€€@
К
Bgradients/L1_2/dropout/dropout/div_grad/tuple/control_dependency_1Identity1gradients/L1_2/dropout/dropout/div_grad/Reshape_19^gradients/L1_2/dropout/dropout/div_grad/tuple/group_deps*
T0*+
_class!
loc:@L1_2/dropout/dropout/div*
_output_shapes
: 
і
-gradients/L1_3/dropout/dropout/div_grad/ShapeShapeL1_3/max_pooling2d/MaxPool*
_output_shapes
:*
T0*
out_type0*+
_class!
loc:@L1_3/dropout/dropout/div
Я
/gradients/L1_3/dropout/dropout/div_grad/Shape_1Const*
valueB *+
_class!
loc:@L1_3/dropout/dropout/div*
dtype0*
_output_shapes
: 
†
=gradients/L1_3/dropout/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/L1_3/dropout/dropout/div_grad/Shape/gradients/L1_3/dropout/dropout/div_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*+
_class!
loc:@L1_3/dropout/dropout/div
Г
/gradients/L1_3/dropout/dropout/div_grad/RealDivRealDiv@gradients/L1_3/dropout/dropout/mul_grad/tuple/control_dependencyL1_3/dropout/dropout/keep_prob*/
_output_shapes
:€€€€€€€€€@*
T0*+
_class!
loc:@L1_3/dropout/dropout/div
П
+gradients/L1_3/dropout/dropout/div_grad/SumSum/gradients/L1_3/dropout/dropout/div_grad/RealDiv=gradients/L1_3/dropout/dropout/div_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@L1_3/dropout/dropout/div*
_output_shapes
:
Л
/gradients/L1_3/dropout/dropout/div_grad/ReshapeReshape+gradients/L1_3/dropout/dropout/div_grad/Sum-gradients/L1_3/dropout/dropout/div_grad/Shape*
T0*
Tshape0*+
_class!
loc:@L1_3/dropout/dropout/div*/
_output_shapes
:€€€€€€€€€@
µ
+gradients/L1_3/dropout/dropout/div_grad/NegNegL1_3/max_pooling2d/MaxPool*+
_class!
loc:@L1_3/dropout/dropout/div*/
_output_shapes
:€€€€€€€€€@*
T0
р
1gradients/L1_3/dropout/dropout/div_grad/RealDiv_1RealDiv+gradients/L1_3/dropout/dropout/div_grad/NegL1_3/dropout/dropout/keep_prob*
T0*+
_class!
loc:@L1_3/dropout/dropout/div*/
_output_shapes
:€€€€€€€€€@
ц
1gradients/L1_3/dropout/dropout/div_grad/RealDiv_2RealDiv1gradients/L1_3/dropout/dropout/div_grad/RealDiv_1L1_3/dropout/dropout/keep_prob*
T0*+
_class!
loc:@L1_3/dropout/dropout/div*/
_output_shapes
:€€€€€€€€€@
О
+gradients/L1_3/dropout/dropout/div_grad/mulMul@gradients/L1_3/dropout/dropout/mul_grad/tuple/control_dependency1gradients/L1_3/dropout/dropout/div_grad/RealDiv_2*/
_output_shapes
:€€€€€€€€€@*
T0*+
_class!
loc:@L1_3/dropout/dropout/div
П
-gradients/L1_3/dropout/dropout/div_grad/Sum_1Sum+gradients/L1_3/dropout/dropout/div_grad/mul?gradients/L1_3/dropout/dropout/div_grad/BroadcastGradientArgs:1*
T0*+
_class!
loc:@L1_3/dropout/dropout/div*
_output_shapes
:*

Tidx0*
	keep_dims( 
ш
1gradients/L1_3/dropout/dropout/div_grad/Reshape_1Reshape-gradients/L1_3/dropout/dropout/div_grad/Sum_1/gradients/L1_3/dropout/dropout/div_grad/Shape_1*
T0*
Tshape0*+
_class!
loc:@L1_3/dropout/dropout/div*
_output_shapes
: 
¶
8gradients/L1_3/dropout/dropout/div_grad/tuple/group_depsNoOp0^gradients/L1_3/dropout/dropout/div_grad/Reshape2^gradients/L1_3/dropout/dropout/div_grad/Reshape_1
Я
@gradients/L1_3/dropout/dropout/div_grad/tuple/control_dependencyIdentity/gradients/L1_3/dropout/dropout/div_grad/Reshape9^gradients/L1_3/dropout/dropout/div_grad/tuple/group_deps*+
_class!
loc:@L1_3/dropout/dropout/div*/
_output_shapes
:€€€€€€€€€@*
T0
К
Bgradients/L1_3/dropout/dropout/div_grad/tuple/control_dependency_1Identity1gradients/L1_3/dropout/dropout/div_grad/Reshape_19^gradients/L1_3/dropout/dropout/div_grad/tuple/group_deps*+
_class!
loc:@L1_3/dropout/dropout/div*
_output_shapes
: *
T0
ж
3gradients/L1/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradL1/conv2d/ReluL1/max_pooling2d/MaxPool>gradients/L1/dropout/dropout/div_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
ksize
*
paddingVALID*/
_output_shapes
:€€€€€€€€€@*
T0*+
_class!
loc:@L1/max_pooling2d/MaxPool
р
5gradients/L1_1/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradL1_1/conv2d/ReluL1_1/max_pooling2d/MaxPool@gradients/L1_1/dropout/dropout/div_grad/tuple/control_dependency*-
_class#
!loc:@L1_1/max_pooling2d/MaxPool*
strides
*
data_formatNHWC*
ksize
*
paddingVALID*/
_output_shapes
:€€€€€€€€€@*
T0
р
5gradients/L1_2/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradL1_2/conv2d/ReluL1_2/max_pooling2d/MaxPool@gradients/L1_2/dropout/dropout/div_grad/tuple/control_dependency*-
_class#
!loc:@L1_2/max_pooling2d/MaxPool*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:€€€€€€€€€@*
T0
р
5gradients/L1_3/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradL1_3/conv2d/ReluL1_3/max_pooling2d/MaxPool@gradients/L1_3/dropout/dropout/div_grad/tuple/control_dependency*
paddingVALID*/
_output_shapes
:€€€€€€€€€@*
T0*-
_class#
!loc:@L1_3/max_pooling2d/MaxPool*
data_formatNHWC*
strides
*
ksize

‘
&gradients/L1/conv2d/Relu_grad/ReluGradReluGrad3gradients/L1/max_pooling2d/MaxPool_grad/MaxPoolGradL1/conv2d/Relu*/
_output_shapes
:€€€€€€€€€@*
T0*!
_class
loc:@L1/conv2d/Relu
№
(gradients/L1_1/conv2d/Relu_grad/ReluGradReluGrad5gradients/L1_1/max_pooling2d/MaxPool_grad/MaxPoolGradL1_1/conv2d/Relu*
T0*#
_class
loc:@L1_1/conv2d/Relu*/
_output_shapes
:€€€€€€€€€@
№
(gradients/L1_2/conv2d/Relu_grad/ReluGradReluGrad5gradients/L1_2/max_pooling2d/MaxPool_grad/MaxPoolGradL1_2/conv2d/Relu*
T0*#
_class
loc:@L1_2/conv2d/Relu*/
_output_shapes
:€€€€€€€€€@
№
(gradients/L1_3/conv2d/Relu_grad/ReluGradReluGrad5gradients/L1_3/max_pooling2d/MaxPool_grad/MaxPoolGradL1_3/conv2d/Relu*
T0*#
_class
loc:@L1_3/conv2d/Relu*/
_output_shapes
:€€€€€€€€€@
≈
,gradients/L1/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad&gradients/L1/conv2d/Relu_grad/ReluGrad*
T0*$
_class
loc:@L1/conv2d/BiasAdd*
data_formatNHWC*
_output_shapes
:@
С
1gradients/L1/conv2d/BiasAdd_grad/tuple/group_depsNoOp-^gradients/L1/conv2d/BiasAdd_grad/BiasAddGrad'^gradients/L1/conv2d/Relu_grad/ReluGrad
ю
9gradients/L1/conv2d/BiasAdd_grad/tuple/control_dependencyIdentity&gradients/L1/conv2d/Relu_grad/ReluGrad2^gradients/L1/conv2d/BiasAdd_grad/tuple/group_deps*
T0*!
_class
loc:@L1/conv2d/Relu*/
_output_shapes
:€€€€€€€€€@
ф
;gradients/L1/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity,gradients/L1/conv2d/BiasAdd_grad/BiasAddGrad2^gradients/L1/conv2d/BiasAdd_grad/tuple/group_deps*
T0*$
_class
loc:@L1/conv2d/BiasAdd*
_output_shapes
:@
Ћ
.gradients/L1_1/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/L1_1/conv2d/Relu_grad/ReluGrad*
T0*&
_class
loc:@L1_1/conv2d/BiasAdd*
data_formatNHWC*
_output_shapes
:@
Ч
3gradients/L1_1/conv2d/BiasAdd_grad/tuple/group_depsNoOp/^gradients/L1_1/conv2d/BiasAdd_grad/BiasAddGrad)^gradients/L1_1/conv2d/Relu_grad/ReluGrad
Ж
;gradients/L1_1/conv2d/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/L1_1/conv2d/Relu_grad/ReluGrad4^gradients/L1_1/conv2d/BiasAdd_grad/tuple/group_deps*
T0*#
_class
loc:@L1_1/conv2d/Relu*/
_output_shapes
:€€€€€€€€€@
ь
=gradients/L1_1/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/L1_1/conv2d/BiasAdd_grad/BiasAddGrad4^gradients/L1_1/conv2d/BiasAdd_grad/tuple/group_deps*
T0*&
_class
loc:@L1_1/conv2d/BiasAdd*
_output_shapes
:@
Ћ
.gradients/L1_2/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/L1_2/conv2d/Relu_grad/ReluGrad*
T0*&
_class
loc:@L1_2/conv2d/BiasAdd*
data_formatNHWC*
_output_shapes
:@
Ч
3gradients/L1_2/conv2d/BiasAdd_grad/tuple/group_depsNoOp/^gradients/L1_2/conv2d/BiasAdd_grad/BiasAddGrad)^gradients/L1_2/conv2d/Relu_grad/ReluGrad
Ж
;gradients/L1_2/conv2d/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/L1_2/conv2d/Relu_grad/ReluGrad4^gradients/L1_2/conv2d/BiasAdd_grad/tuple/group_deps*
T0*#
_class
loc:@L1_2/conv2d/Relu*/
_output_shapes
:€€€€€€€€€@
ь
=gradients/L1_2/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/L1_2/conv2d/BiasAdd_grad/BiasAddGrad4^gradients/L1_2/conv2d/BiasAdd_grad/tuple/group_deps*
T0*&
_class
loc:@L1_2/conv2d/BiasAdd*
_output_shapes
:@
Ћ
.gradients/L1_3/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/L1_3/conv2d/Relu_grad/ReluGrad*&
_class
loc:@L1_3/conv2d/BiasAdd*
data_formatNHWC*
_output_shapes
:@*
T0
Ч
3gradients/L1_3/conv2d/BiasAdd_grad/tuple/group_depsNoOp/^gradients/L1_3/conv2d/BiasAdd_grad/BiasAddGrad)^gradients/L1_3/conv2d/Relu_grad/ReluGrad
Ж
;gradients/L1_3/conv2d/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/L1_3/conv2d/Relu_grad/ReluGrad4^gradients/L1_3/conv2d/BiasAdd_grad/tuple/group_deps*
T0*#
_class
loc:@L1_3/conv2d/Relu*/
_output_shapes
:€€€€€€€€€@
ь
=gradients/L1_3/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/L1_3/conv2d/BiasAdd_grad/BiasAddGrad4^gradients/L1_3/conv2d/BiasAdd_grad/tuple/group_deps*
T0*&
_class
loc:@L1_3/conv2d/BiasAdd*
_output_shapes
:@
„
&gradients/L1/conv2d/Conv2D_grad/ShapeNShapeN%L1/batch_normalization/FusedBatchNormL1/conv2d/kernel/read*
out_type0*#
_class
loc:@L1/conv2d/Conv2D*
N* 
_output_shapes
::*
T0
С
3gradients/L1/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput&gradients/L1/conv2d/Conv2D_grad/ShapeNL1/conv2d/kernel/read9gradients/L1/conv2d/BiasAdd_grad/tuple/control_dependency*/
_output_shapes
:€€€€€€€€€*
	dilations
*
T0*#
_class
loc:@L1/conv2d/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Ь
4gradients/L1/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter%L1/batch_normalization/FusedBatchNorm(gradients/L1/conv2d/Conv2D_grad/ShapeN:19gradients/L1/conv2d/BiasAdd_grad/tuple/control_dependency*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:@*
	dilations
*
T0*#
_class
loc:@L1/conv2d/Conv2D
•
0gradients/L1/conv2d/Conv2D_grad/tuple/group_depsNoOp5^gradients/L1/conv2d/Conv2D_grad/Conv2DBackpropFilter4^gradients/L1/conv2d/Conv2D_grad/Conv2DBackpropInput
Л
8gradients/L1/conv2d/Conv2D_grad/tuple/control_dependencyIdentity3gradients/L1/conv2d/Conv2D_grad/Conv2DBackpropInput1^gradients/L1/conv2d/Conv2D_grad/tuple/group_deps*
T0*#
_class
loc:@L1/conv2d/Conv2D*/
_output_shapes
:€€€€€€€€€
Е
:gradients/L1/conv2d/Conv2D_grad/tuple/control_dependency_1Identity4gradients/L1/conv2d/Conv2D_grad/Conv2DBackpropFilter1^gradients/L1/conv2d/Conv2D_grad/tuple/group_deps*
T0*#
_class
loc:@L1/conv2d/Conv2D*&
_output_shapes
:@
Ё
(gradients/L1_1/conv2d/Conv2D_grad/ShapeNShapeN'L1_1/batch_normalization/FusedBatchNormL1/conv2d/kernel/read*
T0*
out_type0*%
_class
loc:@L1_1/conv2d/Conv2D*
N* 
_output_shapes
::
Щ
5gradients/L1_1/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/L1_1/conv2d/Conv2D_grad/ShapeNL1/conv2d/kernel/read;gradients/L1_1/conv2d/BiasAdd_grad/tuple/control_dependency*/
_output_shapes
:€€€€€€€€€*
	dilations
*
T0*%
_class
loc:@L1_1/conv2d/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
¶
6gradients/L1_1/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter'L1_1/batch_normalization/FusedBatchNorm*gradients/L1_1/conv2d/Conv2D_grad/ShapeN:1;gradients/L1_1/conv2d/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*%
_class
loc:@L1_1/conv2d/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:@
Ђ
2gradients/L1_1/conv2d/Conv2D_grad/tuple/group_depsNoOp7^gradients/L1_1/conv2d/Conv2D_grad/Conv2DBackpropFilter6^gradients/L1_1/conv2d/Conv2D_grad/Conv2DBackpropInput
У
:gradients/L1_1/conv2d/Conv2D_grad/tuple/control_dependencyIdentity5gradients/L1_1/conv2d/Conv2D_grad/Conv2DBackpropInput3^gradients/L1_1/conv2d/Conv2D_grad/tuple/group_deps*/
_output_shapes
:€€€€€€€€€*
T0*%
_class
loc:@L1_1/conv2d/Conv2D
Н
<gradients/L1_1/conv2d/Conv2D_grad/tuple/control_dependency_1Identity6gradients/L1_1/conv2d/Conv2D_grad/Conv2DBackpropFilter3^gradients/L1_1/conv2d/Conv2D_grad/tuple/group_deps*
T0*%
_class
loc:@L1_1/conv2d/Conv2D*&
_output_shapes
:@
Ё
(gradients/L1_2/conv2d/Conv2D_grad/ShapeNShapeN'L1_2/batch_normalization/FusedBatchNormL1/conv2d/kernel/read*
T0*
out_type0*%
_class
loc:@L1_2/conv2d/Conv2D*
N* 
_output_shapes
::
Щ
5gradients/L1_2/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/L1_2/conv2d/Conv2D_grad/ShapeNL1/conv2d/kernel/read;gradients/L1_2/conv2d/BiasAdd_grad/tuple/control_dependency*
paddingSAME*/
_output_shapes
:€€€€€€€€€*
	dilations
*
T0*%
_class
loc:@L1_2/conv2d/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
¶
6gradients/L1_2/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter'L1_2/batch_normalization/FusedBatchNorm*gradients/L1_2/conv2d/Conv2D_grad/ShapeN:1;gradients/L1_2/conv2d/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*%
_class
loc:@L1_2/conv2d/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:@
Ђ
2gradients/L1_2/conv2d/Conv2D_grad/tuple/group_depsNoOp7^gradients/L1_2/conv2d/Conv2D_grad/Conv2DBackpropFilter6^gradients/L1_2/conv2d/Conv2D_grad/Conv2DBackpropInput
У
:gradients/L1_2/conv2d/Conv2D_grad/tuple/control_dependencyIdentity5gradients/L1_2/conv2d/Conv2D_grad/Conv2DBackpropInput3^gradients/L1_2/conv2d/Conv2D_grad/tuple/group_deps*/
_output_shapes
:€€€€€€€€€*
T0*%
_class
loc:@L1_2/conv2d/Conv2D
Н
<gradients/L1_2/conv2d/Conv2D_grad/tuple/control_dependency_1Identity6gradients/L1_2/conv2d/Conv2D_grad/Conv2DBackpropFilter3^gradients/L1_2/conv2d/Conv2D_grad/tuple/group_deps*
T0*%
_class
loc:@L1_2/conv2d/Conv2D*&
_output_shapes
:@
Ё
(gradients/L1_3/conv2d/Conv2D_grad/ShapeNShapeN'L1_3/batch_normalization/FusedBatchNormL1/conv2d/kernel/read*
T0*
out_type0*%
_class
loc:@L1_3/conv2d/Conv2D*
N* 
_output_shapes
::
Щ
5gradients/L1_3/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/L1_3/conv2d/Conv2D_grad/ShapeNL1/conv2d/kernel/read;gradients/L1_3/conv2d/BiasAdd_grad/tuple/control_dependency*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€*
	dilations
*
T0*%
_class
loc:@L1_3/conv2d/Conv2D*
data_formatNHWC*
strides

¶
6gradients/L1_3/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter'L1_3/batch_normalization/FusedBatchNorm*gradients/L1_3/conv2d/Conv2D_grad/ShapeN:1;gradients/L1_3/conv2d/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
:@*
	dilations
*
T0*%
_class
loc:@L1_3/conv2d/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
Ђ
2gradients/L1_3/conv2d/Conv2D_grad/tuple/group_depsNoOp7^gradients/L1_3/conv2d/Conv2D_grad/Conv2DBackpropFilter6^gradients/L1_3/conv2d/Conv2D_grad/Conv2DBackpropInput
У
:gradients/L1_3/conv2d/Conv2D_grad/tuple/control_dependencyIdentity5gradients/L1_3/conv2d/Conv2D_grad/Conv2DBackpropInput3^gradients/L1_3/conv2d/Conv2D_grad/tuple/group_deps*
T0*%
_class
loc:@L1_3/conv2d/Conv2D*/
_output_shapes
:€€€€€€€€€
Н
<gradients/L1_3/conv2d/Conv2D_grad/tuple/control_dependency_1Identity6gradients/L1_3/conv2d/Conv2D_grad/Conv2DBackpropFilter3^gradients/L1_3/conv2d/Conv2D_grad/tuple/group_deps*
T0*%
_class
loc:@L1_3/conv2d/Conv2D*&
_output_shapes
:@
д
gradients/AddN_20AddN;gradients/L1/conv2d/BiasAdd_grad/tuple/control_dependency_1=gradients/L1_1/conv2d/BiasAdd_grad/tuple/control_dependency_1=gradients/L1_2/conv2d/BiasAdd_grad/tuple/control_dependency_1=gradients/L1_3/conv2d/BiasAdd_grad/tuple/control_dependency_1*!
_class
loc:@L1/conv2d/bias*
N*
_output_shapes
:@*
T0
ђ
gradients/zeros_like_52	ZerosLike'L1/batch_normalization/FusedBatchNorm:1*
T0*8
_class.
,*loc:@L1/batch_normalization/FusedBatchNorm*
_output_shapes
:
ђ
gradients/zeros_like_53	ZerosLike'L1/batch_normalization/FusedBatchNorm:2*
T0*8
_class.
,*loc:@L1/batch_normalization/FusedBatchNorm*
_output_shapes
:
ђ
gradients/zeros_like_54	ZerosLike'L1/batch_normalization/FusedBatchNorm:3*
_output_shapes
:*
T0*8
_class.
,*loc:@L1/batch_normalization/FusedBatchNorm
ђ
gradients/zeros_like_55	ZerosLike'L1/batch_normalization/FusedBatchNorm:4*
T0*8
_class.
,*loc:@L1/batch_normalization/FusedBatchNorm*
_output_shapes
:
я
Ggradients/L1/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGrad8gradients/L1/conv2d/Conv2D_grad/tuple/control_dependencysplit!L1/batch_normalization/gamma/read'L1/batch_normalization/moving_mean/read+L1/batch_normalization/moving_variance/read*G
_output_shapes5
3:€€€€€€€€€::::*
T0*8
_class.
,*loc:@L1/batch_normalization/FusedBatchNorm*
data_formatNHWC*
is_training( *
epsilon%oГ:
Ч
Egradients/L1/batch_normalization/FusedBatchNorm_grad/tuple/group_depsNoOpH^gradients/L1/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad
ё
Mgradients/L1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyIdentityGgradients/L1/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradF^gradients/L1/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*/
_output_shapes
:€€€€€€€€€*
T0*8
_class.
,*loc:@L1/batch_normalization/FusedBatchNorm
Ќ
Ogradients/L1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1IdentityIgradients/L1/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:1F^gradients/L1/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*8
_class.
,*loc:@L1/batch_normalization/FusedBatchNorm*
_output_shapes
:*
T0
Ќ
Ogradients/L1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2IdentityIgradients/L1/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:2F^gradients/L1/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*8
_class.
,*loc:@L1/batch_normalization/FusedBatchNorm*
_output_shapes
:
∞
gradients/zeros_like_56	ZerosLike)L1_1/batch_normalization/FusedBatchNorm:1*
_output_shapes
:*
T0*:
_class0
.,loc:@L1_1/batch_normalization/FusedBatchNorm
∞
gradients/zeros_like_57	ZerosLike)L1_1/batch_normalization/FusedBatchNorm:2*
T0*:
_class0
.,loc:@L1_1/batch_normalization/FusedBatchNorm*
_output_shapes
:
∞
gradients/zeros_like_58	ZerosLike)L1_1/batch_normalization/FusedBatchNorm:3*
_output_shapes
:*
T0*:
_class0
.,loc:@L1_1/batch_normalization/FusedBatchNorm
∞
gradients/zeros_like_59	ZerosLike)L1_1/batch_normalization/FusedBatchNorm:4*
T0*:
_class0
.,loc:@L1_1/batch_normalization/FusedBatchNorm*
_output_shapes
:
з
Igradients/L1_1/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGrad:gradients/L1_1/conv2d/Conv2D_grad/tuple/control_dependencysplit:1!L1/batch_normalization/gamma/read'L1/batch_normalization/moving_mean/read+L1/batch_normalization/moving_variance/read*
epsilon%oГ:*G
_output_shapes5
3:€€€€€€€€€::::*
T0*:
_class0
.,loc:@L1_1/batch_normalization/FusedBatchNorm*
data_formatNHWC*
is_training( 
Ы
Ggradients/L1_1/batch_normalization/FusedBatchNorm_grad/tuple/group_depsNoOpJ^gradients/L1_1/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad
ж
Ogradients/L1_1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyIdentityIgradients/L1_1/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradH^gradients/L1_1/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*/
_output_shapes
:€€€€€€€€€*
T0*:
_class0
.,loc:@L1_1/batch_normalization/FusedBatchNorm
’
Qgradients/L1_1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1IdentityKgradients/L1_1/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:1H^gradients/L1_1/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
_output_shapes
:*
T0*:
_class0
.,loc:@L1_1/batch_normalization/FusedBatchNorm
’
Qgradients/L1_1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2IdentityKgradients/L1_1/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:2H^gradients/L1_1/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*:
_class0
.,loc:@L1_1/batch_normalization/FusedBatchNorm*
_output_shapes
:
∞
gradients/zeros_like_60	ZerosLike)L1_2/batch_normalization/FusedBatchNorm:1*:
_class0
.,loc:@L1_2/batch_normalization/FusedBatchNorm*
_output_shapes
:*
T0
∞
gradients/zeros_like_61	ZerosLike)L1_2/batch_normalization/FusedBatchNorm:2*
T0*:
_class0
.,loc:@L1_2/batch_normalization/FusedBatchNorm*
_output_shapes
:
∞
gradients/zeros_like_62	ZerosLike)L1_2/batch_normalization/FusedBatchNorm:3*
T0*:
_class0
.,loc:@L1_2/batch_normalization/FusedBatchNorm*
_output_shapes
:
∞
gradients/zeros_like_63	ZerosLike)L1_2/batch_normalization/FusedBatchNorm:4*
T0*:
_class0
.,loc:@L1_2/batch_normalization/FusedBatchNorm*
_output_shapes
:
з
Igradients/L1_2/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGrad:gradients/L1_2/conv2d/Conv2D_grad/tuple/control_dependencysplit:2!L1/batch_normalization/gamma/read'L1/batch_normalization/moving_mean/read+L1/batch_normalization/moving_variance/read*G
_output_shapes5
3:€€€€€€€€€::::*
T0*:
_class0
.,loc:@L1_2/batch_normalization/FusedBatchNorm*
data_formatNHWC*
is_training( *
epsilon%oГ:
Ы
Ggradients/L1_2/batch_normalization/FusedBatchNorm_grad/tuple/group_depsNoOpJ^gradients/L1_2/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad
ж
Ogradients/L1_2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyIdentityIgradients/L1_2/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradH^gradients/L1_2/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*/
_output_shapes
:€€€€€€€€€*
T0*:
_class0
.,loc:@L1_2/batch_normalization/FusedBatchNorm
’
Qgradients/L1_2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1IdentityKgradients/L1_2/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:1H^gradients/L1_2/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*:
_class0
.,loc:@L1_2/batch_normalization/FusedBatchNorm*
_output_shapes
:*
T0
’
Qgradients/L1_2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2IdentityKgradients/L1_2/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:2H^gradients/L1_2/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*:
_class0
.,loc:@L1_2/batch_normalization/FusedBatchNorm*
_output_shapes
:*
T0
∞
gradients/zeros_like_64	ZerosLike)L1_3/batch_normalization/FusedBatchNorm:1*
T0*:
_class0
.,loc:@L1_3/batch_normalization/FusedBatchNorm*
_output_shapes
:
∞
gradients/zeros_like_65	ZerosLike)L1_3/batch_normalization/FusedBatchNorm:2*
T0*:
_class0
.,loc:@L1_3/batch_normalization/FusedBatchNorm*
_output_shapes
:
∞
gradients/zeros_like_66	ZerosLike)L1_3/batch_normalization/FusedBatchNorm:3*
T0*:
_class0
.,loc:@L1_3/batch_normalization/FusedBatchNorm*
_output_shapes
:
∞
gradients/zeros_like_67	ZerosLike)L1_3/batch_normalization/FusedBatchNorm:4*:
_class0
.,loc:@L1_3/batch_normalization/FusedBatchNorm*
_output_shapes
:*
T0
з
Igradients/L1_3/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGrad:gradients/L1_3/conv2d/Conv2D_grad/tuple/control_dependencysplit:3!L1/batch_normalization/gamma/read'L1/batch_normalization/moving_mean/read+L1/batch_normalization/moving_variance/read*
epsilon%oГ:*G
_output_shapes5
3:€€€€€€€€€::::*
T0*:
_class0
.,loc:@L1_3/batch_normalization/FusedBatchNorm*
data_formatNHWC*
is_training( 
Ы
Ggradients/L1_3/batch_normalization/FusedBatchNorm_grad/tuple/group_depsNoOpJ^gradients/L1_3/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad
ж
Ogradients/L1_3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependencyIdentityIgradients/L1_3/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGradH^gradients/L1_3/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*:
_class0
.,loc:@L1_3/batch_normalization/FusedBatchNorm*/
_output_shapes
:€€€€€€€€€
’
Qgradients/L1_3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1IdentityKgradients/L1_3/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:1H^gradients/L1_3/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*:
_class0
.,loc:@L1_3/batch_normalization/FusedBatchNorm*
_output_shapes
:
’
Qgradients/L1_3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2IdentityKgradients/L1_3/batch_normalization/FusedBatchNorm_grad/FusedBatchNormGrad:2H^gradients/L1_3/batch_normalization/FusedBatchNorm_grad/tuple/group_deps*
T0*:
_class0
.,loc:@L1_3/batch_normalization/FusedBatchNorm*
_output_shapes
:
о
gradients/AddN_21AddN:gradients/L1/conv2d/Conv2D_grad/tuple/control_dependency_1<gradients/L1_1/conv2d/Conv2D_grad/tuple/control_dependency_1<gradients/L1_2/conv2d/Conv2D_grad/tuple/control_dependency_1<gradients/L1_3/conv2d/Conv2D_grad/tuple/control_dependency_1*
T0*#
_class
loc:@L1/conv2d/kernel*
N*&
_output_shapes
:@
¬
gradients/AddN_22AddNOgradients/L1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1Qgradients/L1_1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1Qgradients/L1_2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1Qgradients/L1_3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_1*
_output_shapes
:*
T0*/
_class%
#!loc:@L1/batch_normalization/gamma*
N
Ѕ
gradients/AddN_23AddNOgradients/L1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2Qgradients/L1_1/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2Qgradients/L1_2/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2Qgradients/L1_3/batch_normalization/FusedBatchNorm_grad/tuple/control_dependency_2*
T0*.
_class$
" loc:@L1/batch_normalization/beta*
N*
_output_shapes
:
О
beta1_power/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *fff?*.
_class$
" loc:@L1/batch_normalization/beta
Я
beta1_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *.
_class$
" loc:@L1/batch_normalization/beta*
	container *
shape: 
Њ
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*.
_class$
" loc:@L1/batch_normalization/beta*
validate_shape(*
_output_shapes
: 
z
beta1_power/readIdentitybeta1_power*
T0*.
_class$
" loc:@L1/batch_normalization/beta*
_output_shapes
: 
О
beta2_power/initial_valueConst*
valueB
 *wЊ?*.
_class$
" loc:@L1/batch_normalization/beta*
dtype0*
_output_shapes
: 
Я
beta2_power
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *.
_class$
" loc:@L1/batch_normalization/beta
Њ
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*.
_class$
" loc:@L1/batch_normalization/beta*
validate_shape(*
_output_shapes
: 
z
beta2_power/readIdentitybeta2_power*
T0*.
_class$
" loc:@L1/batch_normalization/beta*
_output_shapes
: 
±
3L1/batch_normalization/gamma/Adam/Initializer/zerosConst*
valueB*    */
_class%
#!loc:@L1/batch_normalization/gamma*
dtype0*
_output_shapes
:
Њ
!L1/batch_normalization/gamma/Adam
VariableV2*
shared_name */
_class%
#!loc:@L1/batch_normalization/gamma*
	container *
shape:*
dtype0*
_output_shapes
:
Й
(L1/batch_normalization/gamma/Adam/AssignAssign!L1/batch_normalization/gamma/Adam3L1/batch_normalization/gamma/Adam/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*/
_class%
#!loc:@L1/batch_normalization/gamma*
validate_shape(
Ђ
&L1/batch_normalization/gamma/Adam/readIdentity!L1/batch_normalization/gamma/Adam*/
_class%
#!loc:@L1/batch_normalization/gamma*
_output_shapes
:*
T0
≥
5L1/batch_normalization/gamma/Adam_1/Initializer/zerosConst*
_output_shapes
:*
valueB*    */
_class%
#!loc:@L1/batch_normalization/gamma*
dtype0
ј
#L1/batch_normalization/gamma/Adam_1
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name */
_class%
#!loc:@L1/batch_normalization/gamma
П
*L1/batch_normalization/gamma/Adam_1/AssignAssign#L1/batch_normalization/gamma/Adam_15L1/batch_normalization/gamma/Adam_1/Initializer/zeros*/
_class%
#!loc:@L1/batch_normalization/gamma*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
ѓ
(L1/batch_normalization/gamma/Adam_1/readIdentity#L1/batch_normalization/gamma/Adam_1*/
_class%
#!loc:@L1/batch_normalization/gamma*
_output_shapes
:*
T0
ѓ
2L1/batch_normalization/beta/Adam/Initializer/zerosConst*
valueB*    *.
_class$
" loc:@L1/batch_normalization/beta*
dtype0*
_output_shapes
:
Љ
 L1/batch_normalization/beta/Adam
VariableV2*
shared_name *.
_class$
" loc:@L1/batch_normalization/beta*
	container *
shape:*
dtype0*
_output_shapes
:
Е
'L1/batch_normalization/beta/Adam/AssignAssign L1/batch_normalization/beta/Adam2L1/batch_normalization/beta/Adam/Initializer/zeros*
use_locking(*
T0*.
_class$
" loc:@L1/batch_normalization/beta*
validate_shape(*
_output_shapes
:
®
%L1/batch_normalization/beta/Adam/readIdentity L1/batch_normalization/beta/Adam*
T0*.
_class$
" loc:@L1/batch_normalization/beta*
_output_shapes
:
±
4L1/batch_normalization/beta/Adam_1/Initializer/zerosConst*
valueB*    *.
_class$
" loc:@L1/batch_normalization/beta*
dtype0*
_output_shapes
:
Њ
"L1/batch_normalization/beta/Adam_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *.
_class$
" loc:@L1/batch_normalization/beta*
	container *
shape:
Л
)L1/batch_normalization/beta/Adam_1/AssignAssign"L1/batch_normalization/beta/Adam_14L1/batch_normalization/beta/Adam_1/Initializer/zeros*.
_class$
" loc:@L1/batch_normalization/beta*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
ђ
'L1/batch_normalization/beta/Adam_1/readIdentity"L1/batch_normalization/beta/Adam_1*
T0*.
_class$
" loc:@L1/batch_normalization/beta*
_output_shapes
:
±
'L1/conv2d/kernel/Adam/Initializer/zerosConst*
dtype0*&
_output_shapes
:@*%
valueB@*    *#
_class
loc:@L1/conv2d/kernel
Њ
L1/conv2d/kernel/Adam
VariableV2*
	container *
shape:@*
dtype0*&
_output_shapes
:@*
shared_name *#
_class
loc:@L1/conv2d/kernel
е
L1/conv2d/kernel/Adam/AssignAssignL1/conv2d/kernel/Adam'L1/conv2d/kernel/Adam/Initializer/zeros*
T0*#
_class
loc:@L1/conv2d/kernel*
validate_shape(*&
_output_shapes
:@*
use_locking(
У
L1/conv2d/kernel/Adam/readIdentityL1/conv2d/kernel/Adam*
T0*#
_class
loc:@L1/conv2d/kernel*&
_output_shapes
:@
≥
)L1/conv2d/kernel/Adam_1/Initializer/zerosConst*%
valueB@*    *#
_class
loc:@L1/conv2d/kernel*
dtype0*&
_output_shapes
:@
ј
L1/conv2d/kernel/Adam_1
VariableV2*
dtype0*&
_output_shapes
:@*
shared_name *#
_class
loc:@L1/conv2d/kernel*
	container *
shape:@
л
L1/conv2d/kernel/Adam_1/AssignAssignL1/conv2d/kernel/Adam_1)L1/conv2d/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@L1/conv2d/kernel*
validate_shape(*&
_output_shapes
:@
Ч
L1/conv2d/kernel/Adam_1/readIdentityL1/conv2d/kernel/Adam_1*
T0*#
_class
loc:@L1/conv2d/kernel*&
_output_shapes
:@
Х
%L1/conv2d/bias/Adam/Initializer/zerosConst*
_output_shapes
:@*
valueB@*    *!
_class
loc:@L1/conv2d/bias*
dtype0
Ґ
L1/conv2d/bias/Adam
VariableV2*!
_class
loc:@L1/conv2d/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
—
L1/conv2d/bias/Adam/AssignAssignL1/conv2d/bias/Adam%L1/conv2d/bias/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@L1/conv2d/bias*
validate_shape(*
_output_shapes
:@
Б
L1/conv2d/bias/Adam/readIdentityL1/conv2d/bias/Adam*
T0*!
_class
loc:@L1/conv2d/bias*
_output_shapes
:@
Ч
'L1/conv2d/bias/Adam_1/Initializer/zerosConst*
valueB@*    *!
_class
loc:@L1/conv2d/bias*
dtype0*
_output_shapes
:@
§
L1/conv2d/bias/Adam_1
VariableV2*!
_class
loc:@L1/conv2d/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
„
L1/conv2d/bias/Adam_1/AssignAssignL1/conv2d/bias/Adam_1'L1/conv2d/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*!
_class
loc:@L1/conv2d/bias
Е
L1/conv2d/bias/Adam_1/readIdentityL1/conv2d/bias/Adam_1*!
_class
loc:@L1/conv2d/bias*
_output_shapes
:@*
T0
±
3L2/batch_normalization/gamma/Adam/Initializer/zerosConst*
_output_shapes
:@*
valueB@*    */
_class%
#!loc:@L2/batch_normalization/gamma*
dtype0
Њ
!L2/batch_normalization/gamma/Adam
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name */
_class%
#!loc:@L2/batch_normalization/gamma
Й
(L2/batch_normalization/gamma/Adam/AssignAssign!L2/batch_normalization/gamma/Adam3L2/batch_normalization/gamma/Adam/Initializer/zeros*/
_class%
#!loc:@L2/batch_normalization/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
Ђ
&L2/batch_normalization/gamma/Adam/readIdentity!L2/batch_normalization/gamma/Adam*
T0*/
_class%
#!loc:@L2/batch_normalization/gamma*
_output_shapes
:@
≥
5L2/batch_normalization/gamma/Adam_1/Initializer/zerosConst*
valueB@*    */
_class%
#!loc:@L2/batch_normalization/gamma*
dtype0*
_output_shapes
:@
ј
#L2/batch_normalization/gamma/Adam_1
VariableV2*
shared_name */
_class%
#!loc:@L2/batch_normalization/gamma*
	container *
shape:@*
dtype0*
_output_shapes
:@
П
*L2/batch_normalization/gamma/Adam_1/AssignAssign#L2/batch_normalization/gamma/Adam_15L2/batch_normalization/gamma/Adam_1/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@L2/batch_normalization/gamma*
validate_shape(*
_output_shapes
:@
ѓ
(L2/batch_normalization/gamma/Adam_1/readIdentity#L2/batch_normalization/gamma/Adam_1*
_output_shapes
:@*
T0*/
_class%
#!loc:@L2/batch_normalization/gamma
ѓ
2L2/batch_normalization/beta/Adam/Initializer/zerosConst*
valueB@*    *.
_class$
" loc:@L2/batch_normalization/beta*
dtype0*
_output_shapes
:@
Љ
 L2/batch_normalization/beta/Adam
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *.
_class$
" loc:@L2/batch_normalization/beta*
	container *
shape:@
Е
'L2/batch_normalization/beta/Adam/AssignAssign L2/batch_normalization/beta/Adam2L2/batch_normalization/beta/Adam/Initializer/zeros*
use_locking(*
T0*.
_class$
" loc:@L2/batch_normalization/beta*
validate_shape(*
_output_shapes
:@
®
%L2/batch_normalization/beta/Adam/readIdentity L2/batch_normalization/beta/Adam*.
_class$
" loc:@L2/batch_normalization/beta*
_output_shapes
:@*
T0
±
4L2/batch_normalization/beta/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    *.
_class$
" loc:@L2/batch_normalization/beta
Њ
"L2/batch_normalization/beta/Adam_1
VariableV2*
shared_name *.
_class$
" loc:@L2/batch_normalization/beta*
	container *
shape:@*
dtype0*
_output_shapes
:@
Л
)L2/batch_normalization/beta/Adam_1/AssignAssign"L2/batch_normalization/beta/Adam_14L2/batch_normalization/beta/Adam_1/Initializer/zeros*
_output_shapes
:@*
use_locking(*
T0*.
_class$
" loc:@L2/batch_normalization/beta*
validate_shape(
ђ
'L2/batch_normalization/beta/Adam_1/readIdentity"L2/batch_normalization/beta/Adam_1*
T0*.
_class$
" loc:@L2/batch_normalization/beta*
_output_shapes
:@
µ
7L2/conv2d/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"      @   А   *#
_class
loc:@L2/conv2d/kernel*
dtype0*
_output_shapes
:
Ч
-L2/conv2d/kernel/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *#
_class
loc:@L2/conv2d/kernel*
dtype0
А
'L2/conv2d/kernel/Adam/Initializer/zerosFill7L2/conv2d/kernel/Adam/Initializer/zeros/shape_as_tensor-L2/conv2d/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*#
_class
loc:@L2/conv2d/kernel*'
_output_shapes
:@А
ј
L2/conv2d/kernel/Adam
VariableV2*
shape:@А*
dtype0*'
_output_shapes
:@А*
shared_name *#
_class
loc:@L2/conv2d/kernel*
	container 
ж
L2/conv2d/kernel/Adam/AssignAssignL2/conv2d/kernel/Adam'L2/conv2d/kernel/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@L2/conv2d/kernel*
validate_shape(*'
_output_shapes
:@А
Ф
L2/conv2d/kernel/Adam/readIdentityL2/conv2d/kernel/Adam*'
_output_shapes
:@А*
T0*#
_class
loc:@L2/conv2d/kernel
Ј
9L2/conv2d/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"      @   А   *#
_class
loc:@L2/conv2d/kernel*
dtype0*
_output_shapes
:
Щ
/L2/conv2d/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *#
_class
loc:@L2/conv2d/kernel*
dtype0*
_output_shapes
: 
Ж
)L2/conv2d/kernel/Adam_1/Initializer/zerosFill9L2/conv2d/kernel/Adam_1/Initializer/zeros/shape_as_tensor/L2/conv2d/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*#
_class
loc:@L2/conv2d/kernel*'
_output_shapes
:@А
¬
L2/conv2d/kernel/Adam_1
VariableV2*
shared_name *#
_class
loc:@L2/conv2d/kernel*
	container *
shape:@А*
dtype0*'
_output_shapes
:@А
м
L2/conv2d/kernel/Adam_1/AssignAssignL2/conv2d/kernel/Adam_1)L2/conv2d/kernel/Adam_1/Initializer/zeros*
validate_shape(*'
_output_shapes
:@А*
use_locking(*
T0*#
_class
loc:@L2/conv2d/kernel
Ш
L2/conv2d/kernel/Adam_1/readIdentityL2/conv2d/kernel/Adam_1*
T0*#
_class
loc:@L2/conv2d/kernel*'
_output_shapes
:@А
Ч
%L2/conv2d/bias/Adam/Initializer/zerosConst*
_output_shapes	
:А*
valueBА*    *!
_class
loc:@L2/conv2d/bias*
dtype0
§
L2/conv2d/bias/Adam
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *!
_class
loc:@L2/conv2d/bias*
	container *
shape:А
“
L2/conv2d/bias/Adam/AssignAssignL2/conv2d/bias/Adam%L2/conv2d/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*!
_class
loc:@L2/conv2d/bias
В
L2/conv2d/bias/Adam/readIdentityL2/conv2d/bias/Adam*
_output_shapes	
:А*
T0*!
_class
loc:@L2/conv2d/bias
Щ
'L2/conv2d/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes	
:А*
valueBА*    *!
_class
loc:@L2/conv2d/bias
¶
L2/conv2d/bias/Adam_1
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *!
_class
loc:@L2/conv2d/bias*
	container *
shape:А
Ў
L2/conv2d/bias/Adam_1/AssignAssignL2/conv2d/bias/Adam_1'L2/conv2d/bias/Adam_1/Initializer/zeros*!
_class
loc:@L2/conv2d/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0
Ж
L2/conv2d/bias/Adam_1/readIdentityL2/conv2d/bias/Adam_1*
_output_shapes	
:А*
T0*!
_class
loc:@L2/conv2d/bias
Ј
5L2-1/batch_normalization/gamma/Adam/Initializer/zerosConst*
valueBА*    *1
_class'
%#loc:@L2-1/batch_normalization/gamma*
dtype0*
_output_shapes	
:А
ƒ
#L2-1/batch_normalization/gamma/Adam
VariableV2*
shared_name *1
_class'
%#loc:@L2-1/batch_normalization/gamma*
	container *
shape:А*
dtype0*
_output_shapes	
:А
Т
*L2-1/batch_normalization/gamma/Adam/AssignAssign#L2-1/batch_normalization/gamma/Adam5L2-1/batch_normalization/gamma/Adam/Initializer/zeros*
use_locking(*
T0*1
_class'
%#loc:@L2-1/batch_normalization/gamma*
validate_shape(*
_output_shapes	
:А
≤
(L2-1/batch_normalization/gamma/Adam/readIdentity#L2-1/batch_normalization/gamma/Adam*
T0*1
_class'
%#loc:@L2-1/batch_normalization/gamma*
_output_shapes	
:А
є
7L2-1/batch_normalization/gamma/Adam_1/Initializer/zerosConst*
valueBА*    *1
_class'
%#loc:@L2-1/batch_normalization/gamma*
dtype0*
_output_shapes	
:А
∆
%L2-1/batch_normalization/gamma/Adam_1
VariableV2*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *1
_class'
%#loc:@L2-1/batch_normalization/gamma
Ш
,L2-1/batch_normalization/gamma/Adam_1/AssignAssign%L2-1/batch_normalization/gamma/Adam_17L2-1/batch_normalization/gamma/Adam_1/Initializer/zeros*
use_locking(*
T0*1
_class'
%#loc:@L2-1/batch_normalization/gamma*
validate_shape(*
_output_shapes	
:А
ґ
*L2-1/batch_normalization/gamma/Adam_1/readIdentity%L2-1/batch_normalization/gamma/Adam_1*
T0*1
_class'
%#loc:@L2-1/batch_normalization/gamma*
_output_shapes	
:А
µ
4L2-1/batch_normalization/beta/Adam/Initializer/zerosConst*
valueBА*    *0
_class&
$"loc:@L2-1/batch_normalization/beta*
dtype0*
_output_shapes	
:А
¬
"L2-1/batch_normalization/beta/Adam
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *0
_class&
$"loc:@L2-1/batch_normalization/beta*
	container *
shape:А
О
)L2-1/batch_normalization/beta/Adam/AssignAssign"L2-1/batch_normalization/beta/Adam4L2-1/batch_normalization/beta/Adam/Initializer/zeros*
use_locking(*
T0*0
_class&
$"loc:@L2-1/batch_normalization/beta*
validate_shape(*
_output_shapes	
:А
ѓ
'L2-1/batch_normalization/beta/Adam/readIdentity"L2-1/batch_normalization/beta/Adam*
_output_shapes	
:А*
T0*0
_class&
$"loc:@L2-1/batch_normalization/beta
Ј
6L2-1/batch_normalization/beta/Adam_1/Initializer/zerosConst*
valueBА*    *0
_class&
$"loc:@L2-1/batch_normalization/beta*
dtype0*
_output_shapes	
:А
ƒ
$L2-1/batch_normalization/beta/Adam_1
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *0
_class&
$"loc:@L2-1/batch_normalization/beta*
	container *
shape:А
Ф
+L2-1/batch_normalization/beta/Adam_1/AssignAssign$L2-1/batch_normalization/beta/Adam_16L2-1/batch_normalization/beta/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*0
_class&
$"loc:@L2-1/batch_normalization/beta
≥
)L2-1/batch_normalization/beta/Adam_1/readIdentity$L2-1/batch_normalization/beta/Adam_1*
_output_shapes	
:А*
T0*0
_class&
$"loc:@L2-1/batch_normalization/beta
≥
3L3/batch_normalization/gamma/Adam/Initializer/zerosConst*
valueBА*    */
_class%
#!loc:@L3/batch_normalization/gamma*
dtype0*
_output_shapes	
:А
ј
!L3/batch_normalization/gamma/Adam
VariableV2*
shared_name */
_class%
#!loc:@L3/batch_normalization/gamma*
	container *
shape:А*
dtype0*
_output_shapes	
:А
К
(L3/batch_normalization/gamma/Adam/AssignAssign!L3/batch_normalization/gamma/Adam3L3/batch_normalization/gamma/Adam/Initializer/zeros*/
_class%
#!loc:@L3/batch_normalization/gamma*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0
ђ
&L3/batch_normalization/gamma/Adam/readIdentity!L3/batch_normalization/gamma/Adam*/
_class%
#!loc:@L3/batch_normalization/gamma*
_output_shapes	
:А*
T0
µ
5L3/batch_normalization/gamma/Adam_1/Initializer/zerosConst*
valueBА*    */
_class%
#!loc:@L3/batch_normalization/gamma*
dtype0*
_output_shapes	
:А
¬
#L3/batch_normalization/gamma/Adam_1
VariableV2*
shared_name */
_class%
#!loc:@L3/batch_normalization/gamma*
	container *
shape:А*
dtype0*
_output_shapes	
:А
Р
*L3/batch_normalization/gamma/Adam_1/AssignAssign#L3/batch_normalization/gamma/Adam_15L3/batch_normalization/gamma/Adam_1/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@L3/batch_normalization/gamma*
validate_shape(*
_output_shapes	
:А
∞
(L3/batch_normalization/gamma/Adam_1/readIdentity#L3/batch_normalization/gamma/Adam_1*
T0*/
_class%
#!loc:@L3/batch_normalization/gamma*
_output_shapes	
:А
±
2L3/batch_normalization/beta/Adam/Initializer/zerosConst*
dtype0*
_output_shapes	
:А*
valueBА*    *.
_class$
" loc:@L3/batch_normalization/beta
Њ
 L3/batch_normalization/beta/Adam
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *.
_class$
" loc:@L3/batch_normalization/beta*
	container *
shape:А
Ж
'L3/batch_normalization/beta/Adam/AssignAssign L3/batch_normalization/beta/Adam2L3/batch_normalization/beta/Adam/Initializer/zeros*
use_locking(*
T0*.
_class$
" loc:@L3/batch_normalization/beta*
validate_shape(*
_output_shapes	
:А
©
%L3/batch_normalization/beta/Adam/readIdentity L3/batch_normalization/beta/Adam*
T0*.
_class$
" loc:@L3/batch_normalization/beta*
_output_shapes	
:А
≥
4L3/batch_normalization/beta/Adam_1/Initializer/zerosConst*
valueBА*    *.
_class$
" loc:@L3/batch_normalization/beta*
dtype0*
_output_shapes	
:А
ј
"L3/batch_normalization/beta/Adam_1
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *.
_class$
" loc:@L3/batch_normalization/beta*
	container *
shape:А
М
)L3/batch_normalization/beta/Adam_1/AssignAssign"L3/batch_normalization/beta/Adam_14L3/batch_normalization/beta/Adam_1/Initializer/zeros*
T0*.
_class$
" loc:@L3/batch_normalization/beta*
validate_shape(*
_output_shapes	
:А*
use_locking(
≠
'L3/batch_normalization/beta/Adam_1/readIdentity"L3/batch_normalization/beta/Adam_1*
T0*.
_class$
" loc:@L3/batch_normalization/beta*
_output_shapes	
:А
Ђ
6L3/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"А     *"
_class
loc:@L3/dense/kernel*
dtype0*
_output_shapes
:
Х
,L3/dense/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@L3/dense/kernel*
dtype0*
_output_shapes
: 
х
&L3/dense/kernel/Adam/Initializer/zerosFill6L3/dense/kernel/Adam/Initializer/zeros/shape_as_tensor,L3/dense/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@L3/dense/kernel* 
_output_shapes
:
А1А
∞
L3/dense/kernel/Adam
VariableV2*
shared_name *"
_class
loc:@L3/dense/kernel*
	container *
shape:
А1А*
dtype0* 
_output_shapes
:
А1А
џ
L3/dense/kernel/Adam/AssignAssignL3/dense/kernel/Adam&L3/dense/kernel/Adam/Initializer/zeros*
validate_shape(* 
_output_shapes
:
А1А*
use_locking(*
T0*"
_class
loc:@L3/dense/kernel
К
L3/dense/kernel/Adam/readIdentityL3/dense/kernel/Adam*
T0*"
_class
loc:@L3/dense/kernel* 
_output_shapes
:
А1А
≠
8L3/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"А     *"
_class
loc:@L3/dense/kernel*
dtype0*
_output_shapes
:
Ч
.L3/dense/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@L3/dense/kernel*
dtype0*
_output_shapes
: 
ы
(L3/dense/kernel/Adam_1/Initializer/zerosFill8L3/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor.L3/dense/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@L3/dense/kernel* 
_output_shapes
:
А1А
≤
L3/dense/kernel/Adam_1
VariableV2*
dtype0* 
_output_shapes
:
А1А*
shared_name *"
_class
loc:@L3/dense/kernel*
	container *
shape:
А1А
б
L3/dense/kernel/Adam_1/AssignAssignL3/dense/kernel/Adam_1(L3/dense/kernel/Adam_1/Initializer/zeros*"
_class
loc:@L3/dense/kernel*
validate_shape(* 
_output_shapes
:
А1А*
use_locking(*
T0
О
L3/dense/kernel/Adam_1/readIdentityL3/dense/kernel/Adam_1* 
_output_shapes
:
А1А*
T0*"
_class
loc:@L3/dense/kernel
°
4L3/dense/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:А* 
_class
loc:@L3/dense/bias*
dtype0*
_output_shapes
:
С
*L3/dense/bias/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    * 
_class
loc:@L3/dense/bias*
dtype0
и
$L3/dense/bias/Adam/Initializer/zerosFill4L3/dense/bias/Adam/Initializer/zeros/shape_as_tensor*L3/dense/bias/Adam/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@L3/dense/bias*
_output_shapes	
:А
Ґ
L3/dense/bias/Adam
VariableV2*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name * 
_class
loc:@L3/dense/bias
ќ
L3/dense/bias/Adam/AssignAssignL3/dense/bias/Adam$L3/dense/bias/Adam/Initializer/zeros*
T0* 
_class
loc:@L3/dense/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(

L3/dense/bias/Adam/readIdentityL3/dense/bias/Adam*
_output_shapes	
:А*
T0* 
_class
loc:@L3/dense/bias
£
6L3/dense/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
valueB:А* 
_class
loc:@L3/dense/bias*
dtype0
У
,L3/dense/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@L3/dense/bias*
dtype0*
_output_shapes
: 
о
&L3/dense/bias/Adam_1/Initializer/zerosFill6L3/dense/bias/Adam_1/Initializer/zeros/shape_as_tensor,L3/dense/bias/Adam_1/Initializer/zeros/Const*

index_type0* 
_class
loc:@L3/dense/bias*
_output_shapes	
:А*
T0
§
L3/dense/bias/Adam_1
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name * 
_class
loc:@L3/dense/bias*
	container *
shape:А
‘
L3/dense/bias/Adam_1/AssignAssignL3/dense/bias/Adam_1&L3/dense/bias/Adam_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@L3/dense/bias*
validate_shape(*
_output_shapes	
:А
Г
L3/dense/bias/Adam_1/readIdentityL3/dense/bias/Adam_1*
T0* 
_class
loc:@L3/dense/bias*
_output_shapes	
:А
њ
CL4/batch_normalization/gamma/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:А*/
_class%
#!loc:@L4/batch_normalization/gamma*
dtype0*
_output_shapes
:
ѓ
9L4/batch_normalization/gamma/Adam/Initializer/zeros/ConstConst*
valueB
 *    */
_class%
#!loc:@L4/batch_normalization/gamma*
dtype0*
_output_shapes
: 
§
3L4/batch_normalization/gamma/Adam/Initializer/zerosFillCL4/batch_normalization/gamma/Adam/Initializer/zeros/shape_as_tensor9L4/batch_normalization/gamma/Adam/Initializer/zeros/Const*
T0*

index_type0*/
_class%
#!loc:@L4/batch_normalization/gamma*
_output_shapes	
:А
ј
!L4/batch_normalization/gamma/Adam
VariableV2*
shared_name */
_class%
#!loc:@L4/batch_normalization/gamma*
	container *
shape:А*
dtype0*
_output_shapes	
:А
К
(L4/batch_normalization/gamma/Adam/AssignAssign!L4/batch_normalization/gamma/Adam3L4/batch_normalization/gamma/Adam/Initializer/zeros*
_output_shapes	
:А*
use_locking(*
T0*/
_class%
#!loc:@L4/batch_normalization/gamma*
validate_shape(
ђ
&L4/batch_normalization/gamma/Adam/readIdentity!L4/batch_normalization/gamma/Adam*
T0*/
_class%
#!loc:@L4/batch_normalization/gamma*
_output_shapes	
:А
Ѕ
EL4/batch_normalization/gamma/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:А*/
_class%
#!loc:@L4/batch_normalization/gamma*
dtype0*
_output_shapes
:
±
;L4/batch_normalization/gamma/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    */
_class%
#!loc:@L4/batch_normalization/gamma*
dtype0*
_output_shapes
: 
™
5L4/batch_normalization/gamma/Adam_1/Initializer/zerosFillEL4/batch_normalization/gamma/Adam_1/Initializer/zeros/shape_as_tensor;L4/batch_normalization/gamma/Adam_1/Initializer/zeros/Const*
_output_shapes	
:А*
T0*

index_type0*/
_class%
#!loc:@L4/batch_normalization/gamma
¬
#L4/batch_normalization/gamma/Adam_1
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name */
_class%
#!loc:@L4/batch_normalization/gamma*
	container *
shape:А
Р
*L4/batch_normalization/gamma/Adam_1/AssignAssign#L4/batch_normalization/gamma/Adam_15L4/batch_normalization/gamma/Adam_1/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@L4/batch_normalization/gamma*
validate_shape(*
_output_shapes	
:А
∞
(L4/batch_normalization/gamma/Adam_1/readIdentity#L4/batch_normalization/gamma/Adam_1*
T0*/
_class%
#!loc:@L4/batch_normalization/gamma*
_output_shapes	
:А
љ
BL4/batch_normalization/beta/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:А*.
_class$
" loc:@L4/batch_normalization/beta
≠
8L4/batch_normalization/beta/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *.
_class$
" loc:@L4/batch_normalization/beta*
dtype0
†
2L4/batch_normalization/beta/Adam/Initializer/zerosFillBL4/batch_normalization/beta/Adam/Initializer/zeros/shape_as_tensor8L4/batch_normalization/beta/Adam/Initializer/zeros/Const*
T0*

index_type0*.
_class$
" loc:@L4/batch_normalization/beta*
_output_shapes	
:А
Њ
 L4/batch_normalization/beta/Adam
VariableV2*
shared_name *.
_class$
" loc:@L4/batch_normalization/beta*
	container *
shape:А*
dtype0*
_output_shapes	
:А
Ж
'L4/batch_normalization/beta/Adam/AssignAssign L4/batch_normalization/beta/Adam2L4/batch_normalization/beta/Adam/Initializer/zeros*
_output_shapes	
:А*
use_locking(*
T0*.
_class$
" loc:@L4/batch_normalization/beta*
validate_shape(
©
%L4/batch_normalization/beta/Adam/readIdentity L4/batch_normalization/beta/Adam*
_output_shapes	
:А*
T0*.
_class$
" loc:@L4/batch_normalization/beta
њ
DL4/batch_normalization/beta/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:А*.
_class$
" loc:@L4/batch_normalization/beta*
dtype0*
_output_shapes
:
ѓ
:L4/batch_normalization/beta/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *.
_class$
" loc:@L4/batch_normalization/beta*
dtype0*
_output_shapes
: 
¶
4L4/batch_normalization/beta/Adam_1/Initializer/zerosFillDL4/batch_normalization/beta/Adam_1/Initializer/zeros/shape_as_tensor:L4/batch_normalization/beta/Adam_1/Initializer/zeros/Const*
T0*

index_type0*.
_class$
" loc:@L4/batch_normalization/beta*
_output_shapes	
:А
ј
"L4/batch_normalization/beta/Adam_1
VariableV2*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *.
_class$
" loc:@L4/batch_normalization/beta
М
)L4/batch_normalization/beta/Adam_1/AssignAssign"L4/batch_normalization/beta/Adam_14L4/batch_normalization/beta/Adam_1/Initializer/zeros*
_output_shapes	
:А*
use_locking(*
T0*.
_class$
" loc:@L4/batch_normalization/beta*
validate_shape(
≠
'L4/batch_normalization/beta/Adam_1/readIdentity"L4/batch_normalization/beta/Adam_1*
_output_shapes	
:А*
T0*.
_class$
" loc:@L4/batch_normalization/beta
Ђ
6L4/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"      *"
_class
loc:@L4/dense/kernel
Х
,L4/dense/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@L4/dense/kernel*
dtype0*
_output_shapes
: 
х
&L4/dense/kernel/Adam/Initializer/zerosFill6L4/dense/kernel/Adam/Initializer/zeros/shape_as_tensor,L4/dense/kernel/Adam/Initializer/zeros/Const*

index_type0*"
_class
loc:@L4/dense/kernel* 
_output_shapes
:
АА*
T0
∞
L4/dense/kernel/Adam
VariableV2*
shape:
АА*
dtype0* 
_output_shapes
:
АА*
shared_name *"
_class
loc:@L4/dense/kernel*
	container 
џ
L4/dense/kernel/Adam/AssignAssignL4/dense/kernel/Adam&L4/dense/kernel/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@L4/dense/kernel*
validate_shape(* 
_output_shapes
:
АА
К
L4/dense/kernel/Adam/readIdentityL4/dense/kernel/Adam* 
_output_shapes
:
АА*
T0*"
_class
loc:@L4/dense/kernel
≠
8L4/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *"
_class
loc:@L4/dense/kernel*
dtype0*
_output_shapes
:
Ч
.L4/dense/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@L4/dense/kernel*
dtype0*
_output_shapes
: 
ы
(L4/dense/kernel/Adam_1/Initializer/zerosFill8L4/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor.L4/dense/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@L4/dense/kernel* 
_output_shapes
:
АА
≤
L4/dense/kernel/Adam_1
VariableV2*
shared_name *"
_class
loc:@L4/dense/kernel*
	container *
shape:
АА*
dtype0* 
_output_shapes
:
АА
б
L4/dense/kernel/Adam_1/AssignAssignL4/dense/kernel/Adam_1(L4/dense/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@L4/dense/kernel*
validate_shape(* 
_output_shapes
:
АА
О
L4/dense/kernel/Adam_1/readIdentityL4/dense/kernel/Adam_1*
T0*"
_class
loc:@L4/dense/kernel* 
_output_shapes
:
АА
Х
$L4/dense/bias/Adam/Initializer/zerosConst*
valueBА*    * 
_class
loc:@L4/dense/bias*
dtype0*
_output_shapes	
:А
Ґ
L4/dense/bias/Adam
VariableV2*
shared_name * 
_class
loc:@L4/dense/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А
ќ
L4/dense/bias/Adam/AssignAssignL4/dense/bias/Adam$L4/dense/bias/Adam/Initializer/zeros*
_output_shapes	
:А*
use_locking(*
T0* 
_class
loc:@L4/dense/bias*
validate_shape(

L4/dense/bias/Adam/readIdentityL4/dense/bias/Adam*
T0* 
_class
loc:@L4/dense/bias*
_output_shapes	
:А
Ч
&L4/dense/bias/Adam_1/Initializer/zerosConst*
valueBА*    * 
_class
loc:@L4/dense/bias*
dtype0*
_output_shapes	
:А
§
L4/dense/bias/Adam_1
VariableV2* 
_class
loc:@L4/dense/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name 
‘
L4/dense/bias/Adam_1/AssignAssignL4/dense/bias/Adam_1&L4/dense/bias/Adam_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@L4/dense/bias*
validate_shape(*
_output_shapes	
:А
Г
L4/dense/bias/Adam_1/readIdentityL4/dense/bias/Adam_1*
T0* 
_class
loc:@L4/dense/bias*
_output_shapes	
:А
Ђ
6LF/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"   
   *"
_class
loc:@LF/dense/kernel*
dtype0*
_output_shapes
:
Х
,LF/dense/kernel/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *"
_class
loc:@LF/dense/kernel*
dtype0
ф
&LF/dense/kernel/Adam/Initializer/zerosFill6LF/dense/kernel/Adam/Initializer/zeros/shape_as_tensor,LF/dense/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@LF/dense/kernel*
_output_shapes
:	А

Ѓ
LF/dense/kernel/Adam
VariableV2*
dtype0*
_output_shapes
:	А
*
shared_name *"
_class
loc:@LF/dense/kernel*
	container *
shape:	А

Џ
LF/dense/kernel/Adam/AssignAssignLF/dense/kernel/Adam&LF/dense/kernel/Adam/Initializer/zeros*
_output_shapes
:	А
*
use_locking(*
T0*"
_class
loc:@LF/dense/kernel*
validate_shape(
Й
LF/dense/kernel/Adam/readIdentityLF/dense/kernel/Adam*
_output_shapes
:	А
*
T0*"
_class
loc:@LF/dense/kernel
≠
8LF/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"   
   *"
_class
loc:@LF/dense/kernel*
dtype0*
_output_shapes
:
Ч
.LF/dense/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@LF/dense/kernel*
dtype0*
_output_shapes
: 
ъ
(LF/dense/kernel/Adam_1/Initializer/zerosFill8LF/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor.LF/dense/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@LF/dense/kernel*
_output_shapes
:	А

∞
LF/dense/kernel/Adam_1
VariableV2*
shared_name *"
_class
loc:@LF/dense/kernel*
	container *
shape:	А
*
dtype0*
_output_shapes
:	А

а
LF/dense/kernel/Adam_1/AssignAssignLF/dense/kernel/Adam_1(LF/dense/kernel/Adam_1/Initializer/zeros*
T0*"
_class
loc:@LF/dense/kernel*
validate_shape(*
_output_shapes
:	А
*
use_locking(
Н
LF/dense/kernel/Adam_1/readIdentityLF/dense/kernel/Adam_1*
_output_shapes
:	А
*
T0*"
_class
loc:@LF/dense/kernel
У
$LF/dense/bias/Adam/Initializer/zerosConst*
valueB
*    * 
_class
loc:@LF/dense/bias*
dtype0*
_output_shapes
:

†
LF/dense/bias/Adam
VariableV2*
shape:
*
dtype0*
_output_shapes
:
*
shared_name * 
_class
loc:@LF/dense/bias*
	container 
Ќ
LF/dense/bias/Adam/AssignAssignLF/dense/bias/Adam$LF/dense/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:
*
use_locking(*
T0* 
_class
loc:@LF/dense/bias
~
LF/dense/bias/Adam/readIdentityLF/dense/bias/Adam*
_output_shapes
:
*
T0* 
_class
loc:@LF/dense/bias
Х
&LF/dense/bias/Adam_1/Initializer/zerosConst*
valueB
*    * 
_class
loc:@LF/dense/bias*
dtype0*
_output_shapes
:

Ґ
LF/dense/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
:
*
shared_name * 
_class
loc:@LF/dense/bias*
	container *
shape:

”
LF/dense/bias/Adam_1/AssignAssignLF/dense/bias/Adam_1&LF/dense/bias/Adam_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@LF/dense/bias*
validate_shape(*
_output_shapes
:

В
LF/dense/bias/Adam_1/readIdentityLF/dense/bias/Adam_1*
T0* 
_class
loc:@LF/dense/bias*
_output_shapes
:

W
Adam/learning_rateConst*
valueB
 *oГ:*
dtype0*
_output_shapes
: 
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
valueB
 *wЊ?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *wћ+2*
dtype0*
_output_shapes
: 
У
2Adam/update_L1/batch_normalization/gamma/ApplyAdam	ApplyAdamL1/batch_normalization/gamma!L1/batch_normalization/gamma/Adam#L1/batch_normalization/gamma/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_22*
use_locking( *
T0*/
_class%
#!loc:@L1/batch_normalization/gamma*
use_nesterov( *
_output_shapes
:
О
1Adam/update_L1/batch_normalization/beta/ApplyAdam	ApplyAdamL1/batch_normalization/beta L1/batch_normalization/beta/Adam"L1/batch_normalization/beta/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_23*
_output_shapes
:*
use_locking( *
T0*.
_class$
" loc:@L1/batch_normalization/beta*
use_nesterov( 
г
&Adam/update_L1/conv2d/kernel/ApplyAdam	ApplyAdamL1/conv2d/kernelL1/conv2d/kernel/AdamL1/conv2d/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_21*
use_locking( *
T0*#
_class
loc:@L1/conv2d/kernel*
use_nesterov( *&
_output_shapes
:@
Ќ
$Adam/update_L1/conv2d/bias/ApplyAdam	ApplyAdamL1/conv2d/biasL1/conv2d/bias/AdamL1/conv2d/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_20*!
_class
loc:@L1/conv2d/bias*
use_nesterov( *
_output_shapes
:@*
use_locking( *
T0
У
2Adam/update_L2/batch_normalization/gamma/ApplyAdam	ApplyAdamL2/batch_normalization/gamma!L2/batch_normalization/gamma/Adam#L2/batch_normalization/gamma/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_18*
use_locking( *
T0*/
_class%
#!loc:@L2/batch_normalization/gamma*
use_nesterov( *
_output_shapes
:@
О
1Adam/update_L2/batch_normalization/beta/ApplyAdam	ApplyAdamL2/batch_normalization/beta L2/batch_normalization/beta/Adam"L2/batch_normalization/beta/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_19*
use_locking( *
T0*.
_class$
" loc:@L2/batch_normalization/beta*
use_nesterov( *
_output_shapes
:@
д
&Adam/update_L2/conv2d/kernel/ApplyAdam	ApplyAdamL2/conv2d/kernelL2/conv2d/kernel/AdamL2/conv2d/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_17*
use_locking( *
T0*#
_class
loc:@L2/conv2d/kernel*
use_nesterov( *'
_output_shapes
:@А
ќ
$Adam/update_L2/conv2d/bias/ApplyAdam	ApplyAdamL2/conv2d/biasL2/conv2d/bias/AdamL2/conv2d/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_16*
use_locking( *
T0*!
_class
loc:@L2/conv2d/bias*
use_nesterov( *
_output_shapes	
:А
Ю
4Adam/update_L2-1/batch_normalization/gamma/ApplyAdam	ApplyAdamL2-1/batch_normalization/gamma#L2-1/batch_normalization/gamma/Adam%L2-1/batch_normalization/gamma/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_14*
use_locking( *
T0*1
_class'
%#loc:@L2-1/batch_normalization/gamma*
use_nesterov( *
_output_shapes	
:А
Щ
3Adam/update_L2-1/batch_normalization/beta/ApplyAdam	ApplyAdamL2-1/batch_normalization/beta"L2-1/batch_normalization/beta/Adam$L2-1/batch_normalization/beta/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_15*
use_locking( *
T0*0
_class&
$"loc:@L2-1/batch_normalization/beta*
use_nesterov( *
_output_shapes	
:А
Ф
2Adam/update_L3/batch_normalization/gamma/ApplyAdam	ApplyAdamL3/batch_normalization/gamma!L3/batch_normalization/gamma/Adam#L3/batch_normalization/gamma/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_12*
use_locking( *
T0*/
_class%
#!loc:@L3/batch_normalization/gamma*
use_nesterov( *
_output_shapes	
:А
П
1Adam/update_L3/batch_normalization/beta/ApplyAdam	ApplyAdamL3/batch_normalization/beta L3/batch_normalization/beta/Adam"L3/batch_normalization/beta/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_13*
use_locking( *
T0*.
_class$
" loc:@L3/batch_normalization/beta*
use_nesterov( *
_output_shapes	
:А
Ў
%Adam/update_L3/dense/kernel/ApplyAdam	ApplyAdamL3/dense/kernelL3/dense/kernel/AdamL3/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_11*
use_nesterov( * 
_output_shapes
:
А1А*
use_locking( *
T0*"
_class
loc:@L3/dense/kernel
…
#Adam/update_L3/dense/bias/ApplyAdam	ApplyAdamL3/dense/biasL3/dense/bias/AdamL3/dense/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_10*
_output_shapes	
:А*
use_locking( *
T0* 
_class
loc:@L3/dense/bias*
use_nesterov( 
У
2Adam/update_L4/batch_normalization/gamma/ApplyAdam	ApplyAdamL4/batch_normalization/gamma!L4/batch_normalization/gamma/Adam#L4/batch_normalization/gamma/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_9*
use_nesterov( *
_output_shapes	
:А*
use_locking( *
T0*/
_class%
#!loc:@L4/batch_normalization/gamma
О
1Adam/update_L4/batch_normalization/beta/ApplyAdam	ApplyAdamL4/batch_normalization/beta L4/batch_normalization/beta/Adam"L4/batch_normalization/beta/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_4*
use_locking( *
T0*.
_class$
" loc:@L4/batch_normalization/beta*
use_nesterov( *
_output_shapes	
:А
„
%Adam/update_L4/dense/kernel/ApplyAdam	ApplyAdamL4/dense/kernelL4/dense/kernel/AdamL4/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_3*
use_locking( *
T0*"
_class
loc:@L4/dense/kernel*
use_nesterov( * 
_output_shapes
:
АА
»
#Adam/update_L4/dense/bias/ApplyAdam	ApplyAdamL4/dense/biasL4/dense/bias/AdamL4/dense/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_2*
use_nesterov( *
_output_shapes	
:А*
use_locking( *
T0* 
_class
loc:@L4/dense/bias
÷
%Adam/update_LF/dense/kernel/ApplyAdam	ApplyAdamLF/dense/kernelLF/dense/kernel/AdamLF/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_1*
use_nesterov( *
_output_shapes
:	А
*
use_locking( *
T0*"
_class
loc:@LF/dense/kernel
≈
#Adam/update_LF/dense/bias/ApplyAdam	ApplyAdamLF/dense/biasLF/dense/bias/AdamLF/dense/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN*
use_locking( *
T0* 
_class
loc:@LF/dense/bias*
use_nesterov( *
_output_shapes
:

Щ
Adam/mulMulbeta1_power/read
Adam/beta12^Adam/update_L1/batch_normalization/beta/ApplyAdam3^Adam/update_L1/batch_normalization/gamma/ApplyAdam%^Adam/update_L1/conv2d/bias/ApplyAdam'^Adam/update_L1/conv2d/kernel/ApplyAdam4^Adam/update_L2-1/batch_normalization/beta/ApplyAdam5^Adam/update_L2-1/batch_normalization/gamma/ApplyAdam2^Adam/update_L2/batch_normalization/beta/ApplyAdam3^Adam/update_L2/batch_normalization/gamma/ApplyAdam%^Adam/update_L2/conv2d/bias/ApplyAdam'^Adam/update_L2/conv2d/kernel/ApplyAdam2^Adam/update_L3/batch_normalization/beta/ApplyAdam3^Adam/update_L3/batch_normalization/gamma/ApplyAdam$^Adam/update_L3/dense/bias/ApplyAdam&^Adam/update_L3/dense/kernel/ApplyAdam2^Adam/update_L4/batch_normalization/beta/ApplyAdam3^Adam/update_L4/batch_normalization/gamma/ApplyAdam$^Adam/update_L4/dense/bias/ApplyAdam&^Adam/update_L4/dense/kernel/ApplyAdam$^Adam/update_LF/dense/bias/ApplyAdam&^Adam/update_LF/dense/kernel/ApplyAdam*
T0*.
_class$
" loc:@L1/batch_normalization/beta*
_output_shapes
: 
¶
Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
T0*.
_class$
" loc:@L1/batch_normalization/beta*
validate_shape(*
_output_shapes
: 
Ы

Adam/mul_1Mulbeta2_power/read
Adam/beta22^Adam/update_L1/batch_normalization/beta/ApplyAdam3^Adam/update_L1/batch_normalization/gamma/ApplyAdam%^Adam/update_L1/conv2d/bias/ApplyAdam'^Adam/update_L1/conv2d/kernel/ApplyAdam4^Adam/update_L2-1/batch_normalization/beta/ApplyAdam5^Adam/update_L2-1/batch_normalization/gamma/ApplyAdam2^Adam/update_L2/batch_normalization/beta/ApplyAdam3^Adam/update_L2/batch_normalization/gamma/ApplyAdam%^Adam/update_L2/conv2d/bias/ApplyAdam'^Adam/update_L2/conv2d/kernel/ApplyAdam2^Adam/update_L3/batch_normalization/beta/ApplyAdam3^Adam/update_L3/batch_normalization/gamma/ApplyAdam$^Adam/update_L3/dense/bias/ApplyAdam&^Adam/update_L3/dense/kernel/ApplyAdam2^Adam/update_L4/batch_normalization/beta/ApplyAdam3^Adam/update_L4/batch_normalization/gamma/ApplyAdam$^Adam/update_L4/dense/bias/ApplyAdam&^Adam/update_L4/dense/kernel/ApplyAdam$^Adam/update_LF/dense/bias/ApplyAdam&^Adam/update_LF/dense/kernel/ApplyAdam*
_output_shapes
: *
T0*.
_class$
" loc:@L1/batch_normalization/beta
™
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
T0*.
_class$
" loc:@L1/batch_normalization/beta*
validate_shape(*
_output_shapes
: *
use_locking( 
≈
AdamNoOp^Adam/Assign^Adam/Assign_12^Adam/update_L1/batch_normalization/beta/ApplyAdam3^Adam/update_L1/batch_normalization/gamma/ApplyAdam%^Adam/update_L1/conv2d/bias/ApplyAdam'^Adam/update_L1/conv2d/kernel/ApplyAdam4^Adam/update_L2-1/batch_normalization/beta/ApplyAdam5^Adam/update_L2-1/batch_normalization/gamma/ApplyAdam2^Adam/update_L2/batch_normalization/beta/ApplyAdam3^Adam/update_L2/batch_normalization/gamma/ApplyAdam%^Adam/update_L2/conv2d/bias/ApplyAdam'^Adam/update_L2/conv2d/kernel/ApplyAdam2^Adam/update_L3/batch_normalization/beta/ApplyAdam3^Adam/update_L3/batch_normalization/gamma/ApplyAdam$^Adam/update_L3/dense/bias/ApplyAdam&^Adam/update_L3/dense/kernel/ApplyAdam2^Adam/update_L4/batch_normalization/beta/ApplyAdam3^Adam/update_L4/batch_normalization/gamma/ApplyAdam$^Adam/update_L4/dense/bias/ApplyAdam&^Adam/update_L4/dense/kernel/ApplyAdam$^Adam/update_LF/dense/bias/ApplyAdam&^Adam/update_LF/dense/kernel/ApplyAdam
щ
initNoOp(^L1/batch_normalization/beta/Adam/Assign*^L1/batch_normalization/beta/Adam_1/Assign#^L1/batch_normalization/beta/Assign)^L1/batch_normalization/gamma/Adam/Assign+^L1/batch_normalization/gamma/Adam_1/Assign$^L1/batch_normalization/gamma/Assign*^L1/batch_normalization/moving_mean/Assign.^L1/batch_normalization/moving_variance/Assign^L1/conv2d/bias/Adam/Assign^L1/conv2d/bias/Adam_1/Assign^L1/conv2d/bias/Assign^L1/conv2d/kernel/Adam/Assign^L1/conv2d/kernel/Adam_1/Assign^L1/conv2d/kernel/Assign*^L2-1/batch_normalization/beta/Adam/Assign,^L2-1/batch_normalization/beta/Adam_1/Assign%^L2-1/batch_normalization/beta/Assign+^L2-1/batch_normalization/gamma/Adam/Assign-^L2-1/batch_normalization/gamma/Adam_1/Assign&^L2-1/batch_normalization/gamma/Assign,^L2-1/batch_normalization/moving_mean/Assign0^L2-1/batch_normalization/moving_variance/Assign^L2-1/conv2d/bias/Assign^L2-1/conv2d/kernel/Assign(^L2/batch_normalization/beta/Adam/Assign*^L2/batch_normalization/beta/Adam_1/Assign#^L2/batch_normalization/beta/Assign)^L2/batch_normalization/gamma/Adam/Assign+^L2/batch_normalization/gamma/Adam_1/Assign$^L2/batch_normalization/gamma/Assign*^L2/batch_normalization/moving_mean/Assign.^L2/batch_normalization/moving_variance/Assign^L2/conv2d/bias/Adam/Assign^L2/conv2d/bias/Adam_1/Assign^L2/conv2d/bias/Assign^L2/conv2d/kernel/Adam/Assign^L2/conv2d/kernel/Adam_1/Assign^L2/conv2d/kernel/Assign(^L3/batch_normalization/beta/Adam/Assign*^L3/batch_normalization/beta/Adam_1/Assign#^L3/batch_normalization/beta/Assign)^L3/batch_normalization/gamma/Adam/Assign+^L3/batch_normalization/gamma/Adam_1/Assign$^L3/batch_normalization/gamma/Assign*^L3/batch_normalization/moving_mean/Assign.^L3/batch_normalization/moving_variance/Assign^L3/dense/bias/Adam/Assign^L3/dense/bias/Adam_1/Assign^L3/dense/bias/Assign^L3/dense/kernel/Adam/Assign^L3/dense/kernel/Adam_1/Assign^L3/dense/kernel/Assign(^L4/batch_normalization/beta/Adam/Assign*^L4/batch_normalization/beta/Adam_1/Assign#^L4/batch_normalization/beta/Assign)^L4/batch_normalization/gamma/Adam/Assign+^L4/batch_normalization/gamma/Adam_1/Assign$^L4/batch_normalization/gamma/Assign*^L4/batch_normalization/moving_mean/Assign.^L4/batch_normalization/moving_variance/Assign^L4/dense/bias/Adam/Assign^L4/dense/bias/Adam_1/Assign^L4/dense/bias/Assign^L4/dense/kernel/Adam/Assign^L4/dense/kernel/Adam_1/Assign^L4/dense/kernel/Assign^LF/dense/bias/Adam/Assign^LF/dense/bias/Adam_1/Assign^LF/dense/bias/Assign^LF/dense/kernel/Adam/Assign^LF/dense/kernel/Adam_1/Assign^LF/dense/kernel/Assign^beta1_power/Assign^beta2_power/Assign
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
€
save/SaveV2/tensor_namesConst*≤
value®B•JBL1/batch_normalization/betaB L1/batch_normalization/beta/AdamB"L1/batch_normalization/beta/Adam_1BL1/batch_normalization/gammaB!L1/batch_normalization/gamma/AdamB#L1/batch_normalization/gamma/Adam_1B"L1/batch_normalization/moving_meanB&L1/batch_normalization/moving_varianceBL1/conv2d/biasBL1/conv2d/bias/AdamBL1/conv2d/bias/Adam_1BL1/conv2d/kernelBL1/conv2d/kernel/AdamBL1/conv2d/kernel/Adam_1BL2-1/batch_normalization/betaB"L2-1/batch_normalization/beta/AdamB$L2-1/batch_normalization/beta/Adam_1BL2-1/batch_normalization/gammaB#L2-1/batch_normalization/gamma/AdamB%L2-1/batch_normalization/gamma/Adam_1B$L2-1/batch_normalization/moving_meanB(L2-1/batch_normalization/moving_varianceBL2-1/conv2d/biasBL2-1/conv2d/kernelBL2/batch_normalization/betaB L2/batch_normalization/beta/AdamB"L2/batch_normalization/beta/Adam_1BL2/batch_normalization/gammaB!L2/batch_normalization/gamma/AdamB#L2/batch_normalization/gamma/Adam_1B"L2/batch_normalization/moving_meanB&L2/batch_normalization/moving_varianceBL2/conv2d/biasBL2/conv2d/bias/AdamBL2/conv2d/bias/Adam_1BL2/conv2d/kernelBL2/conv2d/kernel/AdamBL2/conv2d/kernel/Adam_1BL3/batch_normalization/betaB L3/batch_normalization/beta/AdamB"L3/batch_normalization/beta/Adam_1BL3/batch_normalization/gammaB!L3/batch_normalization/gamma/AdamB#L3/batch_normalization/gamma/Adam_1B"L3/batch_normalization/moving_meanB&L3/batch_normalization/moving_varianceBL3/dense/biasBL3/dense/bias/AdamBL3/dense/bias/Adam_1BL3/dense/kernelBL3/dense/kernel/AdamBL3/dense/kernel/Adam_1BL4/batch_normalization/betaB L4/batch_normalization/beta/AdamB"L4/batch_normalization/beta/Adam_1BL4/batch_normalization/gammaB!L4/batch_normalization/gamma/AdamB#L4/batch_normalization/gamma/Adam_1B"L4/batch_normalization/moving_meanB&L4/batch_normalization/moving_varianceBL4/dense/biasBL4/dense/bias/AdamBL4/dense/bias/Adam_1BL4/dense/kernelBL4/dense/kernel/AdamBL4/dense/kernel/Adam_1BLF/dense/biasBLF/dense/bias/AdamBLF/dense/bias/Adam_1BLF/dense/kernelBLF/dense/kernel/AdamBLF/dense/kernel/Adam_1Bbeta1_powerBbeta2_power*
dtype0*
_output_shapes
:J
ъ
save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:J*©
valueЯBЬJB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
–
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesL1/batch_normalization/beta L1/batch_normalization/beta/Adam"L1/batch_normalization/beta/Adam_1L1/batch_normalization/gamma!L1/batch_normalization/gamma/Adam#L1/batch_normalization/gamma/Adam_1"L1/batch_normalization/moving_mean&L1/batch_normalization/moving_varianceL1/conv2d/biasL1/conv2d/bias/AdamL1/conv2d/bias/Adam_1L1/conv2d/kernelL1/conv2d/kernel/AdamL1/conv2d/kernel/Adam_1L2-1/batch_normalization/beta"L2-1/batch_normalization/beta/Adam$L2-1/batch_normalization/beta/Adam_1L2-1/batch_normalization/gamma#L2-1/batch_normalization/gamma/Adam%L2-1/batch_normalization/gamma/Adam_1$L2-1/batch_normalization/moving_mean(L2-1/batch_normalization/moving_varianceL2-1/conv2d/biasL2-1/conv2d/kernelL2/batch_normalization/beta L2/batch_normalization/beta/Adam"L2/batch_normalization/beta/Adam_1L2/batch_normalization/gamma!L2/batch_normalization/gamma/Adam#L2/batch_normalization/gamma/Adam_1"L2/batch_normalization/moving_mean&L2/batch_normalization/moving_varianceL2/conv2d/biasL2/conv2d/bias/AdamL2/conv2d/bias/Adam_1L2/conv2d/kernelL2/conv2d/kernel/AdamL2/conv2d/kernel/Adam_1L3/batch_normalization/beta L3/batch_normalization/beta/Adam"L3/batch_normalization/beta/Adam_1L3/batch_normalization/gamma!L3/batch_normalization/gamma/Adam#L3/batch_normalization/gamma/Adam_1"L3/batch_normalization/moving_mean&L3/batch_normalization/moving_varianceL3/dense/biasL3/dense/bias/AdamL3/dense/bias/Adam_1L3/dense/kernelL3/dense/kernel/AdamL3/dense/kernel/Adam_1L4/batch_normalization/beta L4/batch_normalization/beta/Adam"L4/batch_normalization/beta/Adam_1L4/batch_normalization/gamma!L4/batch_normalization/gamma/Adam#L4/batch_normalization/gamma/Adam_1"L4/batch_normalization/moving_mean&L4/batch_normalization/moving_varianceL4/dense/biasL4/dense/bias/AdamL4/dense/bias/Adam_1L4/dense/kernelL4/dense/kernel/AdamL4/dense/kernel/Adam_1LF/dense/biasLF/dense/bias/AdamLF/dense/bias/Adam_1LF/dense/kernelLF/dense/kernel/AdamLF/dense/kernel/Adam_1beta1_powerbeta2_power*X
dtypesN
L2J
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_output_shapes
: *
T0*
_class
loc:@save/Const
В
save/RestoreV2/tensor_namesConst*≤
value®B•JBL1/batch_normalization/betaB L1/batch_normalization/beta/AdamB"L1/batch_normalization/beta/Adam_1BL1/batch_normalization/gammaB!L1/batch_normalization/gamma/AdamB#L1/batch_normalization/gamma/Adam_1B"L1/batch_normalization/moving_meanB&L1/batch_normalization/moving_varianceBL1/conv2d/biasBL1/conv2d/bias/AdamBL1/conv2d/bias/Adam_1BL1/conv2d/kernelBL1/conv2d/kernel/AdamBL1/conv2d/kernel/Adam_1BL2-1/batch_normalization/betaB"L2-1/batch_normalization/beta/AdamB$L2-1/batch_normalization/beta/Adam_1BL2-1/batch_normalization/gammaB#L2-1/batch_normalization/gamma/AdamB%L2-1/batch_normalization/gamma/Adam_1B$L2-1/batch_normalization/moving_meanB(L2-1/batch_normalization/moving_varianceBL2-1/conv2d/biasBL2-1/conv2d/kernelBL2/batch_normalization/betaB L2/batch_normalization/beta/AdamB"L2/batch_normalization/beta/Adam_1BL2/batch_normalization/gammaB!L2/batch_normalization/gamma/AdamB#L2/batch_normalization/gamma/Adam_1B"L2/batch_normalization/moving_meanB&L2/batch_normalization/moving_varianceBL2/conv2d/biasBL2/conv2d/bias/AdamBL2/conv2d/bias/Adam_1BL2/conv2d/kernelBL2/conv2d/kernel/AdamBL2/conv2d/kernel/Adam_1BL3/batch_normalization/betaB L3/batch_normalization/beta/AdamB"L3/batch_normalization/beta/Adam_1BL3/batch_normalization/gammaB!L3/batch_normalization/gamma/AdamB#L3/batch_normalization/gamma/Adam_1B"L3/batch_normalization/moving_meanB&L3/batch_normalization/moving_varianceBL3/dense/biasBL3/dense/bias/AdamBL3/dense/bias/Adam_1BL3/dense/kernelBL3/dense/kernel/AdamBL3/dense/kernel/Adam_1BL4/batch_normalization/betaB L4/batch_normalization/beta/AdamB"L4/batch_normalization/beta/Adam_1BL4/batch_normalization/gammaB!L4/batch_normalization/gamma/AdamB#L4/batch_normalization/gamma/Adam_1B"L4/batch_normalization/moving_meanB&L4/batch_normalization/moving_varianceBL4/dense/biasBL4/dense/bias/AdamBL4/dense/bias/Adam_1BL4/dense/kernelBL4/dense/kernel/AdamBL4/dense/kernel/Adam_1BLF/dense/biasBLF/dense/bias/AdamBLF/dense/bias/Adam_1BLF/dense/kernelBLF/dense/kernel/AdamBLF/dense/kernel/Adam_1Bbeta1_powerBbeta2_power*
dtype0*
_output_shapes
:J
э
save/RestoreV2/shape_and_slicesConst*©
valueЯBЬJB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:J
А
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*X
dtypesN
L2J*Њ
_output_shapesЂ
®::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
ј
save/AssignAssignL1/batch_normalization/betasave/RestoreV2*
use_locking(*
T0*.
_class$
" loc:@L1/batch_normalization/beta*
validate_shape(*
_output_shapes
:
…
save/Assign_1Assign L1/batch_normalization/beta/Adamsave/RestoreV2:1*
T0*.
_class$
" loc:@L1/batch_normalization/beta*
validate_shape(*
_output_shapes
:*
use_locking(
Ћ
save/Assign_2Assign"L1/batch_normalization/beta/Adam_1save/RestoreV2:2*
T0*.
_class$
" loc:@L1/batch_normalization/beta*
validate_shape(*
_output_shapes
:*
use_locking(
∆
save/Assign_3AssignL1/batch_normalization/gammasave/RestoreV2:3*
use_locking(*
T0*/
_class%
#!loc:@L1/batch_normalization/gamma*
validate_shape(*
_output_shapes
:
Ћ
save/Assign_4Assign!L1/batch_normalization/gamma/Adamsave/RestoreV2:4*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*/
_class%
#!loc:@L1/batch_normalization/gamma
Ќ
save/Assign_5Assign#L1/batch_normalization/gamma/Adam_1save/RestoreV2:5*
use_locking(*
T0*/
_class%
#!loc:@L1/batch_normalization/gamma*
validate_shape(*
_output_shapes
:
“
save/Assign_6Assign"L1/batch_normalization/moving_meansave/RestoreV2:6*
T0*5
_class+
)'loc:@L1/batch_normalization/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking(
Џ
save/Assign_7Assign&L1/batch_normalization/moving_variancesave/RestoreV2:7*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*9
_class/
-+loc:@L1/batch_normalization/moving_variance
™
save/Assign_8AssignL1/conv2d/biassave/RestoreV2:8*
_output_shapes
:@*
use_locking(*
T0*!
_class
loc:@L1/conv2d/bias*
validate_shape(
ѓ
save/Assign_9AssignL1/conv2d/bias/Adamsave/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@L1/conv2d/bias*
validate_shape(*
_output_shapes
:@
≥
save/Assign_10AssignL1/conv2d/bias/Adam_1save/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@L1/conv2d/bias*
validate_shape(*
_output_shapes
:@
Љ
save/Assign_11AssignL1/conv2d/kernelsave/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@L1/conv2d/kernel*
validate_shape(*&
_output_shapes
:@
Ѕ
save/Assign_12AssignL1/conv2d/kernel/Adamsave/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@L1/conv2d/kernel*
validate_shape(*&
_output_shapes
:@
√
save/Assign_13AssignL1/conv2d/kernel/Adam_1save/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@L1/conv2d/kernel*
validate_shape(*&
_output_shapes
:@
Ћ
save/Assign_14AssignL2-1/batch_normalization/betasave/RestoreV2:14*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*0
_class&
$"loc:@L2-1/batch_normalization/beta
–
save/Assign_15Assign"L2-1/batch_normalization/beta/Adamsave/RestoreV2:15*
use_locking(*
T0*0
_class&
$"loc:@L2-1/batch_normalization/beta*
validate_shape(*
_output_shapes	
:А
“
save/Assign_16Assign$L2-1/batch_normalization/beta/Adam_1save/RestoreV2:16*
_output_shapes	
:А*
use_locking(*
T0*0
_class&
$"loc:@L2-1/batch_normalization/beta*
validate_shape(
Ќ
save/Assign_17AssignL2-1/batch_normalization/gammasave/RestoreV2:17*
use_locking(*
T0*1
_class'
%#loc:@L2-1/batch_normalization/gamma*
validate_shape(*
_output_shapes	
:А
“
save/Assign_18Assign#L2-1/batch_normalization/gamma/Adamsave/RestoreV2:18*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*1
_class'
%#loc:@L2-1/batch_normalization/gamma
‘
save/Assign_19Assign%L2-1/batch_normalization/gamma/Adam_1save/RestoreV2:19*
use_locking(*
T0*1
_class'
%#loc:@L2-1/batch_normalization/gamma*
validate_shape(*
_output_shapes	
:А
ў
save/Assign_20Assign$L2-1/batch_normalization/moving_meansave/RestoreV2:20*
T0*7
_class-
+)loc:@L2-1/batch_normalization/moving_mean*
validate_shape(*
_output_shapes	
:А*
use_locking(
б
save/Assign_21Assign(L2-1/batch_normalization/moving_variancesave/RestoreV2:21*
use_locking(*
T0*;
_class1
/-loc:@L2-1/batch_normalization/moving_variance*
validate_shape(*
_output_shapes	
:А
±
save/Assign_22AssignL2-1/conv2d/biassave/RestoreV2:22*
use_locking(*
T0*#
_class
loc:@L2-1/conv2d/bias*
validate_shape(*
_output_shapes	
:А
¬
save/Assign_23AssignL2-1/conv2d/kernelsave/RestoreV2:23*%
_class
loc:@L2-1/conv2d/kernel*
validate_shape(*(
_output_shapes
:АА*
use_locking(*
T0
∆
save/Assign_24AssignL2/batch_normalization/betasave/RestoreV2:24*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*.
_class$
" loc:@L2/batch_normalization/beta
Ћ
save/Assign_25Assign L2/batch_normalization/beta/Adamsave/RestoreV2:25*
use_locking(*
T0*.
_class$
" loc:@L2/batch_normalization/beta*
validate_shape(*
_output_shapes
:@
Ќ
save/Assign_26Assign"L2/batch_normalization/beta/Adam_1save/RestoreV2:26*
use_locking(*
T0*.
_class$
" loc:@L2/batch_normalization/beta*
validate_shape(*
_output_shapes
:@
»
save/Assign_27AssignL2/batch_normalization/gammasave/RestoreV2:27*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*/
_class%
#!loc:@L2/batch_normalization/gamma
Ќ
save/Assign_28Assign!L2/batch_normalization/gamma/Adamsave/RestoreV2:28*
use_locking(*
T0*/
_class%
#!loc:@L2/batch_normalization/gamma*
validate_shape(*
_output_shapes
:@
ѕ
save/Assign_29Assign#L2/batch_normalization/gamma/Adam_1save/RestoreV2:29*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*/
_class%
#!loc:@L2/batch_normalization/gamma
‘
save/Assign_30Assign"L2/batch_normalization/moving_meansave/RestoreV2:30*5
_class+
)'loc:@L2/batch_normalization/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
№
save/Assign_31Assign&L2/batch_normalization/moving_variancesave/RestoreV2:31*
use_locking(*
T0*9
_class/
-+loc:@L2/batch_normalization/moving_variance*
validate_shape(*
_output_shapes
:@
≠
save/Assign_32AssignL2/conv2d/biassave/RestoreV2:32*
_output_shapes	
:А*
use_locking(*
T0*!
_class
loc:@L2/conv2d/bias*
validate_shape(
≤
save/Assign_33AssignL2/conv2d/bias/Adamsave/RestoreV2:33*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*!
_class
loc:@L2/conv2d/bias
і
save/Assign_34AssignL2/conv2d/bias/Adam_1save/RestoreV2:34*
use_locking(*
T0*!
_class
loc:@L2/conv2d/bias*
validate_shape(*
_output_shapes	
:А
љ
save/Assign_35AssignL2/conv2d/kernelsave/RestoreV2:35*
validate_shape(*'
_output_shapes
:@А*
use_locking(*
T0*#
_class
loc:@L2/conv2d/kernel
¬
save/Assign_36AssignL2/conv2d/kernel/Adamsave/RestoreV2:36*#
_class
loc:@L2/conv2d/kernel*
validate_shape(*'
_output_shapes
:@А*
use_locking(*
T0
ƒ
save/Assign_37AssignL2/conv2d/kernel/Adam_1save/RestoreV2:37*
use_locking(*
T0*#
_class
loc:@L2/conv2d/kernel*
validate_shape(*'
_output_shapes
:@А
«
save/Assign_38AssignL3/batch_normalization/betasave/RestoreV2:38*
_output_shapes	
:А*
use_locking(*
T0*.
_class$
" loc:@L3/batch_normalization/beta*
validate_shape(
ћ
save/Assign_39Assign L3/batch_normalization/beta/Adamsave/RestoreV2:39*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*.
_class$
" loc:@L3/batch_normalization/beta
ќ
save/Assign_40Assign"L3/batch_normalization/beta/Adam_1save/RestoreV2:40*
use_locking(*
T0*.
_class$
" loc:@L3/batch_normalization/beta*
validate_shape(*
_output_shapes	
:А
…
save/Assign_41AssignL3/batch_normalization/gammasave/RestoreV2:41*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*/
_class%
#!loc:@L3/batch_normalization/gamma
ќ
save/Assign_42Assign!L3/batch_normalization/gamma/Adamsave/RestoreV2:42*
use_locking(*
T0*/
_class%
#!loc:@L3/batch_normalization/gamma*
validate_shape(*
_output_shapes	
:А
–
save/Assign_43Assign#L3/batch_normalization/gamma/Adam_1save/RestoreV2:43*
T0*/
_class%
#!loc:@L3/batch_normalization/gamma*
validate_shape(*
_output_shapes	
:А*
use_locking(
’
save/Assign_44Assign"L3/batch_normalization/moving_meansave/RestoreV2:44*
use_locking(*
T0*5
_class+
)'loc:@L3/batch_normalization/moving_mean*
validate_shape(*
_output_shapes	
:А
Ё
save/Assign_45Assign&L3/batch_normalization/moving_variancesave/RestoreV2:45*
use_locking(*
T0*9
_class/
-+loc:@L3/batch_normalization/moving_variance*
validate_shape(*
_output_shapes	
:А
Ђ
save/Assign_46AssignL3/dense/biassave/RestoreV2:46*
_output_shapes	
:А*
use_locking(*
T0* 
_class
loc:@L3/dense/bias*
validate_shape(
∞
save/Assign_47AssignL3/dense/bias/Adamsave/RestoreV2:47*
use_locking(*
T0* 
_class
loc:@L3/dense/bias*
validate_shape(*
_output_shapes	
:А
≤
save/Assign_48AssignL3/dense/bias/Adam_1save/RestoreV2:48*
T0* 
_class
loc:@L3/dense/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
і
save/Assign_49AssignL3/dense/kernelsave/RestoreV2:49* 
_output_shapes
:
А1А*
use_locking(*
T0*"
_class
loc:@L3/dense/kernel*
validate_shape(
є
save/Assign_50AssignL3/dense/kernel/Adamsave/RestoreV2:50*
use_locking(*
T0*"
_class
loc:@L3/dense/kernel*
validate_shape(* 
_output_shapes
:
А1А
ї
save/Assign_51AssignL3/dense/kernel/Adam_1save/RestoreV2:51*
validate_shape(* 
_output_shapes
:
А1А*
use_locking(*
T0*"
_class
loc:@L3/dense/kernel
«
save/Assign_52AssignL4/batch_normalization/betasave/RestoreV2:52*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*.
_class$
" loc:@L4/batch_normalization/beta
ћ
save/Assign_53Assign L4/batch_normalization/beta/Adamsave/RestoreV2:53*
_output_shapes	
:А*
use_locking(*
T0*.
_class$
" loc:@L4/batch_normalization/beta*
validate_shape(
ќ
save/Assign_54Assign"L4/batch_normalization/beta/Adam_1save/RestoreV2:54*
use_locking(*
T0*.
_class$
" loc:@L4/batch_normalization/beta*
validate_shape(*
_output_shapes	
:А
…
save/Assign_55AssignL4/batch_normalization/gammasave/RestoreV2:55*
use_locking(*
T0*/
_class%
#!loc:@L4/batch_normalization/gamma*
validate_shape(*
_output_shapes	
:А
ќ
save/Assign_56Assign!L4/batch_normalization/gamma/Adamsave/RestoreV2:56*
_output_shapes	
:А*
use_locking(*
T0*/
_class%
#!loc:@L4/batch_normalization/gamma*
validate_shape(
–
save/Assign_57Assign#L4/batch_normalization/gamma/Adam_1save/RestoreV2:57*/
_class%
#!loc:@L4/batch_normalization/gamma*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0
’
save/Assign_58Assign"L4/batch_normalization/moving_meansave/RestoreV2:58*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*5
_class+
)'loc:@L4/batch_normalization/moving_mean
Ё
save/Assign_59Assign&L4/batch_normalization/moving_variancesave/RestoreV2:59*
use_locking(*
T0*9
_class/
-+loc:@L4/batch_normalization/moving_variance*
validate_shape(*
_output_shapes	
:А
Ђ
save/Assign_60AssignL4/dense/biassave/RestoreV2:60*
use_locking(*
T0* 
_class
loc:@L4/dense/bias*
validate_shape(*
_output_shapes	
:А
∞
save/Assign_61AssignL4/dense/bias/Adamsave/RestoreV2:61*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0* 
_class
loc:@L4/dense/bias
≤
save/Assign_62AssignL4/dense/bias/Adam_1save/RestoreV2:62*
use_locking(*
T0* 
_class
loc:@L4/dense/bias*
validate_shape(*
_output_shapes	
:А
і
save/Assign_63AssignL4/dense/kernelsave/RestoreV2:63*
use_locking(*
T0*"
_class
loc:@L4/dense/kernel*
validate_shape(* 
_output_shapes
:
АА
є
save/Assign_64AssignL4/dense/kernel/Adamsave/RestoreV2:64*
validate_shape(* 
_output_shapes
:
АА*
use_locking(*
T0*"
_class
loc:@L4/dense/kernel
ї
save/Assign_65AssignL4/dense/kernel/Adam_1save/RestoreV2:65* 
_output_shapes
:
АА*
use_locking(*
T0*"
_class
loc:@L4/dense/kernel*
validate_shape(
™
save/Assign_66AssignLF/dense/biassave/RestoreV2:66*
_output_shapes
:
*
use_locking(*
T0* 
_class
loc:@LF/dense/bias*
validate_shape(
ѓ
save/Assign_67AssignLF/dense/bias/Adamsave/RestoreV2:67*
use_locking(*
T0* 
_class
loc:@LF/dense/bias*
validate_shape(*
_output_shapes
:

±
save/Assign_68AssignLF/dense/bias/Adam_1save/RestoreV2:68*
validate_shape(*
_output_shapes
:
*
use_locking(*
T0* 
_class
loc:@LF/dense/bias
≥
save/Assign_69AssignLF/dense/kernelsave/RestoreV2:69*
use_locking(*
T0*"
_class
loc:@LF/dense/kernel*
validate_shape(*
_output_shapes
:	А

Є
save/Assign_70AssignLF/dense/kernel/Adamsave/RestoreV2:70*
use_locking(*
T0*"
_class
loc:@LF/dense/kernel*
validate_shape(*
_output_shapes
:	А

Ї
save/Assign_71AssignLF/dense/kernel/Adam_1save/RestoreV2:71*
use_locking(*
T0*"
_class
loc:@LF/dense/kernel*
validate_shape(*
_output_shapes
:	А

≤
save/Assign_72Assignbeta1_powersave/RestoreV2:72*.
_class$
" loc:@L1/batch_normalization/beta*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
≤
save/Assign_73Assignbeta2_powersave/RestoreV2:73*
use_locking(*
T0*.
_class$
" loc:@L1/batch_normalization/beta*
validate_shape(*
_output_shapes
: 
ц	
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_6^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_7^save/Assign_70^save/Assign_71^save/Assign_72^save/Assign_73^save/Assign_8^save/Assign_9
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Ж
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_eadffaeaa89345d2a37863d89f5a6441/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
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
Б
save_1/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:J*≤
value®B•JBL1/batch_normalization/betaB L1/batch_normalization/beta/AdamB"L1/batch_normalization/beta/Adam_1BL1/batch_normalization/gammaB!L1/batch_normalization/gamma/AdamB#L1/batch_normalization/gamma/Adam_1B"L1/batch_normalization/moving_meanB&L1/batch_normalization/moving_varianceBL1/conv2d/biasBL1/conv2d/bias/AdamBL1/conv2d/bias/Adam_1BL1/conv2d/kernelBL1/conv2d/kernel/AdamBL1/conv2d/kernel/Adam_1BL2-1/batch_normalization/betaB"L2-1/batch_normalization/beta/AdamB$L2-1/batch_normalization/beta/Adam_1BL2-1/batch_normalization/gammaB#L2-1/batch_normalization/gamma/AdamB%L2-1/batch_normalization/gamma/Adam_1B$L2-1/batch_normalization/moving_meanB(L2-1/batch_normalization/moving_varianceBL2-1/conv2d/biasBL2-1/conv2d/kernelBL2/batch_normalization/betaB L2/batch_normalization/beta/AdamB"L2/batch_normalization/beta/Adam_1BL2/batch_normalization/gammaB!L2/batch_normalization/gamma/AdamB#L2/batch_normalization/gamma/Adam_1B"L2/batch_normalization/moving_meanB&L2/batch_normalization/moving_varianceBL2/conv2d/biasBL2/conv2d/bias/AdamBL2/conv2d/bias/Adam_1BL2/conv2d/kernelBL2/conv2d/kernel/AdamBL2/conv2d/kernel/Adam_1BL3/batch_normalization/betaB L3/batch_normalization/beta/AdamB"L3/batch_normalization/beta/Adam_1BL3/batch_normalization/gammaB!L3/batch_normalization/gamma/AdamB#L3/batch_normalization/gamma/Adam_1B"L3/batch_normalization/moving_meanB&L3/batch_normalization/moving_varianceBL3/dense/biasBL3/dense/bias/AdamBL3/dense/bias/Adam_1BL3/dense/kernelBL3/dense/kernel/AdamBL3/dense/kernel/Adam_1BL4/batch_normalization/betaB L4/batch_normalization/beta/AdamB"L4/batch_normalization/beta/Adam_1BL4/batch_normalization/gammaB!L4/batch_normalization/gamma/AdamB#L4/batch_normalization/gamma/Adam_1B"L4/batch_normalization/moving_meanB&L4/batch_normalization/moving_varianceBL4/dense/biasBL4/dense/bias/AdamBL4/dense/bias/Adam_1BL4/dense/kernelBL4/dense/kernel/AdamBL4/dense/kernel/Adam_1BLF/dense/biasBLF/dense/bias/AdamBLF/dense/bias/Adam_1BLF/dense/kernelBLF/dense/kernel/AdamBLF/dense/kernel/Adam_1Bbeta1_powerBbeta2_power
ь
save_1/SaveV2/shape_and_slicesConst*
_output_shapes
:J*©
valueЯBЬJB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
в
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesL1/batch_normalization/beta L1/batch_normalization/beta/Adam"L1/batch_normalization/beta/Adam_1L1/batch_normalization/gamma!L1/batch_normalization/gamma/Adam#L1/batch_normalization/gamma/Adam_1"L1/batch_normalization/moving_mean&L1/batch_normalization/moving_varianceL1/conv2d/biasL1/conv2d/bias/AdamL1/conv2d/bias/Adam_1L1/conv2d/kernelL1/conv2d/kernel/AdamL1/conv2d/kernel/Adam_1L2-1/batch_normalization/beta"L2-1/batch_normalization/beta/Adam$L2-1/batch_normalization/beta/Adam_1L2-1/batch_normalization/gamma#L2-1/batch_normalization/gamma/Adam%L2-1/batch_normalization/gamma/Adam_1$L2-1/batch_normalization/moving_mean(L2-1/batch_normalization/moving_varianceL2-1/conv2d/biasL2-1/conv2d/kernelL2/batch_normalization/beta L2/batch_normalization/beta/Adam"L2/batch_normalization/beta/Adam_1L2/batch_normalization/gamma!L2/batch_normalization/gamma/Adam#L2/batch_normalization/gamma/Adam_1"L2/batch_normalization/moving_mean&L2/batch_normalization/moving_varianceL2/conv2d/biasL2/conv2d/bias/AdamL2/conv2d/bias/Adam_1L2/conv2d/kernelL2/conv2d/kernel/AdamL2/conv2d/kernel/Adam_1L3/batch_normalization/beta L3/batch_normalization/beta/Adam"L3/batch_normalization/beta/Adam_1L3/batch_normalization/gamma!L3/batch_normalization/gamma/Adam#L3/batch_normalization/gamma/Adam_1"L3/batch_normalization/moving_mean&L3/batch_normalization/moving_varianceL3/dense/biasL3/dense/bias/AdamL3/dense/bias/Adam_1L3/dense/kernelL3/dense/kernel/AdamL3/dense/kernel/Adam_1L4/batch_normalization/beta L4/batch_normalization/beta/Adam"L4/batch_normalization/beta/Adam_1L4/batch_normalization/gamma!L4/batch_normalization/gamma/Adam#L4/batch_normalization/gamma/Adam_1"L4/batch_normalization/moving_mean&L4/batch_normalization/moving_varianceL4/dense/biasL4/dense/bias/AdamL4/dense/bias/Adam_1L4/dense/kernelL4/dense/kernel/AdamL4/dense/kernel/Adam_1LF/dense/biasLF/dense/bias/AdamLF/dense/bias/Adam_1LF/dense/kernelLF/dense/kernel/AdamLF/dense/kernel/Adam_1beta1_powerbeta2_power*X
dtypesN
L2J
Щ
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
_output_shapes
: *
T0*)
_class
loc:@save_1/ShardedFilename
£
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
Д
save_1/RestoreV2/tensor_namesConst*≤
value®B•JBL1/batch_normalization/betaB L1/batch_normalization/beta/AdamB"L1/batch_normalization/beta/Adam_1BL1/batch_normalization/gammaB!L1/batch_normalization/gamma/AdamB#L1/batch_normalization/gamma/Adam_1B"L1/batch_normalization/moving_meanB&L1/batch_normalization/moving_varianceBL1/conv2d/biasBL1/conv2d/bias/AdamBL1/conv2d/bias/Adam_1BL1/conv2d/kernelBL1/conv2d/kernel/AdamBL1/conv2d/kernel/Adam_1BL2-1/batch_normalization/betaB"L2-1/batch_normalization/beta/AdamB$L2-1/batch_normalization/beta/Adam_1BL2-1/batch_normalization/gammaB#L2-1/batch_normalization/gamma/AdamB%L2-1/batch_normalization/gamma/Adam_1B$L2-1/batch_normalization/moving_meanB(L2-1/batch_normalization/moving_varianceBL2-1/conv2d/biasBL2-1/conv2d/kernelBL2/batch_normalization/betaB L2/batch_normalization/beta/AdamB"L2/batch_normalization/beta/Adam_1BL2/batch_normalization/gammaB!L2/batch_normalization/gamma/AdamB#L2/batch_normalization/gamma/Adam_1B"L2/batch_normalization/moving_meanB&L2/batch_normalization/moving_varianceBL2/conv2d/biasBL2/conv2d/bias/AdamBL2/conv2d/bias/Adam_1BL2/conv2d/kernelBL2/conv2d/kernel/AdamBL2/conv2d/kernel/Adam_1BL3/batch_normalization/betaB L3/batch_normalization/beta/AdamB"L3/batch_normalization/beta/Adam_1BL3/batch_normalization/gammaB!L3/batch_normalization/gamma/AdamB#L3/batch_normalization/gamma/Adam_1B"L3/batch_normalization/moving_meanB&L3/batch_normalization/moving_varianceBL3/dense/biasBL3/dense/bias/AdamBL3/dense/bias/Adam_1BL3/dense/kernelBL3/dense/kernel/AdamBL3/dense/kernel/Adam_1BL4/batch_normalization/betaB L4/batch_normalization/beta/AdamB"L4/batch_normalization/beta/Adam_1BL4/batch_normalization/gammaB!L4/batch_normalization/gamma/AdamB#L4/batch_normalization/gamma/Adam_1B"L4/batch_normalization/moving_meanB&L4/batch_normalization/moving_varianceBL4/dense/biasBL4/dense/bias/AdamBL4/dense/bias/Adam_1BL4/dense/kernelBL4/dense/kernel/AdamBL4/dense/kernel/Adam_1BLF/dense/biasBLF/dense/bias/AdamBLF/dense/bias/Adam_1BLF/dense/kernelBLF/dense/kernel/AdamBLF/dense/kernel/Adam_1Bbeta1_powerBbeta2_power*
dtype0*
_output_shapes
:J
€
!save_1/RestoreV2/shape_and_slicesConst*©
valueЯBЬJB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:J
И
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*X
dtypesN
L2J*Њ
_output_shapesЂ
®::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
ƒ
save_1/AssignAssignL1/batch_normalization/betasave_1/RestoreV2*.
_class$
" loc:@L1/batch_normalization/beta*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Ќ
save_1/Assign_1Assign L1/batch_normalization/beta/Adamsave_1/RestoreV2:1*
use_locking(*
T0*.
_class$
" loc:@L1/batch_normalization/beta*
validate_shape(*
_output_shapes
:
ѕ
save_1/Assign_2Assign"L1/batch_normalization/beta/Adam_1save_1/RestoreV2:2*
T0*.
_class$
" loc:@L1/batch_normalization/beta*
validate_shape(*
_output_shapes
:*
use_locking(
 
save_1/Assign_3AssignL1/batch_normalization/gammasave_1/RestoreV2:3*/
_class%
#!loc:@L1/batch_normalization/gamma*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
ѕ
save_1/Assign_4Assign!L1/batch_normalization/gamma/Adamsave_1/RestoreV2:4*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*/
_class%
#!loc:@L1/batch_normalization/gamma
—
save_1/Assign_5Assign#L1/batch_normalization/gamma/Adam_1save_1/RestoreV2:5*
_output_shapes
:*
use_locking(*
T0*/
_class%
#!loc:@L1/batch_normalization/gamma*
validate_shape(
÷
save_1/Assign_6Assign"L1/batch_normalization/moving_meansave_1/RestoreV2:6*
_output_shapes
:*
use_locking(*
T0*5
_class+
)'loc:@L1/batch_normalization/moving_mean*
validate_shape(
ё
save_1/Assign_7Assign&L1/batch_normalization/moving_variancesave_1/RestoreV2:7*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*9
_class/
-+loc:@L1/batch_normalization/moving_variance
Ѓ
save_1/Assign_8AssignL1/conv2d/biassave_1/RestoreV2:8*
use_locking(*
T0*!
_class
loc:@L1/conv2d/bias*
validate_shape(*
_output_shapes
:@
≥
save_1/Assign_9AssignL1/conv2d/bias/Adamsave_1/RestoreV2:9*!
_class
loc:@L1/conv2d/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
Ј
save_1/Assign_10AssignL1/conv2d/bias/Adam_1save_1/RestoreV2:10*!
_class
loc:@L1/conv2d/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
ј
save_1/Assign_11AssignL1/conv2d/kernelsave_1/RestoreV2:11*&
_output_shapes
:@*
use_locking(*
T0*#
_class
loc:@L1/conv2d/kernel*
validate_shape(
≈
save_1/Assign_12AssignL1/conv2d/kernel/Adamsave_1/RestoreV2:12*#
_class
loc:@L1/conv2d/kernel*
validate_shape(*&
_output_shapes
:@*
use_locking(*
T0
«
save_1/Assign_13AssignL1/conv2d/kernel/Adam_1save_1/RestoreV2:13*
use_locking(*
T0*#
_class
loc:@L1/conv2d/kernel*
validate_shape(*&
_output_shapes
:@
ѕ
save_1/Assign_14AssignL2-1/batch_normalization/betasave_1/RestoreV2:14*
_output_shapes	
:А*
use_locking(*
T0*0
_class&
$"loc:@L2-1/batch_normalization/beta*
validate_shape(
‘
save_1/Assign_15Assign"L2-1/batch_normalization/beta/Adamsave_1/RestoreV2:15*
use_locking(*
T0*0
_class&
$"loc:@L2-1/batch_normalization/beta*
validate_shape(*
_output_shapes	
:А
÷
save_1/Assign_16Assign$L2-1/batch_normalization/beta/Adam_1save_1/RestoreV2:16*
use_locking(*
T0*0
_class&
$"loc:@L2-1/batch_normalization/beta*
validate_shape(*
_output_shapes	
:А
—
save_1/Assign_17AssignL2-1/batch_normalization/gammasave_1/RestoreV2:17*
use_locking(*
T0*1
_class'
%#loc:@L2-1/batch_normalization/gamma*
validate_shape(*
_output_shapes	
:А
÷
save_1/Assign_18Assign#L2-1/batch_normalization/gamma/Adamsave_1/RestoreV2:18*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*1
_class'
%#loc:@L2-1/batch_normalization/gamma
Ў
save_1/Assign_19Assign%L2-1/batch_normalization/gamma/Adam_1save_1/RestoreV2:19*
use_locking(*
T0*1
_class'
%#loc:@L2-1/batch_normalization/gamma*
validate_shape(*
_output_shapes	
:А
Ё
save_1/Assign_20Assign$L2-1/batch_normalization/moving_meansave_1/RestoreV2:20*
_output_shapes	
:А*
use_locking(*
T0*7
_class-
+)loc:@L2-1/batch_normalization/moving_mean*
validate_shape(
е
save_1/Assign_21Assign(L2-1/batch_normalization/moving_variancesave_1/RestoreV2:21*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*;
_class1
/-loc:@L2-1/batch_normalization/moving_variance
µ
save_1/Assign_22AssignL2-1/conv2d/biassave_1/RestoreV2:22*
use_locking(*
T0*#
_class
loc:@L2-1/conv2d/bias*
validate_shape(*
_output_shapes	
:А
∆
save_1/Assign_23AssignL2-1/conv2d/kernelsave_1/RestoreV2:23*(
_output_shapes
:АА*
use_locking(*
T0*%
_class
loc:@L2-1/conv2d/kernel*
validate_shape(
 
save_1/Assign_24AssignL2/batch_normalization/betasave_1/RestoreV2:24*
use_locking(*
T0*.
_class$
" loc:@L2/batch_normalization/beta*
validate_shape(*
_output_shapes
:@
ѕ
save_1/Assign_25Assign L2/batch_normalization/beta/Adamsave_1/RestoreV2:25*
T0*.
_class$
" loc:@L2/batch_normalization/beta*
validate_shape(*
_output_shapes
:@*
use_locking(
—
save_1/Assign_26Assign"L2/batch_normalization/beta/Adam_1save_1/RestoreV2:26*
_output_shapes
:@*
use_locking(*
T0*.
_class$
" loc:@L2/batch_normalization/beta*
validate_shape(
ћ
save_1/Assign_27AssignL2/batch_normalization/gammasave_1/RestoreV2:27*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*/
_class%
#!loc:@L2/batch_normalization/gamma
—
save_1/Assign_28Assign!L2/batch_normalization/gamma/Adamsave_1/RestoreV2:28*
use_locking(*
T0*/
_class%
#!loc:@L2/batch_normalization/gamma*
validate_shape(*
_output_shapes
:@
”
save_1/Assign_29Assign#L2/batch_normalization/gamma/Adam_1save_1/RestoreV2:29*
use_locking(*
T0*/
_class%
#!loc:@L2/batch_normalization/gamma*
validate_shape(*
_output_shapes
:@
Ў
save_1/Assign_30Assign"L2/batch_normalization/moving_meansave_1/RestoreV2:30*
T0*5
_class+
)'loc:@L2/batch_normalization/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(
а
save_1/Assign_31Assign&L2/batch_normalization/moving_variancesave_1/RestoreV2:31*
T0*9
_class/
-+loc:@L2/batch_normalization/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(
±
save_1/Assign_32AssignL2/conv2d/biassave_1/RestoreV2:32*
use_locking(*
T0*!
_class
loc:@L2/conv2d/bias*
validate_shape(*
_output_shapes	
:А
ґ
save_1/Assign_33AssignL2/conv2d/bias/Adamsave_1/RestoreV2:33*!
_class
loc:@L2/conv2d/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0
Є
save_1/Assign_34AssignL2/conv2d/bias/Adam_1save_1/RestoreV2:34*!
_class
loc:@L2/conv2d/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0
Ѕ
save_1/Assign_35AssignL2/conv2d/kernelsave_1/RestoreV2:35*
use_locking(*
T0*#
_class
loc:@L2/conv2d/kernel*
validate_shape(*'
_output_shapes
:@А
∆
save_1/Assign_36AssignL2/conv2d/kernel/Adamsave_1/RestoreV2:36*
T0*#
_class
loc:@L2/conv2d/kernel*
validate_shape(*'
_output_shapes
:@А*
use_locking(
»
save_1/Assign_37AssignL2/conv2d/kernel/Adam_1save_1/RestoreV2:37*
T0*#
_class
loc:@L2/conv2d/kernel*
validate_shape(*'
_output_shapes
:@А*
use_locking(
Ћ
save_1/Assign_38AssignL3/batch_normalization/betasave_1/RestoreV2:38*.
_class$
" loc:@L3/batch_normalization/beta*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0
–
save_1/Assign_39Assign L3/batch_normalization/beta/Adamsave_1/RestoreV2:39*.
_class$
" loc:@L3/batch_normalization/beta*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0
“
save_1/Assign_40Assign"L3/batch_normalization/beta/Adam_1save_1/RestoreV2:40*
use_locking(*
T0*.
_class$
" loc:@L3/batch_normalization/beta*
validate_shape(*
_output_shapes	
:А
Ќ
save_1/Assign_41AssignL3/batch_normalization/gammasave_1/RestoreV2:41*
use_locking(*
T0*/
_class%
#!loc:@L3/batch_normalization/gamma*
validate_shape(*
_output_shapes	
:А
“
save_1/Assign_42Assign!L3/batch_normalization/gamma/Adamsave_1/RestoreV2:42*
T0*/
_class%
#!loc:@L3/batch_normalization/gamma*
validate_shape(*
_output_shapes	
:А*
use_locking(
‘
save_1/Assign_43Assign#L3/batch_normalization/gamma/Adam_1save_1/RestoreV2:43*
use_locking(*
T0*/
_class%
#!loc:@L3/batch_normalization/gamma*
validate_shape(*
_output_shapes	
:А
ў
save_1/Assign_44Assign"L3/batch_normalization/moving_meansave_1/RestoreV2:44*5
_class+
)'loc:@L3/batch_normalization/moving_mean*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0
б
save_1/Assign_45Assign&L3/batch_normalization/moving_variancesave_1/RestoreV2:45*
use_locking(*
T0*9
_class/
-+loc:@L3/batch_normalization/moving_variance*
validate_shape(*
_output_shapes	
:А
ѓ
save_1/Assign_46AssignL3/dense/biassave_1/RestoreV2:46*
_output_shapes	
:А*
use_locking(*
T0* 
_class
loc:@L3/dense/bias*
validate_shape(
і
save_1/Assign_47AssignL3/dense/bias/Adamsave_1/RestoreV2:47*
use_locking(*
T0* 
_class
loc:@L3/dense/bias*
validate_shape(*
_output_shapes	
:А
ґ
save_1/Assign_48AssignL3/dense/bias/Adam_1save_1/RestoreV2:48*
use_locking(*
T0* 
_class
loc:@L3/dense/bias*
validate_shape(*
_output_shapes	
:А
Є
save_1/Assign_49AssignL3/dense/kernelsave_1/RestoreV2:49*
T0*"
_class
loc:@L3/dense/kernel*
validate_shape(* 
_output_shapes
:
А1А*
use_locking(
љ
save_1/Assign_50AssignL3/dense/kernel/Adamsave_1/RestoreV2:50*"
_class
loc:@L3/dense/kernel*
validate_shape(* 
_output_shapes
:
А1А*
use_locking(*
T0
њ
save_1/Assign_51AssignL3/dense/kernel/Adam_1save_1/RestoreV2:51* 
_output_shapes
:
А1А*
use_locking(*
T0*"
_class
loc:@L3/dense/kernel*
validate_shape(
Ћ
save_1/Assign_52AssignL4/batch_normalization/betasave_1/RestoreV2:52*
use_locking(*
T0*.
_class$
" loc:@L4/batch_normalization/beta*
validate_shape(*
_output_shapes	
:А
–
save_1/Assign_53Assign L4/batch_normalization/beta/Adamsave_1/RestoreV2:53*
_output_shapes	
:А*
use_locking(*
T0*.
_class$
" loc:@L4/batch_normalization/beta*
validate_shape(
“
save_1/Assign_54Assign"L4/batch_normalization/beta/Adam_1save_1/RestoreV2:54*
_output_shapes	
:А*
use_locking(*
T0*.
_class$
" loc:@L4/batch_normalization/beta*
validate_shape(
Ќ
save_1/Assign_55AssignL4/batch_normalization/gammasave_1/RestoreV2:55*
use_locking(*
T0*/
_class%
#!loc:@L4/batch_normalization/gamma*
validate_shape(*
_output_shapes	
:А
“
save_1/Assign_56Assign!L4/batch_normalization/gamma/Adamsave_1/RestoreV2:56*
use_locking(*
T0*/
_class%
#!loc:@L4/batch_normalization/gamma*
validate_shape(*
_output_shapes	
:А
‘
save_1/Assign_57Assign#L4/batch_normalization/gamma/Adam_1save_1/RestoreV2:57*
T0*/
_class%
#!loc:@L4/batch_normalization/gamma*
validate_shape(*
_output_shapes	
:А*
use_locking(
ў
save_1/Assign_58Assign"L4/batch_normalization/moving_meansave_1/RestoreV2:58*
use_locking(*
T0*5
_class+
)'loc:@L4/batch_normalization/moving_mean*
validate_shape(*
_output_shapes	
:А
б
save_1/Assign_59Assign&L4/batch_normalization/moving_variancesave_1/RestoreV2:59*
use_locking(*
T0*9
_class/
-+loc:@L4/batch_normalization/moving_variance*
validate_shape(*
_output_shapes	
:А
ѓ
save_1/Assign_60AssignL4/dense/biassave_1/RestoreV2:60*
use_locking(*
T0* 
_class
loc:@L4/dense/bias*
validate_shape(*
_output_shapes	
:А
і
save_1/Assign_61AssignL4/dense/bias/Adamsave_1/RestoreV2:61* 
_class
loc:@L4/dense/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0
ґ
save_1/Assign_62AssignL4/dense/bias/Adam_1save_1/RestoreV2:62*
use_locking(*
T0* 
_class
loc:@L4/dense/bias*
validate_shape(*
_output_shapes	
:А
Є
save_1/Assign_63AssignL4/dense/kernelsave_1/RestoreV2:63*
use_locking(*
T0*"
_class
loc:@L4/dense/kernel*
validate_shape(* 
_output_shapes
:
АА
љ
save_1/Assign_64AssignL4/dense/kernel/Adamsave_1/RestoreV2:64*
use_locking(*
T0*"
_class
loc:@L4/dense/kernel*
validate_shape(* 
_output_shapes
:
АА
њ
save_1/Assign_65AssignL4/dense/kernel/Adam_1save_1/RestoreV2:65*
use_locking(*
T0*"
_class
loc:@L4/dense/kernel*
validate_shape(* 
_output_shapes
:
АА
Ѓ
save_1/Assign_66AssignLF/dense/biassave_1/RestoreV2:66*
use_locking(*
T0* 
_class
loc:@LF/dense/bias*
validate_shape(*
_output_shapes
:

≥
save_1/Assign_67AssignLF/dense/bias/Adamsave_1/RestoreV2:67*
use_locking(*
T0* 
_class
loc:@LF/dense/bias*
validate_shape(*
_output_shapes
:

µ
save_1/Assign_68AssignLF/dense/bias/Adam_1save_1/RestoreV2:68*
_output_shapes
:
*
use_locking(*
T0* 
_class
loc:@LF/dense/bias*
validate_shape(
Ј
save_1/Assign_69AssignLF/dense/kernelsave_1/RestoreV2:69*"
_class
loc:@LF/dense/kernel*
validate_shape(*
_output_shapes
:	А
*
use_locking(*
T0
Љ
save_1/Assign_70AssignLF/dense/kernel/Adamsave_1/RestoreV2:70*
validate_shape(*
_output_shapes
:	А
*
use_locking(*
T0*"
_class
loc:@LF/dense/kernel
Њ
save_1/Assign_71AssignLF/dense/kernel/Adam_1save_1/RestoreV2:71*
_output_shapes
:	А
*
use_locking(*
T0*"
_class
loc:@LF/dense/kernel*
validate_shape(
ґ
save_1/Assign_72Assignbeta1_powersave_1/RestoreV2:72*
use_locking(*
T0*.
_class$
" loc:@L1/batch_normalization/beta*
validate_shape(*
_output_shapes
: 
ґ
save_1/Assign_73Assignbeta2_powersave_1/RestoreV2:73*
use_locking(*
T0*.
_class$
" loc:@L1/batch_normalization/beta*
validate_shape(*
_output_shapes
: 
О
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_4^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_43^save_1/Assign_44^save_1/Assign_45^save_1/Assign_46^save_1/Assign_47^save_1/Assign_48^save_1/Assign_49^save_1/Assign_5^save_1/Assign_50^save_1/Assign_51^save_1/Assign_52^save_1/Assign_53^save_1/Assign_54^save_1/Assign_55^save_1/Assign_56^save_1/Assign_57^save_1/Assign_58^save_1/Assign_59^save_1/Assign_6^save_1/Assign_60^save_1/Assign_61^save_1/Assign_62^save_1/Assign_63^save_1/Assign_64^save_1/Assign_65^save_1/Assign_66^save_1/Assign_67^save_1/Assign_68^save_1/Assign_69^save_1/Assign_7^save_1/Assign_70^save_1/Assign_71^save_1/Assign_72^save_1/Assign_73^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard "B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"Ъ
trainable_variablesВ€
Э
L1/batch_normalization/gamma:0#L1/batch_normalization/gamma/Assign#L1/batch_normalization/gamma/read:02/L1/batch_normalization/gamma/Initializer/ones:08
Ъ
L1/batch_normalization/beta:0"L1/batch_normalization/beta/Assign"L1/batch_normalization/beta/read:02/L1/batch_normalization/beta/Initializer/zeros:08
w
L1/conv2d/kernel:0L1/conv2d/kernel/AssignL1/conv2d/kernel/read:02-L1/conv2d/kernel/Initializer/random_uniform:08
f
L1/conv2d/bias:0L1/conv2d/bias/AssignL1/conv2d/bias/read:02"L1/conv2d/bias/Initializer/zeros:08
Э
L2/batch_normalization/gamma:0#L2/batch_normalization/gamma/Assign#L2/batch_normalization/gamma/read:02/L2/batch_normalization/gamma/Initializer/ones:08
Ъ
L2/batch_normalization/beta:0"L2/batch_normalization/beta/Assign"L2/batch_normalization/beta/read:02/L2/batch_normalization/beta/Initializer/zeros:08
w
L2/conv2d/kernel:0L2/conv2d/kernel/AssignL2/conv2d/kernel/read:02-L2/conv2d/kernel/Initializer/random_uniform:08
f
L2/conv2d/bias:0L2/conv2d/bias/AssignL2/conv2d/bias/read:02"L2/conv2d/bias/Initializer/zeros:08
•
 L2-1/batch_normalization/gamma:0%L2-1/batch_normalization/gamma/Assign%L2-1/batch_normalization/gamma/read:021L2-1/batch_normalization/gamma/Initializer/ones:08
Ґ
L2-1/batch_normalization/beta:0$L2-1/batch_normalization/beta/Assign$L2-1/batch_normalization/beta/read:021L2-1/batch_normalization/beta/Initializer/zeros:08

L2-1/conv2d/kernel:0L2-1/conv2d/kernel/AssignL2-1/conv2d/kernel/read:02/L2-1/conv2d/kernel/Initializer/random_uniform:08
n
L2-1/conv2d/bias:0L2-1/conv2d/bias/AssignL2-1/conv2d/bias/read:02$L2-1/conv2d/bias/Initializer/zeros:08
Э
L3/batch_normalization/gamma:0#L3/batch_normalization/gamma/Assign#L3/batch_normalization/gamma/read:02/L3/batch_normalization/gamma/Initializer/ones:08
Ъ
L3/batch_normalization/beta:0"L3/batch_normalization/beta/Assign"L3/batch_normalization/beta/read:02/L3/batch_normalization/beta/Initializer/zeros:08
s
L3/dense/kernel:0L3/dense/kernel/AssignL3/dense/kernel/read:02,L3/dense/kernel/Initializer/random_uniform:08
b
L3/dense/bias:0L3/dense/bias/AssignL3/dense/bias/read:02!L3/dense/bias/Initializer/zeros:08
Э
L4/batch_normalization/gamma:0#L4/batch_normalization/gamma/Assign#L4/batch_normalization/gamma/read:02/L4/batch_normalization/gamma/Initializer/ones:08
Ъ
L4/batch_normalization/beta:0"L4/batch_normalization/beta/Assign"L4/batch_normalization/beta/read:02/L4/batch_normalization/beta/Initializer/zeros:08
s
L4/dense/kernel:0L4/dense/kernel/AssignL4/dense/kernel/read:02,L4/dense/kernel/Initializer/random_uniform:08
b
L4/dense/bias:0L4/dense/bias/AssignL4/dense/bias/read:02!L4/dense/bias/Initializer/zeros:08
s
LF/dense/kernel:0LF/dense/kernel/AssignLF/dense/kernel/read:02,LF/dense/kernel/Initializer/random_uniform:08
b
LF/dense/bias:0LF/dense/bias/AssignLF/dense/bias/read:02!LF/dense/bias/Initializer/zeros:08"
train_op

Adam"ВX
	variablesфWсW
Э
L1/batch_normalization/gamma:0#L1/batch_normalization/gamma/Assign#L1/batch_normalization/gamma/read:02/L1/batch_normalization/gamma/Initializer/ones:08
Ъ
L1/batch_normalization/beta:0"L1/batch_normalization/beta/Assign"L1/batch_normalization/beta/read:02/L1/batch_normalization/beta/Initializer/zeros:08
і
$L1/batch_normalization/moving_mean:0)L1/batch_normalization/moving_mean/Assign)L1/batch_normalization/moving_mean/read:026L1/batch_normalization/moving_mean/Initializer/zeros:0
√
(L1/batch_normalization/moving_variance:0-L1/batch_normalization/moving_variance/Assign-L1/batch_normalization/moving_variance/read:029L1/batch_normalization/moving_variance/Initializer/ones:0
w
L1/conv2d/kernel:0L1/conv2d/kernel/AssignL1/conv2d/kernel/read:02-L1/conv2d/kernel/Initializer/random_uniform:08
f
L1/conv2d/bias:0L1/conv2d/bias/AssignL1/conv2d/bias/read:02"L1/conv2d/bias/Initializer/zeros:08
Э
L2/batch_normalization/gamma:0#L2/batch_normalization/gamma/Assign#L2/batch_normalization/gamma/read:02/L2/batch_normalization/gamma/Initializer/ones:08
Ъ
L2/batch_normalization/beta:0"L2/batch_normalization/beta/Assign"L2/batch_normalization/beta/read:02/L2/batch_normalization/beta/Initializer/zeros:08
і
$L2/batch_normalization/moving_mean:0)L2/batch_normalization/moving_mean/Assign)L2/batch_normalization/moving_mean/read:026L2/batch_normalization/moving_mean/Initializer/zeros:0
√
(L2/batch_normalization/moving_variance:0-L2/batch_normalization/moving_variance/Assign-L2/batch_normalization/moving_variance/read:029L2/batch_normalization/moving_variance/Initializer/ones:0
w
L2/conv2d/kernel:0L2/conv2d/kernel/AssignL2/conv2d/kernel/read:02-L2/conv2d/kernel/Initializer/random_uniform:08
f
L2/conv2d/bias:0L2/conv2d/bias/AssignL2/conv2d/bias/read:02"L2/conv2d/bias/Initializer/zeros:08
•
 L2-1/batch_normalization/gamma:0%L2-1/batch_normalization/gamma/Assign%L2-1/batch_normalization/gamma/read:021L2-1/batch_normalization/gamma/Initializer/ones:08
Ґ
L2-1/batch_normalization/beta:0$L2-1/batch_normalization/beta/Assign$L2-1/batch_normalization/beta/read:021L2-1/batch_normalization/beta/Initializer/zeros:08
Љ
&L2-1/batch_normalization/moving_mean:0+L2-1/batch_normalization/moving_mean/Assign+L2-1/batch_normalization/moving_mean/read:028L2-1/batch_normalization/moving_mean/Initializer/zeros:0
Ћ
*L2-1/batch_normalization/moving_variance:0/L2-1/batch_normalization/moving_variance/Assign/L2-1/batch_normalization/moving_variance/read:02;L2-1/batch_normalization/moving_variance/Initializer/ones:0

L2-1/conv2d/kernel:0L2-1/conv2d/kernel/AssignL2-1/conv2d/kernel/read:02/L2-1/conv2d/kernel/Initializer/random_uniform:08
n
L2-1/conv2d/bias:0L2-1/conv2d/bias/AssignL2-1/conv2d/bias/read:02$L2-1/conv2d/bias/Initializer/zeros:08
Э
L3/batch_normalization/gamma:0#L3/batch_normalization/gamma/Assign#L3/batch_normalization/gamma/read:02/L3/batch_normalization/gamma/Initializer/ones:08
Ъ
L3/batch_normalization/beta:0"L3/batch_normalization/beta/Assign"L3/batch_normalization/beta/read:02/L3/batch_normalization/beta/Initializer/zeros:08
і
$L3/batch_normalization/moving_mean:0)L3/batch_normalization/moving_mean/Assign)L3/batch_normalization/moving_mean/read:026L3/batch_normalization/moving_mean/Initializer/zeros:0
√
(L3/batch_normalization/moving_variance:0-L3/batch_normalization/moving_variance/Assign-L3/batch_normalization/moving_variance/read:029L3/batch_normalization/moving_variance/Initializer/ones:0
s
L3/dense/kernel:0L3/dense/kernel/AssignL3/dense/kernel/read:02,L3/dense/kernel/Initializer/random_uniform:08
b
L3/dense/bias:0L3/dense/bias/AssignL3/dense/bias/read:02!L3/dense/bias/Initializer/zeros:08
Э
L4/batch_normalization/gamma:0#L4/batch_normalization/gamma/Assign#L4/batch_normalization/gamma/read:02/L4/batch_normalization/gamma/Initializer/ones:08
Ъ
L4/batch_normalization/beta:0"L4/batch_normalization/beta/Assign"L4/batch_normalization/beta/read:02/L4/batch_normalization/beta/Initializer/zeros:08
і
$L4/batch_normalization/moving_mean:0)L4/batch_normalization/moving_mean/Assign)L4/batch_normalization/moving_mean/read:026L4/batch_normalization/moving_mean/Initializer/zeros:0
√
(L4/batch_normalization/moving_variance:0-L4/batch_normalization/moving_variance/Assign-L4/batch_normalization/moving_variance/read:029L4/batch_normalization/moving_variance/Initializer/ones:0
s
L4/dense/kernel:0L4/dense/kernel/AssignL4/dense/kernel/read:02,L4/dense/kernel/Initializer/random_uniform:08
b
L4/dense/bias:0L4/dense/bias/AssignL4/dense/bias/read:02!L4/dense/bias/Initializer/zeros:08
s
LF/dense/kernel:0LF/dense/kernel/AssignLF/dense/kernel/read:02,LF/dense/kernel/Initializer/random_uniform:08
b
LF/dense/bias:0LF/dense/bias/AssignLF/dense/bias/read:02!LF/dense/bias/Initializer/zeros:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
∞
#L1/batch_normalization/gamma/Adam:0(L1/batch_normalization/gamma/Adam/Assign(L1/batch_normalization/gamma/Adam/read:025L1/batch_normalization/gamma/Adam/Initializer/zeros:0
Є
%L1/batch_normalization/gamma/Adam_1:0*L1/batch_normalization/gamma/Adam_1/Assign*L1/batch_normalization/gamma/Adam_1/read:027L1/batch_normalization/gamma/Adam_1/Initializer/zeros:0
ђ
"L1/batch_normalization/beta/Adam:0'L1/batch_normalization/beta/Adam/Assign'L1/batch_normalization/beta/Adam/read:024L1/batch_normalization/beta/Adam/Initializer/zeros:0
і
$L1/batch_normalization/beta/Adam_1:0)L1/batch_normalization/beta/Adam_1/Assign)L1/batch_normalization/beta/Adam_1/read:026L1/batch_normalization/beta/Adam_1/Initializer/zeros:0
А
L1/conv2d/kernel/Adam:0L1/conv2d/kernel/Adam/AssignL1/conv2d/kernel/Adam/read:02)L1/conv2d/kernel/Adam/Initializer/zeros:0
И
L1/conv2d/kernel/Adam_1:0L1/conv2d/kernel/Adam_1/AssignL1/conv2d/kernel/Adam_1/read:02+L1/conv2d/kernel/Adam_1/Initializer/zeros:0
x
L1/conv2d/bias/Adam:0L1/conv2d/bias/Adam/AssignL1/conv2d/bias/Adam/read:02'L1/conv2d/bias/Adam/Initializer/zeros:0
А
L1/conv2d/bias/Adam_1:0L1/conv2d/bias/Adam_1/AssignL1/conv2d/bias/Adam_1/read:02)L1/conv2d/bias/Adam_1/Initializer/zeros:0
∞
#L2/batch_normalization/gamma/Adam:0(L2/batch_normalization/gamma/Adam/Assign(L2/batch_normalization/gamma/Adam/read:025L2/batch_normalization/gamma/Adam/Initializer/zeros:0
Є
%L2/batch_normalization/gamma/Adam_1:0*L2/batch_normalization/gamma/Adam_1/Assign*L2/batch_normalization/gamma/Adam_1/read:027L2/batch_normalization/gamma/Adam_1/Initializer/zeros:0
ђ
"L2/batch_normalization/beta/Adam:0'L2/batch_normalization/beta/Adam/Assign'L2/batch_normalization/beta/Adam/read:024L2/batch_normalization/beta/Adam/Initializer/zeros:0
і
$L2/batch_normalization/beta/Adam_1:0)L2/batch_normalization/beta/Adam_1/Assign)L2/batch_normalization/beta/Adam_1/read:026L2/batch_normalization/beta/Adam_1/Initializer/zeros:0
А
L2/conv2d/kernel/Adam:0L2/conv2d/kernel/Adam/AssignL2/conv2d/kernel/Adam/read:02)L2/conv2d/kernel/Adam/Initializer/zeros:0
И
L2/conv2d/kernel/Adam_1:0L2/conv2d/kernel/Adam_1/AssignL2/conv2d/kernel/Adam_1/read:02+L2/conv2d/kernel/Adam_1/Initializer/zeros:0
x
L2/conv2d/bias/Adam:0L2/conv2d/bias/Adam/AssignL2/conv2d/bias/Adam/read:02'L2/conv2d/bias/Adam/Initializer/zeros:0
А
L2/conv2d/bias/Adam_1:0L2/conv2d/bias/Adam_1/AssignL2/conv2d/bias/Adam_1/read:02)L2/conv2d/bias/Adam_1/Initializer/zeros:0
Є
%L2-1/batch_normalization/gamma/Adam:0*L2-1/batch_normalization/gamma/Adam/Assign*L2-1/batch_normalization/gamma/Adam/read:027L2-1/batch_normalization/gamma/Adam/Initializer/zeros:0
ј
'L2-1/batch_normalization/gamma/Adam_1:0,L2-1/batch_normalization/gamma/Adam_1/Assign,L2-1/batch_normalization/gamma/Adam_1/read:029L2-1/batch_normalization/gamma/Adam_1/Initializer/zeros:0
і
$L2-1/batch_normalization/beta/Adam:0)L2-1/batch_normalization/beta/Adam/Assign)L2-1/batch_normalization/beta/Adam/read:026L2-1/batch_normalization/beta/Adam/Initializer/zeros:0
Љ
&L2-1/batch_normalization/beta/Adam_1:0+L2-1/batch_normalization/beta/Adam_1/Assign+L2-1/batch_normalization/beta/Adam_1/read:028L2-1/batch_normalization/beta/Adam_1/Initializer/zeros:0
∞
#L3/batch_normalization/gamma/Adam:0(L3/batch_normalization/gamma/Adam/Assign(L3/batch_normalization/gamma/Adam/read:025L3/batch_normalization/gamma/Adam/Initializer/zeros:0
Є
%L3/batch_normalization/gamma/Adam_1:0*L3/batch_normalization/gamma/Adam_1/Assign*L3/batch_normalization/gamma/Adam_1/read:027L3/batch_normalization/gamma/Adam_1/Initializer/zeros:0
ђ
"L3/batch_normalization/beta/Adam:0'L3/batch_normalization/beta/Adam/Assign'L3/batch_normalization/beta/Adam/read:024L3/batch_normalization/beta/Adam/Initializer/zeros:0
і
$L3/batch_normalization/beta/Adam_1:0)L3/batch_normalization/beta/Adam_1/Assign)L3/batch_normalization/beta/Adam_1/read:026L3/batch_normalization/beta/Adam_1/Initializer/zeros:0
|
L3/dense/kernel/Adam:0L3/dense/kernel/Adam/AssignL3/dense/kernel/Adam/read:02(L3/dense/kernel/Adam/Initializer/zeros:0
Д
L3/dense/kernel/Adam_1:0L3/dense/kernel/Adam_1/AssignL3/dense/kernel/Adam_1/read:02*L3/dense/kernel/Adam_1/Initializer/zeros:0
t
L3/dense/bias/Adam:0L3/dense/bias/Adam/AssignL3/dense/bias/Adam/read:02&L3/dense/bias/Adam/Initializer/zeros:0
|
L3/dense/bias/Adam_1:0L3/dense/bias/Adam_1/AssignL3/dense/bias/Adam_1/read:02(L3/dense/bias/Adam_1/Initializer/zeros:0
∞
#L4/batch_normalization/gamma/Adam:0(L4/batch_normalization/gamma/Adam/Assign(L4/batch_normalization/gamma/Adam/read:025L4/batch_normalization/gamma/Adam/Initializer/zeros:0
Є
%L4/batch_normalization/gamma/Adam_1:0*L4/batch_normalization/gamma/Adam_1/Assign*L4/batch_normalization/gamma/Adam_1/read:027L4/batch_normalization/gamma/Adam_1/Initializer/zeros:0
ђ
"L4/batch_normalization/beta/Adam:0'L4/batch_normalization/beta/Adam/Assign'L4/batch_normalization/beta/Adam/read:024L4/batch_normalization/beta/Adam/Initializer/zeros:0
і
$L4/batch_normalization/beta/Adam_1:0)L4/batch_normalization/beta/Adam_1/Assign)L4/batch_normalization/beta/Adam_1/read:026L4/batch_normalization/beta/Adam_1/Initializer/zeros:0
|
L4/dense/kernel/Adam:0L4/dense/kernel/Adam/AssignL4/dense/kernel/Adam/read:02(L4/dense/kernel/Adam/Initializer/zeros:0
Д
L4/dense/kernel/Adam_1:0L4/dense/kernel/Adam_1/AssignL4/dense/kernel/Adam_1/read:02*L4/dense/kernel/Adam_1/Initializer/zeros:0
t
L4/dense/bias/Adam:0L4/dense/bias/Adam/AssignL4/dense/bias/Adam/read:02&L4/dense/bias/Adam/Initializer/zeros:0
|
L4/dense/bias/Adam_1:0L4/dense/bias/Adam_1/AssignL4/dense/bias/Adam_1/read:02(L4/dense/bias/Adam_1/Initializer/zeros:0
|
LF/dense/kernel/Adam:0LF/dense/kernel/Adam/AssignLF/dense/kernel/Adam/read:02(LF/dense/kernel/Adam/Initializer/zeros:0
Д
LF/dense/kernel/Adam_1:0LF/dense/kernel/Adam_1/AssignLF/dense/kernel/Adam_1/read:02*LF/dense/kernel/Adam_1/Initializer/zeros:0
t
LF/dense/bias/Adam:0LF/dense/bias/Adam/AssignLF/dense/bias/Adam/read:02&LF/dense/bias/Adam/Initializer/zeros:0
|
LF/dense/bias/Adam_1:0LF/dense/bias/Adam_1/AssignLF/dense/bias/Adam_1/read:02(LF/dense/bias/Adam_1/Initializer/zeros:0*Ћ
serving_defaultЈ
+
Y&
Placeholder_1:0€€€€€€€€€

!
IS_TRN
Placeholder_2:0

1
X,
Placeholder:0€€€€€€€€€
ACCR
Mean_5:0 tensorflow/serving/predict