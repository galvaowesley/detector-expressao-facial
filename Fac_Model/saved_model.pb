ь▒;
Ыё
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
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
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
·
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%╖╤8"&
exponential_avg_factorfloat%  А?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
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
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
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
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
╛
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
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.4.12v2.4.1-0-g85c8b2a817f8№╨2
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
: *
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
: *
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	А@*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:@*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:@*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
Ъ
conv__block/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *,
shared_nameconv__block/conv2d_1/kernel
У
/conv__block/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv__block/conv2d_1/kernel*&
_output_shapes
:  *
dtype0
К
conv__block/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameconv__block/conv2d_1/bias
Г
-conv__block/conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv__block/conv2d_1/bias*
_output_shapes
: *
dtype0
в
%conv__block/batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%conv__block/batch_normalization/gamma
Ы
9conv__block/batch_normalization/gamma/Read/ReadVariableOpReadVariableOp%conv__block/batch_normalization/gamma*
_output_shapes
: *
dtype0
а
$conv__block/batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$conv__block/batch_normalization/beta
Щ
8conv__block/batch_normalization/beta/Read/ReadVariableOpReadVariableOp$conv__block/batch_normalization/beta*
_output_shapes
: *
dtype0
Ю
conv__block_1/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*.
shared_nameconv__block_1/conv2d_2/kernel
Ч
1conv__block_1/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv__block_1/conv2d_2/kernel*&
_output_shapes
: @*
dtype0
О
conv__block_1/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_nameconv__block_1/conv2d_2/bias
З
/conv__block_1/conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv__block_1/conv2d_2/bias*
_output_shapes
:@*
dtype0
к
)conv__block_1/batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*:
shared_name+)conv__block_1/batch_normalization_1/gamma
г
=conv__block_1/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOp)conv__block_1/batch_normalization_1/gamma*
_output_shapes
:@*
dtype0
и
(conv__block_1/batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*9
shared_name*(conv__block_1/batch_normalization_1/beta
б
<conv__block_1/batch_normalization_1/beta/Read/ReadVariableOpReadVariableOp(conv__block_1/batch_normalization_1/beta*
_output_shapes
:@*
dtype0
Ю
conv__block_2/conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*.
shared_nameconv__block_2/conv2d_3/kernel
Ч
1conv__block_2/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv__block_2/conv2d_3/kernel*&
_output_shapes
:@@*
dtype0
О
conv__block_2/conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_nameconv__block_2/conv2d_3/bias
З
/conv__block_2/conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv__block_2/conv2d_3/bias*
_output_shapes
:@*
dtype0
к
)conv__block_2/batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*:
shared_name+)conv__block_2/batch_normalization_2/gamma
г
=conv__block_2/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOp)conv__block_2/batch_normalization_2/gamma*
_output_shapes
:@*
dtype0
и
(conv__block_2/batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*9
shared_name*(conv__block_2/batch_normalization_2/beta
б
<conv__block_2/batch_normalization_2/beta/Read/ReadVariableOpReadVariableOp(conv__block_2/batch_normalization_2/beta*
_output_shapes
:@*
dtype0
Ю
conv__block_3/conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@`*.
shared_nameconv__block_3/conv2d_4/kernel
Ч
1conv__block_3/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv__block_3/conv2d_4/kernel*&
_output_shapes
:@`*
dtype0
О
conv__block_3/conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*,
shared_nameconv__block_3/conv2d_4/bias
З
/conv__block_3/conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv__block_3/conv2d_4/bias*
_output_shapes
:`*
dtype0
к
)conv__block_3/batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*:
shared_name+)conv__block_3/batch_normalization_3/gamma
г
=conv__block_3/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOp)conv__block_3/batch_normalization_3/gamma*
_output_shapes
:`*
dtype0
и
(conv__block_3/batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*9
shared_name*(conv__block_3/batch_normalization_3/beta
б
<conv__block_3/batch_normalization_3/beta/Read/ReadVariableOpReadVariableOp(conv__block_3/batch_normalization_3/beta*
_output_shapes
:`*
dtype0
Ю
conv__block_4/conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:``*.
shared_nameconv__block_4/conv2d_5/kernel
Ч
1conv__block_4/conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv__block_4/conv2d_5/kernel*&
_output_shapes
:``*
dtype0
О
conv__block_4/conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*,
shared_nameconv__block_4/conv2d_5/bias
З
/conv__block_4/conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv__block_4/conv2d_5/bias*
_output_shapes
:`*
dtype0
к
)conv__block_4/batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*:
shared_name+)conv__block_4/batch_normalization_4/gamma
г
=conv__block_4/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOp)conv__block_4/batch_normalization_4/gamma*
_output_shapes
:`*
dtype0
и
(conv__block_4/batch_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*9
shared_name*(conv__block_4/batch_normalization_4/beta
б
<conv__block_4/batch_normalization_4/beta/Read/ReadVariableOpReadVariableOp(conv__block_4/batch_normalization_4/beta*
_output_shapes
:`*
dtype0
Я
conv__block_5/conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`А*.
shared_nameconv__block_5/conv2d_6/kernel
Ш
1conv__block_5/conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv__block_5/conv2d_6/kernel*'
_output_shapes
:`А*
dtype0
П
conv__block_5/conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_nameconv__block_5/conv2d_6/bias
И
/conv__block_5/conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv__block_5/conv2d_6/bias*
_output_shapes	
:А*
dtype0
л
)conv__block_5/batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*:
shared_name+)conv__block_5/batch_normalization_5/gamma
д
=conv__block_5/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOp)conv__block_5/batch_normalization_5/gamma*
_output_shapes	
:А*
dtype0
й
(conv__block_5/batch_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*9
shared_name*(conv__block_5/batch_normalization_5/beta
в
<conv__block_5/batch_normalization_5/beta/Read/ReadVariableOpReadVariableOp(conv__block_5/batch_normalization_5/beta*
_output_shapes	
:А*
dtype0
а
conv__block_6/conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*.
shared_nameconv__block_6/conv2d_7/kernel
Щ
1conv__block_6/conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv__block_6/conv2d_7/kernel*(
_output_shapes
:АА*
dtype0
П
conv__block_6/conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_nameconv__block_6/conv2d_7/bias
И
/conv__block_6/conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv__block_6/conv2d_7/bias*
_output_shapes	
:А*
dtype0
л
)conv__block_6/batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*:
shared_name+)conv__block_6/batch_normalization_6/gamma
д
=conv__block_6/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOp)conv__block_6/batch_normalization_6/gamma*
_output_shapes	
:А*
dtype0
й
(conv__block_6/batch_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*9
shared_name*(conv__block_6/batch_normalization_6/beta
в
<conv__block_6/batch_normalization_6/beta/Read/ReadVariableOpReadVariableOp(conv__block_6/batch_normalization_6/beta*
_output_shapes	
:А*
dtype0
о
+conv__block/batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *<
shared_name-+conv__block/batch_normalization/moving_mean
з
?conv__block/batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOp+conv__block/batch_normalization/moving_mean*
_output_shapes
: *
dtype0
╢
/conv__block/batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *@
shared_name1/conv__block/batch_normalization/moving_variance
п
Cconv__block/batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp/conv__block/batch_normalization/moving_variance*
_output_shapes
: *
dtype0
╢
/conv__block_1/batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*@
shared_name1/conv__block_1/batch_normalization_1/moving_mean
п
Cconv__block_1/batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp/conv__block_1/batch_normalization_1/moving_mean*
_output_shapes
:@*
dtype0
╛
3conv__block_1/batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*D
shared_name53conv__block_1/batch_normalization_1/moving_variance
╖
Gconv__block_1/batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp3conv__block_1/batch_normalization_1/moving_variance*
_output_shapes
:@*
dtype0
╢
/conv__block_2/batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*@
shared_name1/conv__block_2/batch_normalization_2/moving_mean
п
Cconv__block_2/batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp/conv__block_2/batch_normalization_2/moving_mean*
_output_shapes
:@*
dtype0
╛
3conv__block_2/batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*D
shared_name53conv__block_2/batch_normalization_2/moving_variance
╖
Gconv__block_2/batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp3conv__block_2/batch_normalization_2/moving_variance*
_output_shapes
:@*
dtype0
╢
/conv__block_3/batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*@
shared_name1/conv__block_3/batch_normalization_3/moving_mean
п
Cconv__block_3/batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp/conv__block_3/batch_normalization_3/moving_mean*
_output_shapes
:`*
dtype0
╛
3conv__block_3/batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*D
shared_name53conv__block_3/batch_normalization_3/moving_variance
╖
Gconv__block_3/batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp3conv__block_3/batch_normalization_3/moving_variance*
_output_shapes
:`*
dtype0
╢
/conv__block_4/batch_normalization_4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*@
shared_name1/conv__block_4/batch_normalization_4/moving_mean
п
Cconv__block_4/batch_normalization_4/moving_mean/Read/ReadVariableOpReadVariableOp/conv__block_4/batch_normalization_4/moving_mean*
_output_shapes
:`*
dtype0
╛
3conv__block_4/batch_normalization_4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*D
shared_name53conv__block_4/batch_normalization_4/moving_variance
╖
Gconv__block_4/batch_normalization_4/moving_variance/Read/ReadVariableOpReadVariableOp3conv__block_4/batch_normalization_4/moving_variance*
_output_shapes
:`*
dtype0
╖
/conv__block_5/batch_normalization_5/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*@
shared_name1/conv__block_5/batch_normalization_5/moving_mean
░
Cconv__block_5/batch_normalization_5/moving_mean/Read/ReadVariableOpReadVariableOp/conv__block_5/batch_normalization_5/moving_mean*
_output_shapes	
:А*
dtype0
┐
3conv__block_5/batch_normalization_5/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*D
shared_name53conv__block_5/batch_normalization_5/moving_variance
╕
Gconv__block_5/batch_normalization_5/moving_variance/Read/ReadVariableOpReadVariableOp3conv__block_5/batch_normalization_5/moving_variance*
_output_shapes	
:А*
dtype0
╖
/conv__block_6/batch_normalization_6/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*@
shared_name1/conv__block_6/batch_normalization_6/moving_mean
░
Cconv__block_6/batch_normalization_6/moving_mean/Read/ReadVariableOpReadVariableOp/conv__block_6/batch_normalization_6/moving_mean*
_output_shapes	
:А*
dtype0
┐
3conv__block_6/batch_normalization_6/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*D
shared_name53conv__block_6/batch_normalization_6/moving_variance
╕
Gconv__block_6/batch_normalization_6/moving_variance/Read/ReadVariableOpReadVariableOp3conv__block_6/batch_normalization_6/moving_variance*
_output_shapes	
:А*
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
М
Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d/kernel/m
Е
(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*&
_output_shapes
: *
dtype0
|
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/conv2d/bias/m
u
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_output_shapes
: *
dtype0
Г
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	А@*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:@*
dtype0
Ж
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:@*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0
и
"Adam/conv__block/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *3
shared_name$"Adam/conv__block/conv2d_1/kernel/m
б
6Adam/conv__block/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/conv__block/conv2d_1/kernel/m*&
_output_shapes
:  *
dtype0
Ш
 Adam/conv__block/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/conv__block/conv2d_1/bias/m
С
4Adam/conv__block/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOp Adam/conv__block/conv2d_1/bias/m*
_output_shapes
: *
dtype0
░
,Adam/conv__block/batch_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *=
shared_name.,Adam/conv__block/batch_normalization/gamma/m
й
@Adam/conv__block/batch_normalization/gamma/m/Read/ReadVariableOpReadVariableOp,Adam/conv__block/batch_normalization/gamma/m*
_output_shapes
: *
dtype0
о
+Adam/conv__block/batch_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *<
shared_name-+Adam/conv__block/batch_normalization/beta/m
з
?Adam/conv__block/batch_normalization/beta/m/Read/ReadVariableOpReadVariableOp+Adam/conv__block/batch_normalization/beta/m*
_output_shapes
: *
dtype0
м
$Adam/conv__block_1/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*5
shared_name&$Adam/conv__block_1/conv2d_2/kernel/m
е
8Adam/conv__block_1/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/conv__block_1/conv2d_2/kernel/m*&
_output_shapes
: @*
dtype0
Ь
"Adam/conv__block_1/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/conv__block_1/conv2d_2/bias/m
Х
6Adam/conv__block_1/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOp"Adam/conv__block_1/conv2d_2/bias/m*
_output_shapes
:@*
dtype0
╕
0Adam/conv__block_1/batch_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*A
shared_name20Adam/conv__block_1/batch_normalization_1/gamma/m
▒
DAdam/conv__block_1/batch_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOp0Adam/conv__block_1/batch_normalization_1/gamma/m*
_output_shapes
:@*
dtype0
╢
/Adam/conv__block_1/batch_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*@
shared_name1/Adam/conv__block_1/batch_normalization_1/beta/m
п
CAdam/conv__block_1/batch_normalization_1/beta/m/Read/ReadVariableOpReadVariableOp/Adam/conv__block_1/batch_normalization_1/beta/m*
_output_shapes
:@*
dtype0
м
$Adam/conv__block_2/conv2d_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*5
shared_name&$Adam/conv__block_2/conv2d_3/kernel/m
е
8Adam/conv__block_2/conv2d_3/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/conv__block_2/conv2d_3/kernel/m*&
_output_shapes
:@@*
dtype0
Ь
"Adam/conv__block_2/conv2d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/conv__block_2/conv2d_3/bias/m
Х
6Adam/conv__block_2/conv2d_3/bias/m/Read/ReadVariableOpReadVariableOp"Adam/conv__block_2/conv2d_3/bias/m*
_output_shapes
:@*
dtype0
╕
0Adam/conv__block_2/batch_normalization_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*A
shared_name20Adam/conv__block_2/batch_normalization_2/gamma/m
▒
DAdam/conv__block_2/batch_normalization_2/gamma/m/Read/ReadVariableOpReadVariableOp0Adam/conv__block_2/batch_normalization_2/gamma/m*
_output_shapes
:@*
dtype0
╢
/Adam/conv__block_2/batch_normalization_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*@
shared_name1/Adam/conv__block_2/batch_normalization_2/beta/m
п
CAdam/conv__block_2/batch_normalization_2/beta/m/Read/ReadVariableOpReadVariableOp/Adam/conv__block_2/batch_normalization_2/beta/m*
_output_shapes
:@*
dtype0
м
$Adam/conv__block_3/conv2d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@`*5
shared_name&$Adam/conv__block_3/conv2d_4/kernel/m
е
8Adam/conv__block_3/conv2d_4/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/conv__block_3/conv2d_4/kernel/m*&
_output_shapes
:@`*
dtype0
Ь
"Adam/conv__block_3/conv2d_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*3
shared_name$"Adam/conv__block_3/conv2d_4/bias/m
Х
6Adam/conv__block_3/conv2d_4/bias/m/Read/ReadVariableOpReadVariableOp"Adam/conv__block_3/conv2d_4/bias/m*
_output_shapes
:`*
dtype0
╕
0Adam/conv__block_3/batch_normalization_3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*A
shared_name20Adam/conv__block_3/batch_normalization_3/gamma/m
▒
DAdam/conv__block_3/batch_normalization_3/gamma/m/Read/ReadVariableOpReadVariableOp0Adam/conv__block_3/batch_normalization_3/gamma/m*
_output_shapes
:`*
dtype0
╢
/Adam/conv__block_3/batch_normalization_3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*@
shared_name1/Adam/conv__block_3/batch_normalization_3/beta/m
п
CAdam/conv__block_3/batch_normalization_3/beta/m/Read/ReadVariableOpReadVariableOp/Adam/conv__block_3/batch_normalization_3/beta/m*
_output_shapes
:`*
dtype0
м
$Adam/conv__block_4/conv2d_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:``*5
shared_name&$Adam/conv__block_4/conv2d_5/kernel/m
е
8Adam/conv__block_4/conv2d_5/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/conv__block_4/conv2d_5/kernel/m*&
_output_shapes
:``*
dtype0
Ь
"Adam/conv__block_4/conv2d_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*3
shared_name$"Adam/conv__block_4/conv2d_5/bias/m
Х
6Adam/conv__block_4/conv2d_5/bias/m/Read/ReadVariableOpReadVariableOp"Adam/conv__block_4/conv2d_5/bias/m*
_output_shapes
:`*
dtype0
╕
0Adam/conv__block_4/batch_normalization_4/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*A
shared_name20Adam/conv__block_4/batch_normalization_4/gamma/m
▒
DAdam/conv__block_4/batch_normalization_4/gamma/m/Read/ReadVariableOpReadVariableOp0Adam/conv__block_4/batch_normalization_4/gamma/m*
_output_shapes
:`*
dtype0
╢
/Adam/conv__block_4/batch_normalization_4/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*@
shared_name1/Adam/conv__block_4/batch_normalization_4/beta/m
п
CAdam/conv__block_4/batch_normalization_4/beta/m/Read/ReadVariableOpReadVariableOp/Adam/conv__block_4/batch_normalization_4/beta/m*
_output_shapes
:`*
dtype0
н
$Adam/conv__block_5/conv2d_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:`А*5
shared_name&$Adam/conv__block_5/conv2d_6/kernel/m
ж
8Adam/conv__block_5/conv2d_6/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/conv__block_5/conv2d_6/kernel/m*'
_output_shapes
:`А*
dtype0
Э
"Adam/conv__block_5/conv2d_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"Adam/conv__block_5/conv2d_6/bias/m
Ц
6Adam/conv__block_5/conv2d_6/bias/m/Read/ReadVariableOpReadVariableOp"Adam/conv__block_5/conv2d_6/bias/m*
_output_shapes	
:А*
dtype0
╣
0Adam/conv__block_5/batch_normalization_5/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*A
shared_name20Adam/conv__block_5/batch_normalization_5/gamma/m
▓
DAdam/conv__block_5/batch_normalization_5/gamma/m/Read/ReadVariableOpReadVariableOp0Adam/conv__block_5/batch_normalization_5/gamma/m*
_output_shapes	
:А*
dtype0
╖
/Adam/conv__block_5/batch_normalization_5/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*@
shared_name1/Adam/conv__block_5/batch_normalization_5/beta/m
░
CAdam/conv__block_5/batch_normalization_5/beta/m/Read/ReadVariableOpReadVariableOp/Adam/conv__block_5/batch_normalization_5/beta/m*
_output_shapes	
:А*
dtype0
о
$Adam/conv__block_6/conv2d_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*5
shared_name&$Adam/conv__block_6/conv2d_7/kernel/m
з
8Adam/conv__block_6/conv2d_7/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/conv__block_6/conv2d_7/kernel/m*(
_output_shapes
:АА*
dtype0
Э
"Adam/conv__block_6/conv2d_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"Adam/conv__block_6/conv2d_7/bias/m
Ц
6Adam/conv__block_6/conv2d_7/bias/m/Read/ReadVariableOpReadVariableOp"Adam/conv__block_6/conv2d_7/bias/m*
_output_shapes	
:А*
dtype0
╣
0Adam/conv__block_6/batch_normalization_6/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*A
shared_name20Adam/conv__block_6/batch_normalization_6/gamma/m
▓
DAdam/conv__block_6/batch_normalization_6/gamma/m/Read/ReadVariableOpReadVariableOp0Adam/conv__block_6/batch_normalization_6/gamma/m*
_output_shapes	
:А*
dtype0
╖
/Adam/conv__block_6/batch_normalization_6/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*@
shared_name1/Adam/conv__block_6/batch_normalization_6/beta/m
░
CAdam/conv__block_6/batch_normalization_6/beta/m/Read/ReadVariableOpReadVariableOp/Adam/conv__block_6/batch_normalization_6/beta/m*
_output_shapes	
:А*
dtype0
М
Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d/kernel/v
Е
(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*&
_output_shapes
: *
dtype0
|
Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/conv2d/bias/v
u
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes
: *
dtype0
Г
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	А@*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:@*
dtype0
Ж
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:@*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0
и
"Adam/conv__block/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *3
shared_name$"Adam/conv__block/conv2d_1/kernel/v
б
6Adam/conv__block/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/conv__block/conv2d_1/kernel/v*&
_output_shapes
:  *
dtype0
Ш
 Adam/conv__block/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/conv__block/conv2d_1/bias/v
С
4Adam/conv__block/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOp Adam/conv__block/conv2d_1/bias/v*
_output_shapes
: *
dtype0
░
,Adam/conv__block/batch_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *=
shared_name.,Adam/conv__block/batch_normalization/gamma/v
й
@Adam/conv__block/batch_normalization/gamma/v/Read/ReadVariableOpReadVariableOp,Adam/conv__block/batch_normalization/gamma/v*
_output_shapes
: *
dtype0
о
+Adam/conv__block/batch_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *<
shared_name-+Adam/conv__block/batch_normalization/beta/v
з
?Adam/conv__block/batch_normalization/beta/v/Read/ReadVariableOpReadVariableOp+Adam/conv__block/batch_normalization/beta/v*
_output_shapes
: *
dtype0
м
$Adam/conv__block_1/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*5
shared_name&$Adam/conv__block_1/conv2d_2/kernel/v
е
8Adam/conv__block_1/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/conv__block_1/conv2d_2/kernel/v*&
_output_shapes
: @*
dtype0
Ь
"Adam/conv__block_1/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/conv__block_1/conv2d_2/bias/v
Х
6Adam/conv__block_1/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOp"Adam/conv__block_1/conv2d_2/bias/v*
_output_shapes
:@*
dtype0
╕
0Adam/conv__block_1/batch_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*A
shared_name20Adam/conv__block_1/batch_normalization_1/gamma/v
▒
DAdam/conv__block_1/batch_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOp0Adam/conv__block_1/batch_normalization_1/gamma/v*
_output_shapes
:@*
dtype0
╢
/Adam/conv__block_1/batch_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*@
shared_name1/Adam/conv__block_1/batch_normalization_1/beta/v
п
CAdam/conv__block_1/batch_normalization_1/beta/v/Read/ReadVariableOpReadVariableOp/Adam/conv__block_1/batch_normalization_1/beta/v*
_output_shapes
:@*
dtype0
м
$Adam/conv__block_2/conv2d_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*5
shared_name&$Adam/conv__block_2/conv2d_3/kernel/v
е
8Adam/conv__block_2/conv2d_3/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/conv__block_2/conv2d_3/kernel/v*&
_output_shapes
:@@*
dtype0
Ь
"Adam/conv__block_2/conv2d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/conv__block_2/conv2d_3/bias/v
Х
6Adam/conv__block_2/conv2d_3/bias/v/Read/ReadVariableOpReadVariableOp"Adam/conv__block_2/conv2d_3/bias/v*
_output_shapes
:@*
dtype0
╕
0Adam/conv__block_2/batch_normalization_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*A
shared_name20Adam/conv__block_2/batch_normalization_2/gamma/v
▒
DAdam/conv__block_2/batch_normalization_2/gamma/v/Read/ReadVariableOpReadVariableOp0Adam/conv__block_2/batch_normalization_2/gamma/v*
_output_shapes
:@*
dtype0
╢
/Adam/conv__block_2/batch_normalization_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*@
shared_name1/Adam/conv__block_2/batch_normalization_2/beta/v
п
CAdam/conv__block_2/batch_normalization_2/beta/v/Read/ReadVariableOpReadVariableOp/Adam/conv__block_2/batch_normalization_2/beta/v*
_output_shapes
:@*
dtype0
м
$Adam/conv__block_3/conv2d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@`*5
shared_name&$Adam/conv__block_3/conv2d_4/kernel/v
е
8Adam/conv__block_3/conv2d_4/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/conv__block_3/conv2d_4/kernel/v*&
_output_shapes
:@`*
dtype0
Ь
"Adam/conv__block_3/conv2d_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*3
shared_name$"Adam/conv__block_3/conv2d_4/bias/v
Х
6Adam/conv__block_3/conv2d_4/bias/v/Read/ReadVariableOpReadVariableOp"Adam/conv__block_3/conv2d_4/bias/v*
_output_shapes
:`*
dtype0
╕
0Adam/conv__block_3/batch_normalization_3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*A
shared_name20Adam/conv__block_3/batch_normalization_3/gamma/v
▒
DAdam/conv__block_3/batch_normalization_3/gamma/v/Read/ReadVariableOpReadVariableOp0Adam/conv__block_3/batch_normalization_3/gamma/v*
_output_shapes
:`*
dtype0
╢
/Adam/conv__block_3/batch_normalization_3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*@
shared_name1/Adam/conv__block_3/batch_normalization_3/beta/v
п
CAdam/conv__block_3/batch_normalization_3/beta/v/Read/ReadVariableOpReadVariableOp/Adam/conv__block_3/batch_normalization_3/beta/v*
_output_shapes
:`*
dtype0
м
$Adam/conv__block_4/conv2d_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:``*5
shared_name&$Adam/conv__block_4/conv2d_5/kernel/v
е
8Adam/conv__block_4/conv2d_5/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/conv__block_4/conv2d_5/kernel/v*&
_output_shapes
:``*
dtype0
Ь
"Adam/conv__block_4/conv2d_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*3
shared_name$"Adam/conv__block_4/conv2d_5/bias/v
Х
6Adam/conv__block_4/conv2d_5/bias/v/Read/ReadVariableOpReadVariableOp"Adam/conv__block_4/conv2d_5/bias/v*
_output_shapes
:`*
dtype0
╕
0Adam/conv__block_4/batch_normalization_4/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*A
shared_name20Adam/conv__block_4/batch_normalization_4/gamma/v
▒
DAdam/conv__block_4/batch_normalization_4/gamma/v/Read/ReadVariableOpReadVariableOp0Adam/conv__block_4/batch_normalization_4/gamma/v*
_output_shapes
:`*
dtype0
╢
/Adam/conv__block_4/batch_normalization_4/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*@
shared_name1/Adam/conv__block_4/batch_normalization_4/beta/v
п
CAdam/conv__block_4/batch_normalization_4/beta/v/Read/ReadVariableOpReadVariableOp/Adam/conv__block_4/batch_normalization_4/beta/v*
_output_shapes
:`*
dtype0
н
$Adam/conv__block_5/conv2d_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:`А*5
shared_name&$Adam/conv__block_5/conv2d_6/kernel/v
ж
8Adam/conv__block_5/conv2d_6/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/conv__block_5/conv2d_6/kernel/v*'
_output_shapes
:`А*
dtype0
Э
"Adam/conv__block_5/conv2d_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"Adam/conv__block_5/conv2d_6/bias/v
Ц
6Adam/conv__block_5/conv2d_6/bias/v/Read/ReadVariableOpReadVariableOp"Adam/conv__block_5/conv2d_6/bias/v*
_output_shapes	
:А*
dtype0
╣
0Adam/conv__block_5/batch_normalization_5/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*A
shared_name20Adam/conv__block_5/batch_normalization_5/gamma/v
▓
DAdam/conv__block_5/batch_normalization_5/gamma/v/Read/ReadVariableOpReadVariableOp0Adam/conv__block_5/batch_normalization_5/gamma/v*
_output_shapes	
:А*
dtype0
╖
/Adam/conv__block_5/batch_normalization_5/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*@
shared_name1/Adam/conv__block_5/batch_normalization_5/beta/v
░
CAdam/conv__block_5/batch_normalization_5/beta/v/Read/ReadVariableOpReadVariableOp/Adam/conv__block_5/batch_normalization_5/beta/v*
_output_shapes	
:А*
dtype0
о
$Adam/conv__block_6/conv2d_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*5
shared_name&$Adam/conv__block_6/conv2d_7/kernel/v
з
8Adam/conv__block_6/conv2d_7/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/conv__block_6/conv2d_7/kernel/v*(
_output_shapes
:АА*
dtype0
Э
"Adam/conv__block_6/conv2d_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"Adam/conv__block_6/conv2d_7/bias/v
Ц
6Adam/conv__block_6/conv2d_7/bias/v/Read/ReadVariableOpReadVariableOp"Adam/conv__block_6/conv2d_7/bias/v*
_output_shapes	
:А*
dtype0
╣
0Adam/conv__block_6/batch_normalization_6/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*A
shared_name20Adam/conv__block_6/batch_normalization_6/gamma/v
▓
DAdam/conv__block_6/batch_normalization_6/gamma/v/Read/ReadVariableOpReadVariableOp0Adam/conv__block_6/batch_normalization_6/gamma/v*
_output_shapes	
:А*
dtype0
╖
/Adam/conv__block_6/batch_normalization_6/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*@
shared_name1/Adam/conv__block_6/batch_normalization_6/beta/v
░
CAdam/conv__block_6/batch_normalization_6/beta/v/Read/ReadVariableOpReadVariableOp/Adam/conv__block_6/batch_normalization_6/beta/v*
_output_shapes	
:А*
dtype0

NoOpNoOp
юБ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*иБ
valueЭБBЩБ BСБ
└

block1

block2
	pollingM1

block3

block4
	pollingM2

block5

block6
		pollingM3


block7

block8
	pollingM4
flatten
	dense
drop
outputLayer
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
И
	convLayer
bnLayer
actRelu
 dropout
!trainable_variables
"regularization_losses
#	variables
$	keras_api
R
%trainable_variables
&regularization_losses
'	variables
(	keras_api
И
)	convLayer
*bnLayer
+actRelu
,dropout
-trainable_variables
.regularization_losses
/	variables
0	keras_api
И
1	convLayer
2bnLayer
3actRelu
4dropout
5trainable_variables
6regularization_losses
7	variables
8	keras_api
R
9trainable_variables
:regularization_losses
;	variables
<	keras_api
И
=	convLayer
>bnLayer
?actRelu
@dropout
Atrainable_variables
Bregularization_losses
C	variables
D	keras_api
И
E	convLayer
FbnLayer
GactRelu
Hdropout
Itrainable_variables
Jregularization_losses
K	variables
L	keras_api
R
Mtrainable_variables
Nregularization_losses
O	variables
P	keras_api
И
Q	convLayer
RbnLayer
SactRelu
Tdropout
Utrainable_variables
Vregularization_losses
W	variables
X	keras_api
И
Y	convLayer
ZbnLayer
[actRelu
\dropout
]trainable_variables
^regularization_losses
_	variables
`	keras_api
R
atrainable_variables
bregularization_losses
c	variables
d	keras_api
R
etrainable_variables
fregularization_losses
g	variables
h	keras_api
h

ikernel
jbias
ktrainable_variables
lregularization_losses
m	variables
n	keras_api
R
otrainable_variables
pregularization_losses
q	variables
r	keras_api
h

skernel
tbias
utrainable_variables
vregularization_losses
w	variables
x	keras_api
Ь
yiter

zbeta_1

{beta_2
	|decay
}learning_ratemЛmМimНjmОsmПtmР~mСmТ	АmУ	БmФ	ВmХ	ГmЦ	ДmЧ	ЕmШ	ЖmЩ	ЗmЪ	ИmЫ	ЙmЬ	КmЭ	ЛmЮ	МmЯ	Нmа	Оmб	Пmв	Рmг	Сmд	Тmе	Уmж	Фmз	Хmи	Цmй	Чmк	Шmл	Щmмvнvоivпjv░sv▒tv▓~v│v┤	Аv╡	Бv╢	Вv╖	Гv╕	Дv╣	Еv║	Жv╗	Зv╝	Иv╜	Йv╛	Кv┐	Лv└	Мv┴	Нv┬	Оv├	Пv─	Рv┼	Сv╞	Тv╟	Уv╚	Фv╔	Хv╩	Цv╦	Чv╠	Шv═	Щv╬
а
0
1
~2
3
А4
Б5
В6
Г7
Д8
Е9
Ж10
З11
И12
Й13
К14
Л15
М16
Н17
О18
П19
Р20
С21
Т22
У23
Ф24
Х25
Ц26
Ч27
Ш28
Щ29
i30
j31
s32
t33
 
Ю
0
1
~2
3
А4
Б5
Ъ6
Ы7
В8
Г9
Д10
Е11
Ь12
Э13
Ж14
З15
И16
Й17
Ю18
Я19
К20
Л21
М22
Н23
а24
б25
О26
П27
Р28
С29
в30
г31
Т32
У33
Ф34
Х35
д36
е37
Ц38
Ч39
Ш40
Щ41
ж42
з43
i44
j45
s46
t47
▓
trainable_variables
иlayers
 йlayer_regularization_losses
кnon_trainable_variables
regularization_losses
лlayer_metrics
мmetrics
	variables
 
KI
VARIABLE_VALUEconv2d/kernel(block1/kernel/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUEconv2d/bias&block1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
▓
trainable_variables
 нlayer_regularization_losses
оlayers
пnon_trainable_variables
regularization_losses
░layer_metrics
▒metrics
	variables
l

~kernel
bias
▓trainable_variables
│regularization_losses
┤	variables
╡	keras_api
а
	╢axis

Аgamma
	Бbeta
Ъmoving_mean
Ыmoving_variance
╖trainable_variables
╕regularization_losses
╣	variables
║	keras_api
V
╗trainable_variables
╝regularization_losses
╜	variables
╛	keras_api
V
┐trainable_variables
└regularization_losses
┴	variables
┬	keras_api

~0
1
А2
Б3
 
.
~0
1
А2
Б3
Ъ4
Ы5
▓
!trainable_variables
├layers
 ─layer_regularization_losses
┼non_trainable_variables
"regularization_losses
╞layer_metrics
╟metrics
#	variables
 
 
 
▓
%trainable_variables
 ╚layer_regularization_losses
╔layers
╩non_trainable_variables
&regularization_losses
╦layer_metrics
╠metrics
'	variables
n
Вkernel
	Гbias
═trainable_variables
╬regularization_losses
╧	variables
╨	keras_api
а
	╤axis

Дgamma
	Еbeta
Ьmoving_mean
Эmoving_variance
╥trainable_variables
╙regularization_losses
╘	variables
╒	keras_api
V
╓trainable_variables
╫regularization_losses
╪	variables
┘	keras_api
V
┌trainable_variables
█regularization_losses
▄	variables
▌	keras_api
 
В0
Г1
Д2
Е3
 
0
В0
Г1
Д2
Е3
Ь4
Э5
▓
-trainable_variables
▐layers
 ▀layer_regularization_losses
рnon_trainable_variables
.regularization_losses
сlayer_metrics
тmetrics
/	variables
n
Жkernel
	Зbias
уtrainable_variables
фregularization_losses
х	variables
ц	keras_api
а
	чaxis

Иgamma
	Йbeta
Юmoving_mean
Яmoving_variance
шtrainable_variables
щregularization_losses
ъ	variables
ы	keras_api
V
ьtrainable_variables
эregularization_losses
ю	variables
я	keras_api
V
Ёtrainable_variables
ёregularization_losses
Є	variables
є	keras_api
 
Ж0
З1
И2
Й3
 
0
Ж0
З1
И2
Й3
Ю4
Я5
▓
5trainable_variables
Їlayers
 їlayer_regularization_losses
Ўnon_trainable_variables
6regularization_losses
ўlayer_metrics
°metrics
7	variables
 
 
 
▓
9trainable_variables
 ∙layer_regularization_losses
·layers
√non_trainable_variables
:regularization_losses
№layer_metrics
¤metrics
;	variables
n
Кkernel
	Лbias
■trainable_variables
 regularization_losses
А	variables
Б	keras_api
а
	Вaxis

Мgamma
	Нbeta
аmoving_mean
бmoving_variance
Гtrainable_variables
Дregularization_losses
Е	variables
Ж	keras_api
V
Зtrainable_variables
Иregularization_losses
Й	variables
К	keras_api
V
Лtrainable_variables
Мregularization_losses
Н	variables
О	keras_api
 
К0
Л1
М2
Н3
 
0
К0
Л1
М2
Н3
а4
б5
▓
Atrainable_variables
Пlayers
 Рlayer_regularization_losses
Сnon_trainable_variables
Bregularization_losses
Тlayer_metrics
Уmetrics
C	variables
n
Оkernel
	Пbias
Фtrainable_variables
Хregularization_losses
Ц	variables
Ч	keras_api
а
	Шaxis

Рgamma
	Сbeta
вmoving_mean
гmoving_variance
Щtrainable_variables
Ъregularization_losses
Ы	variables
Ь	keras_api
V
Эtrainable_variables
Юregularization_losses
Я	variables
а	keras_api
V
бtrainable_variables
вregularization_losses
г	variables
д	keras_api
 
О0
П1
Р2
С3
 
0
О0
П1
Р2
С3
в4
г5
▓
Itrainable_variables
еlayers
 жlayer_regularization_losses
зnon_trainable_variables
Jregularization_losses
иlayer_metrics
йmetrics
K	variables
 
 
 
▓
Mtrainable_variables
 кlayer_regularization_losses
лlayers
мnon_trainable_variables
Nregularization_losses
нlayer_metrics
оmetrics
O	variables
n
Тkernel
	Уbias
пtrainable_variables
░regularization_losses
▒	variables
▓	keras_api
а
	│axis

Фgamma
	Хbeta
дmoving_mean
еmoving_variance
┤trainable_variables
╡regularization_losses
╢	variables
╖	keras_api
V
╕trainable_variables
╣regularization_losses
║	variables
╗	keras_api
V
╝trainable_variables
╜regularization_losses
╛	variables
┐	keras_api
 
Т0
У1
Ф2
Х3
 
0
Т0
У1
Ф2
Х3
д4
е5
▓
Utrainable_variables
└layers
 ┴layer_regularization_losses
┬non_trainable_variables
Vregularization_losses
├layer_metrics
─metrics
W	variables
n
Цkernel
	Чbias
┼trainable_variables
╞regularization_losses
╟	variables
╚	keras_api
а
	╔axis

Шgamma
	Щbeta
жmoving_mean
зmoving_variance
╩trainable_variables
╦regularization_losses
╠	variables
═	keras_api
V
╬trainable_variables
╧regularization_losses
╨	variables
╤	keras_api
V
╥trainable_variables
╙regularization_losses
╘	variables
╒	keras_api
 
Ц0
Ч1
Ш2
Щ3
 
0
Ц0
Ч1
Ш2
Щ3
ж4
з5
▓
]trainable_variables
╓layers
 ╫layer_regularization_losses
╪non_trainable_variables
^regularization_losses
┘layer_metrics
┌metrics
_	variables
 
 
 
▓
atrainable_variables
 █layer_regularization_losses
▄layers
▌non_trainable_variables
bregularization_losses
▐layer_metrics
▀metrics
c	variables
 
 
 
▓
etrainable_variables
 рlayer_regularization_losses
сlayers
тnon_trainable_variables
fregularization_losses
уlayer_metrics
фmetrics
g	variables
IG
VARIABLE_VALUEdense/kernel'dense/kernel/.ATTRIBUTES/VARIABLE_VALUE
EC
VARIABLE_VALUE
dense/bias%dense/bias/.ATTRIBUTES/VARIABLE_VALUE

i0
j1
 

i0
j1
▓
ktrainable_variables
 хlayer_regularization_losses
цlayers
чnon_trainable_variables
lregularization_losses
шlayer_metrics
щmetrics
m	variables
 
 
 
▓
otrainable_variables
 ъlayer_regularization_losses
ыlayers
ьnon_trainable_variables
pregularization_losses
эlayer_metrics
юmetrics
q	variables
QO
VARIABLE_VALUEdense_1/kernel-outputLayer/kernel/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEdense_1/bias+outputLayer/bias/.ATTRIBUTES/VARIABLE_VALUE

s0
t1
 

s0
t1
▓
utrainable_variables
 яlayer_regularization_losses
Ёlayers
ёnon_trainable_variables
vregularization_losses
Єlayer_metrics
єmetrics
w	variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEconv__block/conv2d_1/kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEconv__block/conv2d_1/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%conv__block/batch_normalization/gamma0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE$conv__block/batch_normalization/beta0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEconv__block_1/conv2d_2/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEconv__block_1/conv2d_2/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE)conv__block_1/batch_normalization_1/gamma0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUE(conv__block_1/batch_normalization_1/beta0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEconv__block_2/conv2d_3/kernel1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEconv__block_2/conv2d_3/bias1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE)conv__block_2/batch_normalization_2/gamma1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE(conv__block_2/batch_normalization_2/beta1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEconv__block_3/conv2d_4/kernel1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEconv__block_3/conv2d_4/bias1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE)conv__block_3/batch_normalization_3/gamma1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE(conv__block_3/batch_normalization_3/beta1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEconv__block_4/conv2d_5/kernel1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEconv__block_4/conv2d_5/bias1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE)conv__block_4/batch_normalization_4/gamma1trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE(conv__block_4/batch_normalization_4/beta1trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEconv__block_5/conv2d_6/kernel1trainable_variables/22/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEconv__block_5/conv2d_6/bias1trainable_variables/23/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE)conv__block_5/batch_normalization_5/gamma1trainable_variables/24/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE(conv__block_5/batch_normalization_5/beta1trainable_variables/25/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEconv__block_6/conv2d_7/kernel1trainable_variables/26/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEconv__block_6/conv2d_7/bias1trainable_variables/27/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE)conv__block_6/batch_normalization_6/gamma1trainable_variables/28/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE(conv__block_6/batch_normalization_6/beta1trainable_variables/29/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE+conv__block/batch_normalization/moving_mean&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE/conv__block/batch_normalization/moving_variance&variables/7/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE/conv__block_1/batch_normalization_1/moving_mean'variables/12/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE3conv__block_1/batch_normalization_1/moving_variance'variables/13/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE/conv__block_2/batch_normalization_2/moving_mean'variables/18/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE3conv__block_2/batch_normalization_2/moving_variance'variables/19/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE/conv__block_3/batch_normalization_3/moving_mean'variables/24/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE3conv__block_3/batch_normalization_3/moving_variance'variables/25/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE/conv__block_4/batch_normalization_4/moving_mean'variables/30/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE3conv__block_4/batch_normalization_4/moving_variance'variables/31/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE/conv__block_5/batch_normalization_5/moving_mean'variables/36/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE3conv__block_5/batch_normalization_5/moving_variance'variables/37/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE/conv__block_6/batch_normalization_6/moving_mean'variables/42/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE3conv__block_6/batch_normalization_6/moving_variance'variables/43/.ATTRIBUTES/VARIABLE_VALUE
v
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
 
t
Ъ0
Ы1
Ь2
Э3
Ю4
Я5
а6
б7
в8
г9
д10
е11
ж12
з13
 

Ї0
ї1
 
 
 
 
 

~0
1
 

~0
1
╡
▓trainable_variables
 Ўlayer_regularization_losses
ўlayers
°non_trainable_variables
│regularization_losses
∙layer_metrics
·metrics
┤	variables
 

А0
Б1
 
 
А0
Б1
Ъ2
Ы3
╡
╖trainable_variables
 √layer_regularization_losses
№layers
¤non_trainable_variables
╕regularization_losses
■layer_metrics
 metrics
╣	variables
 
 
 
╡
╗trainable_variables
 Аlayer_regularization_losses
Бlayers
Вnon_trainable_variables
╝regularization_losses
Гlayer_metrics
Дmetrics
╜	variables
 
 
 
╡
┐trainable_variables
 Еlayer_regularization_losses
Жlayers
Зnon_trainable_variables
└regularization_losses
Иlayer_metrics
Йmetrics
┴	variables

0
1
2
 3
 

Ъ0
Ы1
 
 
 
 
 
 
 

В0
Г1
 

В0
Г1
╡
═trainable_variables
 Кlayer_regularization_losses
Лlayers
Мnon_trainable_variables
╬regularization_losses
Нlayer_metrics
Оmetrics
╧	variables
 

Д0
Е1
 
 
Д0
Е1
Ь2
Э3
╡
╥trainable_variables
 Пlayer_regularization_losses
Рlayers
Сnon_trainable_variables
╙regularization_losses
Тlayer_metrics
Уmetrics
╘	variables
 
 
 
╡
╓trainable_variables
 Фlayer_regularization_losses
Хlayers
Цnon_trainable_variables
╫regularization_losses
Чlayer_metrics
Шmetrics
╪	variables
 
 
 
╡
┌trainable_variables
 Щlayer_regularization_losses
Ъlayers
Ыnon_trainable_variables
█regularization_losses
Ьlayer_metrics
Эmetrics
▄	variables

)0
*1
+2
,3
 

Ь0
Э1
 
 

Ж0
З1
 

Ж0
З1
╡
уtrainable_variables
 Юlayer_regularization_losses
Яlayers
аnon_trainable_variables
фregularization_losses
бlayer_metrics
вmetrics
х	variables
 

И0
Й1
 
 
И0
Й1
Ю2
Я3
╡
шtrainable_variables
 гlayer_regularization_losses
дlayers
еnon_trainable_variables
щregularization_losses
жlayer_metrics
зmetrics
ъ	variables
 
 
 
╡
ьtrainable_variables
 иlayer_regularization_losses
йlayers
кnon_trainable_variables
эregularization_losses
лlayer_metrics
мmetrics
ю	variables
 
 
 
╡
Ёtrainable_variables
 нlayer_regularization_losses
оlayers
пnon_trainable_variables
ёregularization_losses
░layer_metrics
▒metrics
Є	variables

10
21
32
43
 

Ю0
Я1
 
 
 
 
 
 
 

К0
Л1
 

К0
Л1
╡
■trainable_variables
 ▓layer_regularization_losses
│layers
┤non_trainable_variables
 regularization_losses
╡layer_metrics
╢metrics
А	variables
 

М0
Н1
 
 
М0
Н1
а2
б3
╡
Гtrainable_variables
 ╖layer_regularization_losses
╕layers
╣non_trainable_variables
Дregularization_losses
║layer_metrics
╗metrics
Е	variables
 
 
 
╡
Зtrainable_variables
 ╝layer_regularization_losses
╜layers
╛non_trainable_variables
Иregularization_losses
┐layer_metrics
└metrics
Й	variables
 
 
 
╡
Лtrainable_variables
 ┴layer_regularization_losses
┬layers
├non_trainable_variables
Мregularization_losses
─layer_metrics
┼metrics
Н	variables

=0
>1
?2
@3
 

а0
б1
 
 

О0
П1
 

О0
П1
╡
Фtrainable_variables
 ╞layer_regularization_losses
╟layers
╚non_trainable_variables
Хregularization_losses
╔layer_metrics
╩metrics
Ц	variables
 

Р0
С1
 
 
Р0
С1
в2
г3
╡
Щtrainable_variables
 ╦layer_regularization_losses
╠layers
═non_trainable_variables
Ъregularization_losses
╬layer_metrics
╧metrics
Ы	variables
 
 
 
╡
Эtrainable_variables
 ╨layer_regularization_losses
╤layers
╥non_trainable_variables
Юregularization_losses
╙layer_metrics
╘metrics
Я	variables
 
 
 
╡
бtrainable_variables
 ╒layer_regularization_losses
╓layers
╫non_trainable_variables
вregularization_losses
╪layer_metrics
┘metrics
г	variables

E0
F1
G2
H3
 

в0
г1
 
 
 
 
 
 
 

Т0
У1
 

Т0
У1
╡
пtrainable_variables
 ┌layer_regularization_losses
█layers
▄non_trainable_variables
░regularization_losses
▌layer_metrics
▐metrics
▒	variables
 

Ф0
Х1
 
 
Ф0
Х1
д2
е3
╡
┤trainable_variables
 ▀layer_regularization_losses
рlayers
сnon_trainable_variables
╡regularization_losses
тlayer_metrics
уmetrics
╢	variables
 
 
 
╡
╕trainable_variables
 фlayer_regularization_losses
хlayers
цnon_trainable_variables
╣regularization_losses
чlayer_metrics
шmetrics
║	variables
 
 
 
╡
╝trainable_variables
 щlayer_regularization_losses
ъlayers
ыnon_trainable_variables
╜regularization_losses
ьlayer_metrics
эmetrics
╛	variables

Q0
R1
S2
T3
 

д0
е1
 
 

Ц0
Ч1
 

Ц0
Ч1
╡
┼trainable_variables
 юlayer_regularization_losses
яlayers
Ёnon_trainable_variables
╞regularization_losses
ёlayer_metrics
Єmetrics
╟	variables
 

Ш0
Щ1
 
 
Ш0
Щ1
ж2
з3
╡
╩trainable_variables
 єlayer_regularization_losses
Їlayers
їnon_trainable_variables
╦regularization_losses
Ўlayer_metrics
ўmetrics
╠	variables
 
 
 
╡
╬trainable_variables
 °layer_regularization_losses
∙layers
·non_trainable_variables
╧regularization_losses
√layer_metrics
№metrics
╨	variables
 
 
 
╡
╥trainable_variables
 ¤layer_regularization_losses
■layers
 non_trainable_variables
╙regularization_losses
Аlayer_metrics
Бmetrics
╘	variables

Y0
Z1
[2
\3
 

ж0
з1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

Вtotal

Гcount
Д	variables
Е	keras_api
I

Жtotal

Зcount
И
_fn_kwargs
Й	variables
К	keras_api
 
 
 
 
 
 
 

Ъ0
Ы1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

Ь0
Э1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

Ю0
Я1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

а0
б1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

в0
г1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

д0
е1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

ж0
з1
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

В0
Г1

Д	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Ж0
З1

Й	variables
nl
VARIABLE_VALUEAdam/conv2d/kernel/mDblock1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUEAdam/conv2d/bias/mBblock1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense/kernel/mCdense/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEAdam/dense/bias/mAdense/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/dense_1/kernel/mIoutputLayer/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/dense_1/bias/mGoutputLayer/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUE"Adam/conv__block/conv2d_1/kernel/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE Adam/conv__block/conv2d_1/bias/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ПМ
VARIABLE_VALUE,Adam/conv__block/batch_normalization/gamma/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ОЛ
VARIABLE_VALUE+Adam/conv__block/batch_normalization/beta/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUE$Adam/conv__block_1/conv2d_2/kernel/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUE"Adam/conv__block_1/conv2d_2/bias/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
УР
VARIABLE_VALUE0Adam/conv__block_1/batch_normalization_1/gamma/mLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ТП
VARIABLE_VALUE/Adam/conv__block_1/batch_normalization_1/beta/mLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUE$Adam/conv__block_2/conv2d_3/kernel/mMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUE"Adam/conv__block_2/conv2d_3/bias/mMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE0Adam/conv__block_2/batch_normalization_2/gamma/mMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
УР
VARIABLE_VALUE/Adam/conv__block_2/batch_normalization_2/beta/mMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUE$Adam/conv__block_3/conv2d_4/kernel/mMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUE"Adam/conv__block_3/conv2d_4/bias/mMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE0Adam/conv__block_3/batch_normalization_3/gamma/mMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
УР
VARIABLE_VALUE/Adam/conv__block_3/batch_normalization_3/beta/mMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUE$Adam/conv__block_4/conv2d_5/kernel/mMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUE"Adam/conv__block_4/conv2d_5/bias/mMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE0Adam/conv__block_4/batch_normalization_4/gamma/mMtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
УР
VARIABLE_VALUE/Adam/conv__block_4/batch_normalization_4/beta/mMtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUE$Adam/conv__block_5/conv2d_6/kernel/mMtrainable_variables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUE"Adam/conv__block_5/conv2d_6/bias/mMtrainable_variables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE0Adam/conv__block_5/batch_normalization_5/gamma/mMtrainable_variables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
УР
VARIABLE_VALUE/Adam/conv__block_5/batch_normalization_5/beta/mMtrainable_variables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUE$Adam/conv__block_6/conv2d_7/kernel/mMtrainable_variables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUE"Adam/conv__block_6/conv2d_7/bias/mMtrainable_variables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE0Adam/conv__block_6/batch_normalization_6/gamma/mMtrainable_variables/28/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
УР
VARIABLE_VALUE/Adam/conv__block_6/batch_normalization_6/beta/mMtrainable_variables/29/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d/kernel/vDblock1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUEAdam/conv2d/bias/vBblock1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense/kernel/vCdense/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEAdam/dense/bias/vAdense/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/dense_1/kernel/vIoutputLayer/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/dense_1/bias/vGoutputLayer/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUE"Adam/conv__block/conv2d_1/kernel/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE Adam/conv__block/conv2d_1/bias/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ПМ
VARIABLE_VALUE,Adam/conv__block/batch_normalization/gamma/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ОЛ
VARIABLE_VALUE+Adam/conv__block/batch_normalization/beta/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUE$Adam/conv__block_1/conv2d_2/kernel/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUE"Adam/conv__block_1/conv2d_2/bias/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
УР
VARIABLE_VALUE0Adam/conv__block_1/batch_normalization_1/gamma/vLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ТП
VARIABLE_VALUE/Adam/conv__block_1/batch_normalization_1/beta/vLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUE$Adam/conv__block_2/conv2d_3/kernel/vMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUE"Adam/conv__block_2/conv2d_3/bias/vMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE0Adam/conv__block_2/batch_normalization_2/gamma/vMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
УР
VARIABLE_VALUE/Adam/conv__block_2/batch_normalization_2/beta/vMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUE$Adam/conv__block_3/conv2d_4/kernel/vMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUE"Adam/conv__block_3/conv2d_4/bias/vMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE0Adam/conv__block_3/batch_normalization_3/gamma/vMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
УР
VARIABLE_VALUE/Adam/conv__block_3/batch_normalization_3/beta/vMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUE$Adam/conv__block_4/conv2d_5/kernel/vMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUE"Adam/conv__block_4/conv2d_5/bias/vMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE0Adam/conv__block_4/batch_normalization_4/gamma/vMtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
УР
VARIABLE_VALUE/Adam/conv__block_4/batch_normalization_4/beta/vMtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUE$Adam/conv__block_5/conv2d_6/kernel/vMtrainable_variables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUE"Adam/conv__block_5/conv2d_6/bias/vMtrainable_variables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE0Adam/conv__block_5/batch_normalization_5/gamma/vMtrainable_variables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
УР
VARIABLE_VALUE/Adam/conv__block_5/batch_normalization_5/beta/vMtrainable_variables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUE$Adam/conv__block_6/conv2d_7/kernel/vMtrainable_variables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUE"Adam/conv__block_6/conv2d_7/bias/vMtrainable_variables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE0Adam/conv__block_6/batch_normalization_6/gamma/vMtrainable_variables/28/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
УР
VARIABLE_VALUE/Adam/conv__block_6/batch_normalization_6/beta/vMtrainable_variables/29/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
К
serving_default_input_1Placeholder*/
_output_shapes
:         00*
dtype0*$
shape:         00
Х
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d/kernelconv2d/biasconv__block/conv2d_1/kernelconv__block/conv2d_1/bias%conv__block/batch_normalization/gamma$conv__block/batch_normalization/beta+conv__block/batch_normalization/moving_mean/conv__block/batch_normalization/moving_varianceconv__block_1/conv2d_2/kernelconv__block_1/conv2d_2/bias)conv__block_1/batch_normalization_1/gamma(conv__block_1/batch_normalization_1/beta/conv__block_1/batch_normalization_1/moving_mean3conv__block_1/batch_normalization_1/moving_varianceconv__block_2/conv2d_3/kernelconv__block_2/conv2d_3/bias)conv__block_2/batch_normalization_2/gamma(conv__block_2/batch_normalization_2/beta/conv__block_2/batch_normalization_2/moving_mean3conv__block_2/batch_normalization_2/moving_varianceconv__block_3/conv2d_4/kernelconv__block_3/conv2d_4/bias)conv__block_3/batch_normalization_3/gamma(conv__block_3/batch_normalization_3/beta/conv__block_3/batch_normalization_3/moving_mean3conv__block_3/batch_normalization_3/moving_varianceconv__block_4/conv2d_5/kernelconv__block_4/conv2d_5/bias)conv__block_4/batch_normalization_4/gamma(conv__block_4/batch_normalization_4/beta/conv__block_4/batch_normalization_4/moving_mean3conv__block_4/batch_normalization_4/moving_varianceconv__block_5/conv2d_6/kernelconv__block_5/conv2d_6/bias)conv__block_5/batch_normalization_5/gamma(conv__block_5/batch_normalization_5/beta/conv__block_5/batch_normalization_5/moving_mean3conv__block_5/batch_normalization_5/moving_varianceconv__block_6/conv2d_7/kernelconv__block_6/conv2d_7/bias)conv__block_6/batch_normalization_6/gamma(conv__block_6/batch_normalization_6/beta/conv__block_6/batch_normalization_6/moving_mean3conv__block_6/batch_normalization_6/moving_variancedense/kernel
dense/biasdense_1/kerneldense_1/bias*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *R
_read_only_resource_inputs4
20	
 !"#$%&'()*+,-./0*0
config_proto 

CPU

GPU2*0J 8В *,
f'R%
#__inference_signature_wrapper_14339
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
б:
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/conv__block/conv2d_1/kernel/Read/ReadVariableOp-conv__block/conv2d_1/bias/Read/ReadVariableOp9conv__block/batch_normalization/gamma/Read/ReadVariableOp8conv__block/batch_normalization/beta/Read/ReadVariableOp1conv__block_1/conv2d_2/kernel/Read/ReadVariableOp/conv__block_1/conv2d_2/bias/Read/ReadVariableOp=conv__block_1/batch_normalization_1/gamma/Read/ReadVariableOp<conv__block_1/batch_normalization_1/beta/Read/ReadVariableOp1conv__block_2/conv2d_3/kernel/Read/ReadVariableOp/conv__block_2/conv2d_3/bias/Read/ReadVariableOp=conv__block_2/batch_normalization_2/gamma/Read/ReadVariableOp<conv__block_2/batch_normalization_2/beta/Read/ReadVariableOp1conv__block_3/conv2d_4/kernel/Read/ReadVariableOp/conv__block_3/conv2d_4/bias/Read/ReadVariableOp=conv__block_3/batch_normalization_3/gamma/Read/ReadVariableOp<conv__block_3/batch_normalization_3/beta/Read/ReadVariableOp1conv__block_4/conv2d_5/kernel/Read/ReadVariableOp/conv__block_4/conv2d_5/bias/Read/ReadVariableOp=conv__block_4/batch_normalization_4/gamma/Read/ReadVariableOp<conv__block_4/batch_normalization_4/beta/Read/ReadVariableOp1conv__block_5/conv2d_6/kernel/Read/ReadVariableOp/conv__block_5/conv2d_6/bias/Read/ReadVariableOp=conv__block_5/batch_normalization_5/gamma/Read/ReadVariableOp<conv__block_5/batch_normalization_5/beta/Read/ReadVariableOp1conv__block_6/conv2d_7/kernel/Read/ReadVariableOp/conv__block_6/conv2d_7/bias/Read/ReadVariableOp=conv__block_6/batch_normalization_6/gamma/Read/ReadVariableOp<conv__block_6/batch_normalization_6/beta/Read/ReadVariableOp?conv__block/batch_normalization/moving_mean/Read/ReadVariableOpCconv__block/batch_normalization/moving_variance/Read/ReadVariableOpCconv__block_1/batch_normalization_1/moving_mean/Read/ReadVariableOpGconv__block_1/batch_normalization_1/moving_variance/Read/ReadVariableOpCconv__block_2/batch_normalization_2/moving_mean/Read/ReadVariableOpGconv__block_2/batch_normalization_2/moving_variance/Read/ReadVariableOpCconv__block_3/batch_normalization_3/moving_mean/Read/ReadVariableOpGconv__block_3/batch_normalization_3/moving_variance/Read/ReadVariableOpCconv__block_4/batch_normalization_4/moving_mean/Read/ReadVariableOpGconv__block_4/batch_normalization_4/moving_variance/Read/ReadVariableOpCconv__block_5/batch_normalization_5/moving_mean/Read/ReadVariableOpGconv__block_5/batch_normalization_5/moving_variance/Read/ReadVariableOpCconv__block_6/batch_normalization_6/moving_mean/Read/ReadVariableOpGconv__block_6/batch_normalization_6/moving_variance/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp(Adam/conv2d/kernel/m/Read/ReadVariableOp&Adam/conv2d/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp6Adam/conv__block/conv2d_1/kernel/m/Read/ReadVariableOp4Adam/conv__block/conv2d_1/bias/m/Read/ReadVariableOp@Adam/conv__block/batch_normalization/gamma/m/Read/ReadVariableOp?Adam/conv__block/batch_normalization/beta/m/Read/ReadVariableOp8Adam/conv__block_1/conv2d_2/kernel/m/Read/ReadVariableOp6Adam/conv__block_1/conv2d_2/bias/m/Read/ReadVariableOpDAdam/conv__block_1/batch_normalization_1/gamma/m/Read/ReadVariableOpCAdam/conv__block_1/batch_normalization_1/beta/m/Read/ReadVariableOp8Adam/conv__block_2/conv2d_3/kernel/m/Read/ReadVariableOp6Adam/conv__block_2/conv2d_3/bias/m/Read/ReadVariableOpDAdam/conv__block_2/batch_normalization_2/gamma/m/Read/ReadVariableOpCAdam/conv__block_2/batch_normalization_2/beta/m/Read/ReadVariableOp8Adam/conv__block_3/conv2d_4/kernel/m/Read/ReadVariableOp6Adam/conv__block_3/conv2d_4/bias/m/Read/ReadVariableOpDAdam/conv__block_3/batch_normalization_3/gamma/m/Read/ReadVariableOpCAdam/conv__block_3/batch_normalization_3/beta/m/Read/ReadVariableOp8Adam/conv__block_4/conv2d_5/kernel/m/Read/ReadVariableOp6Adam/conv__block_4/conv2d_5/bias/m/Read/ReadVariableOpDAdam/conv__block_4/batch_normalization_4/gamma/m/Read/ReadVariableOpCAdam/conv__block_4/batch_normalization_4/beta/m/Read/ReadVariableOp8Adam/conv__block_5/conv2d_6/kernel/m/Read/ReadVariableOp6Adam/conv__block_5/conv2d_6/bias/m/Read/ReadVariableOpDAdam/conv__block_5/batch_normalization_5/gamma/m/Read/ReadVariableOpCAdam/conv__block_5/batch_normalization_5/beta/m/Read/ReadVariableOp8Adam/conv__block_6/conv2d_7/kernel/m/Read/ReadVariableOp6Adam/conv__block_6/conv2d_7/bias/m/Read/ReadVariableOpDAdam/conv__block_6/batch_normalization_6/gamma/m/Read/ReadVariableOpCAdam/conv__block_6/batch_normalization_6/beta/m/Read/ReadVariableOp(Adam/conv2d/kernel/v/Read/ReadVariableOp&Adam/conv2d/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp6Adam/conv__block/conv2d_1/kernel/v/Read/ReadVariableOp4Adam/conv__block/conv2d_1/bias/v/Read/ReadVariableOp@Adam/conv__block/batch_normalization/gamma/v/Read/ReadVariableOp?Adam/conv__block/batch_normalization/beta/v/Read/ReadVariableOp8Adam/conv__block_1/conv2d_2/kernel/v/Read/ReadVariableOp6Adam/conv__block_1/conv2d_2/bias/v/Read/ReadVariableOpDAdam/conv__block_1/batch_normalization_1/gamma/v/Read/ReadVariableOpCAdam/conv__block_1/batch_normalization_1/beta/v/Read/ReadVariableOp8Adam/conv__block_2/conv2d_3/kernel/v/Read/ReadVariableOp6Adam/conv__block_2/conv2d_3/bias/v/Read/ReadVariableOpDAdam/conv__block_2/batch_normalization_2/gamma/v/Read/ReadVariableOpCAdam/conv__block_2/batch_normalization_2/beta/v/Read/ReadVariableOp8Adam/conv__block_3/conv2d_4/kernel/v/Read/ReadVariableOp6Adam/conv__block_3/conv2d_4/bias/v/Read/ReadVariableOpDAdam/conv__block_3/batch_normalization_3/gamma/v/Read/ReadVariableOpCAdam/conv__block_3/batch_normalization_3/beta/v/Read/ReadVariableOp8Adam/conv__block_4/conv2d_5/kernel/v/Read/ReadVariableOp6Adam/conv__block_4/conv2d_5/bias/v/Read/ReadVariableOpDAdam/conv__block_4/batch_normalization_4/gamma/v/Read/ReadVariableOpCAdam/conv__block_4/batch_normalization_4/beta/v/Read/ReadVariableOp8Adam/conv__block_5/conv2d_6/kernel/v/Read/ReadVariableOp6Adam/conv__block_5/conv2d_6/bias/v/Read/ReadVariableOpDAdam/conv__block_5/batch_normalization_5/gamma/v/Read/ReadVariableOpCAdam/conv__block_5/batch_normalization_5/beta/v/Read/ReadVariableOp8Adam/conv__block_6/conv2d_7/kernel/v/Read/ReadVariableOp6Adam/conv__block_6/conv2d_7/bias/v/Read/ReadVariableOpDAdam/conv__block_6/batch_normalization_6/gamma/v/Read/ReadVariableOpCAdam/conv__block_6/batch_normalization_6/beta/v/Read/ReadVariableOpConst*М
TinД
Б2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *'
f"R 
__inference__traced_save_17435
╪&
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateconv__block/conv2d_1/kernelconv__block/conv2d_1/bias%conv__block/batch_normalization/gamma$conv__block/batch_normalization/betaconv__block_1/conv2d_2/kernelconv__block_1/conv2d_2/bias)conv__block_1/batch_normalization_1/gamma(conv__block_1/batch_normalization_1/betaconv__block_2/conv2d_3/kernelconv__block_2/conv2d_3/bias)conv__block_2/batch_normalization_2/gamma(conv__block_2/batch_normalization_2/betaconv__block_3/conv2d_4/kernelconv__block_3/conv2d_4/bias)conv__block_3/batch_normalization_3/gamma(conv__block_3/batch_normalization_3/betaconv__block_4/conv2d_5/kernelconv__block_4/conv2d_5/bias)conv__block_4/batch_normalization_4/gamma(conv__block_4/batch_normalization_4/betaconv__block_5/conv2d_6/kernelconv__block_5/conv2d_6/bias)conv__block_5/batch_normalization_5/gamma(conv__block_5/batch_normalization_5/betaconv__block_6/conv2d_7/kernelconv__block_6/conv2d_7/bias)conv__block_6/batch_normalization_6/gamma(conv__block_6/batch_normalization_6/beta+conv__block/batch_normalization/moving_mean/conv__block/batch_normalization/moving_variance/conv__block_1/batch_normalization_1/moving_mean3conv__block_1/batch_normalization_1/moving_variance/conv__block_2/batch_normalization_2/moving_mean3conv__block_2/batch_normalization_2/moving_variance/conv__block_3/batch_normalization_3/moving_mean3conv__block_3/batch_normalization_3/moving_variance/conv__block_4/batch_normalization_4/moving_mean3conv__block_4/batch_normalization_4/moving_variance/conv__block_5/batch_normalization_5/moving_mean3conv__block_5/batch_normalization_5/moving_variance/conv__block_6/batch_normalization_6/moving_mean3conv__block_6/batch_normalization_6/moving_variancetotalcounttotal_1count_1Adam/conv2d/kernel/mAdam/conv2d/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/m"Adam/conv__block/conv2d_1/kernel/m Adam/conv__block/conv2d_1/bias/m,Adam/conv__block/batch_normalization/gamma/m+Adam/conv__block/batch_normalization/beta/m$Adam/conv__block_1/conv2d_2/kernel/m"Adam/conv__block_1/conv2d_2/bias/m0Adam/conv__block_1/batch_normalization_1/gamma/m/Adam/conv__block_1/batch_normalization_1/beta/m$Adam/conv__block_2/conv2d_3/kernel/m"Adam/conv__block_2/conv2d_3/bias/m0Adam/conv__block_2/batch_normalization_2/gamma/m/Adam/conv__block_2/batch_normalization_2/beta/m$Adam/conv__block_3/conv2d_4/kernel/m"Adam/conv__block_3/conv2d_4/bias/m0Adam/conv__block_3/batch_normalization_3/gamma/m/Adam/conv__block_3/batch_normalization_3/beta/m$Adam/conv__block_4/conv2d_5/kernel/m"Adam/conv__block_4/conv2d_5/bias/m0Adam/conv__block_4/batch_normalization_4/gamma/m/Adam/conv__block_4/batch_normalization_4/beta/m$Adam/conv__block_5/conv2d_6/kernel/m"Adam/conv__block_5/conv2d_6/bias/m0Adam/conv__block_5/batch_normalization_5/gamma/m/Adam/conv__block_5/batch_normalization_5/beta/m$Adam/conv__block_6/conv2d_7/kernel/m"Adam/conv__block_6/conv2d_7/bias/m0Adam/conv__block_6/batch_normalization_6/gamma/m/Adam/conv__block_6/batch_normalization_6/beta/mAdam/conv2d/kernel/vAdam/conv2d/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v"Adam/conv__block/conv2d_1/kernel/v Adam/conv__block/conv2d_1/bias/v,Adam/conv__block/batch_normalization/gamma/v+Adam/conv__block/batch_normalization/beta/v$Adam/conv__block_1/conv2d_2/kernel/v"Adam/conv__block_1/conv2d_2/bias/v0Adam/conv__block_1/batch_normalization_1/gamma/v/Adam/conv__block_1/batch_normalization_1/beta/v$Adam/conv__block_2/conv2d_3/kernel/v"Adam/conv__block_2/conv2d_3/bias/v0Adam/conv__block_2/batch_normalization_2/gamma/v/Adam/conv__block_2/batch_normalization_2/beta/v$Adam/conv__block_3/conv2d_4/kernel/v"Adam/conv__block_3/conv2d_4/bias/v0Adam/conv__block_3/batch_normalization_3/gamma/v/Adam/conv__block_3/batch_normalization_3/beta/v$Adam/conv__block_4/conv2d_5/kernel/v"Adam/conv__block_4/conv2d_5/bias/v0Adam/conv__block_4/batch_normalization_4/gamma/v/Adam/conv__block_4/batch_normalization_4/beta/v$Adam/conv__block_5/conv2d_6/kernel/v"Adam/conv__block_5/conv2d_6/bias/v0Adam/conv__block_5/batch_normalization_5/gamma/v/Adam/conv__block_5/batch_normalization_5/beta/v$Adam/conv__block_6/conv2d_7/kernel/v"Adam/conv__block_6/conv2d_7/bias/v0Adam/conv__block_6/batch_normalization_6/gamma/v/Adam/conv__block_6/batch_normalization_6/beta/v*Л
TinГ
А2~*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__traced_restore_17820│е-
в
и
5__inference_batch_normalization_6_layer_call_fn_16923

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall╢
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_129172
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,                           А::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
д
и
5__inference_batch_normalization_5_layer_call_fn_16752

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall╕
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_126022
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,                           А::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
ч
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_16291

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:         @2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
└
a
B__inference_dropout_layer_call_and_return_conditional_losses_15918

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         00 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         00 *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2
dropout/GreaterEqual/y╞
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         00 2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         00 2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         00 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         00 2

Identity"
identityIdentity:output:0*.
_input_shapes
:         00 :W S
/
_output_shapes
:         00 
 
_user_specified_nameinputs
ъ	
▄
C__inference_conv2d_5_layer_call_and_return_conditional_losses_16495

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:``*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

`*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

`2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         

`2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         `::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         `
 
_user_specified_nameinputs
о
K
/__inference_max_pooling2d_3_layer_call_fn_13213

inputs
identityю
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_132072
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ў
╣
-__inference_conv__block_2_layer_call_fn_15273
x
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCall░
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_2_layer_call_and_return_conditional_losses_117412
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         @::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:         @

_user_specified_namex
И2
ю
F__inference_conv__block_layer_call_and_return_conditional_losses_15040
x+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource/
+batch_normalization_readvariableop_resource1
-batch_normalization_readvariableop_1_resource@
<batch_normalization_fusedbatchnormv3_readvariableop_resourceB
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource
identityИв"batch_normalization/AssignNewValueв$batch_normalization/AssignNewValue_1в3batch_normalization/FusedBatchNormV3/ReadVariableOpв5batch_normalization/FusedBatchNormV3/ReadVariableOp_1в"batch_normalization/ReadVariableOpв$batch_normalization/ReadVariableOp_1вconv2d_1/BiasAdd/ReadVariableOpвconv2d_1/Conv2D/ReadVariableOp░
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
conv2d_1/Conv2D/ReadVariableOp╣
conv2d_1/Conv2DConv2Dx&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 *
paddingSAME*
strides
2
conv2d_1/Conv2Dз
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOpм
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 2
conv2d_1/BiasAdd░
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype02$
"batch_normalization/ReadVariableOp╢
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype02&
$batch_normalization/ReadVariableOp_1у
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype025
3batch_normalization/FusedBatchNormV3/ReadVariableOpщ
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype027
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1у
$batch_normalization/FusedBatchNormV3FusedBatchNormV3conv2d_1/BiasAdd:output:0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         00 : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2&
$batch_normalization/FusedBatchNormV3е
"batch_normalization/AssignNewValueAssignVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource1batch_normalization/FusedBatchNormV3:batch_mean:04^batch_normalization/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*O
_classE
CAloc:@batch_normalization/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02$
"batch_normalization/AssignNewValue│
$batch_normalization/AssignNewValue_1AssignVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource5batch_normalization/FusedBatchNormV3:batch_variance:06^batch_normalization/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*Q
_classG
ECloc:@batch_normalization/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02&
$batch_normalization/AssignNewValue_1О
activation/ReluRelu(batch_normalization/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         00 2
activation/Relus
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout/dropout/Constк
dropout/dropout/MulMulactivation/Relu:activations:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:         00 2
dropout/dropout/Mul{
dropout/dropout/ShapeShapeactivation/Relu:activations:0*
T0*
_output_shapes
:2
dropout/dropout/Shape╘
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:         00 *
dtype02.
,dropout/dropout/random_uniform/RandomUniformЕ
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2 
dropout/dropout/GreaterEqual/yц
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         00 2
dropout/dropout/GreaterEqualЯ
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         00 2
dropout/dropout/Castв
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:         00 2
dropout/dropout/Mul_1╛
IdentityIdentitydropout/dropout/Mul_1:z:0#^batch_normalization/AssignNewValue%^batch_normalization/AssignNewValue_14^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_1 ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         00 2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         00 ::::::2H
"batch_normalization/AssignNewValue"batch_normalization/AssignNewValue2L
$batch_normalization/AssignNewValue_1$batch_normalization/AssignNewValue_12j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_12B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:R N
/
_output_shapes
:         00 

_user_specified_namex
Й
┐
-__inference_conv__block_3_layer_call_fn_12114
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCall╢
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_3_layer_call_and_return_conditional_losses_120992
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         `2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         @::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:         @
!
_user_specified_name	input_1
ы
b
D__inference_dropout_5_layer_call_and_return_conditional_losses_16843

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:         А2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ы
b
D__inference_dropout_5_layer_call_and_return_conditional_losses_12746

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:         А2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Д
Ч
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11958

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         `:`:`:`:`:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         `2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         `::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         `
 
_user_specified_nameinputs
╠
Ч
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_11163

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
└
є
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_16542

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           `:`:`:`:`:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           `2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           `::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           `
 
_user_specified_nameinputs
╡
E
)__inference_dropout_3_layer_call_fn_16485

inputs
identity═
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_120422
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         `2

Identity"
identityIdentity:output:0*.
_input_shapes
:         `:W S
/
_output_shapes
:         `
 
_user_specified_nameinputs
╓
и
5__inference_batch_normalization_4_layer_call_fn_16619

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_123042
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         

`2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         

`::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         

`
 
_user_specified_nameinputs
╠
Ч
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_12213

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           `:`:`:`:`:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           `2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           `::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           `
 
_user_specified_nameinputs
ж 
┤
H__inference_conv__block_2_layer_call_and_return_conditional_losses_15256
x+
'conv2d_3_conv2d_readvariableop_resource,
(conv2d_3_biasadd_readvariableop_resource1
-batch_normalization_2_readvariableop_resource3
/batch_normalization_2_readvariableop_1_resourceB
>batch_normalization_2_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource
identityИв5batch_normalization_2/FusedBatchNormV3/ReadVariableOpв7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_2/ReadVariableOpв&batch_normalization_2/ReadVariableOp_1вconv2d_3/BiasAdd/ReadVariableOpвconv2d_3/Conv2D/ReadVariableOp░
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_3/Conv2D/ReadVariableOp╣
conv2d_3/Conv2DConv2Dx&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
conv2d_3/Conv2Dз
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_3/BiasAdd/ReadVariableOpм
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_3/BiasAdd╢
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource*
_output_shapes
:@*
dtype02&
$batch_normalization_2/ReadVariableOp╝
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_2/ReadVariableOp_1щ
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpя
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype029
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1с
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3conv2d_3/BiasAdd:output:0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2(
&batch_normalization_2/FusedBatchNormV3Ф
activation_2/ReluRelu*batch_normalization_2/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         @2
activation_2/ReluП
dropout_2/IdentityIdentityactivation_2/Relu:activations:0*
T0*/
_output_shapes
:         @2
dropout_2/Identity№
IdentityIdentitydropout_2/Identity:output:06^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_1 ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         @::::::2n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_12B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp:R N
/
_output_shapes
:         @

_user_specified_namex
ч
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_16107

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:         @2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
║ 
┤
H__inference_conv__block_6_layer_call_and_return_conditional_losses_15636
x+
'conv2d_7_conv2d_readvariableop_resource,
(conv2d_7_biasadd_readvariableop_resource1
-batch_normalization_6_readvariableop_resource3
/batch_normalization_6_readvariableop_1_resourceB
>batch_normalization_6_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource
identityИв5batch_normalization_6/FusedBatchNormV3/ReadVariableOpв7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_6/ReadVariableOpв&batch_normalization_6/ReadVariableOp_1вconv2d_7/BiasAdd/ReadVariableOpвconv2d_7/Conv2D/ReadVariableOp▓
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02 
conv2d_7/Conv2D/ReadVariableOp╗
conv2d_7/Conv2DConv2Dx&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
2
conv2d_7/Conv2Dи
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
conv2d_7/BiasAdd/ReadVariableOpн
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
conv2d_7/BiasAdd╖
$batch_normalization_6/ReadVariableOpReadVariableOp-batch_normalization_6_readvariableop_resource*
_output_shapes	
:А*
dtype02&
$batch_normalization_6/ReadVariableOp╜
&batch_normalization_6/ReadVariableOp_1ReadVariableOp/batch_normalization_6_readvariableop_1_resource*
_output_shapes	
:А*
dtype02(
&batch_normalization_6/ReadVariableOp_1ъ
5batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype027
5batch_normalization_6/FusedBatchNormV3/ReadVariableOpЁ
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype029
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ц
&batch_normalization_6/FusedBatchNormV3FusedBatchNormV3conv2d_7/BiasAdd:output:0,batch_normalization_6/ReadVariableOp:value:0.batch_normalization_6/ReadVariableOp_1:value:0=batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2(
&batch_normalization_6/FusedBatchNormV3Х
activation_6/ReluRelu*batch_normalization_6/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         А2
activation_6/ReluР
dropout_6/IdentityIdentityactivation_6/Relu:activations:0*
T0*0
_output_shapes
:         А2
dropout_6/Identity¤
IdentityIdentitydropout_6/Identity:output:06^batch_normalization_6/FusedBatchNormV3/ReadVariableOp8^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_6/ReadVariableOp'^batch_normalization_6/ReadVariableOp_1 ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         А::::::2n
5batch_normalization_6/FusedBatchNormV3/ReadVariableOp5batch_normalization_6/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_17batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_6/ReadVariableOp$batch_normalization_6/ReadVariableOp2P
&batch_normalization_6/ReadVariableOp_1&batch_normalization_6/ReadVariableOp_12B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp:S O
0
_output_shapes
:         А

_user_specified_namex
┼
b
)__inference_dropout_6_layer_call_fn_17032

inputs
identityИвStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_130872
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ж
ч
H__inference_conv__block_1_layer_call_and_return_conditional_losses_11372
input_1
conv2d_2_11355
conv2d_2_11357
batch_normalization_1_11360
batch_normalization_1_11362
batch_normalization_1_11364
batch_normalization_1_11366
identityИв-batch_normalization_1/StatefulPartitionedCallв conv2d_2/StatefulPartitionedCallЭ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_2_11355conv2d_2_11357*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_112192"
 conv2d_2/StatefulPartitionedCall╛
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_1_11360batch_normalization_1_11362batch_normalization_1_11364batch_normalization_1_11366*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_112722/
-batch_normalization_1/StatefulPartitionedCallЪ
activation_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_113132
activation_1/PartitionedCallА
dropout_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_113382
dropout_1/PartitionedCall╤
IdentityIdentity"dropout_1/PartitionedCall:output:0.^batch_normalization_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:          ::::::2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall:X T
/
_output_shapes
:          
!
_user_specified_name	input_1
ў
╣
-__inference_conv__block_3_layer_call_fn_15368
x
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCall░
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_3_layer_call_and_return_conditional_losses_120992
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         `2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         @::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:         @

_user_specified_namex
А
c
D__inference_dropout_7_layer_call_and_return_conditional_losses_15714

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape┤
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>2
dropout/GreaterEqual/y╛
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         @2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         @2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
є
╖
+__inference_conv__block_layer_call_fn_15083
x
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv__block_layer_call_and_return_conditional_losses_110372
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         00 2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         00 ::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:         00 

_user_specified_namex
Й
┐
-__inference_conv__block_2_layer_call_fn_11756
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCall╢
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_2_layer_call_and_return_conditional_losses_117412
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         @::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:         @
!
_user_specified_name	input_1
а
и
5__inference_batch_normalization_3_layer_call_fn_16448

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           `*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_118982
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           `2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           `::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           `
 
_user_specified_nameinputs
╘
Л
H__inference_conv__block_4_layer_call_and_return_conditional_losses_12402
input_1
conv2d_5_12280
conv2d_5_12282
batch_normalization_4_12349
batch_normalization_4_12351
batch_normalization_4_12353
batch_normalization_4_12355
identityИв-batch_normalization_4/StatefulPartitionedCallв conv2d_5/StatefulPartitionedCallв!dropout_4/StatefulPartitionedCallЭ
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_5_12280conv2d_5_12282*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_122692"
 conv2d_5/StatefulPartitionedCall╝
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0batch_normalization_4_12349batch_normalization_4_12351batch_normalization_4_12353batch_normalization_4_12355*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_123042/
-batch_normalization_4/StatefulPartitionedCallЪ
activation_4/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_4_layer_call_and_return_conditional_losses_123632
activation_4/PartitionedCallШ
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall%activation_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_123832#
!dropout_4/StatefulPartitionedCall¤
IdentityIdentity*dropout_4/StatefulPartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall*
T0*/
_output_shapes
:         

`2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         `::::::2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall:X T
/
_output_shapes
:         `
!
_user_specified_name	input_1
╡
E
)__inference_dropout_2_layer_call_fn_16301

inputs
identity═
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_116842
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╢ 
┤
H__inference_conv__block_5_layer_call_and_return_conditional_losses_15541
x+
'conv2d_6_conv2d_readvariableop_resource,
(conv2d_6_biasadd_readvariableop_resource1
-batch_normalization_5_readvariableop_resource3
/batch_normalization_5_readvariableop_1_resourceB
>batch_normalization_5_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource
identityИв5batch_normalization_5/FusedBatchNormV3/ReadVariableOpв7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_5/ReadVariableOpв&batch_normalization_5/ReadVariableOp_1вconv2d_6/BiasAdd/ReadVariableOpвconv2d_6/Conv2D/ReadVariableOp▒
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*'
_output_shapes
:`А*
dtype02 
conv2d_6/Conv2D/ReadVariableOp║
conv2d_6/Conv2DConv2Dx&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
conv2d_6/Conv2Dи
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
conv2d_6/BiasAdd/ReadVariableOpн
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
conv2d_6/BiasAdd╖
$batch_normalization_5/ReadVariableOpReadVariableOp-batch_normalization_5_readvariableop_resource*
_output_shapes	
:А*
dtype02&
$batch_normalization_5/ReadVariableOp╜
&batch_normalization_5/ReadVariableOp_1ReadVariableOp/batch_normalization_5_readvariableop_1_resource*
_output_shapes	
:А*
dtype02(
&batch_normalization_5/ReadVariableOp_1ъ
5batch_normalization_5/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype027
5batch_normalization_5/FusedBatchNormV3/ReadVariableOpЁ
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype029
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ц
&batch_normalization_5/FusedBatchNormV3FusedBatchNormV3conv2d_6/BiasAdd:output:0,batch_normalization_5/ReadVariableOp:value:0.batch_normalization_5/ReadVariableOp_1:value:0=batch_normalization_5/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2(
&batch_normalization_5/FusedBatchNormV3Х
activation_5/ReluRelu*batch_normalization_5/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         А2
activation_5/ReluР
dropout_5/IdentityIdentityactivation_5/Relu:activations:0*
T0*0
_output_shapes
:         А2
dropout_5/Identity¤
IdentityIdentitydropout_5/Identity:output:06^batch_normalization_5/FusedBatchNormV3/ReadVariableOp8^batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_5/ReadVariableOp'^batch_normalization_5/ReadVariableOp_1 ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         `::::::2n
5batch_normalization_5/FusedBatchNormV3/ReadVariableOp5batch_normalization_5/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_17batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_5/ReadVariableOp$batch_normalization_5/ReadVariableOp2P
&batch_normalization_5/ReadVariableOp_1&batch_normalization_5/ReadVariableOp_12B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp:R N
/
_output_shapes
:         `

_user_specified_namex
┬
Е
H__inference_conv__block_2_layer_call_and_return_conditional_losses_11741
x
conv2d_3_11724
conv2d_3_11726
batch_normalization_2_11729
batch_normalization_2_11731
batch_normalization_2_11733
batch_normalization_2_11735
identityИв-batch_normalization_2/StatefulPartitionedCallв conv2d_3/StatefulPartitionedCallв!dropout_2/StatefulPartitionedCallЧ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCallxconv2d_3_11724conv2d_3_11726*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_115652"
 conv2d_3/StatefulPartitionedCall╝
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0batch_normalization_2_11729batch_normalization_2_11731batch_normalization_2_11733batch_normalization_2_11735*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_116002/
-batch_normalization_2/StatefulPartitionedCallЪ
activation_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_2_layer_call_and_return_conditional_losses_116592
activation_2/PartitionedCallШ
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_116792#
!dropout_2/StatefulPartitionedCall¤
IdentityIdentity*dropout_2/StatefulPartitionedCall:output:0.^batch_normalization_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         @::::::2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall:R N
/
_output_shapes
:         @

_user_specified_namex
Л
┐
-__inference_conv__block_2_layer_call_fn_11793
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCall╕
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_2_layer_call_and_return_conditional_losses_117782
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         @::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:         @
!
_user_specified_name	input_1
┘
c
G__inference_activation_6_layer_call_and_return_conditional_losses_17005

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:         А2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╒
c
G__inference_activation_4_layer_call_and_return_conditional_losses_16637

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:         

`2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         

`2

Identity"
identityIdentity:output:0*.
_input_shapes
:         

`:W S
/
_output_shapes
:         

`
 
_user_specified_nameinputs
═3
Д
H__inference_conv__block_5_layer_call_and_return_conditional_losses_15515
x+
'conv2d_6_conv2d_readvariableop_resource,
(conv2d_6_biasadd_readvariableop_resource1
-batch_normalization_5_readvariableop_resource3
/batch_normalization_5_readvariableop_1_resourceB
>batch_normalization_5_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource
identityИв$batch_normalization_5/AssignNewValueв&batch_normalization_5/AssignNewValue_1в5batch_normalization_5/FusedBatchNormV3/ReadVariableOpв7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_5/ReadVariableOpв&batch_normalization_5/ReadVariableOp_1вconv2d_6/BiasAdd/ReadVariableOpвconv2d_6/Conv2D/ReadVariableOp▒
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*'
_output_shapes
:`А*
dtype02 
conv2d_6/Conv2D/ReadVariableOp║
conv2d_6/Conv2DConv2Dx&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
conv2d_6/Conv2Dи
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
conv2d_6/BiasAdd/ReadVariableOpн
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
conv2d_6/BiasAdd╖
$batch_normalization_5/ReadVariableOpReadVariableOp-batch_normalization_5_readvariableop_resource*
_output_shapes	
:А*
dtype02&
$batch_normalization_5/ReadVariableOp╜
&batch_normalization_5/ReadVariableOp_1ReadVariableOp/batch_normalization_5_readvariableop_1_resource*
_output_shapes	
:А*
dtype02(
&batch_normalization_5/ReadVariableOp_1ъ
5batch_normalization_5/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype027
5batch_normalization_5/FusedBatchNormV3/ReadVariableOpЁ
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype029
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1Ї
&batch_normalization_5/FusedBatchNormV3FusedBatchNormV3conv2d_6/BiasAdd:output:0,batch_normalization_5/ReadVariableOp:value:0.batch_normalization_5/ReadVariableOp_1:value:0=batch_normalization_5/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2(
&batch_normalization_5/FusedBatchNormV3▒
$batch_normalization_5/AssignNewValueAssignVariableOp>batch_normalization_5_fusedbatchnormv3_readvariableop_resource3batch_normalization_5/FusedBatchNormV3:batch_mean:06^batch_normalization_5/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*Q
_classG
ECloc:@batch_normalization_5/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02&
$batch_normalization_5/AssignNewValue┐
&batch_normalization_5/AssignNewValue_1AssignVariableOp@batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_5/FusedBatchNormV3:batch_variance:08^batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*S
_classI
GEloc:@batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02(
&batch_normalization_5/AssignNewValue_1Х
activation_5/ReluRelu*batch_normalization_5/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         А2
activation_5/Reluw
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout_5/dropout/Const│
dropout_5/dropout/MulMulactivation_5/Relu:activations:0 dropout_5/dropout/Const:output:0*
T0*0
_output_shapes
:         А2
dropout_5/dropout/MulБ
dropout_5/dropout/ShapeShapeactivation_5/Relu:activations:0*
T0*
_output_shapes
:2
dropout_5/dropout/Shape█
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype020
.dropout_5/dropout/random_uniform/RandomUniformЙ
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2"
 dropout_5/dropout/GreaterEqual/yя
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2 
dropout_5/dropout/GreaterEqualж
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2
dropout_5/dropout/Castл
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*0
_output_shapes
:         А2
dropout_5/dropout/Mul_1═
IdentityIdentitydropout_5/dropout/Mul_1:z:0%^batch_normalization_5/AssignNewValue'^batch_normalization_5/AssignNewValue_16^batch_normalization_5/FusedBatchNormV3/ReadVariableOp8^batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_5/ReadVariableOp'^batch_normalization_5/ReadVariableOp_1 ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         `::::::2L
$batch_normalization_5/AssignNewValue$batch_normalization_5/AssignNewValue2P
&batch_normalization_5/AssignNewValue_1&batch_normalization_5/AssignNewValue_12n
5batch_normalization_5/FusedBatchNormV3/ReadVariableOp5batch_normalization_5/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_17batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_5/ReadVariableOp$batch_normalization_5/ReadVariableOp2P
&batch_normalization_5/ReadVariableOp_1&batch_normalization_5/ReadVariableOp_12B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp:R N
/
_output_shapes
:         `

_user_specified_namex
е 
╬B
__inference__traced_save_17435
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_conv__block_conv2d_1_kernel_read_readvariableop8
4savev2_conv__block_conv2d_1_bias_read_readvariableopD
@savev2_conv__block_batch_normalization_gamma_read_readvariableopC
?savev2_conv__block_batch_normalization_beta_read_readvariableop<
8savev2_conv__block_1_conv2d_2_kernel_read_readvariableop:
6savev2_conv__block_1_conv2d_2_bias_read_readvariableopH
Dsavev2_conv__block_1_batch_normalization_1_gamma_read_readvariableopG
Csavev2_conv__block_1_batch_normalization_1_beta_read_readvariableop<
8savev2_conv__block_2_conv2d_3_kernel_read_readvariableop:
6savev2_conv__block_2_conv2d_3_bias_read_readvariableopH
Dsavev2_conv__block_2_batch_normalization_2_gamma_read_readvariableopG
Csavev2_conv__block_2_batch_normalization_2_beta_read_readvariableop<
8savev2_conv__block_3_conv2d_4_kernel_read_readvariableop:
6savev2_conv__block_3_conv2d_4_bias_read_readvariableopH
Dsavev2_conv__block_3_batch_normalization_3_gamma_read_readvariableopG
Csavev2_conv__block_3_batch_normalization_3_beta_read_readvariableop<
8savev2_conv__block_4_conv2d_5_kernel_read_readvariableop:
6savev2_conv__block_4_conv2d_5_bias_read_readvariableopH
Dsavev2_conv__block_4_batch_normalization_4_gamma_read_readvariableopG
Csavev2_conv__block_4_batch_normalization_4_beta_read_readvariableop<
8savev2_conv__block_5_conv2d_6_kernel_read_readvariableop:
6savev2_conv__block_5_conv2d_6_bias_read_readvariableopH
Dsavev2_conv__block_5_batch_normalization_5_gamma_read_readvariableopG
Csavev2_conv__block_5_batch_normalization_5_beta_read_readvariableop<
8savev2_conv__block_6_conv2d_7_kernel_read_readvariableop:
6savev2_conv__block_6_conv2d_7_bias_read_readvariableopH
Dsavev2_conv__block_6_batch_normalization_6_gamma_read_readvariableopG
Csavev2_conv__block_6_batch_normalization_6_beta_read_readvariableopJ
Fsavev2_conv__block_batch_normalization_moving_mean_read_readvariableopN
Jsavev2_conv__block_batch_normalization_moving_variance_read_readvariableopN
Jsavev2_conv__block_1_batch_normalization_1_moving_mean_read_readvariableopR
Nsavev2_conv__block_1_batch_normalization_1_moving_variance_read_readvariableopN
Jsavev2_conv__block_2_batch_normalization_2_moving_mean_read_readvariableopR
Nsavev2_conv__block_2_batch_normalization_2_moving_variance_read_readvariableopN
Jsavev2_conv__block_3_batch_normalization_3_moving_mean_read_readvariableopR
Nsavev2_conv__block_3_batch_normalization_3_moving_variance_read_readvariableopN
Jsavev2_conv__block_4_batch_normalization_4_moving_mean_read_readvariableopR
Nsavev2_conv__block_4_batch_normalization_4_moving_variance_read_readvariableopN
Jsavev2_conv__block_5_batch_normalization_5_moving_mean_read_readvariableopR
Nsavev2_conv__block_5_batch_normalization_5_moving_variance_read_readvariableopN
Jsavev2_conv__block_6_batch_normalization_6_moving_mean_read_readvariableopR
Nsavev2_conv__block_6_batch_normalization_6_moving_variance_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop3
/savev2_adam_conv2d_kernel_m_read_readvariableop1
-savev2_adam_conv2d_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableopA
=savev2_adam_conv__block_conv2d_1_kernel_m_read_readvariableop?
;savev2_adam_conv__block_conv2d_1_bias_m_read_readvariableopK
Gsavev2_adam_conv__block_batch_normalization_gamma_m_read_readvariableopJ
Fsavev2_adam_conv__block_batch_normalization_beta_m_read_readvariableopC
?savev2_adam_conv__block_1_conv2d_2_kernel_m_read_readvariableopA
=savev2_adam_conv__block_1_conv2d_2_bias_m_read_readvariableopO
Ksavev2_adam_conv__block_1_batch_normalization_1_gamma_m_read_readvariableopN
Jsavev2_adam_conv__block_1_batch_normalization_1_beta_m_read_readvariableopC
?savev2_adam_conv__block_2_conv2d_3_kernel_m_read_readvariableopA
=savev2_adam_conv__block_2_conv2d_3_bias_m_read_readvariableopO
Ksavev2_adam_conv__block_2_batch_normalization_2_gamma_m_read_readvariableopN
Jsavev2_adam_conv__block_2_batch_normalization_2_beta_m_read_readvariableopC
?savev2_adam_conv__block_3_conv2d_4_kernel_m_read_readvariableopA
=savev2_adam_conv__block_3_conv2d_4_bias_m_read_readvariableopO
Ksavev2_adam_conv__block_3_batch_normalization_3_gamma_m_read_readvariableopN
Jsavev2_adam_conv__block_3_batch_normalization_3_beta_m_read_readvariableopC
?savev2_adam_conv__block_4_conv2d_5_kernel_m_read_readvariableopA
=savev2_adam_conv__block_4_conv2d_5_bias_m_read_readvariableopO
Ksavev2_adam_conv__block_4_batch_normalization_4_gamma_m_read_readvariableopN
Jsavev2_adam_conv__block_4_batch_normalization_4_beta_m_read_readvariableopC
?savev2_adam_conv__block_5_conv2d_6_kernel_m_read_readvariableopA
=savev2_adam_conv__block_5_conv2d_6_bias_m_read_readvariableopO
Ksavev2_adam_conv__block_5_batch_normalization_5_gamma_m_read_readvariableopN
Jsavev2_adam_conv__block_5_batch_normalization_5_beta_m_read_readvariableopC
?savev2_adam_conv__block_6_conv2d_7_kernel_m_read_readvariableopA
=savev2_adam_conv__block_6_conv2d_7_bias_m_read_readvariableopO
Ksavev2_adam_conv__block_6_batch_normalization_6_gamma_m_read_readvariableopN
Jsavev2_adam_conv__block_6_batch_normalization_6_beta_m_read_readvariableop3
/savev2_adam_conv2d_kernel_v_read_readvariableop1
-savev2_adam_conv2d_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableopA
=savev2_adam_conv__block_conv2d_1_kernel_v_read_readvariableop?
;savev2_adam_conv__block_conv2d_1_bias_v_read_readvariableopK
Gsavev2_adam_conv__block_batch_normalization_gamma_v_read_readvariableopJ
Fsavev2_adam_conv__block_batch_normalization_beta_v_read_readvariableopC
?savev2_adam_conv__block_1_conv2d_2_kernel_v_read_readvariableopA
=savev2_adam_conv__block_1_conv2d_2_bias_v_read_readvariableopO
Ksavev2_adam_conv__block_1_batch_normalization_1_gamma_v_read_readvariableopN
Jsavev2_adam_conv__block_1_batch_normalization_1_beta_v_read_readvariableopC
?savev2_adam_conv__block_2_conv2d_3_kernel_v_read_readvariableopA
=savev2_adam_conv__block_2_conv2d_3_bias_v_read_readvariableopO
Ksavev2_adam_conv__block_2_batch_normalization_2_gamma_v_read_readvariableopN
Jsavev2_adam_conv__block_2_batch_normalization_2_beta_v_read_readvariableopC
?savev2_adam_conv__block_3_conv2d_4_kernel_v_read_readvariableopA
=savev2_adam_conv__block_3_conv2d_4_bias_v_read_readvariableopO
Ksavev2_adam_conv__block_3_batch_normalization_3_gamma_v_read_readvariableopN
Jsavev2_adam_conv__block_3_batch_normalization_3_beta_v_read_readvariableopC
?savev2_adam_conv__block_4_conv2d_5_kernel_v_read_readvariableopA
=savev2_adam_conv__block_4_conv2d_5_bias_v_read_readvariableopO
Ksavev2_adam_conv__block_4_batch_normalization_4_gamma_v_read_readvariableopN
Jsavev2_adam_conv__block_4_batch_normalization_4_beta_v_read_readvariableopC
?savev2_adam_conv__block_5_conv2d_6_kernel_v_read_readvariableopA
=savev2_adam_conv__block_5_conv2d_6_bias_v_read_readvariableopO
Ksavev2_adam_conv__block_5_batch_normalization_5_gamma_v_read_readvariableopN
Jsavev2_adam_conv__block_5_batch_normalization_5_beta_v_read_readvariableopC
?savev2_adam_conv__block_6_conv2d_7_kernel_v_read_readvariableopA
=savev2_adam_conv__block_6_conv2d_7_bias_v_read_readvariableopO
Ksavev2_adam_conv__block_6_batch_normalization_6_gamma_v_read_readvariableopN
Jsavev2_adam_conv__block_6_batch_normalization_6_beta_v_read_readvariableop
savev2_const

identity_1ИвMergeV2CheckpointsП
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1Л
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameи?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:~*
dtype0*║>
value░>Bн>~B(block1/kernel/.ATTRIBUTES/VARIABLE_VALUEB&block1/bias/.ATTRIBUTES/VARIABLE_VALUEB'dense/kernel/.ATTRIBUTES/VARIABLE_VALUEB%dense/bias/.ATTRIBUTES/VARIABLE_VALUEB-outputLayer/kernel/.ATTRIBUTES/VARIABLE_VALUEB+outputLayer/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/22/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/23/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/24/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/25/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/26/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/27/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/28/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/29/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBDblock1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBblock1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCdense/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAdense/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBIoutputLayer/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBGoutputLayer/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/28/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/29/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBDblock1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBblock1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCdense/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBAdense/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBIoutputLayer/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBGoutputLayer/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/28/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/29/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesЗ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:~*
dtype0*С
valueЗBД~B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesй@
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_conv__block_conv2d_1_kernel_read_readvariableop4savev2_conv__block_conv2d_1_bias_read_readvariableop@savev2_conv__block_batch_normalization_gamma_read_readvariableop?savev2_conv__block_batch_normalization_beta_read_readvariableop8savev2_conv__block_1_conv2d_2_kernel_read_readvariableop6savev2_conv__block_1_conv2d_2_bias_read_readvariableopDsavev2_conv__block_1_batch_normalization_1_gamma_read_readvariableopCsavev2_conv__block_1_batch_normalization_1_beta_read_readvariableop8savev2_conv__block_2_conv2d_3_kernel_read_readvariableop6savev2_conv__block_2_conv2d_3_bias_read_readvariableopDsavev2_conv__block_2_batch_normalization_2_gamma_read_readvariableopCsavev2_conv__block_2_batch_normalization_2_beta_read_readvariableop8savev2_conv__block_3_conv2d_4_kernel_read_readvariableop6savev2_conv__block_3_conv2d_4_bias_read_readvariableopDsavev2_conv__block_3_batch_normalization_3_gamma_read_readvariableopCsavev2_conv__block_3_batch_normalization_3_beta_read_readvariableop8savev2_conv__block_4_conv2d_5_kernel_read_readvariableop6savev2_conv__block_4_conv2d_5_bias_read_readvariableopDsavev2_conv__block_4_batch_normalization_4_gamma_read_readvariableopCsavev2_conv__block_4_batch_normalization_4_beta_read_readvariableop8savev2_conv__block_5_conv2d_6_kernel_read_readvariableop6savev2_conv__block_5_conv2d_6_bias_read_readvariableopDsavev2_conv__block_5_batch_normalization_5_gamma_read_readvariableopCsavev2_conv__block_5_batch_normalization_5_beta_read_readvariableop8savev2_conv__block_6_conv2d_7_kernel_read_readvariableop6savev2_conv__block_6_conv2d_7_bias_read_readvariableopDsavev2_conv__block_6_batch_normalization_6_gamma_read_readvariableopCsavev2_conv__block_6_batch_normalization_6_beta_read_readvariableopFsavev2_conv__block_batch_normalization_moving_mean_read_readvariableopJsavev2_conv__block_batch_normalization_moving_variance_read_readvariableopJsavev2_conv__block_1_batch_normalization_1_moving_mean_read_readvariableopNsavev2_conv__block_1_batch_normalization_1_moving_variance_read_readvariableopJsavev2_conv__block_2_batch_normalization_2_moving_mean_read_readvariableopNsavev2_conv__block_2_batch_normalization_2_moving_variance_read_readvariableopJsavev2_conv__block_3_batch_normalization_3_moving_mean_read_readvariableopNsavev2_conv__block_3_batch_normalization_3_moving_variance_read_readvariableopJsavev2_conv__block_4_batch_normalization_4_moving_mean_read_readvariableopNsavev2_conv__block_4_batch_normalization_4_moving_variance_read_readvariableopJsavev2_conv__block_5_batch_normalization_5_moving_mean_read_readvariableopNsavev2_conv__block_5_batch_normalization_5_moving_variance_read_readvariableopJsavev2_conv__block_6_batch_normalization_6_moving_mean_read_readvariableopNsavev2_conv__block_6_batch_normalization_6_moving_variance_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop-savev2_adam_conv2d_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop=savev2_adam_conv__block_conv2d_1_kernel_m_read_readvariableop;savev2_adam_conv__block_conv2d_1_bias_m_read_readvariableopGsavev2_adam_conv__block_batch_normalization_gamma_m_read_readvariableopFsavev2_adam_conv__block_batch_normalization_beta_m_read_readvariableop?savev2_adam_conv__block_1_conv2d_2_kernel_m_read_readvariableop=savev2_adam_conv__block_1_conv2d_2_bias_m_read_readvariableopKsavev2_adam_conv__block_1_batch_normalization_1_gamma_m_read_readvariableopJsavev2_adam_conv__block_1_batch_normalization_1_beta_m_read_readvariableop?savev2_adam_conv__block_2_conv2d_3_kernel_m_read_readvariableop=savev2_adam_conv__block_2_conv2d_3_bias_m_read_readvariableopKsavev2_adam_conv__block_2_batch_normalization_2_gamma_m_read_readvariableopJsavev2_adam_conv__block_2_batch_normalization_2_beta_m_read_readvariableop?savev2_adam_conv__block_3_conv2d_4_kernel_m_read_readvariableop=savev2_adam_conv__block_3_conv2d_4_bias_m_read_readvariableopKsavev2_adam_conv__block_3_batch_normalization_3_gamma_m_read_readvariableopJsavev2_adam_conv__block_3_batch_normalization_3_beta_m_read_readvariableop?savev2_adam_conv__block_4_conv2d_5_kernel_m_read_readvariableop=savev2_adam_conv__block_4_conv2d_5_bias_m_read_readvariableopKsavev2_adam_conv__block_4_batch_normalization_4_gamma_m_read_readvariableopJsavev2_adam_conv__block_4_batch_normalization_4_beta_m_read_readvariableop?savev2_adam_conv__block_5_conv2d_6_kernel_m_read_readvariableop=savev2_adam_conv__block_5_conv2d_6_bias_m_read_readvariableopKsavev2_adam_conv__block_5_batch_normalization_5_gamma_m_read_readvariableopJsavev2_adam_conv__block_5_batch_normalization_5_beta_m_read_readvariableop?savev2_adam_conv__block_6_conv2d_7_kernel_m_read_readvariableop=savev2_adam_conv__block_6_conv2d_7_bias_m_read_readvariableopKsavev2_adam_conv__block_6_batch_normalization_6_gamma_m_read_readvariableopJsavev2_adam_conv__block_6_batch_normalization_6_beta_m_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop-savev2_adam_conv2d_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop=savev2_adam_conv__block_conv2d_1_kernel_v_read_readvariableop;savev2_adam_conv__block_conv2d_1_bias_v_read_readvariableopGsavev2_adam_conv__block_batch_normalization_gamma_v_read_readvariableopFsavev2_adam_conv__block_batch_normalization_beta_v_read_readvariableop?savev2_adam_conv__block_1_conv2d_2_kernel_v_read_readvariableop=savev2_adam_conv__block_1_conv2d_2_bias_v_read_readvariableopKsavev2_adam_conv__block_1_batch_normalization_1_gamma_v_read_readvariableopJsavev2_adam_conv__block_1_batch_normalization_1_beta_v_read_readvariableop?savev2_adam_conv__block_2_conv2d_3_kernel_v_read_readvariableop=savev2_adam_conv__block_2_conv2d_3_bias_v_read_readvariableopKsavev2_adam_conv__block_2_batch_normalization_2_gamma_v_read_readvariableopJsavev2_adam_conv__block_2_batch_normalization_2_beta_v_read_readvariableop?savev2_adam_conv__block_3_conv2d_4_kernel_v_read_readvariableop=savev2_adam_conv__block_3_conv2d_4_bias_v_read_readvariableopKsavev2_adam_conv__block_3_batch_normalization_3_gamma_v_read_readvariableopJsavev2_adam_conv__block_3_batch_normalization_3_beta_v_read_readvariableop?savev2_adam_conv__block_4_conv2d_5_kernel_v_read_readvariableop=savev2_adam_conv__block_4_conv2d_5_bias_v_read_readvariableopKsavev2_adam_conv__block_4_batch_normalization_4_gamma_v_read_readvariableopJsavev2_adam_conv__block_4_batch_normalization_4_beta_v_read_readvariableop?savev2_adam_conv__block_5_conv2d_6_kernel_v_read_readvariableop=savev2_adam_conv__block_5_conv2d_6_bias_v_read_readvariableopKsavev2_adam_conv__block_5_batch_normalization_5_gamma_v_read_readvariableopJsavev2_adam_conv__block_5_batch_normalization_5_beta_v_read_readvariableop?savev2_adam_conv__block_6_conv2d_7_kernel_v_read_readvariableop=savev2_adam_conv__block_6_conv2d_7_bias_v_read_readvariableopKsavev2_adam_conv__block_6_batch_normalization_6_gamma_v_read_readvariableopJsavev2_adam_conv__block_6_batch_normalization_6_beta_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *О
dtypesГ
А2~	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*╜
_input_shapesл
и: : : :	А@:@:@:: : : : : :  : : : : @:@:@:@:@@:@:@:@:@`:`:`:`:``:`:`:`:`А:А:А:А:АА:А:А:А: : :@:@:@:@:`:`:`:`:А:А:А:А: : : : : : :	А@:@:@::  : : : : @:@:@:@:@@:@:@:@:@`:`:`:`:``:`:`:`:`А:А:А:А:АА:А:А:А: : :	А@:@:@::  : : : : @:@:@:@:@@:@:@:@:@`:`:`:`:``:`:`:`:`А:А:А:А:АА:А:А:А: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :%!

_output_shapes
:	А@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@`: 

_output_shapes
:`: 

_output_shapes
:`: 

_output_shapes
:`:,(
&
_output_shapes
:``: 

_output_shapes
:`: 

_output_shapes
:`: 

_output_shapes
:`:- )
'
_output_shapes
:`А:!!

_output_shapes	
:А:!"

_output_shapes	
:А:!#

_output_shapes	
:А:.$*
(
_output_shapes
:АА:!%

_output_shapes	
:А:!&

_output_shapes	
:А:!'

_output_shapes	
:А: (

_output_shapes
: : )

_output_shapes
: : *

_output_shapes
:@: +

_output_shapes
:@: ,

_output_shapes
:@: -

_output_shapes
:@: .

_output_shapes
:`: /

_output_shapes
:`: 0

_output_shapes
:`: 1

_output_shapes
:`:!2

_output_shapes	
:А:!3

_output_shapes	
:А:!4

_output_shapes	
:А:!5

_output_shapes	
:А:6

_output_shapes
: :7

_output_shapes
: :8

_output_shapes
: :9

_output_shapes
: :,:(
&
_output_shapes
: : ;

_output_shapes
: :%<!

_output_shapes
:	А@: =

_output_shapes
:@:$> 

_output_shapes

:@: ?

_output_shapes
::,@(
&
_output_shapes
:  : A

_output_shapes
: : B

_output_shapes
: : C

_output_shapes
: :,D(
&
_output_shapes
: @: E

_output_shapes
:@: F

_output_shapes
:@: G

_output_shapes
:@:,H(
&
_output_shapes
:@@: I

_output_shapes
:@: J

_output_shapes
:@: K

_output_shapes
:@:,L(
&
_output_shapes
:@`: M

_output_shapes
:`: N

_output_shapes
:`: O

_output_shapes
:`:,P(
&
_output_shapes
:``: Q

_output_shapes
:`: R

_output_shapes
:`: S

_output_shapes
:`:-T)
'
_output_shapes
:`А:!U

_output_shapes	
:А:!V

_output_shapes	
:А:!W

_output_shapes	
:А:.X*
(
_output_shapes
:АА:!Y

_output_shapes	
:А:!Z

_output_shapes	
:А:![

_output_shapes	
:А:,\(
&
_output_shapes
: : ]

_output_shapes
: :%^!

_output_shapes
:	А@: _

_output_shapes
:@:$` 

_output_shapes

:@: a

_output_shapes
::,b(
&
_output_shapes
:  : c

_output_shapes
: : d

_output_shapes
: : e

_output_shapes
: :,f(
&
_output_shapes
: @: g

_output_shapes
:@: h

_output_shapes
:@: i

_output_shapes
:@:,j(
&
_output_shapes
:@@: k

_output_shapes
:@: l

_output_shapes
:@: m

_output_shapes
:@:,n(
&
_output_shapes
:@`: o

_output_shapes
:`: p

_output_shapes
:`: q

_output_shapes
:`:,r(
&
_output_shapes
:``: s

_output_shapes
:`: t

_output_shapes
:`: u

_output_shapes
:`:-v)
'
_output_shapes
:`А:!w

_output_shapes	
:А:!x

_output_shapes	
:А:!y

_output_shapes	
:А:.z*
(
_output_shapes
:АА:!{

_output_shapes	
:А:!|

_output_shapes	
:А:!}

_output_shapes	
:А:~

_output_shapes
: 
¤
}
(__inference_conv2d_3_layer_call_fn_16136

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_115652
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╒
c
G__inference_activation_3_layer_call_and_return_conditional_losses_16453

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:         `2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         `2

Identity"
identityIdentity:output:0*.
_input_shapes
:         `:W S
/
_output_shapes
:         `
 
_user_specified_nameinputs
¤
╣
-__inference_conv__block_6_layer_call_fn_15670
x
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCall│
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_6_layer_call_and_return_conditional_losses_131862
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         А::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
0
_output_shapes
:         А

_user_specified_namex
╤3
Д
H__inference_conv__block_6_layer_call_and_return_conditional_losses_15610
x+
'conv2d_7_conv2d_readvariableop_resource,
(conv2d_7_biasadd_readvariableop_resource1
-batch_normalization_6_readvariableop_resource3
/batch_normalization_6_readvariableop_1_resourceB
>batch_normalization_6_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource
identityИв$batch_normalization_6/AssignNewValueв&batch_normalization_6/AssignNewValue_1в5batch_normalization_6/FusedBatchNormV3/ReadVariableOpв7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_6/ReadVariableOpв&batch_normalization_6/ReadVariableOp_1вconv2d_7/BiasAdd/ReadVariableOpвconv2d_7/Conv2D/ReadVariableOp▓
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02 
conv2d_7/Conv2D/ReadVariableOp╗
conv2d_7/Conv2DConv2Dx&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
2
conv2d_7/Conv2Dи
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
conv2d_7/BiasAdd/ReadVariableOpн
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
conv2d_7/BiasAdd╖
$batch_normalization_6/ReadVariableOpReadVariableOp-batch_normalization_6_readvariableop_resource*
_output_shapes	
:А*
dtype02&
$batch_normalization_6/ReadVariableOp╜
&batch_normalization_6/ReadVariableOp_1ReadVariableOp/batch_normalization_6_readvariableop_1_resource*
_output_shapes	
:А*
dtype02(
&batch_normalization_6/ReadVariableOp_1ъ
5batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype027
5batch_normalization_6/FusedBatchNormV3/ReadVariableOpЁ
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype029
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Ї
&batch_normalization_6/FusedBatchNormV3FusedBatchNormV3conv2d_7/BiasAdd:output:0,batch_normalization_6/ReadVariableOp:value:0.batch_normalization_6/ReadVariableOp_1:value:0=batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2(
&batch_normalization_6/FusedBatchNormV3▒
$batch_normalization_6/AssignNewValueAssignVariableOp>batch_normalization_6_fusedbatchnormv3_readvariableop_resource3batch_normalization_6/FusedBatchNormV3:batch_mean:06^batch_normalization_6/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*Q
_classG
ECloc:@batch_normalization_6/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02&
$batch_normalization_6/AssignNewValue┐
&batch_normalization_6/AssignNewValue_1AssignVariableOp@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_6/FusedBatchNormV3:batch_variance:08^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*S
_classI
GEloc:@batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02(
&batch_normalization_6/AssignNewValue_1Х
activation_6/ReluRelu*batch_normalization_6/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         А2
activation_6/Reluw
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout_6/dropout/Const│
dropout_6/dropout/MulMulactivation_6/Relu:activations:0 dropout_6/dropout/Const:output:0*
T0*0
_output_shapes
:         А2
dropout_6/dropout/MulБ
dropout_6/dropout/ShapeShapeactivation_6/Relu:activations:0*
T0*
_output_shapes
:2
dropout_6/dropout/Shape█
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype020
.dropout_6/dropout/random_uniform/RandomUniformЙ
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2"
 dropout_6/dropout/GreaterEqual/yя
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2 
dropout_6/dropout/GreaterEqualж
dropout_6/dropout/CastCast"dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2
dropout_6/dropout/Castл
dropout_6/dropout/Mul_1Muldropout_6/dropout/Mul:z:0dropout_6/dropout/Cast:y:0*
T0*0
_output_shapes
:         А2
dropout_6/dropout/Mul_1═
IdentityIdentitydropout_6/dropout/Mul_1:z:0%^batch_normalization_6/AssignNewValue'^batch_normalization_6/AssignNewValue_16^batch_normalization_6/FusedBatchNormV3/ReadVariableOp8^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_6/ReadVariableOp'^batch_normalization_6/ReadVariableOp_1 ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         А::::::2L
$batch_normalization_6/AssignNewValue$batch_normalization_6/AssignNewValue2P
&batch_normalization_6/AssignNewValue_1&batch_normalization_6/AssignNewValue_12n
5batch_normalization_6/FusedBatchNormV3/ReadVariableOp5batch_normalization_6/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_17batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_6/ReadVariableOp$batch_normalization_6/ReadVariableOp2P
&batch_normalization_6/ReadVariableOp_1&batch_normalization_6/ReadVariableOp_12B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp:S O
0
_output_shapes
:         А

_user_specified_namex
И
ў
F__inference_conv__block_layer_call_and_return_conditional_losses_11037
x
conv2d_1_11020
conv2d_1_11022
batch_normalization_11025
batch_normalization_11027
batch_normalization_11029
batch_normalization_11031
identityИв+batch_normalization/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallвdropout/StatefulPartitionedCallЧ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCallxconv2d_1_11020conv2d_1_11022*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_108612"
 conv2d_1/StatefulPartitionedCallо
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_11025batch_normalization_11027batch_normalization_11029batch_normalization_11031*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_108962-
+batch_normalization/StatefulPartitionedCallТ
activation/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_109552
activation/PartitionedCallР
dropout/StatefulPartitionedCallStatefulPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_109752!
dropout/StatefulPartitionedCallў
IdentityIdentity(dropout/StatefulPartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall*
T0*/
_output_shapes
:         00 2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         00 ::::::2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall:R N
/
_output_shapes
:         00 

_user_specified_namex
Л
┐
-__inference_conv__block_4_layer_call_fn_12497
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCall╕
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

`*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_4_layer_call_and_return_conditional_losses_124822
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         

`2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         `::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:         `
!
_user_specified_name	input_1
╗
H
,__inference_activation_1_layer_call_fn_16090

inputs
identity╨
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_113132
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
┐
H
,__inference_activation_5_layer_call_fn_16826

inputs
identity╤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_5_layer_call_and_return_conditional_losses_127212
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ф
с
H__inference_conv__block_1_layer_call_and_return_conditional_losses_11432
x
conv2d_2_11415
conv2d_2_11417
batch_normalization_1_11420
batch_normalization_1_11422
batch_normalization_1_11424
batch_normalization_1_11426
identityИв-batch_normalization_1/StatefulPartitionedCallв conv2d_2/StatefulPartitionedCallЧ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallxconv2d_2_11415conv2d_2_11417*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_112192"
 conv2d_2/StatefulPartitionedCall╛
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_1_11420batch_normalization_1_11422batch_normalization_1_11424batch_normalization_1_11426*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_112722/
-batch_normalization_1/StatefulPartitionedCallЪ
activation_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_113132
activation_1/PartitionedCallА
dropout_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_113382
dropout_1/PartitionedCall╤
IdentityIdentity"dropout_1/PartitionedCall:output:0.^batch_normalization_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:          ::::::2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall:R N
/
_output_shapes
:          

_user_specified_namex
┬
Е
H__inference_conv__block_3_layer_call_and_return_conditional_losses_12099
x
conv2d_4_12082
conv2d_4_12084
batch_normalization_3_12087
batch_normalization_3_12089
batch_normalization_3_12091
batch_normalization_3_12093
identityИв-batch_normalization_3/StatefulPartitionedCallв conv2d_4/StatefulPartitionedCallв!dropout_3/StatefulPartitionedCallЧ
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallxconv2d_4_12082conv2d_4_12084*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_119232"
 conv2d_4/StatefulPartitionedCall╝
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_3_12087batch_normalization_3_12089batch_normalization_3_12091batch_normalization_3_12093*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_119582/
-batch_normalization_3/StatefulPartitionedCallЪ
activation_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_3_layer_call_and_return_conditional_losses_120172
activation_3/PartitionedCallШ
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall%activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_120372#
!dropout_3/StatefulPartitionedCall¤
IdentityIdentity*dropout_3/StatefulPartitionedCall:output:0.^batch_normalization_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall*
T0*/
_output_shapes
:         `2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         @::::::2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall:R N
/
_output_shapes
:         @

_user_specified_namex
Х
E
)__inference_dropout_7_layer_call_fn_15729

inputs
identity┼
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_136362
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╠
є
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_12602

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1с
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3э
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,                           А::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
∙
╣
-__inference_conv__block_1_layer_call_fn_15195
x
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCall▓
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_1_layer_call_and_return_conditional_losses_114322
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:          ::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:          

_user_specified_namex
╠
Ч
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_16156

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ъ
ж
3__inference_batch_normalization_layer_call_fn_15883

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall│
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_108052
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                            ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
щ	
▄
C__inference_conv2d_4_layer_call_and_return_conditional_losses_11923

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@`*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         `*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         `2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         `2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
└
є
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_16054

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╒
c
G__inference_activation_1_layer_call_and_return_conditional_losses_16085

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:         @2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
°
є
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11618

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         @::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ч
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_11338

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:         @2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
а
и
5__inference_batch_normalization_1_layer_call_fn_16080

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_111942
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
щ	
▄
C__inference_conv2d_2_layer_call_and_return_conditional_losses_15943

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:          ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
╠
Ч
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_16524

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           `:`:`:`:`:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           `2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           `::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           `
 
_user_specified_nameinputs
┬
Е
H__inference_conv__block_1_layer_call_and_return_conditional_losses_11395
x
conv2d_2_11378
conv2d_2_11380
batch_normalization_1_11383
batch_normalization_1_11385
batch_normalization_1_11387
batch_normalization_1_11389
identityИв-batch_normalization_1/StatefulPartitionedCallв conv2d_2/StatefulPartitionedCallв!dropout_1/StatefulPartitionedCallЧ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallxconv2d_2_11378conv2d_2_11380*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_112192"
 conv2d_2/StatefulPartitionedCall╝
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_1_11383batch_normalization_1_11385batch_normalization_1_11387batch_normalization_1_11389*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_112542/
-batch_normalization_1/StatefulPartitionedCallЪ
activation_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_113132
activation_1/PartitionedCallШ
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_113332#
!dropout_1/StatefulPartitionedCall¤
IdentityIdentity*dropout_1/StatefulPartitionedCall:output:0.^batch_normalization_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:          ::::::2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:R N
/
_output_shapes
:          

_user_specified_namex
 
}
(__inference_conv2d_6_layer_call_fn_16688

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_126272
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         `::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         `
 
_user_specified_nameinputs
щ	
▄
C__inference_conv2d_3_layer_call_and_return_conditional_losses_16127

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ь
ж
3__inference_batch_normalization_layer_call_fn_15896

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall╡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_108362
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                            ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
°
є
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_16606

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         

`:`:`:`:`:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         

`2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         

`::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         

`
 
_user_specified_nameinputs
ў
╣
-__inference_conv__block_4_layer_call_fn_15463
x
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCall░
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_4_layer_call_and_return_conditional_losses_124452
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         

`2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         `::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:         `

_user_specified_namex
╧

┘
@__inference_dense_layer_call_and_return_conditional_losses_13603

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         @2	
Sigmoidb
mulMulSigmoid:y:0BiasAdd:output:0*
T0*'
_output_shapes
:         @2
mulМ
IdentityIdentitymul:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╪
и
5__inference_batch_normalization_2_layer_call_fn_16264

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_116182
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         @::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ф
с
H__inference_conv__block_2_layer_call_and_return_conditional_losses_11778
x
conv2d_3_11761
conv2d_3_11763
batch_normalization_2_11766
batch_normalization_2_11768
batch_normalization_2_11770
batch_normalization_2_11772
identityИв-batch_normalization_2/StatefulPartitionedCallв conv2d_3/StatefulPartitionedCallЧ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCallxconv2d_3_11761conv2d_3_11763*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_115652"
 conv2d_3/StatefulPartitionedCall╛
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0batch_normalization_2_11766batch_normalization_2_11768batch_normalization_2_11770batch_normalization_2_11772*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_116182/
-batch_normalization_2/StatefulPartitionedCallЪ
activation_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_2_layer_call_and_return_conditional_losses_116592
activation_2/PartitionedCallА
dropout_2/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_116842
dropout_2/PartitionedCall╤
IdentityIdentity"dropout_2/PartitionedCall:output:0.^batch_normalization_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         @::::::2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall:R N
/
_output_shapes
:         @

_user_specified_namex
╪
Ч
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_12571

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1С
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,                           А::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
°
є
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_16238

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         @::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╗
H
,__inference_activation_3_layer_call_fn_16458

inputs
identity╨
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_3_layer_call_and_return_conditional_losses_120172
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         `2

Identity"
identityIdentity:output:0*.
_input_shapes
:         `:W S
/
_output_shapes
:         `
 
_user_specified_nameinputs
ю	
█
B__inference_dense_1_layer_call_and_return_conditional_losses_15740

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         2	
SigmoidР
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
°
є
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_16358

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         `:`:`:`:`:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         `2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         `::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         `
 
_user_specified_nameinputs
ю	
▄
C__inference_conv2d_6_layer_call_and_return_conditional_losses_16679

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:`А*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAddЮ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         `::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         `
 
_user_specified_nameinputs
╩
c
D__inference_dropout_6_layer_call_and_return_conditional_losses_17022

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╜
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2
dropout/GreaterEqual/y╟
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         А2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
┬
c
D__inference_dropout_4_layer_call_and_return_conditional_losses_16654

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         

`2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         

`*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2
dropout/GreaterEqual/y╞
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         

`2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         

`2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         

`2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         

`2

Identity"
identityIdentity:output:0*.
_input_shapes
:         

`:W S
/
_output_shapes
:         

`
 
_user_specified_nameinputs
°T
┌
G__inference_fac__model_1_layer_call_and_return_conditional_losses_13793
input_1
conv2d_13680
conv2d_13682
conv__block_13685
conv__block_13687
conv__block_13689
conv__block_13691
conv__block_13693
conv__block_13695
conv__block_1_13699
conv__block_1_13701
conv__block_1_13703
conv__block_1_13705
conv__block_1_13707
conv__block_1_13709
conv__block_2_13712
conv__block_2_13714
conv__block_2_13716
conv__block_2_13718
conv__block_2_13720
conv__block_2_13722
conv__block_3_13726
conv__block_3_13728
conv__block_3_13730
conv__block_3_13732
conv__block_3_13734
conv__block_3_13736
conv__block_4_13739
conv__block_4_13741
conv__block_4_13743
conv__block_4_13745
conv__block_4_13747
conv__block_4_13749
conv__block_5_13753
conv__block_5_13755
conv__block_5_13757
conv__block_5_13759
conv__block_5_13761
conv__block_5_13763
conv__block_6_13766
conv__block_6_13768
conv__block_6_13770
conv__block_6_13772
conv__block_6_13774
conv__block_6_13776
dense_13781
dense_13783
dense_1_13787
dense_1_13789
identityИвconv2d/StatefulPartitionedCallв#conv__block/StatefulPartitionedCallв%conv__block_1/StatefulPartitionedCallв%conv__block_2/StatefulPartitionedCallв%conv__block_3/StatefulPartitionedCallв%conv__block_4/StatefulPartitionedCallв%conv__block_5/StatefulPartitionedCallв%conv__block_6/StatefulPartitionedCallвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallУ
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_13680conv2d_13682*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_132282 
conv2d/StatefulPartitionedCallа
#conv__block/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv__block_13685conv__block_13687conv__block_13689conv__block_13691conv__block_13693conv__block_13695*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv__block_layer_call_and_return_conditional_losses_110742%
#conv__block/StatefulPartitionedCallУ
max_pooling2d/PartitionedCallPartitionedCall,conv__block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_110952
max_pooling2d/PartitionedCall▒
%conv__block_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv__block_1_13699conv__block_1_13701conv__block_1_13703conv__block_1_13705conv__block_1_13707conv__block_1_13709*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_1_layer_call_and_return_conditional_losses_114322'
%conv__block_1/StatefulPartitionedCall╣
%conv__block_2/StatefulPartitionedCallStatefulPartitionedCall.conv__block_1/StatefulPartitionedCall:output:0conv__block_2_13712conv__block_2_13714conv__block_2_13716conv__block_2_13718conv__block_2_13720conv__block_2_13722*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_2_layer_call_and_return_conditional_losses_117782'
%conv__block_2/StatefulPartitionedCallЫ
max_pooling2d_1/PartitionedCallPartitionedCall.conv__block_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_117992!
max_pooling2d_1/PartitionedCall│
%conv__block_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv__block_3_13726conv__block_3_13728conv__block_3_13730conv__block_3_13732conv__block_3_13734conv__block_3_13736*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_3_layer_call_and_return_conditional_losses_121362'
%conv__block_3/StatefulPartitionedCall╣
%conv__block_4/StatefulPartitionedCallStatefulPartitionedCall.conv__block_3/StatefulPartitionedCall:output:0conv__block_4_13739conv__block_4_13741conv__block_4_13743conv__block_4_13745conv__block_4_13747conv__block_4_13749*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

`*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_4_layer_call_and_return_conditional_losses_124822'
%conv__block_4/StatefulPartitionedCallЫ
max_pooling2d_2/PartitionedCallPartitionedCall.conv__block_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_125032!
max_pooling2d_2/PartitionedCall┤
%conv__block_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv__block_5_13753conv__block_5_13755conv__block_5_13757conv__block_5_13759conv__block_5_13761conv__block_5_13763*
Tin
	2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_5_layer_call_and_return_conditional_losses_128402'
%conv__block_5/StatefulPartitionedCall║
%conv__block_6/StatefulPartitionedCallStatefulPartitionedCall.conv__block_5/StatefulPartitionedCall:output:0conv__block_6_13766conv__block_6_13768conv__block_6_13770conv__block_6_13772conv__block_6_13774conv__block_6_13776*
Tin
	2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_6_layer_call_and_return_conditional_losses_131862'
%conv__block_6/StatefulPartitionedCallЬ
max_pooling2d_3/PartitionedCallPartitionedCall.conv__block_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_132072!
max_pooling2d_3/PartitionedCallЎ
flatten/PartitionedCallPartitionedCall(max_pooling2d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_135832
flatten/PartitionedCallЯ
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_13781dense_13783*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_136032
dense/StatefulPartitionedCall∙
dropout_7/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_136362
dropout_7/PartitionedCallл
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0dense_1_13787dense_1_13789*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_136602!
dense_1/StatefulPartitionedCallї
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall$^conv__block/StatefulPartitionedCall&^conv__block_1/StatefulPartitionedCall&^conv__block_2/StatefulPartitionedCall&^conv__block_3/StatefulPartitionedCall&^conv__block_4/StatefulPartitionedCall&^conv__block_5/StatefulPartitionedCall&^conv__block_6/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Ё
_input_shapes▐
█:         00::::::::::::::::::::::::::::::::::::::::::::::::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2J
#conv__block/StatefulPartitionedCall#conv__block/StatefulPartitionedCall2N
%conv__block_1/StatefulPartitionedCall%conv__block_1/StatefulPartitionedCall2N
%conv__block_2/StatefulPartitionedCall%conv__block_2/StatefulPartitionedCall2N
%conv__block_3/StatefulPartitionedCall%conv__block_3/StatefulPartitionedCall2N
%conv__block_4/StatefulPartitionedCall%conv__block_4/StatefulPartitionedCall2N
%conv__block_5/StatefulPartitionedCall%conv__block_5/StatefulPartitionedCall2N
%conv__block_6/StatefulPartitionedCall%conv__block_6/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:X T
/
_output_shapes
:         00
!
_user_specified_name	input_1
╦

┌
A__inference_conv2d_layer_call_and_return_conditional_losses_13228

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         00 2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         00 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         00::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         00
 
_user_specified_nameinputs
╠
Ч
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11867

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           `:`:`:`:`:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           `2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           `::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           `
 
_user_specified_nameinputs
▄
и
5__inference_batch_normalization_5_layer_call_fn_16816

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_126802
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:         А::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╩
c
D__inference_dropout_5_layer_call_and_return_conditional_losses_16838

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╜
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2
dropout/GreaterEqual/y╟
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         А2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
√
╣
-__inference_conv__block_6_layer_call_fn_15653
x
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCall▒
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_6_layer_call_and_return_conditional_losses_131492
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         А::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
0
_output_shapes
:         А

_user_specified_namex
о
K
/__inference_max_pooling2d_2_layer_call_fn_12509

inputs
identityю
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_125032
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Д
Ч
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_15972

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         @::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
В
Х
N__inference_batch_normalization_layer_call_and_return_conditional_losses_10896

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         00 : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         00 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         00 ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         00 
 
_user_specified_nameinputs
Р
Ч
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_16772

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▌
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1 
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:         А::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Л
┐
-__inference_conv__block_5_layer_call_fn_12818
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_5_layer_call_and_return_conditional_losses_128032
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         `::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:         `
!
_user_specified_name	input_1
╓
и
5__inference_batch_normalization_3_layer_call_fn_16371

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_119582
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         `2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         `::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         `
 
_user_specified_nameinputs
╒
c
G__inference_activation_2_layer_call_and_return_conditional_losses_11659

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:         @2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
д
и
5__inference_batch_normalization_6_layer_call_fn_16936

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall╕
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_129482
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,                           А::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
Д
Ч
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11600

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         @::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
┼
b
)__inference_dropout_5_layer_call_fn_16848

inputs
identityИвStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_127412
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╒
c
G__inference_activation_3_layer_call_and_return_conditional_losses_12017

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:         `2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         `2

Identity"
identityIdentity:output:0*.
_input_shapes
:         `:W S
/
_output_shapes
:         `
 
_user_specified_nameinputs
∙
╣
-__inference_conv__block_5_layer_call_fn_15558
x
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCall▒
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_5_layer_call_and_return_conditional_losses_128032
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         `::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:         `

_user_specified_namex
╛
ё
N__inference_batch_normalization_layer_call_and_return_conditional_losses_10836

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                            ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
└
є
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_16422

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           `:`:`:`:`:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           `2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           `::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           `
 
_user_specified_nameinputs
Ў
ё
N__inference_batch_normalization_layer_call_and_return_conditional_losses_15806

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         00 : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         00 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         00 ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         00 
 
_user_specified_nameinputs
Л
┐
-__inference_conv__block_1_layer_call_fn_11447
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCall╕
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_1_layer_call_and_return_conditional_losses_114322
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:          ::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:          
!
_user_specified_name	input_1
╣
E
)__inference_dropout_5_layer_call_fn_16853

inputs
identity╬
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_127462
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╒
c
G__inference_activation_2_layer_call_and_return_conditional_losses_16269

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:         @2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
┴
b
)__inference_dropout_3_layer_call_fn_16480

inputs
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_120372
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         `2

Identity"
identityIdentity:output:0*.
_input_shapes
:         `22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         `
 
_user_specified_nameinputs
╧

┘
@__inference_dense_layer_call_and_return_conditional_losses_15693

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         @2	
Sigmoidb
mulMulSigmoid:y:0BiasAdd:output:0*
T0*'
_output_shapes
:         @2
mulМ
IdentityIdentitymul:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ф
с
H__inference_conv__block_4_layer_call_and_return_conditional_losses_12482
x
conv2d_5_12465
conv2d_5_12467
batch_normalization_4_12470
batch_normalization_4_12472
batch_normalization_4_12474
batch_normalization_4_12476
identityИв-batch_normalization_4/StatefulPartitionedCallв conv2d_5/StatefulPartitionedCallЧ
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallxconv2d_5_12465conv2d_5_12467*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_122692"
 conv2d_5/StatefulPartitionedCall╛
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0batch_normalization_4_12470batch_normalization_4_12472batch_normalization_4_12474batch_normalization_4_12476*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_123222/
-batch_normalization_4/StatefulPartitionedCallЪ
activation_4/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_4_layer_call_and_return_conditional_losses_123632
activation_4/PartitionedCallА
dropout_4/PartitionedCallPartitionedCall%activation_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_123882
dropout_4/PartitionedCall╤
IdentityIdentity"dropout_4/PartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall*
T0*/
_output_shapes
:         

`2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         `::::::2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall:R N
/
_output_shapes
:         `

_user_specified_namex
╦

┌
A__inference_conv2d_layer_call_and_return_conditional_losses_14996

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         00 2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         00 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         00::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         00
 
_user_specified_nameinputs
┬
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_12037

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         `2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         `*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2
dropout/GreaterEqual/y╞
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         `2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         `2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         `2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         `2

Identity"
identityIdentity:output:0*.
_input_shapes
:         `:W S
/
_output_shapes
:         `
 
_user_specified_nameinputs
╜
`
'__inference_dropout_layer_call_fn_15928

inputs
identityИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_109752
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         00 2

Identity"
identityIdentity:output:0*.
_input_shapes
:         00 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         00 
 
_user_specified_nameinputs
┘
z
%__inference_dense_layer_call_fn_15702

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_136032
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╪
Ч
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_16892

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1С
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,                           А::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╤й
╓-
G__inference_fac__model_1_layer_call_and_return_conditional_losses_14783

inputs)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource7
3conv__block_conv2d_1_conv2d_readvariableop_resource8
4conv__block_conv2d_1_biasadd_readvariableop_resource;
7conv__block_batch_normalization_readvariableop_resource=
9conv__block_batch_normalization_readvariableop_1_resourceL
Hconv__block_batch_normalization_fusedbatchnormv3_readvariableop_resourceN
Jconv__block_batch_normalization_fusedbatchnormv3_readvariableop_1_resource9
5conv__block_1_conv2d_2_conv2d_readvariableop_resource:
6conv__block_1_conv2d_2_biasadd_readvariableop_resource?
;conv__block_1_batch_normalization_1_readvariableop_resourceA
=conv__block_1_batch_normalization_1_readvariableop_1_resourceP
Lconv__block_1_batch_normalization_1_fusedbatchnormv3_readvariableop_resourceR
Nconv__block_1_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource9
5conv__block_2_conv2d_3_conv2d_readvariableop_resource:
6conv__block_2_conv2d_3_biasadd_readvariableop_resource?
;conv__block_2_batch_normalization_2_readvariableop_resourceA
=conv__block_2_batch_normalization_2_readvariableop_1_resourceP
Lconv__block_2_batch_normalization_2_fusedbatchnormv3_readvariableop_resourceR
Nconv__block_2_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource9
5conv__block_3_conv2d_4_conv2d_readvariableop_resource:
6conv__block_3_conv2d_4_biasadd_readvariableop_resource?
;conv__block_3_batch_normalization_3_readvariableop_resourceA
=conv__block_3_batch_normalization_3_readvariableop_1_resourceP
Lconv__block_3_batch_normalization_3_fusedbatchnormv3_readvariableop_resourceR
Nconv__block_3_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource9
5conv__block_4_conv2d_5_conv2d_readvariableop_resource:
6conv__block_4_conv2d_5_biasadd_readvariableop_resource?
;conv__block_4_batch_normalization_4_readvariableop_resourceA
=conv__block_4_batch_normalization_4_readvariableop_1_resourceP
Lconv__block_4_batch_normalization_4_fusedbatchnormv3_readvariableop_resourceR
Nconv__block_4_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource9
5conv__block_5_conv2d_6_conv2d_readvariableop_resource:
6conv__block_5_conv2d_6_biasadd_readvariableop_resource?
;conv__block_5_batch_normalization_5_readvariableop_resourceA
=conv__block_5_batch_normalization_5_readvariableop_1_resourceP
Lconv__block_5_batch_normalization_5_fusedbatchnormv3_readvariableop_resourceR
Nconv__block_5_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource9
5conv__block_6_conv2d_7_conv2d_readvariableop_resource:
6conv__block_6_conv2d_7_biasadd_readvariableop_resource?
;conv__block_6_batch_normalization_6_readvariableop_resourceA
=conv__block_6_batch_normalization_6_readvariableop_1_resourceP
Lconv__block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resourceR
Nconv__block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identityИвconv2d/BiasAdd/ReadVariableOpвconv2d/Conv2D/ReadVariableOpв?conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOpвAconv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp_1в.conv__block/batch_normalization/ReadVariableOpв0conv__block/batch_normalization/ReadVariableOp_1в+conv__block/conv2d_1/BiasAdd/ReadVariableOpв*conv__block/conv2d_1/Conv2D/ReadVariableOpвCconv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpвEconv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1в2conv__block_1/batch_normalization_1/ReadVariableOpв4conv__block_1/batch_normalization_1/ReadVariableOp_1в-conv__block_1/conv2d_2/BiasAdd/ReadVariableOpв,conv__block_1/conv2d_2/Conv2D/ReadVariableOpвCconv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOpвEconv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1в2conv__block_2/batch_normalization_2/ReadVariableOpв4conv__block_2/batch_normalization_2/ReadVariableOp_1в-conv__block_2/conv2d_3/BiasAdd/ReadVariableOpв,conv__block_2/conv2d_3/Conv2D/ReadVariableOpвCconv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOpвEconv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1в2conv__block_3/batch_normalization_3/ReadVariableOpв4conv__block_3/batch_normalization_3/ReadVariableOp_1в-conv__block_3/conv2d_4/BiasAdd/ReadVariableOpв,conv__block_3/conv2d_4/Conv2D/ReadVariableOpвCconv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOpвEconv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1в2conv__block_4/batch_normalization_4/ReadVariableOpв4conv__block_4/batch_normalization_4/ReadVariableOp_1в-conv__block_4/conv2d_5/BiasAdd/ReadVariableOpв,conv__block_4/conv2d_5/Conv2D/ReadVariableOpвCconv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOpвEconv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1в2conv__block_5/batch_normalization_5/ReadVariableOpв4conv__block_5/batch_normalization_5/ReadVariableOp_1в-conv__block_5/conv2d_6/BiasAdd/ReadVariableOpв,conv__block_5/conv2d_6/Conv2D/ReadVariableOpвCconv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpвEconv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1в2conv__block_6/batch_normalization_6/ReadVariableOpв4conv__block_6/batch_normalization_6/ReadVariableOp_1в-conv__block_6/conv2d_7/BiasAdd/ReadVariableOpв,conv__block_6/conv2d_7/Conv2D/ReadVariableOpвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpк
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
conv2d/Conv2D/ReadVariableOp╕
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 *
paddingSAME*
strides
2
conv2d/Conv2Dб
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv2d/BiasAdd/ReadVariableOpд
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:         00 2
conv2d/Relu╘
*conv__block/conv2d_1/Conv2D/ReadVariableOpReadVariableOp3conv__block_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02,
*conv__block/conv2d_1/Conv2D/ReadVariableOpї
conv__block/conv2d_1/Conv2DConv2Dconv2d/Relu:activations:02conv__block/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 *
paddingSAME*
strides
2
conv__block/conv2d_1/Conv2D╦
+conv__block/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp4conv__block_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+conv__block/conv2d_1/BiasAdd/ReadVariableOp▄
conv__block/conv2d_1/BiasAddBiasAdd$conv__block/conv2d_1/Conv2D:output:03conv__block/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 2
conv__block/conv2d_1/BiasAdd╘
.conv__block/batch_normalization/ReadVariableOpReadVariableOp7conv__block_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype020
.conv__block/batch_normalization/ReadVariableOp┌
0conv__block/batch_normalization/ReadVariableOp_1ReadVariableOp9conv__block_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype022
0conv__block/batch_normalization/ReadVariableOp_1З
?conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpHconv__block_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02A
?conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOpН
Aconv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpJconv__block_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02C
Aconv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp_1й
0conv__block/batch_normalization/FusedBatchNormV3FusedBatchNormV3%conv__block/conv2d_1/BiasAdd:output:06conv__block/batch_normalization/ReadVariableOp:value:08conv__block/batch_normalization/ReadVariableOp_1:value:0Gconv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Iconv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         00 : : : : :*
epsilon%oГ:*
is_training( 22
0conv__block/batch_normalization/FusedBatchNormV3▓
conv__block/activation/ReluRelu4conv__block/batch_normalization/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         00 2
conv__block/activation/Reluн
conv__block/dropout/IdentityIdentity)conv__block/activation/Relu:activations:0*
T0*/
_output_shapes
:         00 2
conv__block/dropout/Identity═
max_pooling2d/MaxPoolMaxPool%conv__block/dropout/Identity:output:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool┌
,conv__block_1/conv2d_2/Conv2D/ReadVariableOpReadVariableOp5conv__block_1_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02.
,conv__block_1/conv2d_2/Conv2D/ReadVariableOpА
conv__block_1/conv2d_2/Conv2DConv2Dmax_pooling2d/MaxPool:output:04conv__block_1/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
conv__block_1/conv2d_2/Conv2D╤
-conv__block_1/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp6conv__block_1_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-conv__block_1/conv2d_2/BiasAdd/ReadVariableOpф
conv__block_1/conv2d_2/BiasAddBiasAdd&conv__block_1/conv2d_2/Conv2D:output:05conv__block_1/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2 
conv__block_1/conv2d_2/BiasAddр
2conv__block_1/batch_normalization_1/ReadVariableOpReadVariableOp;conv__block_1_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype024
2conv__block_1/batch_normalization_1/ReadVariableOpц
4conv__block_1/batch_normalization_1/ReadVariableOp_1ReadVariableOp=conv__block_1_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype026
4conv__block_1/batch_normalization_1/ReadVariableOp_1У
Cconv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpLconv__block_1_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02E
Cconv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpЩ
Econv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNconv__block_1_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02G
Econv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1├
4conv__block_1/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3'conv__block_1/conv2d_2/BiasAdd:output:0:conv__block_1/batch_normalization_1/ReadVariableOp:value:0<conv__block_1/batch_normalization_1/ReadVariableOp_1:value:0Kconv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Mconv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 26
4conv__block_1/batch_normalization_1/FusedBatchNormV3╛
conv__block_1/activation_1/ReluRelu8conv__block_1/batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         @2!
conv__block_1/activation_1/Relu╣
 conv__block_1/dropout_1/IdentityIdentity-conv__block_1/activation_1/Relu:activations:0*
T0*/
_output_shapes
:         @2"
 conv__block_1/dropout_1/Identity┌
,conv__block_2/conv2d_3/Conv2D/ReadVariableOpReadVariableOp5conv__block_2_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,conv__block_2/conv2d_3/Conv2D/ReadVariableOpЛ
conv__block_2/conv2d_3/Conv2DConv2D)conv__block_1/dropout_1/Identity:output:04conv__block_2/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
conv__block_2/conv2d_3/Conv2D╤
-conv__block_2/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp6conv__block_2_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-conv__block_2/conv2d_3/BiasAdd/ReadVariableOpф
conv__block_2/conv2d_3/BiasAddBiasAdd&conv__block_2/conv2d_3/Conv2D:output:05conv__block_2/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2 
conv__block_2/conv2d_3/BiasAddр
2conv__block_2/batch_normalization_2/ReadVariableOpReadVariableOp;conv__block_2_batch_normalization_2_readvariableop_resource*
_output_shapes
:@*
dtype024
2conv__block_2/batch_normalization_2/ReadVariableOpц
4conv__block_2/batch_normalization_2/ReadVariableOp_1ReadVariableOp=conv__block_2_batch_normalization_2_readvariableop_1_resource*
_output_shapes
:@*
dtype026
4conv__block_2/batch_normalization_2/ReadVariableOp_1У
Cconv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpLconv__block_2_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02E
Cconv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOpЩ
Econv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNconv__block_2_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02G
Econv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1├
4conv__block_2/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3'conv__block_2/conv2d_3/BiasAdd:output:0:conv__block_2/batch_normalization_2/ReadVariableOp:value:0<conv__block_2/batch_normalization_2/ReadVariableOp_1:value:0Kconv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Mconv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 26
4conv__block_2/batch_normalization_2/FusedBatchNormV3╛
conv__block_2/activation_2/ReluRelu8conv__block_2/batch_normalization_2/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         @2!
conv__block_2/activation_2/Relu╣
 conv__block_2/dropout_2/IdentityIdentity-conv__block_2/activation_2/Relu:activations:0*
T0*/
_output_shapes
:         @2"
 conv__block_2/dropout_2/Identity╒
max_pooling2d_1/MaxPoolMaxPool)conv__block_2/dropout_2/Identity:output:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool┌
,conv__block_3/conv2d_4/Conv2D/ReadVariableOpReadVariableOp5conv__block_3_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@`*
dtype02.
,conv__block_3/conv2d_4/Conv2D/ReadVariableOpВ
conv__block_3/conv2d_4/Conv2DConv2D max_pooling2d_1/MaxPool:output:04conv__block_3/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         `*
paddingSAME*
strides
2
conv__block_3/conv2d_4/Conv2D╤
-conv__block_3/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp6conv__block_3_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02/
-conv__block_3/conv2d_4/BiasAdd/ReadVariableOpф
conv__block_3/conv2d_4/BiasAddBiasAdd&conv__block_3/conv2d_4/Conv2D:output:05conv__block_3/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         `2 
conv__block_3/conv2d_4/BiasAddр
2conv__block_3/batch_normalization_3/ReadVariableOpReadVariableOp;conv__block_3_batch_normalization_3_readvariableop_resource*
_output_shapes
:`*
dtype024
2conv__block_3/batch_normalization_3/ReadVariableOpц
4conv__block_3/batch_normalization_3/ReadVariableOp_1ReadVariableOp=conv__block_3_batch_normalization_3_readvariableop_1_resource*
_output_shapes
:`*
dtype026
4conv__block_3/batch_normalization_3/ReadVariableOp_1У
Cconv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpLconv__block_3_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02E
Cconv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOpЩ
Econv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNconv__block_3_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02G
Econv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1├
4conv__block_3/batch_normalization_3/FusedBatchNormV3FusedBatchNormV3'conv__block_3/conv2d_4/BiasAdd:output:0:conv__block_3/batch_normalization_3/ReadVariableOp:value:0<conv__block_3/batch_normalization_3/ReadVariableOp_1:value:0Kconv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0Mconv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         `:`:`:`:`:*
epsilon%oГ:*
is_training( 26
4conv__block_3/batch_normalization_3/FusedBatchNormV3╛
conv__block_3/activation_3/ReluRelu8conv__block_3/batch_normalization_3/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         `2!
conv__block_3/activation_3/Relu╣
 conv__block_3/dropout_3/IdentityIdentity-conv__block_3/activation_3/Relu:activations:0*
T0*/
_output_shapes
:         `2"
 conv__block_3/dropout_3/Identity┌
,conv__block_4/conv2d_5/Conv2D/ReadVariableOpReadVariableOp5conv__block_4_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:``*
dtype02.
,conv__block_4/conv2d_5/Conv2D/ReadVariableOpМ
conv__block_4/conv2d_5/Conv2DConv2D)conv__block_3/dropout_3/Identity:output:04conv__block_4/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

`*
paddingVALID*
strides
2
conv__block_4/conv2d_5/Conv2D╤
-conv__block_4/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp6conv__block_4_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02/
-conv__block_4/conv2d_5/BiasAdd/ReadVariableOpф
conv__block_4/conv2d_5/BiasAddBiasAdd&conv__block_4/conv2d_5/Conv2D:output:05conv__block_4/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

`2 
conv__block_4/conv2d_5/BiasAddр
2conv__block_4/batch_normalization_4/ReadVariableOpReadVariableOp;conv__block_4_batch_normalization_4_readvariableop_resource*
_output_shapes
:`*
dtype024
2conv__block_4/batch_normalization_4/ReadVariableOpц
4conv__block_4/batch_normalization_4/ReadVariableOp_1ReadVariableOp=conv__block_4_batch_normalization_4_readvariableop_1_resource*
_output_shapes
:`*
dtype026
4conv__block_4/batch_normalization_4/ReadVariableOp_1У
Cconv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOpLconv__block_4_batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02E
Cconv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOpЩ
Econv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNconv__block_4_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02G
Econv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1├
4conv__block_4/batch_normalization_4/FusedBatchNormV3FusedBatchNormV3'conv__block_4/conv2d_5/BiasAdd:output:0:conv__block_4/batch_normalization_4/ReadVariableOp:value:0<conv__block_4/batch_normalization_4/ReadVariableOp_1:value:0Kconv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0Mconv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         

`:`:`:`:`:*
epsilon%oГ:*
is_training( 26
4conv__block_4/batch_normalization_4/FusedBatchNormV3╛
conv__block_4/activation_4/ReluRelu8conv__block_4/batch_normalization_4/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         

`2!
conv__block_4/activation_4/Relu╣
 conv__block_4/dropout_4/IdentityIdentity-conv__block_4/activation_4/Relu:activations:0*
T0*/
_output_shapes
:         

`2"
 conv__block_4/dropout_4/Identity╒
max_pooling2d_2/MaxPoolMaxPool)conv__block_4/dropout_4/Identity:output:0*/
_output_shapes
:         `*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool█
,conv__block_5/conv2d_6/Conv2D/ReadVariableOpReadVariableOp5conv__block_5_conv2d_6_conv2d_readvariableop_resource*'
_output_shapes
:`А*
dtype02.
,conv__block_5/conv2d_6/Conv2D/ReadVariableOpГ
conv__block_5/conv2d_6/Conv2DConv2D max_pooling2d_2/MaxPool:output:04conv__block_5/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
conv__block_5/conv2d_6/Conv2D╥
-conv__block_5/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp6conv__block_5_conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02/
-conv__block_5/conv2d_6/BiasAdd/ReadVariableOpх
conv__block_5/conv2d_6/BiasAddBiasAdd&conv__block_5/conv2d_6/Conv2D:output:05conv__block_5/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2 
conv__block_5/conv2d_6/BiasAddс
2conv__block_5/batch_normalization_5/ReadVariableOpReadVariableOp;conv__block_5_batch_normalization_5_readvariableop_resource*
_output_shapes	
:А*
dtype024
2conv__block_5/batch_normalization_5/ReadVariableOpч
4conv__block_5/batch_normalization_5/ReadVariableOp_1ReadVariableOp=conv__block_5_batch_normalization_5_readvariableop_1_resource*
_output_shapes	
:А*
dtype026
4conv__block_5/batch_normalization_5/ReadVariableOp_1Ф
Cconv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOpReadVariableOpLconv__block_5_batch_normalization_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02E
Cconv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOpЪ
Econv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNconv__block_5_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02G
Econv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1╚
4conv__block_5/batch_normalization_5/FusedBatchNormV3FusedBatchNormV3'conv__block_5/conv2d_6/BiasAdd:output:0:conv__block_5/batch_normalization_5/ReadVariableOp:value:0<conv__block_5/batch_normalization_5/ReadVariableOp_1:value:0Kconv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp:value:0Mconv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 26
4conv__block_5/batch_normalization_5/FusedBatchNormV3┐
conv__block_5/activation_5/ReluRelu8conv__block_5/batch_normalization_5/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         А2!
conv__block_5/activation_5/Relu║
 conv__block_5/dropout_5/IdentityIdentity-conv__block_5/activation_5/Relu:activations:0*
T0*0
_output_shapes
:         А2"
 conv__block_5/dropout_5/Identity▄
,conv__block_6/conv2d_7/Conv2D/ReadVariableOpReadVariableOp5conv__block_6_conv2d_7_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02.
,conv__block_6/conv2d_7/Conv2D/ReadVariableOpН
conv__block_6/conv2d_7/Conv2DConv2D)conv__block_5/dropout_5/Identity:output:04conv__block_6/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
2
conv__block_6/conv2d_7/Conv2D╥
-conv__block_6/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp6conv__block_6_conv2d_7_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02/
-conv__block_6/conv2d_7/BiasAdd/ReadVariableOpх
conv__block_6/conv2d_7/BiasAddBiasAdd&conv__block_6/conv2d_7/Conv2D:output:05conv__block_6/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2 
conv__block_6/conv2d_7/BiasAddс
2conv__block_6/batch_normalization_6/ReadVariableOpReadVariableOp;conv__block_6_batch_normalization_6_readvariableop_resource*
_output_shapes	
:А*
dtype024
2conv__block_6/batch_normalization_6/ReadVariableOpч
4conv__block_6/batch_normalization_6/ReadVariableOp_1ReadVariableOp=conv__block_6_batch_normalization_6_readvariableop_1_resource*
_output_shapes	
:А*
dtype026
4conv__block_6/batch_normalization_6/ReadVariableOp_1Ф
Cconv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOpLconv__block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02E
Cconv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpЪ
Econv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNconv__block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02G
Econv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1╚
4conv__block_6/batch_normalization_6/FusedBatchNormV3FusedBatchNormV3'conv__block_6/conv2d_7/BiasAdd:output:0:conv__block_6/batch_normalization_6/ReadVariableOp:value:0<conv__block_6/batch_normalization_6/ReadVariableOp_1:value:0Kconv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0Mconv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 26
4conv__block_6/batch_normalization_6/FusedBatchNormV3┐
conv__block_6/activation_6/ReluRelu8conv__block_6/batch_normalization_6/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         А2!
conv__block_6/activation_6/Relu║
 conv__block_6/dropout_6/IdentityIdentity-conv__block_6/activation_6/Relu:activations:0*
T0*0
_output_shapes
:         А2"
 conv__block_6/dropout_6/Identity╓
max_pooling2d_3/MaxPoolMaxPool)conv__block_6/dropout_6/Identity:output:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    А   2
flatten/ConstЪ
flatten/ReshapeReshape max_pooling2d_3/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:         А2
flatten/Reshapeа
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02
dense/MatMul/ReadVariableOpЧ
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense/MatMulЮ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dense/BiasAdd/ReadVariableOpЩ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense/BiasAdds
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense/Sigmoidz
	dense/mulMuldense/Sigmoid:y:0dense/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
	dense/mulu
dropout_7/IdentityIdentitydense/mul:z:0*
T0*'
_output_shapes
:         @2
dropout_7/Identityе
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_1/MatMul/ReadVariableOpа
dense_1/MatMulMatMuldropout_7/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_1/MatMulд
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOpб
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_1/BiasAddy
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_1/Sigmoid 
IdentityIdentitydense_1/Sigmoid:y:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp@^conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOpB^conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp_1/^conv__block/batch_normalization/ReadVariableOp1^conv__block/batch_normalization/ReadVariableOp_1,^conv__block/conv2d_1/BiasAdd/ReadVariableOp+^conv__block/conv2d_1/Conv2D/ReadVariableOpD^conv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpF^conv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_13^conv__block_1/batch_normalization_1/ReadVariableOp5^conv__block_1/batch_normalization_1/ReadVariableOp_1.^conv__block_1/conv2d_2/BiasAdd/ReadVariableOp-^conv__block_1/conv2d_2/Conv2D/ReadVariableOpD^conv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOpF^conv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_13^conv__block_2/batch_normalization_2/ReadVariableOp5^conv__block_2/batch_normalization_2/ReadVariableOp_1.^conv__block_2/conv2d_3/BiasAdd/ReadVariableOp-^conv__block_2/conv2d_3/Conv2D/ReadVariableOpD^conv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOpF^conv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_13^conv__block_3/batch_normalization_3/ReadVariableOp5^conv__block_3/batch_normalization_3/ReadVariableOp_1.^conv__block_3/conv2d_4/BiasAdd/ReadVariableOp-^conv__block_3/conv2d_4/Conv2D/ReadVariableOpD^conv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOpF^conv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_13^conv__block_4/batch_normalization_4/ReadVariableOp5^conv__block_4/batch_normalization_4/ReadVariableOp_1.^conv__block_4/conv2d_5/BiasAdd/ReadVariableOp-^conv__block_4/conv2d_5/Conv2D/ReadVariableOpD^conv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOpF^conv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_13^conv__block_5/batch_normalization_5/ReadVariableOp5^conv__block_5/batch_normalization_5/ReadVariableOp_1.^conv__block_5/conv2d_6/BiasAdd/ReadVariableOp-^conv__block_5/conv2d_6/Conv2D/ReadVariableOpD^conv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpF^conv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_13^conv__block_6/batch_normalization_6/ReadVariableOp5^conv__block_6/batch_normalization_6/ReadVariableOp_1.^conv__block_6/conv2d_7/BiasAdd/ReadVariableOp-^conv__block_6/conv2d_7/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Ё
_input_shapes▐
█:         00::::::::::::::::::::::::::::::::::::::::::::::::2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2В
?conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp?conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp2Ж
Aconv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp_1Aconv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp_12`
.conv__block/batch_normalization/ReadVariableOp.conv__block/batch_normalization/ReadVariableOp2d
0conv__block/batch_normalization/ReadVariableOp_10conv__block/batch_normalization/ReadVariableOp_12Z
+conv__block/conv2d_1/BiasAdd/ReadVariableOp+conv__block/conv2d_1/BiasAdd/ReadVariableOp2X
*conv__block/conv2d_1/Conv2D/ReadVariableOp*conv__block/conv2d_1/Conv2D/ReadVariableOp2К
Cconv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpCconv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2О
Econv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Econv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12h
2conv__block_1/batch_normalization_1/ReadVariableOp2conv__block_1/batch_normalization_1/ReadVariableOp2l
4conv__block_1/batch_normalization_1/ReadVariableOp_14conv__block_1/batch_normalization_1/ReadVariableOp_12^
-conv__block_1/conv2d_2/BiasAdd/ReadVariableOp-conv__block_1/conv2d_2/BiasAdd/ReadVariableOp2\
,conv__block_1/conv2d_2/Conv2D/ReadVariableOp,conv__block_1/conv2d_2/Conv2D/ReadVariableOp2К
Cconv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOpCconv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2О
Econv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Econv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12h
2conv__block_2/batch_normalization_2/ReadVariableOp2conv__block_2/batch_normalization_2/ReadVariableOp2l
4conv__block_2/batch_normalization_2/ReadVariableOp_14conv__block_2/batch_normalization_2/ReadVariableOp_12^
-conv__block_2/conv2d_3/BiasAdd/ReadVariableOp-conv__block_2/conv2d_3/BiasAdd/ReadVariableOp2\
,conv__block_2/conv2d_3/Conv2D/ReadVariableOp,conv__block_2/conv2d_3/Conv2D/ReadVariableOp2К
Cconv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOpCconv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2О
Econv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Econv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12h
2conv__block_3/batch_normalization_3/ReadVariableOp2conv__block_3/batch_normalization_3/ReadVariableOp2l
4conv__block_3/batch_normalization_3/ReadVariableOp_14conv__block_3/batch_normalization_3/ReadVariableOp_12^
-conv__block_3/conv2d_4/BiasAdd/ReadVariableOp-conv__block_3/conv2d_4/BiasAdd/ReadVariableOp2\
,conv__block_3/conv2d_4/Conv2D/ReadVariableOp,conv__block_3/conv2d_4/Conv2D/ReadVariableOp2К
Cconv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOpCconv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp2О
Econv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1Econv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12h
2conv__block_4/batch_normalization_4/ReadVariableOp2conv__block_4/batch_normalization_4/ReadVariableOp2l
4conv__block_4/batch_normalization_4/ReadVariableOp_14conv__block_4/batch_normalization_4/ReadVariableOp_12^
-conv__block_4/conv2d_5/BiasAdd/ReadVariableOp-conv__block_4/conv2d_5/BiasAdd/ReadVariableOp2\
,conv__block_4/conv2d_5/Conv2D/ReadVariableOp,conv__block_4/conv2d_5/Conv2D/ReadVariableOp2К
Cconv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOpCconv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp2О
Econv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1Econv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12h
2conv__block_5/batch_normalization_5/ReadVariableOp2conv__block_5/batch_normalization_5/ReadVariableOp2l
4conv__block_5/batch_normalization_5/ReadVariableOp_14conv__block_5/batch_normalization_5/ReadVariableOp_12^
-conv__block_5/conv2d_6/BiasAdd/ReadVariableOp-conv__block_5/conv2d_6/BiasAdd/ReadVariableOp2\
,conv__block_5/conv2d_6/Conv2D/ReadVariableOp,conv__block_5/conv2d_6/Conv2D/ReadVariableOp2К
Cconv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpCconv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp2О
Econv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Econv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12h
2conv__block_6/batch_normalization_6/ReadVariableOp2conv__block_6/batch_normalization_6/ReadVariableOp2l
4conv__block_6/batch_normalization_6/ReadVariableOp_14conv__block_6/batch_normalization_6/ReadVariableOp_12^
-conv__block_6/conv2d_7/BiasAdd/ReadVariableOp-conv__block_6/conv2d_7/BiasAdd/ReadVariableOp2\
,conv__block_6/conv2d_7/Conv2D/ReadVariableOp,conv__block_6/conv2d_7/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:W S
/
_output_shapes
:         00
 
_user_specified_nameinputs
╓
╨
#__inference_signature_wrapper_14339
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46
identityИвStatefulPartitionedCall╧
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *R
_read_only_resource_inputs4
20	
 !"#$%&'()*+,-./0*0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference__wrapped_model_107432
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Ё
_input_shapes▐
█:         00::::::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:         00
!
_user_specified_name	input_1
╠
є
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_16726

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1с
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3э
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,                           А::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
Ю
и
5__inference_batch_normalization_4_layer_call_fn_16555

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall╡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           `*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_122132
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           `2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           `::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           `
 
_user_specified_nameinputs
Д
є
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_16974

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╧
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3█
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:         А::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ч
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_12042

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:         `2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         `2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:         `:W S
/
_output_shapes
:         `
 
_user_specified_nameinputs
Д
є
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_12680

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╧
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3█
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:         А::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╩
в
F__inference_conv__block_layer_call_and_return_conditional_losses_15066
x+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource/
+batch_normalization_readvariableop_resource1
-batch_normalization_readvariableop_1_resource@
<batch_normalization_fusedbatchnormv3_readvariableop_resourceB
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource
identityИв3batch_normalization/FusedBatchNormV3/ReadVariableOpв5batch_normalization/FusedBatchNormV3/ReadVariableOp_1в"batch_normalization/ReadVariableOpв$batch_normalization/ReadVariableOp_1вconv2d_1/BiasAdd/ReadVariableOpвconv2d_1/Conv2D/ReadVariableOp░
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
conv2d_1/Conv2D/ReadVariableOp╣
conv2d_1/Conv2DConv2Dx&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 *
paddingSAME*
strides
2
conv2d_1/Conv2Dз
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOpм
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 2
conv2d_1/BiasAdd░
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype02$
"batch_normalization/ReadVariableOp╢
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype02&
$batch_normalization/ReadVariableOp_1у
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype025
3batch_normalization/FusedBatchNormV3/ReadVariableOpщ
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype027
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1╒
$batch_normalization/FusedBatchNormV3FusedBatchNormV3conv2d_1/BiasAdd:output:0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         00 : : : : :*
epsilon%oГ:*
is_training( 2&
$batch_normalization/FusedBatchNormV3О
activation/ReluRelu(batch_normalization/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         00 2
activation/ReluЙ
dropout/IdentityIdentityactivation/Relu:activations:0*
T0*/
_output_shapes
:         00 2
dropout/IdentityЄ
IdentityIdentitydropout/Identity:output:04^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_1 ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         00 2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         00 ::::::2j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_12B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:R N
/
_output_shapes
:         00 

_user_specified_namex
∙
╣
-__inference_conv__block_2_layer_call_fn_15290
x
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCall▓
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_2_layer_call_and_return_conditional_losses_117782
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         @::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:         @

_user_specified_namex
ў
╣
-__inference_conv__block_1_layer_call_fn_15178
x
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCall░
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_1_layer_call_and_return_conditional_losses_113952
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:          ::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:          

_user_specified_namex
└
є
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_11194

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
о
K
/__inference_max_pooling2d_1_layer_call_fn_11805

inputs
identityю
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_117992
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
В
Х
N__inference_batch_normalization_layer_call_and_return_conditional_losses_15788

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         00 : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         00 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         00 ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         00 
 
_user_specified_nameinputs
▄
и
5__inference_batch_normalization_6_layer_call_fn_17000

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_130262
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:         А::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ф
с
H__inference_conv__block_3_layer_call_and_return_conditional_losses_12136
x
conv2d_4_12119
conv2d_4_12121
batch_normalization_3_12124
batch_normalization_3_12126
batch_normalization_3_12128
batch_normalization_3_12130
identityИв-batch_normalization_3/StatefulPartitionedCallв conv2d_4/StatefulPartitionedCallЧ
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallxconv2d_4_12119conv2d_4_12121*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_119232"
 conv2d_4/StatefulPartitionedCall╛
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_3_12124batch_normalization_3_12126batch_normalization_3_12128batch_normalization_3_12130*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_119762/
-batch_normalization_3/StatefulPartitionedCallЪ
activation_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_3_layer_call_and_return_conditional_losses_120172
activation_3/PartitionedCallА
dropout_3/PartitionedCallPartitionedCall%activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_120422
dropout_3/PartitionedCall╤
IdentityIdentity"dropout_3/PartitionedCall:output:0.^batch_normalization_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall*
T0*/
_output_shapes
:         `2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         @::::::2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall:R N
/
_output_shapes
:         @

_user_specified_namex
ч
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_11684

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:         @2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ЧV
¤
G__inference_fac__model_1_layer_call_and_return_conditional_losses_13912

inputs
conv2d_13799
conv2d_13801
conv__block_13804
conv__block_13806
conv__block_13808
conv__block_13810
conv__block_13812
conv__block_13814
conv__block_1_13818
conv__block_1_13820
conv__block_1_13822
conv__block_1_13824
conv__block_1_13826
conv__block_1_13828
conv__block_2_13831
conv__block_2_13833
conv__block_2_13835
conv__block_2_13837
conv__block_2_13839
conv__block_2_13841
conv__block_3_13845
conv__block_3_13847
conv__block_3_13849
conv__block_3_13851
conv__block_3_13853
conv__block_3_13855
conv__block_4_13858
conv__block_4_13860
conv__block_4_13862
conv__block_4_13864
conv__block_4_13866
conv__block_4_13868
conv__block_5_13872
conv__block_5_13874
conv__block_5_13876
conv__block_5_13878
conv__block_5_13880
conv__block_5_13882
conv__block_6_13885
conv__block_6_13887
conv__block_6_13889
conv__block_6_13891
conv__block_6_13893
conv__block_6_13895
dense_13900
dense_13902
dense_1_13906
dense_1_13908
identityИвconv2d/StatefulPartitionedCallв#conv__block/StatefulPartitionedCallв%conv__block_1/StatefulPartitionedCallв%conv__block_2/StatefulPartitionedCallв%conv__block_3/StatefulPartitionedCallв%conv__block_4/StatefulPartitionedCallв%conv__block_5/StatefulPartitionedCallв%conv__block_6/StatefulPartitionedCallвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallв!dropout_7/StatefulPartitionedCallТ
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_13799conv2d_13801*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_132282 
conv2d/StatefulPartitionedCallЮ
#conv__block/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv__block_13804conv__block_13806conv__block_13808conv__block_13810conv__block_13812conv__block_13814*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv__block_layer_call_and_return_conditional_losses_110372%
#conv__block/StatefulPartitionedCallУ
max_pooling2d/PartitionedCallPartitionedCall,conv__block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_110952
max_pooling2d/PartitionedCallп
%conv__block_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv__block_1_13818conv__block_1_13820conv__block_1_13822conv__block_1_13824conv__block_1_13826conv__block_1_13828*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_1_layer_call_and_return_conditional_losses_113952'
%conv__block_1/StatefulPartitionedCall╖
%conv__block_2/StatefulPartitionedCallStatefulPartitionedCall.conv__block_1/StatefulPartitionedCall:output:0conv__block_2_13831conv__block_2_13833conv__block_2_13835conv__block_2_13837conv__block_2_13839conv__block_2_13841*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_2_layer_call_and_return_conditional_losses_117412'
%conv__block_2/StatefulPartitionedCallЫ
max_pooling2d_1/PartitionedCallPartitionedCall.conv__block_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_117992!
max_pooling2d_1/PartitionedCall▒
%conv__block_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv__block_3_13845conv__block_3_13847conv__block_3_13849conv__block_3_13851conv__block_3_13853conv__block_3_13855*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_3_layer_call_and_return_conditional_losses_120992'
%conv__block_3/StatefulPartitionedCall╖
%conv__block_4/StatefulPartitionedCallStatefulPartitionedCall.conv__block_3/StatefulPartitionedCall:output:0conv__block_4_13858conv__block_4_13860conv__block_4_13862conv__block_4_13864conv__block_4_13866conv__block_4_13868*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_4_layer_call_and_return_conditional_losses_124452'
%conv__block_4/StatefulPartitionedCallЫ
max_pooling2d_2/PartitionedCallPartitionedCall.conv__block_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_125032!
max_pooling2d_2/PartitionedCall▓
%conv__block_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv__block_5_13872conv__block_5_13874conv__block_5_13876conv__block_5_13878conv__block_5_13880conv__block_5_13882*
Tin
	2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_5_layer_call_and_return_conditional_losses_128032'
%conv__block_5/StatefulPartitionedCall╕
%conv__block_6/StatefulPartitionedCallStatefulPartitionedCall.conv__block_5/StatefulPartitionedCall:output:0conv__block_6_13885conv__block_6_13887conv__block_6_13889conv__block_6_13891conv__block_6_13893conv__block_6_13895*
Tin
	2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_6_layer_call_and_return_conditional_losses_131492'
%conv__block_6/StatefulPartitionedCallЬ
max_pooling2d_3/PartitionedCallPartitionedCall.conv__block_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_132072!
max_pooling2d_3/PartitionedCallЎ
flatten/PartitionedCallPartitionedCall(max_pooling2d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_135832
flatten/PartitionedCallЯ
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_13900dense_13902*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_136032
dense/StatefulPartitionedCallС
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_136312#
!dropout_7/StatefulPartitionedCall│
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0dense_1_13906dense_1_13908*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_136602!
dense_1/StatefulPartitionedCallЩ
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall$^conv__block/StatefulPartitionedCall&^conv__block_1/StatefulPartitionedCall&^conv__block_2/StatefulPartitionedCall&^conv__block_3/StatefulPartitionedCall&^conv__block_4/StatefulPartitionedCall&^conv__block_5/StatefulPartitionedCall&^conv__block_6/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Ё
_input_shapes▐
█:         00::::::::::::::::::::::::::::::::::::::::::::::::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2J
#conv__block/StatefulPartitionedCall#conv__block/StatefulPartitionedCall2N
%conv__block_1/StatefulPartitionedCall%conv__block_1/StatefulPartitionedCall2N
%conv__block_2/StatefulPartitionedCall%conv__block_2/StatefulPartitionedCall2N
%conv__block_3/StatefulPartitionedCall%conv__block_3/StatefulPartitionedCall2N
%conv__block_4/StatefulPartitionedCall%conv__block_4/StatefulPartitionedCall2N
%conv__block_5/StatefulPartitionedCall%conv__block_5/StatefulPartitionedCall2N
%conv__block_6/StatefulPartitionedCall%conv__block_6/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall:W S
/
_output_shapes
:         00
 
_user_specified_nameinputs
╩
c
D__inference_dropout_6_layer_call_and_return_conditional_losses_13087

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╜
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2
dropout/GreaterEqual/y╟
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         А2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
е
C
'__inference_flatten_layer_call_fn_15681

inputs
identity─
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_135832
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
°
┘
,__inference_fac__model_1_layer_call_fn_14011
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46
identityИвStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *D
_read_only_resource_inputs&
$"	
!"#$'()*-./0*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_fac__model_1_layer_call_and_return_conditional_losses_139122
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Ё
_input_shapes▐
█:         00::::::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:         00
!
_user_specified_name	input_1
┌
и
5__inference_batch_normalization_6_layer_call_fn_16987

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_130082
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:         А::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ў
ё
N__inference_batch_normalization_layer_call_and_return_conditional_losses_10914

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         00 : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         00 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         00 ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         00 
 
_user_specified_nameinputs
╖
F
*__inference_activation_layer_call_fn_15906

inputs
identity╬
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_109552
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         00 2

Identity"
identityIdentity:output:0*.
_input_shapes
:         00 :W S
/
_output_shapes
:         00 
 
_user_specified_nameinputs
▒
C
'__inference_dropout_layer_call_fn_15933

inputs
identity╦
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_109802
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         00 2

Identity"
identityIdentity:output:0*.
_input_shapes
:         00 :W S
/
_output_shapes
:         00 
 
_user_specified_nameinputs
╣3
Д
H__inference_conv__block_2_layer_call_and_return_conditional_losses_15230
x+
'conv2d_3_conv2d_readvariableop_resource,
(conv2d_3_biasadd_readvariableop_resource1
-batch_normalization_2_readvariableop_resource3
/batch_normalization_2_readvariableop_1_resourceB
>batch_normalization_2_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource
identityИв$batch_normalization_2/AssignNewValueв&batch_normalization_2/AssignNewValue_1в5batch_normalization_2/FusedBatchNormV3/ReadVariableOpв7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_2/ReadVariableOpв&batch_normalization_2/ReadVariableOp_1вconv2d_3/BiasAdd/ReadVariableOpвconv2d_3/Conv2D/ReadVariableOp░
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_3/Conv2D/ReadVariableOp╣
conv2d_3/Conv2DConv2Dx&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
conv2d_3/Conv2Dз
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_3/BiasAdd/ReadVariableOpм
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_3/BiasAdd╢
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource*
_output_shapes
:@*
dtype02&
$batch_normalization_2/ReadVariableOp╝
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_2/ReadVariableOp_1щ
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpя
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype029
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1я
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3conv2d_3/BiasAdd:output:0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2(
&batch_normalization_2/FusedBatchNormV3▒
$batch_normalization_2/AssignNewValueAssignVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource3batch_normalization_2/FusedBatchNormV3:batch_mean:06^batch_normalization_2/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*Q
_classG
ECloc:@batch_normalization_2/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02&
$batch_normalization_2/AssignNewValue┐
&batch_normalization_2/AssignNewValue_1AssignVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_2/FusedBatchNormV3:batch_variance:08^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*S
_classI
GEloc:@batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02(
&batch_normalization_2/AssignNewValue_1Ф
activation_2/ReluRelu*batch_normalization_2/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         @2
activation_2/Reluw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout_2/dropout/Const▓
dropout_2/dropout/MulMulactivation_2/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout_2/dropout/MulБ
dropout_2/dropout/ShapeShapeactivation_2/Relu:activations:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shape┌
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype020
.dropout_2/dropout/random_uniform/RandomUniformЙ
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2"
 dropout_2/dropout/GreaterEqual/yю
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2 
dropout_2/dropout/GreaterEqualе
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout_2/dropout/Castк
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout_2/dropout/Mul_1╠
IdentityIdentitydropout_2/dropout/Mul_1:z:0%^batch_normalization_2/AssignNewValue'^batch_normalization_2/AssignNewValue_16^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_1 ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         @::::::2L
$batch_normalization_2/AssignNewValue$batch_normalization_2/AssignNewValue2P
&batch_normalization_2/AssignNewValue_1&batch_normalization_2/AssignNewValue_12n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_12B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp:R N
/
_output_shapes
:         @

_user_specified_namex
ж
ч
H__inference_conv__block_3_layer_call_and_return_conditional_losses_12076
input_1
conv2d_4_12059
conv2d_4_12061
batch_normalization_3_12064
batch_normalization_3_12066
batch_normalization_3_12068
batch_normalization_3_12070
identityИв-batch_normalization_3/StatefulPartitionedCallв conv2d_4/StatefulPartitionedCallЭ
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_4_12059conv2d_4_12061*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_119232"
 conv2d_4/StatefulPartitionedCall╛
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_3_12064batch_normalization_3_12066batch_normalization_3_12068batch_normalization_3_12070*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_119762/
-batch_normalization_3/StatefulPartitionedCallЪ
activation_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_3_layer_call_and_return_conditional_losses_120172
activation_3/PartitionedCallА
dropout_3/PartitionedCallPartitionedCall%activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_120422
dropout_3/PartitionedCall╤
IdentityIdentity"dropout_3/PartitionedCall:output:0.^batch_normalization_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall*
T0*/
_output_shapes
:         `2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         @::::::2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall:X T
/
_output_shapes
:         @
!
_user_specified_name	input_1
Л
┐
-__inference_conv__block_3_layer_call_fn_12151
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCall╕
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_3_layer_call_and_return_conditional_losses_121362
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         `2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         @::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:         @
!
_user_specified_name	input_1
└
є
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11540

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
└
є
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11898

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           `:`:`:`:`:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           `2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           `::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           `
 
_user_specified_nameinputs
ю╫
┬3
G__inference_fac__model_1_layer_call_and_return_conditional_losses_14596

inputs)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource7
3conv__block_conv2d_1_conv2d_readvariableop_resource8
4conv__block_conv2d_1_biasadd_readvariableop_resource;
7conv__block_batch_normalization_readvariableop_resource=
9conv__block_batch_normalization_readvariableop_1_resourceL
Hconv__block_batch_normalization_fusedbatchnormv3_readvariableop_resourceN
Jconv__block_batch_normalization_fusedbatchnormv3_readvariableop_1_resource9
5conv__block_1_conv2d_2_conv2d_readvariableop_resource:
6conv__block_1_conv2d_2_biasadd_readvariableop_resource?
;conv__block_1_batch_normalization_1_readvariableop_resourceA
=conv__block_1_batch_normalization_1_readvariableop_1_resourceP
Lconv__block_1_batch_normalization_1_fusedbatchnormv3_readvariableop_resourceR
Nconv__block_1_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource9
5conv__block_2_conv2d_3_conv2d_readvariableop_resource:
6conv__block_2_conv2d_3_biasadd_readvariableop_resource?
;conv__block_2_batch_normalization_2_readvariableop_resourceA
=conv__block_2_batch_normalization_2_readvariableop_1_resourceP
Lconv__block_2_batch_normalization_2_fusedbatchnormv3_readvariableop_resourceR
Nconv__block_2_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource9
5conv__block_3_conv2d_4_conv2d_readvariableop_resource:
6conv__block_3_conv2d_4_biasadd_readvariableop_resource?
;conv__block_3_batch_normalization_3_readvariableop_resourceA
=conv__block_3_batch_normalization_3_readvariableop_1_resourceP
Lconv__block_3_batch_normalization_3_fusedbatchnormv3_readvariableop_resourceR
Nconv__block_3_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource9
5conv__block_4_conv2d_5_conv2d_readvariableop_resource:
6conv__block_4_conv2d_5_biasadd_readvariableop_resource?
;conv__block_4_batch_normalization_4_readvariableop_resourceA
=conv__block_4_batch_normalization_4_readvariableop_1_resourceP
Lconv__block_4_batch_normalization_4_fusedbatchnormv3_readvariableop_resourceR
Nconv__block_4_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource9
5conv__block_5_conv2d_6_conv2d_readvariableop_resource:
6conv__block_5_conv2d_6_biasadd_readvariableop_resource?
;conv__block_5_batch_normalization_5_readvariableop_resourceA
=conv__block_5_batch_normalization_5_readvariableop_1_resourceP
Lconv__block_5_batch_normalization_5_fusedbatchnormv3_readvariableop_resourceR
Nconv__block_5_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource9
5conv__block_6_conv2d_7_conv2d_readvariableop_resource:
6conv__block_6_conv2d_7_biasadd_readvariableop_resource?
;conv__block_6_batch_normalization_6_readvariableop_resourceA
=conv__block_6_batch_normalization_6_readvariableop_1_resourceP
Lconv__block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resourceR
Nconv__block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identityИвconv2d/BiasAdd/ReadVariableOpвconv2d/Conv2D/ReadVariableOpв.conv__block/batch_normalization/AssignNewValueв0conv__block/batch_normalization/AssignNewValue_1в?conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOpвAconv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp_1в.conv__block/batch_normalization/ReadVariableOpв0conv__block/batch_normalization/ReadVariableOp_1в+conv__block/conv2d_1/BiasAdd/ReadVariableOpв*conv__block/conv2d_1/Conv2D/ReadVariableOpв2conv__block_1/batch_normalization_1/AssignNewValueв4conv__block_1/batch_normalization_1/AssignNewValue_1вCconv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpвEconv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1в2conv__block_1/batch_normalization_1/ReadVariableOpв4conv__block_1/batch_normalization_1/ReadVariableOp_1в-conv__block_1/conv2d_2/BiasAdd/ReadVariableOpв,conv__block_1/conv2d_2/Conv2D/ReadVariableOpв2conv__block_2/batch_normalization_2/AssignNewValueв4conv__block_2/batch_normalization_2/AssignNewValue_1вCconv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOpвEconv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1в2conv__block_2/batch_normalization_2/ReadVariableOpв4conv__block_2/batch_normalization_2/ReadVariableOp_1в-conv__block_2/conv2d_3/BiasAdd/ReadVariableOpв,conv__block_2/conv2d_3/Conv2D/ReadVariableOpв2conv__block_3/batch_normalization_3/AssignNewValueв4conv__block_3/batch_normalization_3/AssignNewValue_1вCconv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOpвEconv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1в2conv__block_3/batch_normalization_3/ReadVariableOpв4conv__block_3/batch_normalization_3/ReadVariableOp_1в-conv__block_3/conv2d_4/BiasAdd/ReadVariableOpв,conv__block_3/conv2d_4/Conv2D/ReadVariableOpв2conv__block_4/batch_normalization_4/AssignNewValueв4conv__block_4/batch_normalization_4/AssignNewValue_1вCconv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOpвEconv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1в2conv__block_4/batch_normalization_4/ReadVariableOpв4conv__block_4/batch_normalization_4/ReadVariableOp_1в-conv__block_4/conv2d_5/BiasAdd/ReadVariableOpв,conv__block_4/conv2d_5/Conv2D/ReadVariableOpв2conv__block_5/batch_normalization_5/AssignNewValueв4conv__block_5/batch_normalization_5/AssignNewValue_1вCconv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOpвEconv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1в2conv__block_5/batch_normalization_5/ReadVariableOpв4conv__block_5/batch_normalization_5/ReadVariableOp_1в-conv__block_5/conv2d_6/BiasAdd/ReadVariableOpв,conv__block_5/conv2d_6/Conv2D/ReadVariableOpв2conv__block_6/batch_normalization_6/AssignNewValueв4conv__block_6/batch_normalization_6/AssignNewValue_1вCconv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpвEconv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1в2conv__block_6/batch_normalization_6/ReadVariableOpв4conv__block_6/batch_normalization_6/ReadVariableOp_1в-conv__block_6/conv2d_7/BiasAdd/ReadVariableOpв,conv__block_6/conv2d_7/Conv2D/ReadVariableOpвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpк
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
conv2d/Conv2D/ReadVariableOp╕
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 *
paddingSAME*
strides
2
conv2d/Conv2Dб
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv2d/BiasAdd/ReadVariableOpд
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:         00 2
conv2d/Relu╘
*conv__block/conv2d_1/Conv2D/ReadVariableOpReadVariableOp3conv__block_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02,
*conv__block/conv2d_1/Conv2D/ReadVariableOpї
conv__block/conv2d_1/Conv2DConv2Dconv2d/Relu:activations:02conv__block/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 *
paddingSAME*
strides
2
conv__block/conv2d_1/Conv2D╦
+conv__block/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp4conv__block_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+conv__block/conv2d_1/BiasAdd/ReadVariableOp▄
conv__block/conv2d_1/BiasAddBiasAdd$conv__block/conv2d_1/Conv2D:output:03conv__block/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 2
conv__block/conv2d_1/BiasAdd╘
.conv__block/batch_normalization/ReadVariableOpReadVariableOp7conv__block_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype020
.conv__block/batch_normalization/ReadVariableOp┌
0conv__block/batch_normalization/ReadVariableOp_1ReadVariableOp9conv__block_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype022
0conv__block/batch_normalization/ReadVariableOp_1З
?conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpHconv__block_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02A
?conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOpН
Aconv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpJconv__block_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02C
Aconv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp_1╖
0conv__block/batch_normalization/FusedBatchNormV3FusedBatchNormV3%conv__block/conv2d_1/BiasAdd:output:06conv__block/batch_normalization/ReadVariableOp:value:08conv__block/batch_normalization/ReadVariableOp_1:value:0Gconv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Iconv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         00 : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<22
0conv__block/batch_normalization/FusedBatchNormV3э
.conv__block/batch_normalization/AssignNewValueAssignVariableOpHconv__block_batch_normalization_fusedbatchnormv3_readvariableop_resource=conv__block/batch_normalization/FusedBatchNormV3:batch_mean:0@^conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*[
_classQ
OMloc:@conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype020
.conv__block/batch_normalization/AssignNewValue√
0conv__block/batch_normalization/AssignNewValue_1AssignVariableOpJconv__block_batch_normalization_fusedbatchnormv3_readvariableop_1_resourceAconv__block/batch_normalization/FusedBatchNormV3:batch_variance:0B^conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*]
_classS
QOloc:@conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype022
0conv__block/batch_normalization/AssignNewValue_1▓
conv__block/activation/ReluRelu4conv__block/batch_normalization/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         00 2
conv__block/activation/ReluЛ
!conv__block/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2#
!conv__block/dropout/dropout/Const┌
conv__block/dropout/dropout/MulMul)conv__block/activation/Relu:activations:0*conv__block/dropout/dropout/Const:output:0*
T0*/
_output_shapes
:         00 2!
conv__block/dropout/dropout/MulЯ
!conv__block/dropout/dropout/ShapeShape)conv__block/activation/Relu:activations:0*
T0*
_output_shapes
:2#
!conv__block/dropout/dropout/Shape°
8conv__block/dropout/dropout/random_uniform/RandomUniformRandomUniform*conv__block/dropout/dropout/Shape:output:0*
T0*/
_output_shapes
:         00 *
dtype02:
8conv__block/dropout/dropout/random_uniform/RandomUniformЭ
*conv__block/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2,
*conv__block/dropout/dropout/GreaterEqual/yЦ
(conv__block/dropout/dropout/GreaterEqualGreaterEqualAconv__block/dropout/dropout/random_uniform/RandomUniform:output:03conv__block/dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         00 2*
(conv__block/dropout/dropout/GreaterEqual├
 conv__block/dropout/dropout/CastCast,conv__block/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         00 2"
 conv__block/dropout/dropout/Cast╥
!conv__block/dropout/dropout/Mul_1Mul#conv__block/dropout/dropout/Mul:z:0$conv__block/dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:         00 2#
!conv__block/dropout/dropout/Mul_1═
max_pooling2d/MaxPoolMaxPool%conv__block/dropout/dropout/Mul_1:z:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool┌
,conv__block_1/conv2d_2/Conv2D/ReadVariableOpReadVariableOp5conv__block_1_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02.
,conv__block_1/conv2d_2/Conv2D/ReadVariableOpА
conv__block_1/conv2d_2/Conv2DConv2Dmax_pooling2d/MaxPool:output:04conv__block_1/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
conv__block_1/conv2d_2/Conv2D╤
-conv__block_1/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp6conv__block_1_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-conv__block_1/conv2d_2/BiasAdd/ReadVariableOpф
conv__block_1/conv2d_2/BiasAddBiasAdd&conv__block_1/conv2d_2/Conv2D:output:05conv__block_1/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2 
conv__block_1/conv2d_2/BiasAddр
2conv__block_1/batch_normalization_1/ReadVariableOpReadVariableOp;conv__block_1_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype024
2conv__block_1/batch_normalization_1/ReadVariableOpц
4conv__block_1/batch_normalization_1/ReadVariableOp_1ReadVariableOp=conv__block_1_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype026
4conv__block_1/batch_normalization_1/ReadVariableOp_1У
Cconv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpLconv__block_1_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02E
Cconv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpЩ
Econv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNconv__block_1_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02G
Econv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1╤
4conv__block_1/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3'conv__block_1/conv2d_2/BiasAdd:output:0:conv__block_1/batch_normalization_1/ReadVariableOp:value:0<conv__block_1/batch_normalization_1/ReadVariableOp_1:value:0Kconv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Mconv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<26
4conv__block_1/batch_normalization_1/FusedBatchNormV3Е
2conv__block_1/batch_normalization_1/AssignNewValueAssignVariableOpLconv__block_1_batch_normalization_1_fusedbatchnormv3_readvariableop_resourceAconv__block_1/batch_normalization_1/FusedBatchNormV3:batch_mean:0D^conv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*_
_classU
SQloc:@conv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype024
2conv__block_1/batch_normalization_1/AssignNewValueУ
4conv__block_1/batch_normalization_1/AssignNewValue_1AssignVariableOpNconv__block_1_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resourceEconv__block_1/batch_normalization_1/FusedBatchNormV3:batch_variance:0F^conv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*a
_classW
USloc:@conv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype026
4conv__block_1/batch_normalization_1/AssignNewValue_1╛
conv__block_1/activation_1/ReluRelu8conv__block_1/batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         @2!
conv__block_1/activation_1/ReluУ
%conv__block_1/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2'
%conv__block_1/dropout_1/dropout/Constъ
#conv__block_1/dropout_1/dropout/MulMul-conv__block_1/activation_1/Relu:activations:0.conv__block_1/dropout_1/dropout/Const:output:0*
T0*/
_output_shapes
:         @2%
#conv__block_1/dropout_1/dropout/Mulл
%conv__block_1/dropout_1/dropout/ShapeShape-conv__block_1/activation_1/Relu:activations:0*
T0*
_output_shapes
:2'
%conv__block_1/dropout_1/dropout/ShapeД
<conv__block_1/dropout_1/dropout/random_uniform/RandomUniformRandomUniform.conv__block_1/dropout_1/dropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype02>
<conv__block_1/dropout_1/dropout/random_uniform/RandomUniformе
.conv__block_1/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=20
.conv__block_1/dropout_1/dropout/GreaterEqual/yж
,conv__block_1/dropout_1/dropout/GreaterEqualGreaterEqualEconv__block_1/dropout_1/dropout/random_uniform/RandomUniform:output:07conv__block_1/dropout_1/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2.
,conv__block_1/dropout_1/dropout/GreaterEqual╧
$conv__block_1/dropout_1/dropout/CastCast0conv__block_1/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2&
$conv__block_1/dropout_1/dropout/Castт
%conv__block_1/dropout_1/dropout/Mul_1Mul'conv__block_1/dropout_1/dropout/Mul:z:0(conv__block_1/dropout_1/dropout/Cast:y:0*
T0*/
_output_shapes
:         @2'
%conv__block_1/dropout_1/dropout/Mul_1┌
,conv__block_2/conv2d_3/Conv2D/ReadVariableOpReadVariableOp5conv__block_2_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,conv__block_2/conv2d_3/Conv2D/ReadVariableOpЛ
conv__block_2/conv2d_3/Conv2DConv2D)conv__block_1/dropout_1/dropout/Mul_1:z:04conv__block_2/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
conv__block_2/conv2d_3/Conv2D╤
-conv__block_2/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp6conv__block_2_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-conv__block_2/conv2d_3/BiasAdd/ReadVariableOpф
conv__block_2/conv2d_3/BiasAddBiasAdd&conv__block_2/conv2d_3/Conv2D:output:05conv__block_2/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2 
conv__block_2/conv2d_3/BiasAddр
2conv__block_2/batch_normalization_2/ReadVariableOpReadVariableOp;conv__block_2_batch_normalization_2_readvariableop_resource*
_output_shapes
:@*
dtype024
2conv__block_2/batch_normalization_2/ReadVariableOpц
4conv__block_2/batch_normalization_2/ReadVariableOp_1ReadVariableOp=conv__block_2_batch_normalization_2_readvariableop_1_resource*
_output_shapes
:@*
dtype026
4conv__block_2/batch_normalization_2/ReadVariableOp_1У
Cconv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpLconv__block_2_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02E
Cconv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOpЩ
Econv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNconv__block_2_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02G
Econv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1╤
4conv__block_2/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3'conv__block_2/conv2d_3/BiasAdd:output:0:conv__block_2/batch_normalization_2/ReadVariableOp:value:0<conv__block_2/batch_normalization_2/ReadVariableOp_1:value:0Kconv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Mconv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<26
4conv__block_2/batch_normalization_2/FusedBatchNormV3Е
2conv__block_2/batch_normalization_2/AssignNewValueAssignVariableOpLconv__block_2_batch_normalization_2_fusedbatchnormv3_readvariableop_resourceAconv__block_2/batch_normalization_2/FusedBatchNormV3:batch_mean:0D^conv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*_
_classU
SQloc:@conv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype024
2conv__block_2/batch_normalization_2/AssignNewValueУ
4conv__block_2/batch_normalization_2/AssignNewValue_1AssignVariableOpNconv__block_2_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resourceEconv__block_2/batch_normalization_2/FusedBatchNormV3:batch_variance:0F^conv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*a
_classW
USloc:@conv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype026
4conv__block_2/batch_normalization_2/AssignNewValue_1╛
conv__block_2/activation_2/ReluRelu8conv__block_2/batch_normalization_2/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         @2!
conv__block_2/activation_2/ReluУ
%conv__block_2/dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2'
%conv__block_2/dropout_2/dropout/Constъ
#conv__block_2/dropout_2/dropout/MulMul-conv__block_2/activation_2/Relu:activations:0.conv__block_2/dropout_2/dropout/Const:output:0*
T0*/
_output_shapes
:         @2%
#conv__block_2/dropout_2/dropout/Mulл
%conv__block_2/dropout_2/dropout/ShapeShape-conv__block_2/activation_2/Relu:activations:0*
T0*
_output_shapes
:2'
%conv__block_2/dropout_2/dropout/ShapeД
<conv__block_2/dropout_2/dropout/random_uniform/RandomUniformRandomUniform.conv__block_2/dropout_2/dropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype02>
<conv__block_2/dropout_2/dropout/random_uniform/RandomUniformе
.conv__block_2/dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=20
.conv__block_2/dropout_2/dropout/GreaterEqual/yж
,conv__block_2/dropout_2/dropout/GreaterEqualGreaterEqualEconv__block_2/dropout_2/dropout/random_uniform/RandomUniform:output:07conv__block_2/dropout_2/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2.
,conv__block_2/dropout_2/dropout/GreaterEqual╧
$conv__block_2/dropout_2/dropout/CastCast0conv__block_2/dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2&
$conv__block_2/dropout_2/dropout/Castт
%conv__block_2/dropout_2/dropout/Mul_1Mul'conv__block_2/dropout_2/dropout/Mul:z:0(conv__block_2/dropout_2/dropout/Cast:y:0*
T0*/
_output_shapes
:         @2'
%conv__block_2/dropout_2/dropout/Mul_1╒
max_pooling2d_1/MaxPoolMaxPool)conv__block_2/dropout_2/dropout/Mul_1:z:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool┌
,conv__block_3/conv2d_4/Conv2D/ReadVariableOpReadVariableOp5conv__block_3_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@`*
dtype02.
,conv__block_3/conv2d_4/Conv2D/ReadVariableOpВ
conv__block_3/conv2d_4/Conv2DConv2D max_pooling2d_1/MaxPool:output:04conv__block_3/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         `*
paddingSAME*
strides
2
conv__block_3/conv2d_4/Conv2D╤
-conv__block_3/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp6conv__block_3_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02/
-conv__block_3/conv2d_4/BiasAdd/ReadVariableOpф
conv__block_3/conv2d_4/BiasAddBiasAdd&conv__block_3/conv2d_4/Conv2D:output:05conv__block_3/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         `2 
conv__block_3/conv2d_4/BiasAddр
2conv__block_3/batch_normalization_3/ReadVariableOpReadVariableOp;conv__block_3_batch_normalization_3_readvariableop_resource*
_output_shapes
:`*
dtype024
2conv__block_3/batch_normalization_3/ReadVariableOpц
4conv__block_3/batch_normalization_3/ReadVariableOp_1ReadVariableOp=conv__block_3_batch_normalization_3_readvariableop_1_resource*
_output_shapes
:`*
dtype026
4conv__block_3/batch_normalization_3/ReadVariableOp_1У
Cconv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpLconv__block_3_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02E
Cconv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOpЩ
Econv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNconv__block_3_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02G
Econv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1╤
4conv__block_3/batch_normalization_3/FusedBatchNormV3FusedBatchNormV3'conv__block_3/conv2d_4/BiasAdd:output:0:conv__block_3/batch_normalization_3/ReadVariableOp:value:0<conv__block_3/batch_normalization_3/ReadVariableOp_1:value:0Kconv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0Mconv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         `:`:`:`:`:*
epsilon%oГ:*
exponential_avg_factor%
╫#<26
4conv__block_3/batch_normalization_3/FusedBatchNormV3Е
2conv__block_3/batch_normalization_3/AssignNewValueAssignVariableOpLconv__block_3_batch_normalization_3_fusedbatchnormv3_readvariableop_resourceAconv__block_3/batch_normalization_3/FusedBatchNormV3:batch_mean:0D^conv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*_
_classU
SQloc:@conv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype024
2conv__block_3/batch_normalization_3/AssignNewValueУ
4conv__block_3/batch_normalization_3/AssignNewValue_1AssignVariableOpNconv__block_3_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resourceEconv__block_3/batch_normalization_3/FusedBatchNormV3:batch_variance:0F^conv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*a
_classW
USloc:@conv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype026
4conv__block_3/batch_normalization_3/AssignNewValue_1╛
conv__block_3/activation_3/ReluRelu8conv__block_3/batch_normalization_3/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         `2!
conv__block_3/activation_3/ReluУ
%conv__block_3/dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2'
%conv__block_3/dropout_3/dropout/Constъ
#conv__block_3/dropout_3/dropout/MulMul-conv__block_3/activation_3/Relu:activations:0.conv__block_3/dropout_3/dropout/Const:output:0*
T0*/
_output_shapes
:         `2%
#conv__block_3/dropout_3/dropout/Mulл
%conv__block_3/dropout_3/dropout/ShapeShape-conv__block_3/activation_3/Relu:activations:0*
T0*
_output_shapes
:2'
%conv__block_3/dropout_3/dropout/ShapeД
<conv__block_3/dropout_3/dropout/random_uniform/RandomUniformRandomUniform.conv__block_3/dropout_3/dropout/Shape:output:0*
T0*/
_output_shapes
:         `*
dtype02>
<conv__block_3/dropout_3/dropout/random_uniform/RandomUniformе
.conv__block_3/dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=20
.conv__block_3/dropout_3/dropout/GreaterEqual/yж
,conv__block_3/dropout_3/dropout/GreaterEqualGreaterEqualEconv__block_3/dropout_3/dropout/random_uniform/RandomUniform:output:07conv__block_3/dropout_3/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         `2.
,conv__block_3/dropout_3/dropout/GreaterEqual╧
$conv__block_3/dropout_3/dropout/CastCast0conv__block_3/dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         `2&
$conv__block_3/dropout_3/dropout/Castт
%conv__block_3/dropout_3/dropout/Mul_1Mul'conv__block_3/dropout_3/dropout/Mul:z:0(conv__block_3/dropout_3/dropout/Cast:y:0*
T0*/
_output_shapes
:         `2'
%conv__block_3/dropout_3/dropout/Mul_1┌
,conv__block_4/conv2d_5/Conv2D/ReadVariableOpReadVariableOp5conv__block_4_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:``*
dtype02.
,conv__block_4/conv2d_5/Conv2D/ReadVariableOpМ
conv__block_4/conv2d_5/Conv2DConv2D)conv__block_3/dropout_3/dropout/Mul_1:z:04conv__block_4/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

`*
paddingVALID*
strides
2
conv__block_4/conv2d_5/Conv2D╤
-conv__block_4/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp6conv__block_4_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02/
-conv__block_4/conv2d_5/BiasAdd/ReadVariableOpф
conv__block_4/conv2d_5/BiasAddBiasAdd&conv__block_4/conv2d_5/Conv2D:output:05conv__block_4/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

`2 
conv__block_4/conv2d_5/BiasAddр
2conv__block_4/batch_normalization_4/ReadVariableOpReadVariableOp;conv__block_4_batch_normalization_4_readvariableop_resource*
_output_shapes
:`*
dtype024
2conv__block_4/batch_normalization_4/ReadVariableOpц
4conv__block_4/batch_normalization_4/ReadVariableOp_1ReadVariableOp=conv__block_4_batch_normalization_4_readvariableop_1_resource*
_output_shapes
:`*
dtype026
4conv__block_4/batch_normalization_4/ReadVariableOp_1У
Cconv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOpLconv__block_4_batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02E
Cconv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOpЩ
Econv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNconv__block_4_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02G
Econv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1╤
4conv__block_4/batch_normalization_4/FusedBatchNormV3FusedBatchNormV3'conv__block_4/conv2d_5/BiasAdd:output:0:conv__block_4/batch_normalization_4/ReadVariableOp:value:0<conv__block_4/batch_normalization_4/ReadVariableOp_1:value:0Kconv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0Mconv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         

`:`:`:`:`:*
epsilon%oГ:*
exponential_avg_factor%
╫#<26
4conv__block_4/batch_normalization_4/FusedBatchNormV3Е
2conv__block_4/batch_normalization_4/AssignNewValueAssignVariableOpLconv__block_4_batch_normalization_4_fusedbatchnormv3_readvariableop_resourceAconv__block_4/batch_normalization_4/FusedBatchNormV3:batch_mean:0D^conv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*_
_classU
SQloc:@conv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype024
2conv__block_4/batch_normalization_4/AssignNewValueУ
4conv__block_4/batch_normalization_4/AssignNewValue_1AssignVariableOpNconv__block_4_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resourceEconv__block_4/batch_normalization_4/FusedBatchNormV3:batch_variance:0F^conv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*a
_classW
USloc:@conv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype026
4conv__block_4/batch_normalization_4/AssignNewValue_1╛
conv__block_4/activation_4/ReluRelu8conv__block_4/batch_normalization_4/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         

`2!
conv__block_4/activation_4/ReluУ
%conv__block_4/dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2'
%conv__block_4/dropout_4/dropout/Constъ
#conv__block_4/dropout_4/dropout/MulMul-conv__block_4/activation_4/Relu:activations:0.conv__block_4/dropout_4/dropout/Const:output:0*
T0*/
_output_shapes
:         

`2%
#conv__block_4/dropout_4/dropout/Mulл
%conv__block_4/dropout_4/dropout/ShapeShape-conv__block_4/activation_4/Relu:activations:0*
T0*
_output_shapes
:2'
%conv__block_4/dropout_4/dropout/ShapeД
<conv__block_4/dropout_4/dropout/random_uniform/RandomUniformRandomUniform.conv__block_4/dropout_4/dropout/Shape:output:0*
T0*/
_output_shapes
:         

`*
dtype02>
<conv__block_4/dropout_4/dropout/random_uniform/RandomUniformе
.conv__block_4/dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=20
.conv__block_4/dropout_4/dropout/GreaterEqual/yж
,conv__block_4/dropout_4/dropout/GreaterEqualGreaterEqualEconv__block_4/dropout_4/dropout/random_uniform/RandomUniform:output:07conv__block_4/dropout_4/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         

`2.
,conv__block_4/dropout_4/dropout/GreaterEqual╧
$conv__block_4/dropout_4/dropout/CastCast0conv__block_4/dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         

`2&
$conv__block_4/dropout_4/dropout/Castт
%conv__block_4/dropout_4/dropout/Mul_1Mul'conv__block_4/dropout_4/dropout/Mul:z:0(conv__block_4/dropout_4/dropout/Cast:y:0*
T0*/
_output_shapes
:         

`2'
%conv__block_4/dropout_4/dropout/Mul_1╒
max_pooling2d_2/MaxPoolMaxPool)conv__block_4/dropout_4/dropout/Mul_1:z:0*/
_output_shapes
:         `*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool█
,conv__block_5/conv2d_6/Conv2D/ReadVariableOpReadVariableOp5conv__block_5_conv2d_6_conv2d_readvariableop_resource*'
_output_shapes
:`А*
dtype02.
,conv__block_5/conv2d_6/Conv2D/ReadVariableOpГ
conv__block_5/conv2d_6/Conv2DConv2D max_pooling2d_2/MaxPool:output:04conv__block_5/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
conv__block_5/conv2d_6/Conv2D╥
-conv__block_5/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp6conv__block_5_conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02/
-conv__block_5/conv2d_6/BiasAdd/ReadVariableOpх
conv__block_5/conv2d_6/BiasAddBiasAdd&conv__block_5/conv2d_6/Conv2D:output:05conv__block_5/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2 
conv__block_5/conv2d_6/BiasAddс
2conv__block_5/batch_normalization_5/ReadVariableOpReadVariableOp;conv__block_5_batch_normalization_5_readvariableop_resource*
_output_shapes	
:А*
dtype024
2conv__block_5/batch_normalization_5/ReadVariableOpч
4conv__block_5/batch_normalization_5/ReadVariableOp_1ReadVariableOp=conv__block_5_batch_normalization_5_readvariableop_1_resource*
_output_shapes	
:А*
dtype026
4conv__block_5/batch_normalization_5/ReadVariableOp_1Ф
Cconv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOpReadVariableOpLconv__block_5_batch_normalization_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02E
Cconv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOpЪ
Econv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNconv__block_5_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02G
Econv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1╓
4conv__block_5/batch_normalization_5/FusedBatchNormV3FusedBatchNormV3'conv__block_5/conv2d_6/BiasAdd:output:0:conv__block_5/batch_normalization_5/ReadVariableOp:value:0<conv__block_5/batch_normalization_5/ReadVariableOp_1:value:0Kconv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp:value:0Mconv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<26
4conv__block_5/batch_normalization_5/FusedBatchNormV3Е
2conv__block_5/batch_normalization_5/AssignNewValueAssignVariableOpLconv__block_5_batch_normalization_5_fusedbatchnormv3_readvariableop_resourceAconv__block_5/batch_normalization_5/FusedBatchNormV3:batch_mean:0D^conv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*_
_classU
SQloc:@conv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype024
2conv__block_5/batch_normalization_5/AssignNewValueУ
4conv__block_5/batch_normalization_5/AssignNewValue_1AssignVariableOpNconv__block_5_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resourceEconv__block_5/batch_normalization_5/FusedBatchNormV3:batch_variance:0F^conv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*a
_classW
USloc:@conv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype026
4conv__block_5/batch_normalization_5/AssignNewValue_1┐
conv__block_5/activation_5/ReluRelu8conv__block_5/batch_normalization_5/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         А2!
conv__block_5/activation_5/ReluУ
%conv__block_5/dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2'
%conv__block_5/dropout_5/dropout/Constы
#conv__block_5/dropout_5/dropout/MulMul-conv__block_5/activation_5/Relu:activations:0.conv__block_5/dropout_5/dropout/Const:output:0*
T0*0
_output_shapes
:         А2%
#conv__block_5/dropout_5/dropout/Mulл
%conv__block_5/dropout_5/dropout/ShapeShape-conv__block_5/activation_5/Relu:activations:0*
T0*
_output_shapes
:2'
%conv__block_5/dropout_5/dropout/ShapeЕ
<conv__block_5/dropout_5/dropout/random_uniform/RandomUniformRandomUniform.conv__block_5/dropout_5/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype02>
<conv__block_5/dropout_5/dropout/random_uniform/RandomUniformе
.conv__block_5/dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=20
.conv__block_5/dropout_5/dropout/GreaterEqual/yз
,conv__block_5/dropout_5/dropout/GreaterEqualGreaterEqualEconv__block_5/dropout_5/dropout/random_uniform/RandomUniform:output:07conv__block_5/dropout_5/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2.
,conv__block_5/dropout_5/dropout/GreaterEqual╨
$conv__block_5/dropout_5/dropout/CastCast0conv__block_5/dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2&
$conv__block_5/dropout_5/dropout/Castу
%conv__block_5/dropout_5/dropout/Mul_1Mul'conv__block_5/dropout_5/dropout/Mul:z:0(conv__block_5/dropout_5/dropout/Cast:y:0*
T0*0
_output_shapes
:         А2'
%conv__block_5/dropout_5/dropout/Mul_1▄
,conv__block_6/conv2d_7/Conv2D/ReadVariableOpReadVariableOp5conv__block_6_conv2d_7_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02.
,conv__block_6/conv2d_7/Conv2D/ReadVariableOpН
conv__block_6/conv2d_7/Conv2DConv2D)conv__block_5/dropout_5/dropout/Mul_1:z:04conv__block_6/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
2
conv__block_6/conv2d_7/Conv2D╥
-conv__block_6/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp6conv__block_6_conv2d_7_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02/
-conv__block_6/conv2d_7/BiasAdd/ReadVariableOpх
conv__block_6/conv2d_7/BiasAddBiasAdd&conv__block_6/conv2d_7/Conv2D:output:05conv__block_6/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2 
conv__block_6/conv2d_7/BiasAddс
2conv__block_6/batch_normalization_6/ReadVariableOpReadVariableOp;conv__block_6_batch_normalization_6_readvariableop_resource*
_output_shapes	
:А*
dtype024
2conv__block_6/batch_normalization_6/ReadVariableOpч
4conv__block_6/batch_normalization_6/ReadVariableOp_1ReadVariableOp=conv__block_6_batch_normalization_6_readvariableop_1_resource*
_output_shapes	
:А*
dtype026
4conv__block_6/batch_normalization_6/ReadVariableOp_1Ф
Cconv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOpLconv__block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02E
Cconv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpЪ
Econv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNconv__block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02G
Econv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1╓
4conv__block_6/batch_normalization_6/FusedBatchNormV3FusedBatchNormV3'conv__block_6/conv2d_7/BiasAdd:output:0:conv__block_6/batch_normalization_6/ReadVariableOp:value:0<conv__block_6/batch_normalization_6/ReadVariableOp_1:value:0Kconv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0Mconv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<26
4conv__block_6/batch_normalization_6/FusedBatchNormV3Е
2conv__block_6/batch_normalization_6/AssignNewValueAssignVariableOpLconv__block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resourceAconv__block_6/batch_normalization_6/FusedBatchNormV3:batch_mean:0D^conv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*_
_classU
SQloc:@conv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype024
2conv__block_6/batch_normalization_6/AssignNewValueУ
4conv__block_6/batch_normalization_6/AssignNewValue_1AssignVariableOpNconv__block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resourceEconv__block_6/batch_normalization_6/FusedBatchNormV3:batch_variance:0F^conv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*a
_classW
USloc:@conv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype026
4conv__block_6/batch_normalization_6/AssignNewValue_1┐
conv__block_6/activation_6/ReluRelu8conv__block_6/batch_normalization_6/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         А2!
conv__block_6/activation_6/ReluУ
%conv__block_6/dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2'
%conv__block_6/dropout_6/dropout/Constы
#conv__block_6/dropout_6/dropout/MulMul-conv__block_6/activation_6/Relu:activations:0.conv__block_6/dropout_6/dropout/Const:output:0*
T0*0
_output_shapes
:         А2%
#conv__block_6/dropout_6/dropout/Mulл
%conv__block_6/dropout_6/dropout/ShapeShape-conv__block_6/activation_6/Relu:activations:0*
T0*
_output_shapes
:2'
%conv__block_6/dropout_6/dropout/ShapeЕ
<conv__block_6/dropout_6/dropout/random_uniform/RandomUniformRandomUniform.conv__block_6/dropout_6/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype02>
<conv__block_6/dropout_6/dropout/random_uniform/RandomUniformе
.conv__block_6/dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=20
.conv__block_6/dropout_6/dropout/GreaterEqual/yз
,conv__block_6/dropout_6/dropout/GreaterEqualGreaterEqualEconv__block_6/dropout_6/dropout/random_uniform/RandomUniform:output:07conv__block_6/dropout_6/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2.
,conv__block_6/dropout_6/dropout/GreaterEqual╨
$conv__block_6/dropout_6/dropout/CastCast0conv__block_6/dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2&
$conv__block_6/dropout_6/dropout/Castу
%conv__block_6/dropout_6/dropout/Mul_1Mul'conv__block_6/dropout_6/dropout/Mul:z:0(conv__block_6/dropout_6/dropout/Cast:y:0*
T0*0
_output_shapes
:         А2'
%conv__block_6/dropout_6/dropout/Mul_1╓
max_pooling2d_3/MaxPoolMaxPool)conv__block_6/dropout_6/dropout/Mul_1:z:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    А   2
flatten/ConstЪ
flatten/ReshapeReshape max_pooling2d_3/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:         А2
flatten/Reshapeа
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02
dense/MatMul/ReadVariableOpЧ
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense/MatMulЮ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dense/BiasAdd/ReadVariableOpЩ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense/BiasAdds
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense/Sigmoidz
	dense/mulMuldense/Sigmoid:y:0dense/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
	dense/mulw
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?2
dropout_7/dropout/ConstШ
dropout_7/dropout/MulMuldense/mul:z:0 dropout_7/dropout/Const:output:0*
T0*'
_output_shapes
:         @2
dropout_7/dropout/Mulo
dropout_7/dropout/ShapeShapedense/mul:z:0*
T0*
_output_shapes
:2
dropout_7/dropout/Shape╥
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype020
.dropout_7/dropout/random_uniform/RandomUniformЙ
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>2"
 dropout_7/dropout/GreaterEqual/yц
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @2 
dropout_7/dropout/GreaterEqualЭ
dropout_7/dropout/CastCast"dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         @2
dropout_7/dropout/Castв
dropout_7/dropout/Mul_1Muldropout_7/dropout/Mul:z:0dropout_7/dropout/Cast:y:0*
T0*'
_output_shapes
:         @2
dropout_7/dropout/Mul_1е
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_1/MatMul/ReadVariableOpа
dense_1/MatMulMatMuldropout_7/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_1/MatMulд
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOpб
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_1/BiasAddy
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_1/Sigmoidы
IdentityIdentitydense_1/Sigmoid:y:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp/^conv__block/batch_normalization/AssignNewValue1^conv__block/batch_normalization/AssignNewValue_1@^conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOpB^conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp_1/^conv__block/batch_normalization/ReadVariableOp1^conv__block/batch_normalization/ReadVariableOp_1,^conv__block/conv2d_1/BiasAdd/ReadVariableOp+^conv__block/conv2d_1/Conv2D/ReadVariableOp3^conv__block_1/batch_normalization_1/AssignNewValue5^conv__block_1/batch_normalization_1/AssignNewValue_1D^conv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpF^conv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_13^conv__block_1/batch_normalization_1/ReadVariableOp5^conv__block_1/batch_normalization_1/ReadVariableOp_1.^conv__block_1/conv2d_2/BiasAdd/ReadVariableOp-^conv__block_1/conv2d_2/Conv2D/ReadVariableOp3^conv__block_2/batch_normalization_2/AssignNewValue5^conv__block_2/batch_normalization_2/AssignNewValue_1D^conv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOpF^conv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_13^conv__block_2/batch_normalization_2/ReadVariableOp5^conv__block_2/batch_normalization_2/ReadVariableOp_1.^conv__block_2/conv2d_3/BiasAdd/ReadVariableOp-^conv__block_2/conv2d_3/Conv2D/ReadVariableOp3^conv__block_3/batch_normalization_3/AssignNewValue5^conv__block_3/batch_normalization_3/AssignNewValue_1D^conv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOpF^conv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_13^conv__block_3/batch_normalization_3/ReadVariableOp5^conv__block_3/batch_normalization_3/ReadVariableOp_1.^conv__block_3/conv2d_4/BiasAdd/ReadVariableOp-^conv__block_3/conv2d_4/Conv2D/ReadVariableOp3^conv__block_4/batch_normalization_4/AssignNewValue5^conv__block_4/batch_normalization_4/AssignNewValue_1D^conv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOpF^conv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_13^conv__block_4/batch_normalization_4/ReadVariableOp5^conv__block_4/batch_normalization_4/ReadVariableOp_1.^conv__block_4/conv2d_5/BiasAdd/ReadVariableOp-^conv__block_4/conv2d_5/Conv2D/ReadVariableOp3^conv__block_5/batch_normalization_5/AssignNewValue5^conv__block_5/batch_normalization_5/AssignNewValue_1D^conv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOpF^conv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_13^conv__block_5/batch_normalization_5/ReadVariableOp5^conv__block_5/batch_normalization_5/ReadVariableOp_1.^conv__block_5/conv2d_6/BiasAdd/ReadVariableOp-^conv__block_5/conv2d_6/Conv2D/ReadVariableOp3^conv__block_6/batch_normalization_6/AssignNewValue5^conv__block_6/batch_normalization_6/AssignNewValue_1D^conv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpF^conv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_13^conv__block_6/batch_normalization_6/ReadVariableOp5^conv__block_6/batch_normalization_6/ReadVariableOp_1.^conv__block_6/conv2d_7/BiasAdd/ReadVariableOp-^conv__block_6/conv2d_7/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Ё
_input_shapes▐
█:         00::::::::::::::::::::::::::::::::::::::::::::::::2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2`
.conv__block/batch_normalization/AssignNewValue.conv__block/batch_normalization/AssignNewValue2d
0conv__block/batch_normalization/AssignNewValue_10conv__block/batch_normalization/AssignNewValue_12В
?conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp?conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp2Ж
Aconv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp_1Aconv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp_12`
.conv__block/batch_normalization/ReadVariableOp.conv__block/batch_normalization/ReadVariableOp2d
0conv__block/batch_normalization/ReadVariableOp_10conv__block/batch_normalization/ReadVariableOp_12Z
+conv__block/conv2d_1/BiasAdd/ReadVariableOp+conv__block/conv2d_1/BiasAdd/ReadVariableOp2X
*conv__block/conv2d_1/Conv2D/ReadVariableOp*conv__block/conv2d_1/Conv2D/ReadVariableOp2h
2conv__block_1/batch_normalization_1/AssignNewValue2conv__block_1/batch_normalization_1/AssignNewValue2l
4conv__block_1/batch_normalization_1/AssignNewValue_14conv__block_1/batch_normalization_1/AssignNewValue_12К
Cconv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpCconv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2О
Econv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Econv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12h
2conv__block_1/batch_normalization_1/ReadVariableOp2conv__block_1/batch_normalization_1/ReadVariableOp2l
4conv__block_1/batch_normalization_1/ReadVariableOp_14conv__block_1/batch_normalization_1/ReadVariableOp_12^
-conv__block_1/conv2d_2/BiasAdd/ReadVariableOp-conv__block_1/conv2d_2/BiasAdd/ReadVariableOp2\
,conv__block_1/conv2d_2/Conv2D/ReadVariableOp,conv__block_1/conv2d_2/Conv2D/ReadVariableOp2h
2conv__block_2/batch_normalization_2/AssignNewValue2conv__block_2/batch_normalization_2/AssignNewValue2l
4conv__block_2/batch_normalization_2/AssignNewValue_14conv__block_2/batch_normalization_2/AssignNewValue_12К
Cconv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOpCconv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2О
Econv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Econv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12h
2conv__block_2/batch_normalization_2/ReadVariableOp2conv__block_2/batch_normalization_2/ReadVariableOp2l
4conv__block_2/batch_normalization_2/ReadVariableOp_14conv__block_2/batch_normalization_2/ReadVariableOp_12^
-conv__block_2/conv2d_3/BiasAdd/ReadVariableOp-conv__block_2/conv2d_3/BiasAdd/ReadVariableOp2\
,conv__block_2/conv2d_3/Conv2D/ReadVariableOp,conv__block_2/conv2d_3/Conv2D/ReadVariableOp2h
2conv__block_3/batch_normalization_3/AssignNewValue2conv__block_3/batch_normalization_3/AssignNewValue2l
4conv__block_3/batch_normalization_3/AssignNewValue_14conv__block_3/batch_normalization_3/AssignNewValue_12К
Cconv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOpCconv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2О
Econv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Econv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12h
2conv__block_3/batch_normalization_3/ReadVariableOp2conv__block_3/batch_normalization_3/ReadVariableOp2l
4conv__block_3/batch_normalization_3/ReadVariableOp_14conv__block_3/batch_normalization_3/ReadVariableOp_12^
-conv__block_3/conv2d_4/BiasAdd/ReadVariableOp-conv__block_3/conv2d_4/BiasAdd/ReadVariableOp2\
,conv__block_3/conv2d_4/Conv2D/ReadVariableOp,conv__block_3/conv2d_4/Conv2D/ReadVariableOp2h
2conv__block_4/batch_normalization_4/AssignNewValue2conv__block_4/batch_normalization_4/AssignNewValue2l
4conv__block_4/batch_normalization_4/AssignNewValue_14conv__block_4/batch_normalization_4/AssignNewValue_12К
Cconv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOpCconv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp2О
Econv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1Econv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12h
2conv__block_4/batch_normalization_4/ReadVariableOp2conv__block_4/batch_normalization_4/ReadVariableOp2l
4conv__block_4/batch_normalization_4/ReadVariableOp_14conv__block_4/batch_normalization_4/ReadVariableOp_12^
-conv__block_4/conv2d_5/BiasAdd/ReadVariableOp-conv__block_4/conv2d_5/BiasAdd/ReadVariableOp2\
,conv__block_4/conv2d_5/Conv2D/ReadVariableOp,conv__block_4/conv2d_5/Conv2D/ReadVariableOp2h
2conv__block_5/batch_normalization_5/AssignNewValue2conv__block_5/batch_normalization_5/AssignNewValue2l
4conv__block_5/batch_normalization_5/AssignNewValue_14conv__block_5/batch_normalization_5/AssignNewValue_12К
Cconv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOpCconv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp2О
Econv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1Econv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12h
2conv__block_5/batch_normalization_5/ReadVariableOp2conv__block_5/batch_normalization_5/ReadVariableOp2l
4conv__block_5/batch_normalization_5/ReadVariableOp_14conv__block_5/batch_normalization_5/ReadVariableOp_12^
-conv__block_5/conv2d_6/BiasAdd/ReadVariableOp-conv__block_5/conv2d_6/BiasAdd/ReadVariableOp2\
,conv__block_5/conv2d_6/Conv2D/ReadVariableOp,conv__block_5/conv2d_6/Conv2D/ReadVariableOp2h
2conv__block_6/batch_normalization_6/AssignNewValue2conv__block_6/batch_normalization_6/AssignNewValue2l
4conv__block_6/batch_normalization_6/AssignNewValue_14conv__block_6/batch_normalization_6/AssignNewValue_12К
Cconv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpCconv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp2О
Econv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Econv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12h
2conv__block_6/batch_normalization_6/ReadVariableOp2conv__block_6/batch_normalization_6/ReadVariableOp2l
4conv__block_6/batch_normalization_6/ReadVariableOp_14conv__block_6/batch_normalization_6/ReadVariableOp_12^
-conv__block_6/conv2d_7/BiasAdd/ReadVariableOp-conv__block_6/conv2d_7/BiasAdd/ReadVariableOp2\
,conv__block_6/conv2d_7/Conv2D/ReadVariableOp,conv__block_6/conv2d_7/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:W S
/
_output_shapes
:         00
 
_user_specified_nameinputs
а
и
5__inference_batch_normalization_4_layer_call_fn_16568

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           `*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_122442
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           `2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           `::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           `
 
_user_specified_nameinputs
√
╣
-__inference_conv__block_5_layer_call_fn_15575
x
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCall│
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_5_layer_call_and_return_conditional_losses_128402
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         `::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:         `

_user_specified_namex
Щ
с
H__inference_conv__block_5_layer_call_and_return_conditional_losses_12840
x
conv2d_6_12823
conv2d_6_12825
batch_normalization_5_12828
batch_normalization_5_12830
batch_normalization_5_12832
batch_normalization_5_12834
identityИв-batch_normalization_5/StatefulPartitionedCallв conv2d_6/StatefulPartitionedCallШ
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCallxconv2d_6_12823conv2d_6_12825*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_126272"
 conv2d_6/StatefulPartitionedCall┐
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0batch_normalization_5_12828batch_normalization_5_12830batch_normalization_5_12832batch_normalization_5_12834*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_126802/
-batch_normalization_5/StatefulPartitionedCallЫ
activation_5/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_5_layer_call_and_return_conditional_losses_127212
activation_5/PartitionedCallБ
dropout_5/PartitionedCallPartitionedCall%activation_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_127462
dropout_5/PartitionedCall╥
IdentityIdentity"dropout_5/PartitionedCall:output:0.^batch_normalization_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         `::::::2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall:R N
/
_output_shapes
:         `

_user_specified_namex
Р
Ч
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_16956

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▌
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1 
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:         А::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
щ	
▄
C__inference_conv2d_1_layer_call_and_return_conditional_losses_10861

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         00 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         00 ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         00 
 
_user_specified_nameinputs
щ	
▄
C__inference_conv2d_3_layer_call_and_return_conditional_losses_11565

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
в
и
5__inference_batch_normalization_5_layer_call_fn_16739

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall╢
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_125712
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,                           А::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
Д
Ч
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_16220

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         @::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
└
a
B__inference_dropout_layer_call_and_return_conditional_losses_10975

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         00 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         00 *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2
dropout/GreaterEqual/y╞
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         00 2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         00 2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         00 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         00 2

Identity"
identityIdentity:output:0*.
_input_shapes
:         00 :W S
/
_output_shapes
:         00 
 
_user_specified_nameinputs
¤
}
(__inference_conv2d_2_layer_call_fn_15952

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_112192
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:          ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
Д
Ч
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_16340

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         `:`:`:`:`:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         `2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         `::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         `
 
_user_specified_nameinputs
ї
╪
,__inference_fac__model_1_layer_call_fn_14884

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *D
_read_only_resource_inputs&
$"	
!"#$'()*-./0*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_fac__model_1_layer_call_and_return_conditional_losses_139122
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Ё
_input_shapes▐
█:         00::::::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         00
 
_user_specified_nameinputs
ж 
┤
H__inference_conv__block_3_layer_call_and_return_conditional_losses_15351
x+
'conv2d_4_conv2d_readvariableop_resource,
(conv2d_4_biasadd_readvariableop_resource1
-batch_normalization_3_readvariableop_resource3
/batch_normalization_3_readvariableop_1_resourceB
>batch_normalization_3_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource
identityИв5batch_normalization_3/FusedBatchNormV3/ReadVariableOpв7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_3/ReadVariableOpв&batch_normalization_3/ReadVariableOp_1вconv2d_4/BiasAdd/ReadVariableOpвconv2d_4/Conv2D/ReadVariableOp░
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@`*
dtype02 
conv2d_4/Conv2D/ReadVariableOp╣
conv2d_4/Conv2DConv2Dx&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         `*
paddingSAME*
strides
2
conv2d_4/Conv2Dз
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02!
conv2d_4/BiasAdd/ReadVariableOpм
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         `2
conv2d_4/BiasAdd╢
$batch_normalization_3/ReadVariableOpReadVariableOp-batch_normalization_3_readvariableop_resource*
_output_shapes
:`*
dtype02&
$batch_normalization_3/ReadVariableOp╝
&batch_normalization_3/ReadVariableOp_1ReadVariableOp/batch_normalization_3_readvariableop_1_resource*
_output_shapes
:`*
dtype02(
&batch_normalization_3/ReadVariableOp_1щ
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype027
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpя
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype029
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1с
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3conv2d_4/BiasAdd:output:0,batch_normalization_3/ReadVariableOp:value:0.batch_normalization_3/ReadVariableOp_1:value:0=batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         `:`:`:`:`:*
epsilon%oГ:*
is_training( 2(
&batch_normalization_3/FusedBatchNormV3Ф
activation_3/ReluRelu*batch_normalization_3/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         `2
activation_3/ReluП
dropout_3/IdentityIdentityactivation_3/Relu:activations:0*
T0*/
_output_shapes
:         `2
dropout_3/Identity№
IdentityIdentitydropout_3/Identity:output:06^batch_normalization_3/FusedBatchNormV3/ReadVariableOp8^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_3/ReadVariableOp'^batch_normalization_3/ReadVariableOp_1 ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         `2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         @::::::2n
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp5batch_normalization_3/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2P
&batch_normalization_3/ReadVariableOp_1&batch_normalization_3/ReadVariableOp_12B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp:R N
/
_output_shapes
:         @

_user_specified_namex
╡
E
)__inference_dropout_4_layer_call_fn_16669

inputs
identity═
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_123882
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         

`2

Identity"
identityIdentity:output:0*.
_input_shapes
:         

`:W S
/
_output_shapes
:         

`
 
_user_specified_nameinputs
┬
c
D__inference_dropout_2_layer_call_and_return_conditional_losses_11679

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2
dropout/GreaterEqual/y╞
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
А
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_12503

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┘
c
G__inference_activation_5_layer_call_and_return_conditional_losses_12721

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:         А2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ї
╖
+__inference_conv__block_layer_call_fn_15100
x
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCall░
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv__block_layer_call_and_return_conditional_losses_110742
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         00 2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         00 ::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:         00 

_user_specified_namex
Ю
и
5__inference_batch_normalization_3_layer_call_fn_16435

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall╡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           `*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_118672
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           `2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           `::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           `
 
_user_specified_nameinputs
Ю
и
5__inference_batch_normalization_2_layer_call_fn_16187

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall╡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_115092
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
°
є
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11976

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         `:`:`:`:`:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         `2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         `::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         `
 
_user_specified_nameinputs
Ю
и
5__inference_batch_normalization_1_layer_call_fn_16067

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall╡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_111632
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ы
b
D__inference_dropout_6_layer_call_and_return_conditional_losses_17027

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:         А2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
А
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_11799

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╝
^
B__inference_flatten_layer_call_and_return_conditional_losses_15676

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"    А   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         А2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
█
|
'__inference_dense_1_layer_call_fn_15749

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_136602
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
х
`
B__inference_dropout_layer_call_and_return_conditional_losses_15923

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:         00 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         00 2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:         00 :W S
/
_output_shapes
:         00 
 
_user_specified_nameinputs
щ	
▄
C__inference_conv2d_4_layer_call_and_return_conditional_losses_16311

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@`*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         `*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         `2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         `2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
∙
╣
-__inference_conv__block_4_layer_call_fn_15480
x
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCall▓
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

`*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_4_layer_call_and_return_conditional_losses_124822
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         

`2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         `::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:         `

_user_specified_namex
╠
є
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_12948

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1с
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3э
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,                           А::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╗
H
,__inference_activation_2_layer_call_fn_16274

inputs
identity╨
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_2_layer_call_and_return_conditional_losses_116592
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ЪV
■
G__inference_fac__model_1_layer_call_and_return_conditional_losses_13677
input_1
conv2d_13239
conv2d_13241
conv__block_13278
conv__block_13280
conv__block_13282
conv__block_13284
conv__block_13286
conv__block_13288
conv__block_1_13326
conv__block_1_13328
conv__block_1_13330
conv__block_1_13332
conv__block_1_13334
conv__block_1_13336
conv__block_2_13373
conv__block_2_13375
conv__block_2_13377
conv__block_2_13379
conv__block_2_13381
conv__block_2_13383
conv__block_3_13421
conv__block_3_13423
conv__block_3_13425
conv__block_3_13427
conv__block_3_13429
conv__block_3_13431
conv__block_4_13468
conv__block_4_13470
conv__block_4_13472
conv__block_4_13474
conv__block_4_13476
conv__block_4_13478
conv__block_5_13516
conv__block_5_13518
conv__block_5_13520
conv__block_5_13522
conv__block_5_13524
conv__block_5_13526
conv__block_6_13563
conv__block_6_13565
conv__block_6_13567
conv__block_6_13569
conv__block_6_13571
conv__block_6_13573
dense_13614
dense_13616
dense_1_13671
dense_1_13673
identityИвconv2d/StatefulPartitionedCallв#conv__block/StatefulPartitionedCallв%conv__block_1/StatefulPartitionedCallв%conv__block_2/StatefulPartitionedCallв%conv__block_3/StatefulPartitionedCallв%conv__block_4/StatefulPartitionedCallв%conv__block_5/StatefulPartitionedCallв%conv__block_6/StatefulPartitionedCallвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallв!dropout_7/StatefulPartitionedCallУ
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_13239conv2d_13241*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_132282 
conv2d/StatefulPartitionedCallЮ
#conv__block/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv__block_13278conv__block_13280conv__block_13282conv__block_13284conv__block_13286conv__block_13288*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv__block_layer_call_and_return_conditional_losses_110372%
#conv__block/StatefulPartitionedCallУ
max_pooling2d/PartitionedCallPartitionedCall,conv__block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_110952
max_pooling2d/PartitionedCallп
%conv__block_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv__block_1_13326conv__block_1_13328conv__block_1_13330conv__block_1_13332conv__block_1_13334conv__block_1_13336*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_1_layer_call_and_return_conditional_losses_113952'
%conv__block_1/StatefulPartitionedCall╖
%conv__block_2/StatefulPartitionedCallStatefulPartitionedCall.conv__block_1/StatefulPartitionedCall:output:0conv__block_2_13373conv__block_2_13375conv__block_2_13377conv__block_2_13379conv__block_2_13381conv__block_2_13383*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_2_layer_call_and_return_conditional_losses_117412'
%conv__block_2/StatefulPartitionedCallЫ
max_pooling2d_1/PartitionedCallPartitionedCall.conv__block_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_117992!
max_pooling2d_1/PartitionedCall▒
%conv__block_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv__block_3_13421conv__block_3_13423conv__block_3_13425conv__block_3_13427conv__block_3_13429conv__block_3_13431*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_3_layer_call_and_return_conditional_losses_120992'
%conv__block_3/StatefulPartitionedCall╖
%conv__block_4/StatefulPartitionedCallStatefulPartitionedCall.conv__block_3/StatefulPartitionedCall:output:0conv__block_4_13468conv__block_4_13470conv__block_4_13472conv__block_4_13474conv__block_4_13476conv__block_4_13478*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_4_layer_call_and_return_conditional_losses_124452'
%conv__block_4/StatefulPartitionedCallЫ
max_pooling2d_2/PartitionedCallPartitionedCall.conv__block_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_125032!
max_pooling2d_2/PartitionedCall▓
%conv__block_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv__block_5_13516conv__block_5_13518conv__block_5_13520conv__block_5_13522conv__block_5_13524conv__block_5_13526*
Tin
	2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_5_layer_call_and_return_conditional_losses_128032'
%conv__block_5/StatefulPartitionedCall╕
%conv__block_6/StatefulPartitionedCallStatefulPartitionedCall.conv__block_5/StatefulPartitionedCall:output:0conv__block_6_13563conv__block_6_13565conv__block_6_13567conv__block_6_13569conv__block_6_13571conv__block_6_13573*
Tin
	2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_6_layer_call_and_return_conditional_losses_131492'
%conv__block_6/StatefulPartitionedCallЬ
max_pooling2d_3/PartitionedCallPartitionedCall.conv__block_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_132072!
max_pooling2d_3/PartitionedCallЎ
flatten/PartitionedCallPartitionedCall(max_pooling2d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_135832
flatten/PartitionedCallЯ
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_13614dense_13616*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_136032
dense/StatefulPartitionedCallС
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_136312#
!dropout_7/StatefulPartitionedCall│
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0dense_1_13671dense_1_13673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_136602!
dense_1/StatefulPartitionedCallЩ
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall$^conv__block/StatefulPartitionedCall&^conv__block_1/StatefulPartitionedCall&^conv__block_2/StatefulPartitionedCall&^conv__block_3/StatefulPartitionedCall&^conv__block_4/StatefulPartitionedCall&^conv__block_5/StatefulPartitionedCall&^conv__block_6/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Ё
_input_shapes▐
█:         00::::::::::::::::::::::::::::::::::::::::::::::::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2J
#conv__block/StatefulPartitionedCall#conv__block/StatefulPartitionedCall2N
%conv__block_1/StatefulPartitionedCall%conv__block_1/StatefulPartitionedCall2N
%conv__block_2/StatefulPartitionedCall%conv__block_2/StatefulPartitionedCall2N
%conv__block_3/StatefulPartitionedCall%conv__block_3/StatefulPartitionedCall2N
%conv__block_4/StatefulPartitionedCall%conv__block_4/StatefulPartitionedCall2N
%conv__block_5/StatefulPartitionedCall%conv__block_5/StatefulPartitionedCall2N
%conv__block_6/StatefulPartitionedCall%conv__block_6/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall:X T
/
_output_shapes
:         00
!
_user_specified_name	input_1
Й
┐
-__inference_conv__block_1_layer_call_fn_11410
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCall╢
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_1_layer_call_and_return_conditional_losses_113952
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:          ::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:          
!
_user_specified_name	input_1
╙
a
E__inference_activation_layer_call_and_return_conditional_losses_10955

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:         00 2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         00 2

Identity"
identityIdentity:output:0*.
_input_shapes
:         00 :W S
/
_output_shapes
:         00 
 
_user_specified_nameinputs
╣3
Д
H__inference_conv__block_1_layer_call_and_return_conditional_losses_15135
x+
'conv2d_2_conv2d_readvariableop_resource,
(conv2d_2_biasadd_readvariableop_resource1
-batch_normalization_1_readvariableop_resource3
/batch_normalization_1_readvariableop_1_resourceB
>batch_normalization_1_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource
identityИв$batch_normalization_1/AssignNewValueв&batch_normalization_1/AssignNewValue_1в5batch_normalization_1/FusedBatchNormV3/ReadVariableOpв7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_1/ReadVariableOpв&batch_normalization_1/ReadVariableOp_1вconv2d_2/BiasAdd/ReadVariableOpвconv2d_2/Conv2D/ReadVariableOp░
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_2/Conv2D/ReadVariableOp╣
conv2d_2/Conv2DConv2Dx&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
conv2d_2/Conv2Dз
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_2/BiasAdd/ReadVariableOpм
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_2/BiasAdd╢
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype02&
$batch_normalization_1/ReadVariableOp╝
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_1/ReadVariableOp_1щ
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpя
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype029
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1я
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3conv2d_2/BiasAdd:output:0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2(
&batch_normalization_1/FusedBatchNormV3▒
$batch_normalization_1/AssignNewValueAssignVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource3batch_normalization_1/FusedBatchNormV3:batch_mean:06^batch_normalization_1/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*Q
_classG
ECloc:@batch_normalization_1/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02&
$batch_normalization_1/AssignNewValue┐
&batch_normalization_1/AssignNewValue_1AssignVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_1/FusedBatchNormV3:batch_variance:08^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*S
_classI
GEloc:@batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02(
&batch_normalization_1/AssignNewValue_1Ф
activation_1/ReluRelu*batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         @2
activation_1/Reluw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout_1/dropout/Const▓
dropout_1/dropout/MulMulactivation_1/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout_1/dropout/MulБ
dropout_1/dropout/ShapeShapeactivation_1/Relu:activations:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape┌
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype020
.dropout_1/dropout/random_uniform/RandomUniformЙ
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2"
 dropout_1/dropout/GreaterEqual/yю
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2 
dropout_1/dropout/GreaterEqualе
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout_1/dropout/Castк
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout_1/dropout/Mul_1╠
IdentityIdentitydropout_1/dropout/Mul_1:z:0%^batch_normalization_1/AssignNewValue'^batch_normalization_1/AssignNewValue_16^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1 ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:          ::::::2L
$batch_normalization_1/AssignNewValue$batch_normalization_1/AssignNewValue2P
&batch_normalization_1/AssignNewValue_1&batch_normalization_1/AssignNewValue_12n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:R N
/
_output_shapes
:          

_user_specified_namex
Є	
▄
C__inference_conv2d_7_layer_call_and_return_conditional_losses_12973

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAddЮ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╟
b
D__inference_dropout_7_layer_call_and_return_conditional_losses_13636

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:         @2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         @2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
л
ч
H__inference_conv__block_5_layer_call_and_return_conditional_losses_12780
input_1
conv2d_6_12763
conv2d_6_12765
batch_normalization_5_12768
batch_normalization_5_12770
batch_normalization_5_12772
batch_normalization_5_12774
identityИв-batch_normalization_5/StatefulPartitionedCallв conv2d_6/StatefulPartitionedCallЮ
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_6_12763conv2d_6_12765*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_126272"
 conv2d_6/StatefulPartitionedCall┐
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0batch_normalization_5_12768batch_normalization_5_12770batch_normalization_5_12772batch_normalization_5_12774*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_126802/
-batch_normalization_5/StatefulPartitionedCallЫ
activation_5/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_5_layer_call_and_return_conditional_losses_127212
activation_5/PartitionedCallБ
dropout_5/PartitionedCallPartitionedCall%activation_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_127462
dropout_5/PartitionedCall╥
IdentityIdentity"dropout_5/PartitionedCall:output:0.^batch_normalization_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         `::::::2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall:X T
/
_output_shapes
:         `
!
_user_specified_name	input_1
ж
ч
H__inference_conv__block_4_layer_call_and_return_conditional_losses_12422
input_1
conv2d_5_12405
conv2d_5_12407
batch_normalization_4_12410
batch_normalization_4_12412
batch_normalization_4_12414
batch_normalization_4_12416
identityИв-batch_normalization_4/StatefulPartitionedCallв conv2d_5/StatefulPartitionedCallЭ
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_5_12405conv2d_5_12407*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_122692"
 conv2d_5/StatefulPartitionedCall╛
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0batch_normalization_4_12410batch_normalization_4_12412batch_normalization_4_12414batch_normalization_4_12416*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_123222/
-batch_normalization_4/StatefulPartitionedCallЪ
activation_4/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_4_layer_call_and_return_conditional_losses_123632
activation_4/PartitionedCallА
dropout_4/PartitionedCallPartitionedCall%activation_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_123882
dropout_4/PartitionedCall╤
IdentityIdentity"dropout_4/PartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall*
T0*/
_output_shapes
:         

`2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         `::::::2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall:X T
/
_output_shapes
:         `
!
_user_specified_name	input_1
б
b
)__inference_dropout_7_layer_call_fn_15724

inputs
identityИвStatefulPartitionedCall▌
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_136312
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*&
_input_shapes
:         @22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Й
┐
-__inference_conv__block_4_layer_call_fn_12460
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCall╢
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_4_layer_call_and_return_conditional_losses_124452
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         

`2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         `::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:         `
!
_user_specified_name	input_1
┬
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_11333

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2
dropout/GreaterEqual/y╞
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
П
┐
-__inference_conv__block_6_layer_call_fn_13201
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCall╣
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_6_layer_call_and_return_conditional_losses_131862
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         А::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:         А
!
_user_specified_name	input_1
ч
b
D__inference_dropout_4_layer_call_and_return_conditional_losses_16659

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:         

`2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         

`2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:         

`:W S
/
_output_shapes
:         

`
 
_user_specified_nameinputs
Р
Ч
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_12662

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▌
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1 
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:         А::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Д
Ч
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_11254

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         @::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
║3
Д
H__inference_conv__block_4_layer_call_and_return_conditional_losses_15420
x+
'conv2d_5_conv2d_readvariableop_resource,
(conv2d_5_biasadd_readvariableop_resource1
-batch_normalization_4_readvariableop_resource3
/batch_normalization_4_readvariableop_1_resourceB
>batch_normalization_4_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource
identityИв$batch_normalization_4/AssignNewValueв&batch_normalization_4/AssignNewValue_1в5batch_normalization_4/FusedBatchNormV3/ReadVariableOpв7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_4/ReadVariableOpв&batch_normalization_4/ReadVariableOp_1вconv2d_5/BiasAdd/ReadVariableOpвconv2d_5/Conv2D/ReadVariableOp░
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:``*
dtype02 
conv2d_5/Conv2D/ReadVariableOp║
conv2d_5/Conv2DConv2Dx&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

`*
paddingVALID*
strides
2
conv2d_5/Conv2Dз
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02!
conv2d_5/BiasAdd/ReadVariableOpм
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

`2
conv2d_5/BiasAdd╢
$batch_normalization_4/ReadVariableOpReadVariableOp-batch_normalization_4_readvariableop_resource*
_output_shapes
:`*
dtype02&
$batch_normalization_4/ReadVariableOp╝
&batch_normalization_4/ReadVariableOp_1ReadVariableOp/batch_normalization_4_readvariableop_1_resource*
_output_shapes
:`*
dtype02(
&batch_normalization_4/ReadVariableOp_1щ
5batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype027
5batch_normalization_4/FusedBatchNormV3/ReadVariableOpя
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype029
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1я
&batch_normalization_4/FusedBatchNormV3FusedBatchNormV3conv2d_5/BiasAdd:output:0,batch_normalization_4/ReadVariableOp:value:0.batch_normalization_4/ReadVariableOp_1:value:0=batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         

`:`:`:`:`:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2(
&batch_normalization_4/FusedBatchNormV3▒
$batch_normalization_4/AssignNewValueAssignVariableOp>batch_normalization_4_fusedbatchnormv3_readvariableop_resource3batch_normalization_4/FusedBatchNormV3:batch_mean:06^batch_normalization_4/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*Q
_classG
ECloc:@batch_normalization_4/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02&
$batch_normalization_4/AssignNewValue┐
&batch_normalization_4/AssignNewValue_1AssignVariableOp@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_4/FusedBatchNormV3:batch_variance:08^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*S
_classI
GEloc:@batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02(
&batch_normalization_4/AssignNewValue_1Ф
activation_4/ReluRelu*batch_normalization_4/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         

`2
activation_4/Reluw
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout_4/dropout/Const▓
dropout_4/dropout/MulMulactivation_4/Relu:activations:0 dropout_4/dropout/Const:output:0*
T0*/
_output_shapes
:         

`2
dropout_4/dropout/MulБ
dropout_4/dropout/ShapeShapeactivation_4/Relu:activations:0*
T0*
_output_shapes
:2
dropout_4/dropout/Shape┌
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*/
_output_shapes
:         

`*
dtype020
.dropout_4/dropout/random_uniform/RandomUniformЙ
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2"
 dropout_4/dropout/GreaterEqual/yю
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         

`2 
dropout_4/dropout/GreaterEqualе
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         

`2
dropout_4/dropout/Castк
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*/
_output_shapes
:         

`2
dropout_4/dropout/Mul_1╠
IdentityIdentitydropout_4/dropout/Mul_1:z:0%^batch_normalization_4/AssignNewValue'^batch_normalization_4/AssignNewValue_16^batch_normalization_4/FusedBatchNormV3/ReadVariableOp8^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_4/ReadVariableOp'^batch_normalization_4/ReadVariableOp_1 ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         

`2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         `::::::2L
$batch_normalization_4/AssignNewValue$batch_normalization_4/AssignNewValue2P
&batch_normalization_4/AssignNewValue_1&batch_normalization_4/AssignNewValue_12n
5batch_normalization_4/FusedBatchNormV3/ReadVariableOp5batch_normalization_4/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_17batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_4/ReadVariableOp$batch_normalization_4/ReadVariableOp2P
&batch_normalization_4/ReadVariableOp_1&batch_normalization_4/ReadVariableOp_12B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp:R N
/
_output_shapes
:         `

_user_specified_namex
¤
}
(__inference_conv2d_5_layer_call_fn_16504

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_122692
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         

`2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         `::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         `
 
_user_specified_nameinputs
┴
b
)__inference_dropout_1_layer_call_fn_16112

inputs
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_113332
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Р
Ч
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_13008

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▌
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1 
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:         А::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
┘
c
G__inference_activation_5_layer_call_and_return_conditional_losses_16821

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:         А2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ю	
▄
C__inference_conv2d_6_layer_call_and_return_conditional_losses_12627

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:`А*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAddЮ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         `::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         `
 
_user_specified_nameinputs
Д
є
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_13026

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╧
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3█
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:         А::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╘
Л
H__inference_conv__block_2_layer_call_and_return_conditional_losses_11698
input_1
conv2d_3_11576
conv2d_3_11578
batch_normalization_2_11645
batch_normalization_2_11647
batch_normalization_2_11649
batch_normalization_2_11651
identityИв-batch_normalization_2/StatefulPartitionedCallв conv2d_3/StatefulPartitionedCallв!dropout_2/StatefulPartitionedCallЭ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_3_11576conv2d_3_11578*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_115652"
 conv2d_3/StatefulPartitionedCall╝
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0batch_normalization_2_11645batch_normalization_2_11647batch_normalization_2_11649batch_normalization_2_11651*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_116002/
-batch_normalization_2/StatefulPartitionedCallЪ
activation_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_2_layer_call_and_return_conditional_losses_116592
activation_2/PartitionedCallШ
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_116792#
!dropout_2/StatefulPartitionedCall¤
IdentityIdentity*dropout_2/StatefulPartitionedCall:output:0.^batch_normalization_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         @::::::2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall:X T
/
_output_shapes
:         @
!
_user_specified_name	input_1
┐
H
,__inference_activation_6_layer_call_fn_17010

inputs
identity╤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_6_layer_call_and_return_conditional_losses_130672
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Д
Ч
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_12304

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         

`:`:`:`:`:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         

`2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         

`::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         

`
 
_user_specified_nameinputs
Н
┐
-__inference_conv__block_5_layer_call_fn_12855
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCall╣
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_5_layer_call_and_return_conditional_losses_128402
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         `::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:         `
!
_user_specified_name	input_1
Д
є
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_16790

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╧
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3█
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:         А::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╥
ж
3__inference_batch_normalization_layer_call_fn_15819

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallб
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_108962
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         00 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         00 ::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         00 
 
_user_specified_nameinputs
╡
E
)__inference_dropout_1_layer_call_fn_16117

inputs
identity═
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_113382
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
┬
Е
H__inference_conv__block_4_layer_call_and_return_conditional_losses_12445
x
conv2d_5_12428
conv2d_5_12430
batch_normalization_4_12433
batch_normalization_4_12435
batch_normalization_4_12437
batch_normalization_4_12439
identityИв-batch_normalization_4/StatefulPartitionedCallв conv2d_5/StatefulPartitionedCallв!dropout_4/StatefulPartitionedCallЧ
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallxconv2d_5_12428conv2d_5_12430*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_122692"
 conv2d_5/StatefulPartitionedCall╝
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0batch_normalization_4_12433batch_normalization_4_12435batch_normalization_4_12437batch_normalization_4_12439*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_123042/
-batch_normalization_4/StatefulPartitionedCallЪ
activation_4/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_4_layer_call_and_return_conditional_losses_123632
activation_4/PartitionedCallШ
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall%activation_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_123832#
!dropout_4/StatefulPartitionedCall¤
IdentityIdentity*dropout_4/StatefulPartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall*
T0*/
_output_shapes
:         

`2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         `::::::2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall:R N
/
_output_shapes
:         `

_user_specified_namex
ж 
┤
H__inference_conv__block_1_layer_call_and_return_conditional_losses_15161
x+
'conv2d_2_conv2d_readvariableop_resource,
(conv2d_2_biasadd_readvariableop_resource1
-batch_normalization_1_readvariableop_resource3
/batch_normalization_1_readvariableop_1_resourceB
>batch_normalization_1_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource
identityИв5batch_normalization_1/FusedBatchNormV3/ReadVariableOpв7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_1/ReadVariableOpв&batch_normalization_1/ReadVariableOp_1вconv2d_2/BiasAdd/ReadVariableOpвconv2d_2/Conv2D/ReadVariableOp░
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_2/Conv2D/ReadVariableOp╣
conv2d_2/Conv2DConv2Dx&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
conv2d_2/Conv2Dз
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_2/BiasAdd/ReadVariableOpм
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_2/BiasAdd╢
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype02&
$batch_normalization_1/ReadVariableOp╝
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_1/ReadVariableOp_1щ
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpя
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype029
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1с
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3conv2d_2/BiasAdd:output:0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2(
&batch_normalization_1/FusedBatchNormV3Ф
activation_1/ReluRelu*batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         @2
activation_1/ReluП
dropout_1/IdentityIdentityactivation_1/Relu:activations:0*
T0*/
_output_shapes
:         @2
dropout_1/Identity№
IdentityIdentitydropout_1/Identity:output:06^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1 ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:          ::::::2n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:R N
/
_output_shapes
:          

_user_specified_namex
╘
ж
3__inference_batch_normalization_layer_call_fn_15832

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_109142
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         00 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         00 ::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         00 
 
_user_specified_nameinputs
┴
b
)__inference_dropout_4_layer_call_fn_16664

inputs
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_123832
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         

`2

Identity"
identityIdentity:output:0*.
_input_shapes
:         

`22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         

`
 
_user_specified_nameinputs
╙
a
E__inference_activation_layer_call_and_return_conditional_losses_15901

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:         00 2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         00 2

Identity"
identityIdentity:output:0*.
_input_shapes
:         00 :W S
/
_output_shapes
:         00 
 
_user_specified_nameinputs
╝
^
B__inference_flatten_layer_call_and_return_conditional_losses_13583

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"    А   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         А2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
А
c
D__inference_dropout_7_layer_call_and_return_conditional_losses_13631

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape┤
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>2
dropout/GreaterEqual/y╛
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         @2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         @2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
┬
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_16470

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         `2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         `*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2
dropout/GreaterEqual/y╞
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         `2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         `2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         `2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         `2

Identity"
identityIdentity:output:0*.
_input_shapes
:         `:W S
/
_output_shapes
:         `
 
_user_specified_nameinputs
┬
c
D__inference_dropout_4_layer_call_and_return_conditional_losses_12383

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         

`2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         

`*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2
dropout/GreaterEqual/y╞
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         

`2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         

`2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         

`2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         

`2

Identity"
identityIdentity:output:0*.
_input_shapes
:         

`:W S
/
_output_shapes
:         

`
 
_user_specified_nameinputs
╩
Х
N__inference_batch_normalization_layer_call_and_return_conditional_losses_10805

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                            ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
Н
┐
-__inference_conv__block_6_layer_call_fn_13164
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_6_layer_call_and_return_conditional_losses_131492
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         А::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:         А
!
_user_specified_name	input_1
°
є
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_12322

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         

`:`:`:`:`:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         

`2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         

`::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         

`
 
_user_specified_nameinputs
Г
╪
,__inference_fac__model_1_layer_call_fn_14985

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46
identityИвStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *R
_read_only_resource_inputs4
20	
 !"#$%&'()*+,-./0*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_fac__model_1_layer_call_and_return_conditional_losses_141292
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Ё
_input_shapes▐
█:         00::::::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         00
 
_user_specified_nameinputs
╠
Ч
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_16036

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ж
ч
H__inference_conv__block_2_layer_call_and_return_conditional_losses_11718
input_1
conv2d_3_11701
conv2d_3_11703
batch_normalization_2_11706
batch_normalization_2_11708
batch_normalization_2_11710
batch_normalization_2_11712
identityИв-batch_normalization_2/StatefulPartitionedCallв conv2d_3/StatefulPartitionedCallЭ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_3_11701conv2d_3_11703*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_115652"
 conv2d_3/StatefulPartitionedCall╛
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0batch_normalization_2_11706batch_normalization_2_11708batch_normalization_2_11710batch_normalization_2_11712*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_116182/
-batch_normalization_2/StatefulPartitionedCallЪ
activation_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_2_layer_call_and_return_conditional_losses_116592
activation_2/PartitionedCallА
dropout_2/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_116842
dropout_2/PartitionedCall╤
IdentityIdentity"dropout_2/PartitionedCall:output:0.^batch_normalization_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         @::::::2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall:X T
/
_output_shapes
:         @
!
_user_specified_name	input_1
┌
и
5__inference_batch_normalization_5_layer_call_fn_16803

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_126622
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:         А::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ю	
█
B__inference_dense_1_layer_call_and_return_conditional_losses_13660

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         2	
SigmoidР
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Д
Ч
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_16588

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╪
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         

`:`:`:`:`:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         

`2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         

`::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         

`
 
_user_specified_nameinputs
ы
b
D__inference_dropout_6_layer_call_and_return_conditional_losses_13092

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:         А2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
░в
ЩQ
!__inference__traced_restore_17820
file_prefix"
assignvariableop_conv2d_kernel"
assignvariableop_1_conv2d_bias#
assignvariableop_2_dense_kernel!
assignvariableop_3_dense_bias%
!assignvariableop_4_dense_1_kernel#
assignvariableop_5_dense_1_bias 
assignvariableop_6_adam_iter"
assignvariableop_7_adam_beta_1"
assignvariableop_8_adam_beta_2!
assignvariableop_9_adam_decay*
&assignvariableop_10_adam_learning_rate3
/assignvariableop_11_conv__block_conv2d_1_kernel1
-assignvariableop_12_conv__block_conv2d_1_bias=
9assignvariableop_13_conv__block_batch_normalization_gamma<
8assignvariableop_14_conv__block_batch_normalization_beta5
1assignvariableop_15_conv__block_1_conv2d_2_kernel3
/assignvariableop_16_conv__block_1_conv2d_2_biasA
=assignvariableop_17_conv__block_1_batch_normalization_1_gamma@
<assignvariableop_18_conv__block_1_batch_normalization_1_beta5
1assignvariableop_19_conv__block_2_conv2d_3_kernel3
/assignvariableop_20_conv__block_2_conv2d_3_biasA
=assignvariableop_21_conv__block_2_batch_normalization_2_gamma@
<assignvariableop_22_conv__block_2_batch_normalization_2_beta5
1assignvariableop_23_conv__block_3_conv2d_4_kernel3
/assignvariableop_24_conv__block_3_conv2d_4_biasA
=assignvariableop_25_conv__block_3_batch_normalization_3_gamma@
<assignvariableop_26_conv__block_3_batch_normalization_3_beta5
1assignvariableop_27_conv__block_4_conv2d_5_kernel3
/assignvariableop_28_conv__block_4_conv2d_5_biasA
=assignvariableop_29_conv__block_4_batch_normalization_4_gamma@
<assignvariableop_30_conv__block_4_batch_normalization_4_beta5
1assignvariableop_31_conv__block_5_conv2d_6_kernel3
/assignvariableop_32_conv__block_5_conv2d_6_biasA
=assignvariableop_33_conv__block_5_batch_normalization_5_gamma@
<assignvariableop_34_conv__block_5_batch_normalization_5_beta5
1assignvariableop_35_conv__block_6_conv2d_7_kernel3
/assignvariableop_36_conv__block_6_conv2d_7_biasA
=assignvariableop_37_conv__block_6_batch_normalization_6_gamma@
<assignvariableop_38_conv__block_6_batch_normalization_6_betaC
?assignvariableop_39_conv__block_batch_normalization_moving_meanG
Cassignvariableop_40_conv__block_batch_normalization_moving_varianceG
Cassignvariableop_41_conv__block_1_batch_normalization_1_moving_meanK
Gassignvariableop_42_conv__block_1_batch_normalization_1_moving_varianceG
Cassignvariableop_43_conv__block_2_batch_normalization_2_moving_meanK
Gassignvariableop_44_conv__block_2_batch_normalization_2_moving_varianceG
Cassignvariableop_45_conv__block_3_batch_normalization_3_moving_meanK
Gassignvariableop_46_conv__block_3_batch_normalization_3_moving_varianceG
Cassignvariableop_47_conv__block_4_batch_normalization_4_moving_meanK
Gassignvariableop_48_conv__block_4_batch_normalization_4_moving_varianceG
Cassignvariableop_49_conv__block_5_batch_normalization_5_moving_meanK
Gassignvariableop_50_conv__block_5_batch_normalization_5_moving_varianceG
Cassignvariableop_51_conv__block_6_batch_normalization_6_moving_meanK
Gassignvariableop_52_conv__block_6_batch_normalization_6_moving_variance
assignvariableop_53_total
assignvariableop_54_count
assignvariableop_55_total_1
assignvariableop_56_count_1,
(assignvariableop_57_adam_conv2d_kernel_m*
&assignvariableop_58_adam_conv2d_bias_m+
'assignvariableop_59_adam_dense_kernel_m)
%assignvariableop_60_adam_dense_bias_m-
)assignvariableop_61_adam_dense_1_kernel_m+
'assignvariableop_62_adam_dense_1_bias_m:
6assignvariableop_63_adam_conv__block_conv2d_1_kernel_m8
4assignvariableop_64_adam_conv__block_conv2d_1_bias_mD
@assignvariableop_65_adam_conv__block_batch_normalization_gamma_mC
?assignvariableop_66_adam_conv__block_batch_normalization_beta_m<
8assignvariableop_67_adam_conv__block_1_conv2d_2_kernel_m:
6assignvariableop_68_adam_conv__block_1_conv2d_2_bias_mH
Dassignvariableop_69_adam_conv__block_1_batch_normalization_1_gamma_mG
Cassignvariableop_70_adam_conv__block_1_batch_normalization_1_beta_m<
8assignvariableop_71_adam_conv__block_2_conv2d_3_kernel_m:
6assignvariableop_72_adam_conv__block_2_conv2d_3_bias_mH
Dassignvariableop_73_adam_conv__block_2_batch_normalization_2_gamma_mG
Cassignvariableop_74_adam_conv__block_2_batch_normalization_2_beta_m<
8assignvariableop_75_adam_conv__block_3_conv2d_4_kernel_m:
6assignvariableop_76_adam_conv__block_3_conv2d_4_bias_mH
Dassignvariableop_77_adam_conv__block_3_batch_normalization_3_gamma_mG
Cassignvariableop_78_adam_conv__block_3_batch_normalization_3_beta_m<
8assignvariableop_79_adam_conv__block_4_conv2d_5_kernel_m:
6assignvariableop_80_adam_conv__block_4_conv2d_5_bias_mH
Dassignvariableop_81_adam_conv__block_4_batch_normalization_4_gamma_mG
Cassignvariableop_82_adam_conv__block_4_batch_normalization_4_beta_m<
8assignvariableop_83_adam_conv__block_5_conv2d_6_kernel_m:
6assignvariableop_84_adam_conv__block_5_conv2d_6_bias_mH
Dassignvariableop_85_adam_conv__block_5_batch_normalization_5_gamma_mG
Cassignvariableop_86_adam_conv__block_5_batch_normalization_5_beta_m<
8assignvariableop_87_adam_conv__block_6_conv2d_7_kernel_m:
6assignvariableop_88_adam_conv__block_6_conv2d_7_bias_mH
Dassignvariableop_89_adam_conv__block_6_batch_normalization_6_gamma_mG
Cassignvariableop_90_adam_conv__block_6_batch_normalization_6_beta_m,
(assignvariableop_91_adam_conv2d_kernel_v*
&assignvariableop_92_adam_conv2d_bias_v+
'assignvariableop_93_adam_dense_kernel_v)
%assignvariableop_94_adam_dense_bias_v-
)assignvariableop_95_adam_dense_1_kernel_v+
'assignvariableop_96_adam_dense_1_bias_v:
6assignvariableop_97_adam_conv__block_conv2d_1_kernel_v8
4assignvariableop_98_adam_conv__block_conv2d_1_bias_vD
@assignvariableop_99_adam_conv__block_batch_normalization_gamma_vD
@assignvariableop_100_adam_conv__block_batch_normalization_beta_v=
9assignvariableop_101_adam_conv__block_1_conv2d_2_kernel_v;
7assignvariableop_102_adam_conv__block_1_conv2d_2_bias_vI
Eassignvariableop_103_adam_conv__block_1_batch_normalization_1_gamma_vH
Dassignvariableop_104_adam_conv__block_1_batch_normalization_1_beta_v=
9assignvariableop_105_adam_conv__block_2_conv2d_3_kernel_v;
7assignvariableop_106_adam_conv__block_2_conv2d_3_bias_vI
Eassignvariableop_107_adam_conv__block_2_batch_normalization_2_gamma_vH
Dassignvariableop_108_adam_conv__block_2_batch_normalization_2_beta_v=
9assignvariableop_109_adam_conv__block_3_conv2d_4_kernel_v;
7assignvariableop_110_adam_conv__block_3_conv2d_4_bias_vI
Eassignvariableop_111_adam_conv__block_3_batch_normalization_3_gamma_vH
Dassignvariableop_112_adam_conv__block_3_batch_normalization_3_beta_v=
9assignvariableop_113_adam_conv__block_4_conv2d_5_kernel_v;
7assignvariableop_114_adam_conv__block_4_conv2d_5_bias_vI
Eassignvariableop_115_adam_conv__block_4_batch_normalization_4_gamma_vH
Dassignvariableop_116_adam_conv__block_4_batch_normalization_4_beta_v=
9assignvariableop_117_adam_conv__block_5_conv2d_6_kernel_v;
7assignvariableop_118_adam_conv__block_5_conv2d_6_bias_vI
Eassignvariableop_119_adam_conv__block_5_batch_normalization_5_gamma_vH
Dassignvariableop_120_adam_conv__block_5_batch_normalization_5_beta_v=
9assignvariableop_121_adam_conv__block_6_conv2d_7_kernel_v;
7assignvariableop_122_adam_conv__block_6_conv2d_7_bias_vI
Eassignvariableop_123_adam_conv__block_6_batch_normalization_6_gamma_vH
Dassignvariableop_124_adam_conv__block_6_batch_normalization_6_beta_v
identity_126ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_100вAssignVariableOp_101вAssignVariableOp_102вAssignVariableOp_103вAssignVariableOp_104вAssignVariableOp_105вAssignVariableOp_106вAssignVariableOp_107вAssignVariableOp_108вAssignVariableOp_109вAssignVariableOp_11вAssignVariableOp_110вAssignVariableOp_111вAssignVariableOp_112вAssignVariableOp_113вAssignVariableOp_114вAssignVariableOp_115вAssignVariableOp_116вAssignVariableOp_117вAssignVariableOp_118вAssignVariableOp_119вAssignVariableOp_12вAssignVariableOp_120вAssignVariableOp_121вAssignVariableOp_122вAssignVariableOp_123вAssignVariableOp_124вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_55вAssignVariableOp_56вAssignVariableOp_57вAssignVariableOp_58вAssignVariableOp_59вAssignVariableOp_6вAssignVariableOp_60вAssignVariableOp_61вAssignVariableOp_62вAssignVariableOp_63вAssignVariableOp_64вAssignVariableOp_65вAssignVariableOp_66вAssignVariableOp_67вAssignVariableOp_68вAssignVariableOp_69вAssignVariableOp_7вAssignVariableOp_70вAssignVariableOp_71вAssignVariableOp_72вAssignVariableOp_73вAssignVariableOp_74вAssignVariableOp_75вAssignVariableOp_76вAssignVariableOp_77вAssignVariableOp_78вAssignVariableOp_79вAssignVariableOp_8вAssignVariableOp_80вAssignVariableOp_81вAssignVariableOp_82вAssignVariableOp_83вAssignVariableOp_84вAssignVariableOp_85вAssignVariableOp_86вAssignVariableOp_87вAssignVariableOp_88вAssignVariableOp_89вAssignVariableOp_9вAssignVariableOp_90вAssignVariableOp_91вAssignVariableOp_92вAssignVariableOp_93вAssignVariableOp_94вAssignVariableOp_95вAssignVariableOp_96вAssignVariableOp_97вAssignVariableOp_98вAssignVariableOp_99о?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:~*
dtype0*║>
value░>Bн>~B(block1/kernel/.ATTRIBUTES/VARIABLE_VALUEB&block1/bias/.ATTRIBUTES/VARIABLE_VALUEB'dense/kernel/.ATTRIBUTES/VARIABLE_VALUEB%dense/bias/.ATTRIBUTES/VARIABLE_VALUEB-outputLayer/kernel/.ATTRIBUTES/VARIABLE_VALUEB+outputLayer/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/22/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/23/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/24/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/25/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/26/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/27/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/28/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/29/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBDblock1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBblock1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCdense/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAdense/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBIoutputLayer/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBGoutputLayer/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/28/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/29/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBDblock1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBblock1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCdense/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBAdense/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBIoutputLayer/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBGoutputLayer/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/28/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/29/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesН
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:~*
dtype0*С
valueЗBД~B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesз
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*О
_output_shapes√
°::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*О
dtypesГ
А2~	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЭ
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1г
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2д
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3в
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4ж
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5д
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6б
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7г
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8г
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9в
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10о
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11╖
AssignVariableOp_11AssignVariableOp/assignvariableop_11_conv__block_conv2d_1_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12╡
AssignVariableOp_12AssignVariableOp-assignvariableop_12_conv__block_conv2d_1_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13┴
AssignVariableOp_13AssignVariableOp9assignvariableop_13_conv__block_batch_normalization_gammaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14└
AssignVariableOp_14AssignVariableOp8assignvariableop_14_conv__block_batch_normalization_betaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15╣
AssignVariableOp_15AssignVariableOp1assignvariableop_15_conv__block_1_conv2d_2_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16╖
AssignVariableOp_16AssignVariableOp/assignvariableop_16_conv__block_1_conv2d_2_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17┼
AssignVariableOp_17AssignVariableOp=assignvariableop_17_conv__block_1_batch_normalization_1_gammaIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18─
AssignVariableOp_18AssignVariableOp<assignvariableop_18_conv__block_1_batch_normalization_1_betaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19╣
AssignVariableOp_19AssignVariableOp1assignvariableop_19_conv__block_2_conv2d_3_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20╖
AssignVariableOp_20AssignVariableOp/assignvariableop_20_conv__block_2_conv2d_3_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21┼
AssignVariableOp_21AssignVariableOp=assignvariableop_21_conv__block_2_batch_normalization_2_gammaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22─
AssignVariableOp_22AssignVariableOp<assignvariableop_22_conv__block_2_batch_normalization_2_betaIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23╣
AssignVariableOp_23AssignVariableOp1assignvariableop_23_conv__block_3_conv2d_4_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24╖
AssignVariableOp_24AssignVariableOp/assignvariableop_24_conv__block_3_conv2d_4_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25┼
AssignVariableOp_25AssignVariableOp=assignvariableop_25_conv__block_3_batch_normalization_3_gammaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26─
AssignVariableOp_26AssignVariableOp<assignvariableop_26_conv__block_3_batch_normalization_3_betaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27╣
AssignVariableOp_27AssignVariableOp1assignvariableop_27_conv__block_4_conv2d_5_kernelIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28╖
AssignVariableOp_28AssignVariableOp/assignvariableop_28_conv__block_4_conv2d_5_biasIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29┼
AssignVariableOp_29AssignVariableOp=assignvariableop_29_conv__block_4_batch_normalization_4_gammaIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30─
AssignVariableOp_30AssignVariableOp<assignvariableop_30_conv__block_4_batch_normalization_4_betaIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31╣
AssignVariableOp_31AssignVariableOp1assignvariableop_31_conv__block_5_conv2d_6_kernelIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32╖
AssignVariableOp_32AssignVariableOp/assignvariableop_32_conv__block_5_conv2d_6_biasIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33┼
AssignVariableOp_33AssignVariableOp=assignvariableop_33_conv__block_5_batch_normalization_5_gammaIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34─
AssignVariableOp_34AssignVariableOp<assignvariableop_34_conv__block_5_batch_normalization_5_betaIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35╣
AssignVariableOp_35AssignVariableOp1assignvariableop_35_conv__block_6_conv2d_7_kernelIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36╖
AssignVariableOp_36AssignVariableOp/assignvariableop_36_conv__block_6_conv2d_7_biasIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37┼
AssignVariableOp_37AssignVariableOp=assignvariableop_37_conv__block_6_batch_normalization_6_gammaIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38─
AssignVariableOp_38AssignVariableOp<assignvariableop_38_conv__block_6_batch_normalization_6_betaIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39╟
AssignVariableOp_39AssignVariableOp?assignvariableop_39_conv__block_batch_normalization_moving_meanIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40╦
AssignVariableOp_40AssignVariableOpCassignvariableop_40_conv__block_batch_normalization_moving_varianceIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41╦
AssignVariableOp_41AssignVariableOpCassignvariableop_41_conv__block_1_batch_normalization_1_moving_meanIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42╧
AssignVariableOp_42AssignVariableOpGassignvariableop_42_conv__block_1_batch_normalization_1_moving_varianceIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43╦
AssignVariableOp_43AssignVariableOpCassignvariableop_43_conv__block_2_batch_normalization_2_moving_meanIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44╧
AssignVariableOp_44AssignVariableOpGassignvariableop_44_conv__block_2_batch_normalization_2_moving_varianceIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45╦
AssignVariableOp_45AssignVariableOpCassignvariableop_45_conv__block_3_batch_normalization_3_moving_meanIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46╧
AssignVariableOp_46AssignVariableOpGassignvariableop_46_conv__block_3_batch_normalization_3_moving_varianceIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47╦
AssignVariableOp_47AssignVariableOpCassignvariableop_47_conv__block_4_batch_normalization_4_moving_meanIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48╧
AssignVariableOp_48AssignVariableOpGassignvariableop_48_conv__block_4_batch_normalization_4_moving_varianceIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49╦
AssignVariableOp_49AssignVariableOpCassignvariableop_49_conv__block_5_batch_normalization_5_moving_meanIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50╧
AssignVariableOp_50AssignVariableOpGassignvariableop_50_conv__block_5_batch_normalization_5_moving_varianceIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51╦
AssignVariableOp_51AssignVariableOpCassignvariableop_51_conv__block_6_batch_normalization_6_moving_meanIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52╧
AssignVariableOp_52AssignVariableOpGassignvariableop_52_conv__block_6_batch_normalization_6_moving_varianceIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53б
AssignVariableOp_53AssignVariableOpassignvariableop_53_totalIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54б
AssignVariableOp_54AssignVariableOpassignvariableop_54_countIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55г
AssignVariableOp_55AssignVariableOpassignvariableop_55_total_1Identity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56г
AssignVariableOp_56AssignVariableOpassignvariableop_56_count_1Identity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57░
AssignVariableOp_57AssignVariableOp(assignvariableop_57_adam_conv2d_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58о
AssignVariableOp_58AssignVariableOp&assignvariableop_58_adam_conv2d_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59п
AssignVariableOp_59AssignVariableOp'assignvariableop_59_adam_dense_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60н
AssignVariableOp_60AssignVariableOp%assignvariableop_60_adam_dense_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61▒
AssignVariableOp_61AssignVariableOp)assignvariableop_61_adam_dense_1_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62п
AssignVariableOp_62AssignVariableOp'assignvariableop_62_adam_dense_1_bias_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63╛
AssignVariableOp_63AssignVariableOp6assignvariableop_63_adam_conv__block_conv2d_1_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64╝
AssignVariableOp_64AssignVariableOp4assignvariableop_64_adam_conv__block_conv2d_1_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65╚
AssignVariableOp_65AssignVariableOp@assignvariableop_65_adam_conv__block_batch_normalization_gamma_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66╟
AssignVariableOp_66AssignVariableOp?assignvariableop_66_adam_conv__block_batch_normalization_beta_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67└
AssignVariableOp_67AssignVariableOp8assignvariableop_67_adam_conv__block_1_conv2d_2_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68╛
AssignVariableOp_68AssignVariableOp6assignvariableop_68_adam_conv__block_1_conv2d_2_bias_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69╠
AssignVariableOp_69AssignVariableOpDassignvariableop_69_adam_conv__block_1_batch_normalization_1_gamma_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70╦
AssignVariableOp_70AssignVariableOpCassignvariableop_70_adam_conv__block_1_batch_normalization_1_beta_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71└
AssignVariableOp_71AssignVariableOp8assignvariableop_71_adam_conv__block_2_conv2d_3_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72╛
AssignVariableOp_72AssignVariableOp6assignvariableop_72_adam_conv__block_2_conv2d_3_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73╠
AssignVariableOp_73AssignVariableOpDassignvariableop_73_adam_conv__block_2_batch_normalization_2_gamma_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74╦
AssignVariableOp_74AssignVariableOpCassignvariableop_74_adam_conv__block_2_batch_normalization_2_beta_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75└
AssignVariableOp_75AssignVariableOp8assignvariableop_75_adam_conv__block_3_conv2d_4_kernel_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76╛
AssignVariableOp_76AssignVariableOp6assignvariableop_76_adam_conv__block_3_conv2d_4_bias_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77╠
AssignVariableOp_77AssignVariableOpDassignvariableop_77_adam_conv__block_3_batch_normalization_3_gamma_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78╦
AssignVariableOp_78AssignVariableOpCassignvariableop_78_adam_conv__block_3_batch_normalization_3_beta_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79└
AssignVariableOp_79AssignVariableOp8assignvariableop_79_adam_conv__block_4_conv2d_5_kernel_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80╛
AssignVariableOp_80AssignVariableOp6assignvariableop_80_adam_conv__block_4_conv2d_5_bias_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81╠
AssignVariableOp_81AssignVariableOpDassignvariableop_81_adam_conv__block_4_batch_normalization_4_gamma_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82╦
AssignVariableOp_82AssignVariableOpCassignvariableop_82_adam_conv__block_4_batch_normalization_4_beta_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83└
AssignVariableOp_83AssignVariableOp8assignvariableop_83_adam_conv__block_5_conv2d_6_kernel_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84╛
AssignVariableOp_84AssignVariableOp6assignvariableop_84_adam_conv__block_5_conv2d_6_bias_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85╠
AssignVariableOp_85AssignVariableOpDassignvariableop_85_adam_conv__block_5_batch_normalization_5_gamma_mIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86╦
AssignVariableOp_86AssignVariableOpCassignvariableop_86_adam_conv__block_5_batch_normalization_5_beta_mIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_86n
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:2
Identity_87└
AssignVariableOp_87AssignVariableOp8assignvariableop_87_adam_conv__block_6_conv2d_7_kernel_mIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_87n
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:2
Identity_88╛
AssignVariableOp_88AssignVariableOp6assignvariableop_88_adam_conv__block_6_conv2d_7_bias_mIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_88n
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:2
Identity_89╠
AssignVariableOp_89AssignVariableOpDassignvariableop_89_adam_conv__block_6_batch_normalization_6_gamma_mIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_89n
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:2
Identity_90╦
AssignVariableOp_90AssignVariableOpCassignvariableop_90_adam_conv__block_6_batch_normalization_6_beta_mIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_90n
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:2
Identity_91░
AssignVariableOp_91AssignVariableOp(assignvariableop_91_adam_conv2d_kernel_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_91n
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:2
Identity_92о
AssignVariableOp_92AssignVariableOp&assignvariableop_92_adam_conv2d_bias_vIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_92n
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:2
Identity_93п
AssignVariableOp_93AssignVariableOp'assignvariableop_93_adam_dense_kernel_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_93n
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:2
Identity_94н
AssignVariableOp_94AssignVariableOp%assignvariableop_94_adam_dense_bias_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_94n
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:2
Identity_95▒
AssignVariableOp_95AssignVariableOp)assignvariableop_95_adam_dense_1_kernel_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_95n
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:2
Identity_96п
AssignVariableOp_96AssignVariableOp'assignvariableop_96_adam_dense_1_bias_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_96n
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:2
Identity_97╛
AssignVariableOp_97AssignVariableOp6assignvariableop_97_adam_conv__block_conv2d_1_kernel_vIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_97n
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:2
Identity_98╝
AssignVariableOp_98AssignVariableOp4assignvariableop_98_adam_conv__block_conv2d_1_bias_vIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_98n
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:2
Identity_99╚
AssignVariableOp_99AssignVariableOp@assignvariableop_99_adam_conv__block_batch_normalization_gamma_vIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99q
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:2
Identity_100╦
AssignVariableOp_100AssignVariableOp@assignvariableop_100_adam_conv__block_batch_normalization_beta_vIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_100q
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:2
Identity_101─
AssignVariableOp_101AssignVariableOp9assignvariableop_101_adam_conv__block_1_conv2d_2_kernel_vIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_101q
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:2
Identity_102┬
AssignVariableOp_102AssignVariableOp7assignvariableop_102_adam_conv__block_1_conv2d_2_bias_vIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_102q
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:2
Identity_103╨
AssignVariableOp_103AssignVariableOpEassignvariableop_103_adam_conv__block_1_batch_normalization_1_gamma_vIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_103q
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:2
Identity_104╧
AssignVariableOp_104AssignVariableOpDassignvariableop_104_adam_conv__block_1_batch_normalization_1_beta_vIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_104q
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:2
Identity_105─
AssignVariableOp_105AssignVariableOp9assignvariableop_105_adam_conv__block_2_conv2d_3_kernel_vIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_105q
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:2
Identity_106┬
AssignVariableOp_106AssignVariableOp7assignvariableop_106_adam_conv__block_2_conv2d_3_bias_vIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_106q
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:2
Identity_107╨
AssignVariableOp_107AssignVariableOpEassignvariableop_107_adam_conv__block_2_batch_normalization_2_gamma_vIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_107q
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:2
Identity_108╧
AssignVariableOp_108AssignVariableOpDassignvariableop_108_adam_conv__block_2_batch_normalization_2_beta_vIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_108q
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:2
Identity_109─
AssignVariableOp_109AssignVariableOp9assignvariableop_109_adam_conv__block_3_conv2d_4_kernel_vIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_109q
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:2
Identity_110┬
AssignVariableOp_110AssignVariableOp7assignvariableop_110_adam_conv__block_3_conv2d_4_bias_vIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_110q
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:2
Identity_111╨
AssignVariableOp_111AssignVariableOpEassignvariableop_111_adam_conv__block_3_batch_normalization_3_gamma_vIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_111q
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:2
Identity_112╧
AssignVariableOp_112AssignVariableOpDassignvariableop_112_adam_conv__block_3_batch_normalization_3_beta_vIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_112q
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:2
Identity_113─
AssignVariableOp_113AssignVariableOp9assignvariableop_113_adam_conv__block_4_conv2d_5_kernel_vIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_113q
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:2
Identity_114┬
AssignVariableOp_114AssignVariableOp7assignvariableop_114_adam_conv__block_4_conv2d_5_bias_vIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_114q
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:2
Identity_115╨
AssignVariableOp_115AssignVariableOpEassignvariableop_115_adam_conv__block_4_batch_normalization_4_gamma_vIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_115q
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:2
Identity_116╧
AssignVariableOp_116AssignVariableOpDassignvariableop_116_adam_conv__block_4_batch_normalization_4_beta_vIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_116q
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:2
Identity_117─
AssignVariableOp_117AssignVariableOp9assignvariableop_117_adam_conv__block_5_conv2d_6_kernel_vIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_117q
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:2
Identity_118┬
AssignVariableOp_118AssignVariableOp7assignvariableop_118_adam_conv__block_5_conv2d_6_bias_vIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_118q
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:2
Identity_119╨
AssignVariableOp_119AssignVariableOpEassignvariableop_119_adam_conv__block_5_batch_normalization_5_gamma_vIdentity_119:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_119q
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:2
Identity_120╧
AssignVariableOp_120AssignVariableOpDassignvariableop_120_adam_conv__block_5_batch_normalization_5_beta_vIdentity_120:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_120q
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:2
Identity_121─
AssignVariableOp_121AssignVariableOp9assignvariableop_121_adam_conv__block_6_conv2d_7_kernel_vIdentity_121:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_121q
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:2
Identity_122┬
AssignVariableOp_122AssignVariableOp7assignvariableop_122_adam_conv__block_6_conv2d_7_bias_vIdentity_122:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_122q
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:2
Identity_123╨
AssignVariableOp_123AssignVariableOpEassignvariableop_123_adam_conv__block_6_batch_normalization_6_gamma_vIdentity_123:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_123q
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:2
Identity_124╧
AssignVariableOp_124AssignVariableOpDassignvariableop_124_adam_conv__block_6_batch_normalization_6_beta_vIdentity_124:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1249
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp╖
Identity_125Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_125л
Identity_126IdentityIdentity_125:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*
T0*
_output_shapes
: 2
Identity_126"%
identity_126Identity_126:output:0*Л
_input_shapes∙
Ў: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182,
AssignVariableOp_119AssignVariableOp_1192*
AssignVariableOp_12AssignVariableOp_122,
AssignVariableOp_120AssignVariableOp_1202,
AssignVariableOp_121AssignVariableOp_1212,
AssignVariableOp_122AssignVariableOp_1222,
AssignVariableOp_123AssignVariableOp_1232,
AssignVariableOp_124AssignVariableOp_1242*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
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
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ж
┘
,__inference_fac__model_1_layer_call_fn_14228
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46
identityИвStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *R
_read_only_resource_inputs4
20	
 !"#$%&'()*+,-./0*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_fac__model_1_layer_call_and_return_conditional_losses_141292
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Ё
_input_shapes▐
█:         00::::::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:         00
!
_user_specified_name	input_1
╟
b
D__inference_dropout_7_layer_call_and_return_conditional_losses_15719

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:         @2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         @2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
°
є
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_15990

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         @::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╪
и
5__inference_batch_normalization_4_layer_call_fn_16632

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_123222
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         

`2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         

`::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         

`
 
_user_specified_nameinputs
¤
}
(__inference_conv2d_4_layer_call_fn_16320

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_119232
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         `2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
┬
c
D__inference_dropout_2_layer_call_and_return_conditional_losses_16286

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2
dropout/GreaterEqual/y╞
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ї
█
F__inference_conv__block_layer_call_and_return_conditional_losses_11014
input_1
conv2d_1_10997
conv2d_1_10999
batch_normalization_11002
batch_normalization_11004
batch_normalization_11006
batch_normalization_11008
identityИв+batch_normalization/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallЭ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_1_10997conv2d_1_10999*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_108612"
 conv2d_1/StatefulPartitionedCall░
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_11002batch_normalization_11004batch_normalization_11006batch_normalization_11008*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_109142-
+batch_normalization/StatefulPartitionedCallТ
activation/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_109552
activation/PartitionedCall°
dropout/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_109802
dropout/PartitionedCall═
IdentityIdentity dropout/PartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall*
T0*/
_output_shapes
:         00 2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         00 ::::::2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall:X T
/
_output_shapes
:         00 
!
_user_specified_name	input_1
Е
╜
+__inference_conv__block_layer_call_fn_11052
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCall┤
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv__block_layer_call_and_return_conditional_losses_110372
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         00 2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         00 ::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:         00 
!
_user_specified_name	input_1
■
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_11095

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╪
Ч
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_16708

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1С
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,                           А::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╟
Е
H__inference_conv__block_5_layer_call_and_return_conditional_losses_12803
x
conv2d_6_12786
conv2d_6_12788
batch_normalization_5_12791
batch_normalization_5_12793
batch_normalization_5_12795
batch_normalization_5_12797
identityИв-batch_normalization_5/StatefulPartitionedCallв conv2d_6/StatefulPartitionedCallв!dropout_5/StatefulPartitionedCallШ
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCallxconv2d_6_12786conv2d_6_12788*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_126272"
 conv2d_6/StatefulPartitionedCall╜
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0batch_normalization_5_12791batch_normalization_5_12793batch_normalization_5_12795batch_normalization_5_12797*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_126622/
-batch_normalization_5/StatefulPartitionedCallЫ
activation_5/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_5_layer_call_and_return_conditional_losses_127212
activation_5/PartitionedCallЩ
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall%activation_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_127412#
!dropout_5/StatefulPartitionedCall■
IdentityIdentity*dropout_5/StatefulPartitionedCall:output:0.^batch_normalization_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         `::::::2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall:R N
/
_output_shapes
:         `

_user_specified_namex
∙
{
&__inference_conv2d_layer_call_fn_15005

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_132282
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         00 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         00::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         00
 
_user_specified_nameinputs
их
Р7
 __inference__wrapped_model_10743
input_16
2fac__model_1_conv2d_conv2d_readvariableop_resource7
3fac__model_1_conv2d_biasadd_readvariableop_resourceD
@fac__model_1_conv__block_conv2d_1_conv2d_readvariableop_resourceE
Afac__model_1_conv__block_conv2d_1_biasadd_readvariableop_resourceH
Dfac__model_1_conv__block_batch_normalization_readvariableop_resourceJ
Ffac__model_1_conv__block_batch_normalization_readvariableop_1_resourceY
Ufac__model_1_conv__block_batch_normalization_fusedbatchnormv3_readvariableop_resource[
Wfac__model_1_conv__block_batch_normalization_fusedbatchnormv3_readvariableop_1_resourceF
Bfac__model_1_conv__block_1_conv2d_2_conv2d_readvariableop_resourceG
Cfac__model_1_conv__block_1_conv2d_2_biasadd_readvariableop_resourceL
Hfac__model_1_conv__block_1_batch_normalization_1_readvariableop_resourceN
Jfac__model_1_conv__block_1_batch_normalization_1_readvariableop_1_resource]
Yfac__model_1_conv__block_1_batch_normalization_1_fusedbatchnormv3_readvariableop_resource_
[fac__model_1_conv__block_1_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resourceF
Bfac__model_1_conv__block_2_conv2d_3_conv2d_readvariableop_resourceG
Cfac__model_1_conv__block_2_conv2d_3_biasadd_readvariableop_resourceL
Hfac__model_1_conv__block_2_batch_normalization_2_readvariableop_resourceN
Jfac__model_1_conv__block_2_batch_normalization_2_readvariableop_1_resource]
Yfac__model_1_conv__block_2_batch_normalization_2_fusedbatchnormv3_readvariableop_resource_
[fac__model_1_conv__block_2_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resourceF
Bfac__model_1_conv__block_3_conv2d_4_conv2d_readvariableop_resourceG
Cfac__model_1_conv__block_3_conv2d_4_biasadd_readvariableop_resourceL
Hfac__model_1_conv__block_3_batch_normalization_3_readvariableop_resourceN
Jfac__model_1_conv__block_3_batch_normalization_3_readvariableop_1_resource]
Yfac__model_1_conv__block_3_batch_normalization_3_fusedbatchnormv3_readvariableop_resource_
[fac__model_1_conv__block_3_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resourceF
Bfac__model_1_conv__block_4_conv2d_5_conv2d_readvariableop_resourceG
Cfac__model_1_conv__block_4_conv2d_5_biasadd_readvariableop_resourceL
Hfac__model_1_conv__block_4_batch_normalization_4_readvariableop_resourceN
Jfac__model_1_conv__block_4_batch_normalization_4_readvariableop_1_resource]
Yfac__model_1_conv__block_4_batch_normalization_4_fusedbatchnormv3_readvariableop_resource_
[fac__model_1_conv__block_4_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resourceF
Bfac__model_1_conv__block_5_conv2d_6_conv2d_readvariableop_resourceG
Cfac__model_1_conv__block_5_conv2d_6_biasadd_readvariableop_resourceL
Hfac__model_1_conv__block_5_batch_normalization_5_readvariableop_resourceN
Jfac__model_1_conv__block_5_batch_normalization_5_readvariableop_1_resource]
Yfac__model_1_conv__block_5_batch_normalization_5_fusedbatchnormv3_readvariableop_resource_
[fac__model_1_conv__block_5_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resourceF
Bfac__model_1_conv__block_6_conv2d_7_conv2d_readvariableop_resourceG
Cfac__model_1_conv__block_6_conv2d_7_biasadd_readvariableop_resourceL
Hfac__model_1_conv__block_6_batch_normalization_6_readvariableop_resourceN
Jfac__model_1_conv__block_6_batch_normalization_6_readvariableop_1_resource]
Yfac__model_1_conv__block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resource_
[fac__model_1_conv__block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource5
1fac__model_1_dense_matmul_readvariableop_resource6
2fac__model_1_dense_biasadd_readvariableop_resource7
3fac__model_1_dense_1_matmul_readvariableop_resource8
4fac__model_1_dense_1_biasadd_readvariableop_resource
identityИв*fac__model_1/conv2d/BiasAdd/ReadVariableOpв)fac__model_1/conv2d/Conv2D/ReadVariableOpвLfac__model_1/conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOpвNfac__model_1/conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp_1в;fac__model_1/conv__block/batch_normalization/ReadVariableOpв=fac__model_1/conv__block/batch_normalization/ReadVariableOp_1в8fac__model_1/conv__block/conv2d_1/BiasAdd/ReadVariableOpв7fac__model_1/conv__block/conv2d_1/Conv2D/ReadVariableOpвPfac__model_1/conv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpвRfac__model_1/conv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1в?fac__model_1/conv__block_1/batch_normalization_1/ReadVariableOpвAfac__model_1/conv__block_1/batch_normalization_1/ReadVariableOp_1в:fac__model_1/conv__block_1/conv2d_2/BiasAdd/ReadVariableOpв9fac__model_1/conv__block_1/conv2d_2/Conv2D/ReadVariableOpвPfac__model_1/conv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOpвRfac__model_1/conv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1в?fac__model_1/conv__block_2/batch_normalization_2/ReadVariableOpвAfac__model_1/conv__block_2/batch_normalization_2/ReadVariableOp_1в:fac__model_1/conv__block_2/conv2d_3/BiasAdd/ReadVariableOpв9fac__model_1/conv__block_2/conv2d_3/Conv2D/ReadVariableOpвPfac__model_1/conv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOpвRfac__model_1/conv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1в?fac__model_1/conv__block_3/batch_normalization_3/ReadVariableOpвAfac__model_1/conv__block_3/batch_normalization_3/ReadVariableOp_1в:fac__model_1/conv__block_3/conv2d_4/BiasAdd/ReadVariableOpв9fac__model_1/conv__block_3/conv2d_4/Conv2D/ReadVariableOpвPfac__model_1/conv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOpвRfac__model_1/conv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1в?fac__model_1/conv__block_4/batch_normalization_4/ReadVariableOpвAfac__model_1/conv__block_4/batch_normalization_4/ReadVariableOp_1в:fac__model_1/conv__block_4/conv2d_5/BiasAdd/ReadVariableOpв9fac__model_1/conv__block_4/conv2d_5/Conv2D/ReadVariableOpвPfac__model_1/conv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOpвRfac__model_1/conv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1в?fac__model_1/conv__block_5/batch_normalization_5/ReadVariableOpвAfac__model_1/conv__block_5/batch_normalization_5/ReadVariableOp_1в:fac__model_1/conv__block_5/conv2d_6/BiasAdd/ReadVariableOpв9fac__model_1/conv__block_5/conv2d_6/Conv2D/ReadVariableOpвPfac__model_1/conv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpвRfac__model_1/conv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1в?fac__model_1/conv__block_6/batch_normalization_6/ReadVariableOpвAfac__model_1/conv__block_6/batch_normalization_6/ReadVariableOp_1в:fac__model_1/conv__block_6/conv2d_7/BiasAdd/ReadVariableOpв9fac__model_1/conv__block_6/conv2d_7/Conv2D/ReadVariableOpв)fac__model_1/dense/BiasAdd/ReadVariableOpв(fac__model_1/dense/MatMul/ReadVariableOpв+fac__model_1/dense_1/BiasAdd/ReadVariableOpв*fac__model_1/dense_1/MatMul/ReadVariableOp╤
)fac__model_1/conv2d/Conv2D/ReadVariableOpReadVariableOp2fac__model_1_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02+
)fac__model_1/conv2d/Conv2D/ReadVariableOpр
fac__model_1/conv2d/Conv2DConv2Dinput_11fac__model_1/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 *
paddingSAME*
strides
2
fac__model_1/conv2d/Conv2D╚
*fac__model_1/conv2d/BiasAdd/ReadVariableOpReadVariableOp3fac__model_1_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*fac__model_1/conv2d/BiasAdd/ReadVariableOp╪
fac__model_1/conv2d/BiasAddBiasAdd#fac__model_1/conv2d/Conv2D:output:02fac__model_1/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 2
fac__model_1/conv2d/BiasAddЬ
fac__model_1/conv2d/ReluRelu$fac__model_1/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:         00 2
fac__model_1/conv2d/Relu√
7fac__model_1/conv__block/conv2d_1/Conv2D/ReadVariableOpReadVariableOp@fac__model_1_conv__block_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype029
7fac__model_1/conv__block/conv2d_1/Conv2D/ReadVariableOpй
(fac__model_1/conv__block/conv2d_1/Conv2DConv2D&fac__model_1/conv2d/Relu:activations:0?fac__model_1/conv__block/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 *
paddingSAME*
strides
2*
(fac__model_1/conv__block/conv2d_1/Conv2DЄ
8fac__model_1/conv__block/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpAfac__model_1_conv__block_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02:
8fac__model_1/conv__block/conv2d_1/BiasAdd/ReadVariableOpР
)fac__model_1/conv__block/conv2d_1/BiasAddBiasAdd1fac__model_1/conv__block/conv2d_1/Conv2D:output:0@fac__model_1/conv__block/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 2+
)fac__model_1/conv__block/conv2d_1/BiasAdd√
;fac__model_1/conv__block/batch_normalization/ReadVariableOpReadVariableOpDfac__model_1_conv__block_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype02=
;fac__model_1/conv__block/batch_normalization/ReadVariableOpБ
=fac__model_1/conv__block/batch_normalization/ReadVariableOp_1ReadVariableOpFfac__model_1_conv__block_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype02?
=fac__model_1/conv__block/batch_normalization/ReadVariableOp_1о
Lfac__model_1/conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpUfac__model_1_conv__block_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02N
Lfac__model_1/conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp┤
Nfac__model_1/conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpWfac__model_1_conv__block_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02P
Nfac__model_1/conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp_1Д
=fac__model_1/conv__block/batch_normalization/FusedBatchNormV3FusedBatchNormV32fac__model_1/conv__block/conv2d_1/BiasAdd:output:0Cfac__model_1/conv__block/batch_normalization/ReadVariableOp:value:0Efac__model_1/conv__block/batch_normalization/ReadVariableOp_1:value:0Tfac__model_1/conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Vfac__model_1/conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         00 : : : : :*
epsilon%oГ:*
is_training( 2?
=fac__model_1/conv__block/batch_normalization/FusedBatchNormV3┘
(fac__model_1/conv__block/activation/ReluReluAfac__model_1/conv__block/batch_normalization/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         00 2*
(fac__model_1/conv__block/activation/Relu╘
)fac__model_1/conv__block/dropout/IdentityIdentity6fac__model_1/conv__block/activation/Relu:activations:0*
T0*/
_output_shapes
:         00 2+
)fac__model_1/conv__block/dropout/IdentityЇ
"fac__model_1/max_pooling2d/MaxPoolMaxPool2fac__model_1/conv__block/dropout/Identity:output:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
2$
"fac__model_1/max_pooling2d/MaxPoolБ
9fac__model_1/conv__block_1/conv2d_2/Conv2D/ReadVariableOpReadVariableOpBfac__model_1_conv__block_1_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02;
9fac__model_1/conv__block_1/conv2d_2/Conv2D/ReadVariableOp┤
*fac__model_1/conv__block_1/conv2d_2/Conv2DConv2D+fac__model_1/max_pooling2d/MaxPool:output:0Afac__model_1/conv__block_1/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2,
*fac__model_1/conv__block_1/conv2d_2/Conv2D°
:fac__model_1/conv__block_1/conv2d_2/BiasAdd/ReadVariableOpReadVariableOpCfac__model_1_conv__block_1_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02<
:fac__model_1/conv__block_1/conv2d_2/BiasAdd/ReadVariableOpШ
+fac__model_1/conv__block_1/conv2d_2/BiasAddBiasAdd3fac__model_1/conv__block_1/conv2d_2/Conv2D:output:0Bfac__model_1/conv__block_1/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2-
+fac__model_1/conv__block_1/conv2d_2/BiasAddЗ
?fac__model_1/conv__block_1/batch_normalization_1/ReadVariableOpReadVariableOpHfac__model_1_conv__block_1_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype02A
?fac__model_1/conv__block_1/batch_normalization_1/ReadVariableOpН
Afac__model_1/conv__block_1/batch_normalization_1/ReadVariableOp_1ReadVariableOpJfac__model_1_conv__block_1_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype02C
Afac__model_1/conv__block_1/batch_normalization_1/ReadVariableOp_1║
Pfac__model_1/conv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpYfac__model_1_conv__block_1_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02R
Pfac__model_1/conv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp└
Rfac__model_1/conv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp[fac__model_1_conv__block_1_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02T
Rfac__model_1/conv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Ю
Afac__model_1/conv__block_1/batch_normalization_1/FusedBatchNormV3FusedBatchNormV34fac__model_1/conv__block_1/conv2d_2/BiasAdd:output:0Gfac__model_1/conv__block_1/batch_normalization_1/ReadVariableOp:value:0Ifac__model_1/conv__block_1/batch_normalization_1/ReadVariableOp_1:value:0Xfac__model_1/conv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Zfac__model_1/conv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2C
Afac__model_1/conv__block_1/batch_normalization_1/FusedBatchNormV3х
,fac__model_1/conv__block_1/activation_1/ReluReluEfac__model_1/conv__block_1/batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         @2.
,fac__model_1/conv__block_1/activation_1/Reluр
-fac__model_1/conv__block_1/dropout_1/IdentityIdentity:fac__model_1/conv__block_1/activation_1/Relu:activations:0*
T0*/
_output_shapes
:         @2/
-fac__model_1/conv__block_1/dropout_1/IdentityБ
9fac__model_1/conv__block_2/conv2d_3/Conv2D/ReadVariableOpReadVariableOpBfac__model_1_conv__block_2_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02;
9fac__model_1/conv__block_2/conv2d_3/Conv2D/ReadVariableOp┐
*fac__model_1/conv__block_2/conv2d_3/Conv2DConv2D6fac__model_1/conv__block_1/dropout_1/Identity:output:0Afac__model_1/conv__block_2/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2,
*fac__model_1/conv__block_2/conv2d_3/Conv2D°
:fac__model_1/conv__block_2/conv2d_3/BiasAdd/ReadVariableOpReadVariableOpCfac__model_1_conv__block_2_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02<
:fac__model_1/conv__block_2/conv2d_3/BiasAdd/ReadVariableOpШ
+fac__model_1/conv__block_2/conv2d_3/BiasAddBiasAdd3fac__model_1/conv__block_2/conv2d_3/Conv2D:output:0Bfac__model_1/conv__block_2/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2-
+fac__model_1/conv__block_2/conv2d_3/BiasAddЗ
?fac__model_1/conv__block_2/batch_normalization_2/ReadVariableOpReadVariableOpHfac__model_1_conv__block_2_batch_normalization_2_readvariableop_resource*
_output_shapes
:@*
dtype02A
?fac__model_1/conv__block_2/batch_normalization_2/ReadVariableOpН
Afac__model_1/conv__block_2/batch_normalization_2/ReadVariableOp_1ReadVariableOpJfac__model_1_conv__block_2_batch_normalization_2_readvariableop_1_resource*
_output_shapes
:@*
dtype02C
Afac__model_1/conv__block_2/batch_normalization_2/ReadVariableOp_1║
Pfac__model_1/conv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpYfac__model_1_conv__block_2_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02R
Pfac__model_1/conv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp└
Rfac__model_1/conv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp[fac__model_1_conv__block_2_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02T
Rfac__model_1/conv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Ю
Afac__model_1/conv__block_2/batch_normalization_2/FusedBatchNormV3FusedBatchNormV34fac__model_1/conv__block_2/conv2d_3/BiasAdd:output:0Gfac__model_1/conv__block_2/batch_normalization_2/ReadVariableOp:value:0Ifac__model_1/conv__block_2/batch_normalization_2/ReadVariableOp_1:value:0Xfac__model_1/conv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Zfac__model_1/conv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2C
Afac__model_1/conv__block_2/batch_normalization_2/FusedBatchNormV3х
,fac__model_1/conv__block_2/activation_2/ReluReluEfac__model_1/conv__block_2/batch_normalization_2/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         @2.
,fac__model_1/conv__block_2/activation_2/Reluр
-fac__model_1/conv__block_2/dropout_2/IdentityIdentity:fac__model_1/conv__block_2/activation_2/Relu:activations:0*
T0*/
_output_shapes
:         @2/
-fac__model_1/conv__block_2/dropout_2/Identity№
$fac__model_1/max_pooling2d_1/MaxPoolMaxPool6fac__model_1/conv__block_2/dropout_2/Identity:output:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2&
$fac__model_1/max_pooling2d_1/MaxPoolБ
9fac__model_1/conv__block_3/conv2d_4/Conv2D/ReadVariableOpReadVariableOpBfac__model_1_conv__block_3_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@`*
dtype02;
9fac__model_1/conv__block_3/conv2d_4/Conv2D/ReadVariableOp╢
*fac__model_1/conv__block_3/conv2d_4/Conv2DConv2D-fac__model_1/max_pooling2d_1/MaxPool:output:0Afac__model_1/conv__block_3/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         `*
paddingSAME*
strides
2,
*fac__model_1/conv__block_3/conv2d_4/Conv2D°
:fac__model_1/conv__block_3/conv2d_4/BiasAdd/ReadVariableOpReadVariableOpCfac__model_1_conv__block_3_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02<
:fac__model_1/conv__block_3/conv2d_4/BiasAdd/ReadVariableOpШ
+fac__model_1/conv__block_3/conv2d_4/BiasAddBiasAdd3fac__model_1/conv__block_3/conv2d_4/Conv2D:output:0Bfac__model_1/conv__block_3/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         `2-
+fac__model_1/conv__block_3/conv2d_4/BiasAddЗ
?fac__model_1/conv__block_3/batch_normalization_3/ReadVariableOpReadVariableOpHfac__model_1_conv__block_3_batch_normalization_3_readvariableop_resource*
_output_shapes
:`*
dtype02A
?fac__model_1/conv__block_3/batch_normalization_3/ReadVariableOpН
Afac__model_1/conv__block_3/batch_normalization_3/ReadVariableOp_1ReadVariableOpJfac__model_1_conv__block_3_batch_normalization_3_readvariableop_1_resource*
_output_shapes
:`*
dtype02C
Afac__model_1/conv__block_3/batch_normalization_3/ReadVariableOp_1║
Pfac__model_1/conv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpYfac__model_1_conv__block_3_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02R
Pfac__model_1/conv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp└
Rfac__model_1/conv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp[fac__model_1_conv__block_3_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02T
Rfac__model_1/conv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Ю
Afac__model_1/conv__block_3/batch_normalization_3/FusedBatchNormV3FusedBatchNormV34fac__model_1/conv__block_3/conv2d_4/BiasAdd:output:0Gfac__model_1/conv__block_3/batch_normalization_3/ReadVariableOp:value:0Ifac__model_1/conv__block_3/batch_normalization_3/ReadVariableOp_1:value:0Xfac__model_1/conv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0Zfac__model_1/conv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         `:`:`:`:`:*
epsilon%oГ:*
is_training( 2C
Afac__model_1/conv__block_3/batch_normalization_3/FusedBatchNormV3х
,fac__model_1/conv__block_3/activation_3/ReluReluEfac__model_1/conv__block_3/batch_normalization_3/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         `2.
,fac__model_1/conv__block_3/activation_3/Reluр
-fac__model_1/conv__block_3/dropout_3/IdentityIdentity:fac__model_1/conv__block_3/activation_3/Relu:activations:0*
T0*/
_output_shapes
:         `2/
-fac__model_1/conv__block_3/dropout_3/IdentityБ
9fac__model_1/conv__block_4/conv2d_5/Conv2D/ReadVariableOpReadVariableOpBfac__model_1_conv__block_4_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:``*
dtype02;
9fac__model_1/conv__block_4/conv2d_5/Conv2D/ReadVariableOp└
*fac__model_1/conv__block_4/conv2d_5/Conv2DConv2D6fac__model_1/conv__block_3/dropout_3/Identity:output:0Afac__model_1/conv__block_4/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

`*
paddingVALID*
strides
2,
*fac__model_1/conv__block_4/conv2d_5/Conv2D°
:fac__model_1/conv__block_4/conv2d_5/BiasAdd/ReadVariableOpReadVariableOpCfac__model_1_conv__block_4_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02<
:fac__model_1/conv__block_4/conv2d_5/BiasAdd/ReadVariableOpШ
+fac__model_1/conv__block_4/conv2d_5/BiasAddBiasAdd3fac__model_1/conv__block_4/conv2d_5/Conv2D:output:0Bfac__model_1/conv__block_4/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

`2-
+fac__model_1/conv__block_4/conv2d_5/BiasAddЗ
?fac__model_1/conv__block_4/batch_normalization_4/ReadVariableOpReadVariableOpHfac__model_1_conv__block_4_batch_normalization_4_readvariableop_resource*
_output_shapes
:`*
dtype02A
?fac__model_1/conv__block_4/batch_normalization_4/ReadVariableOpН
Afac__model_1/conv__block_4/batch_normalization_4/ReadVariableOp_1ReadVariableOpJfac__model_1_conv__block_4_batch_normalization_4_readvariableop_1_resource*
_output_shapes
:`*
dtype02C
Afac__model_1/conv__block_4/batch_normalization_4/ReadVariableOp_1║
Pfac__model_1/conv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOpYfac__model_1_conv__block_4_batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02R
Pfac__model_1/conv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp└
Rfac__model_1/conv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp[fac__model_1_conv__block_4_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02T
Rfac__model_1/conv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1Ю
Afac__model_1/conv__block_4/batch_normalization_4/FusedBatchNormV3FusedBatchNormV34fac__model_1/conv__block_4/conv2d_5/BiasAdd:output:0Gfac__model_1/conv__block_4/batch_normalization_4/ReadVariableOp:value:0Ifac__model_1/conv__block_4/batch_normalization_4/ReadVariableOp_1:value:0Xfac__model_1/conv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0Zfac__model_1/conv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         

`:`:`:`:`:*
epsilon%oГ:*
is_training( 2C
Afac__model_1/conv__block_4/batch_normalization_4/FusedBatchNormV3х
,fac__model_1/conv__block_4/activation_4/ReluReluEfac__model_1/conv__block_4/batch_normalization_4/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         

`2.
,fac__model_1/conv__block_4/activation_4/Reluр
-fac__model_1/conv__block_4/dropout_4/IdentityIdentity:fac__model_1/conv__block_4/activation_4/Relu:activations:0*
T0*/
_output_shapes
:         

`2/
-fac__model_1/conv__block_4/dropout_4/Identity№
$fac__model_1/max_pooling2d_2/MaxPoolMaxPool6fac__model_1/conv__block_4/dropout_4/Identity:output:0*/
_output_shapes
:         `*
ksize
*
paddingVALID*
strides
2&
$fac__model_1/max_pooling2d_2/MaxPoolВ
9fac__model_1/conv__block_5/conv2d_6/Conv2D/ReadVariableOpReadVariableOpBfac__model_1_conv__block_5_conv2d_6_conv2d_readvariableop_resource*'
_output_shapes
:`А*
dtype02;
9fac__model_1/conv__block_5/conv2d_6/Conv2D/ReadVariableOp╖
*fac__model_1/conv__block_5/conv2d_6/Conv2DConv2D-fac__model_1/max_pooling2d_2/MaxPool:output:0Afac__model_1/conv__block_5/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2,
*fac__model_1/conv__block_5/conv2d_6/Conv2D∙
:fac__model_1/conv__block_5/conv2d_6/BiasAdd/ReadVariableOpReadVariableOpCfac__model_1_conv__block_5_conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02<
:fac__model_1/conv__block_5/conv2d_6/BiasAdd/ReadVariableOpЩ
+fac__model_1/conv__block_5/conv2d_6/BiasAddBiasAdd3fac__model_1/conv__block_5/conv2d_6/Conv2D:output:0Bfac__model_1/conv__block_5/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2-
+fac__model_1/conv__block_5/conv2d_6/BiasAddИ
?fac__model_1/conv__block_5/batch_normalization_5/ReadVariableOpReadVariableOpHfac__model_1_conv__block_5_batch_normalization_5_readvariableop_resource*
_output_shapes	
:А*
dtype02A
?fac__model_1/conv__block_5/batch_normalization_5/ReadVariableOpО
Afac__model_1/conv__block_5/batch_normalization_5/ReadVariableOp_1ReadVariableOpJfac__model_1_conv__block_5_batch_normalization_5_readvariableop_1_resource*
_output_shapes	
:А*
dtype02C
Afac__model_1/conv__block_5/batch_normalization_5/ReadVariableOp_1╗
Pfac__model_1/conv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOpReadVariableOpYfac__model_1_conv__block_5_batch_normalization_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02R
Pfac__model_1/conv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp┴
Rfac__model_1/conv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp[fac__model_1_conv__block_5_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02T
Rfac__model_1/conv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1г
Afac__model_1/conv__block_5/batch_normalization_5/FusedBatchNormV3FusedBatchNormV34fac__model_1/conv__block_5/conv2d_6/BiasAdd:output:0Gfac__model_1/conv__block_5/batch_normalization_5/ReadVariableOp:value:0Ifac__model_1/conv__block_5/batch_normalization_5/ReadVariableOp_1:value:0Xfac__model_1/conv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp:value:0Zfac__model_1/conv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2C
Afac__model_1/conv__block_5/batch_normalization_5/FusedBatchNormV3ц
,fac__model_1/conv__block_5/activation_5/ReluReluEfac__model_1/conv__block_5/batch_normalization_5/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         А2.
,fac__model_1/conv__block_5/activation_5/Reluс
-fac__model_1/conv__block_5/dropout_5/IdentityIdentity:fac__model_1/conv__block_5/activation_5/Relu:activations:0*
T0*0
_output_shapes
:         А2/
-fac__model_1/conv__block_5/dropout_5/IdentityГ
9fac__model_1/conv__block_6/conv2d_7/Conv2D/ReadVariableOpReadVariableOpBfac__model_1_conv__block_6_conv2d_7_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02;
9fac__model_1/conv__block_6/conv2d_7/Conv2D/ReadVariableOp┴
*fac__model_1/conv__block_6/conv2d_7/Conv2DConv2D6fac__model_1/conv__block_5/dropout_5/Identity:output:0Afac__model_1/conv__block_6/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
2,
*fac__model_1/conv__block_6/conv2d_7/Conv2D∙
:fac__model_1/conv__block_6/conv2d_7/BiasAdd/ReadVariableOpReadVariableOpCfac__model_1_conv__block_6_conv2d_7_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02<
:fac__model_1/conv__block_6/conv2d_7/BiasAdd/ReadVariableOpЩ
+fac__model_1/conv__block_6/conv2d_7/BiasAddBiasAdd3fac__model_1/conv__block_6/conv2d_7/Conv2D:output:0Bfac__model_1/conv__block_6/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2-
+fac__model_1/conv__block_6/conv2d_7/BiasAddИ
?fac__model_1/conv__block_6/batch_normalization_6/ReadVariableOpReadVariableOpHfac__model_1_conv__block_6_batch_normalization_6_readvariableop_resource*
_output_shapes	
:А*
dtype02A
?fac__model_1/conv__block_6/batch_normalization_6/ReadVariableOpО
Afac__model_1/conv__block_6/batch_normalization_6/ReadVariableOp_1ReadVariableOpJfac__model_1_conv__block_6_batch_normalization_6_readvariableop_1_resource*
_output_shapes	
:А*
dtype02C
Afac__model_1/conv__block_6/batch_normalization_6/ReadVariableOp_1╗
Pfac__model_1/conv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOpYfac__model_1_conv__block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02R
Pfac__model_1/conv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp┴
Rfac__model_1/conv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp[fac__model_1_conv__block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02T
Rfac__model_1/conv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1г
Afac__model_1/conv__block_6/batch_normalization_6/FusedBatchNormV3FusedBatchNormV34fac__model_1/conv__block_6/conv2d_7/BiasAdd:output:0Gfac__model_1/conv__block_6/batch_normalization_6/ReadVariableOp:value:0Ifac__model_1/conv__block_6/batch_normalization_6/ReadVariableOp_1:value:0Xfac__model_1/conv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0Zfac__model_1/conv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( 2C
Afac__model_1/conv__block_6/batch_normalization_6/FusedBatchNormV3ц
,fac__model_1/conv__block_6/activation_6/ReluReluEfac__model_1/conv__block_6/batch_normalization_6/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         А2.
,fac__model_1/conv__block_6/activation_6/Reluс
-fac__model_1/conv__block_6/dropout_6/IdentityIdentity:fac__model_1/conv__block_6/activation_6/Relu:activations:0*
T0*0
_output_shapes
:         А2/
-fac__model_1/conv__block_6/dropout_6/Identity¤
$fac__model_1/max_pooling2d_3/MaxPoolMaxPool6fac__model_1/conv__block_6/dropout_6/Identity:output:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2&
$fac__model_1/max_pooling2d_3/MaxPoolЙ
fac__model_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    А   2
fac__model_1/flatten/Const╬
fac__model_1/flatten/ReshapeReshape-fac__model_1/max_pooling2d_3/MaxPool:output:0#fac__model_1/flatten/Const:output:0*
T0*(
_output_shapes
:         А2
fac__model_1/flatten/Reshape╟
(fac__model_1/dense/MatMul/ReadVariableOpReadVariableOp1fac__model_1_dense_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02*
(fac__model_1/dense/MatMul/ReadVariableOp╦
fac__model_1/dense/MatMulMatMul%fac__model_1/flatten/Reshape:output:00fac__model_1/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
fac__model_1/dense/MatMul┼
)fac__model_1/dense/BiasAdd/ReadVariableOpReadVariableOp2fac__model_1_dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)fac__model_1/dense/BiasAdd/ReadVariableOp═
fac__model_1/dense/BiasAddBiasAdd#fac__model_1/dense/MatMul:product:01fac__model_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
fac__model_1/dense/BiasAddЪ
fac__model_1/dense/SigmoidSigmoid#fac__model_1/dense/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
fac__model_1/dense/Sigmoidо
fac__model_1/dense/mulMulfac__model_1/dense/Sigmoid:y:0#fac__model_1/dense/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
fac__model_1/dense/mulЬ
fac__model_1/dropout_7/IdentityIdentityfac__model_1/dense/mul:z:0*
T0*'
_output_shapes
:         @2!
fac__model_1/dropout_7/Identity╠
*fac__model_1/dense_1/MatMul/ReadVariableOpReadVariableOp3fac__model_1_dense_1_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02,
*fac__model_1/dense_1/MatMul/ReadVariableOp╘
fac__model_1/dense_1/MatMulMatMul(fac__model_1/dropout_7/Identity:output:02fac__model_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
fac__model_1/dense_1/MatMul╦
+fac__model_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4fac__model_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+fac__model_1/dense_1/BiasAdd/ReadVariableOp╒
fac__model_1/dense_1/BiasAddBiasAdd%fac__model_1/dense_1/MatMul:product:03fac__model_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
fac__model_1/dense_1/BiasAddа
fac__model_1/dense_1/SigmoidSigmoid%fac__model_1/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         2
fac__model_1/dense_1/Sigmoid№
IdentityIdentity fac__model_1/dense_1/Sigmoid:y:0+^fac__model_1/conv2d/BiasAdd/ReadVariableOp*^fac__model_1/conv2d/Conv2D/ReadVariableOpM^fac__model_1/conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOpO^fac__model_1/conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp_1<^fac__model_1/conv__block/batch_normalization/ReadVariableOp>^fac__model_1/conv__block/batch_normalization/ReadVariableOp_19^fac__model_1/conv__block/conv2d_1/BiasAdd/ReadVariableOp8^fac__model_1/conv__block/conv2d_1/Conv2D/ReadVariableOpQ^fac__model_1/conv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpS^fac__model_1/conv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1@^fac__model_1/conv__block_1/batch_normalization_1/ReadVariableOpB^fac__model_1/conv__block_1/batch_normalization_1/ReadVariableOp_1;^fac__model_1/conv__block_1/conv2d_2/BiasAdd/ReadVariableOp:^fac__model_1/conv__block_1/conv2d_2/Conv2D/ReadVariableOpQ^fac__model_1/conv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOpS^fac__model_1/conv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1@^fac__model_1/conv__block_2/batch_normalization_2/ReadVariableOpB^fac__model_1/conv__block_2/batch_normalization_2/ReadVariableOp_1;^fac__model_1/conv__block_2/conv2d_3/BiasAdd/ReadVariableOp:^fac__model_1/conv__block_2/conv2d_3/Conv2D/ReadVariableOpQ^fac__model_1/conv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOpS^fac__model_1/conv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1@^fac__model_1/conv__block_3/batch_normalization_3/ReadVariableOpB^fac__model_1/conv__block_3/batch_normalization_3/ReadVariableOp_1;^fac__model_1/conv__block_3/conv2d_4/BiasAdd/ReadVariableOp:^fac__model_1/conv__block_3/conv2d_4/Conv2D/ReadVariableOpQ^fac__model_1/conv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOpS^fac__model_1/conv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1@^fac__model_1/conv__block_4/batch_normalization_4/ReadVariableOpB^fac__model_1/conv__block_4/batch_normalization_4/ReadVariableOp_1;^fac__model_1/conv__block_4/conv2d_5/BiasAdd/ReadVariableOp:^fac__model_1/conv__block_4/conv2d_5/Conv2D/ReadVariableOpQ^fac__model_1/conv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOpS^fac__model_1/conv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1@^fac__model_1/conv__block_5/batch_normalization_5/ReadVariableOpB^fac__model_1/conv__block_5/batch_normalization_5/ReadVariableOp_1;^fac__model_1/conv__block_5/conv2d_6/BiasAdd/ReadVariableOp:^fac__model_1/conv__block_5/conv2d_6/Conv2D/ReadVariableOpQ^fac__model_1/conv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpS^fac__model_1/conv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1@^fac__model_1/conv__block_6/batch_normalization_6/ReadVariableOpB^fac__model_1/conv__block_6/batch_normalization_6/ReadVariableOp_1;^fac__model_1/conv__block_6/conv2d_7/BiasAdd/ReadVariableOp:^fac__model_1/conv__block_6/conv2d_7/Conv2D/ReadVariableOp*^fac__model_1/dense/BiasAdd/ReadVariableOp)^fac__model_1/dense/MatMul/ReadVariableOp,^fac__model_1/dense_1/BiasAdd/ReadVariableOp+^fac__model_1/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Ё
_input_shapes▐
█:         00::::::::::::::::::::::::::::::::::::::::::::::::2X
*fac__model_1/conv2d/BiasAdd/ReadVariableOp*fac__model_1/conv2d/BiasAdd/ReadVariableOp2V
)fac__model_1/conv2d/Conv2D/ReadVariableOp)fac__model_1/conv2d/Conv2D/ReadVariableOp2Ь
Lfac__model_1/conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOpLfac__model_1/conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp2а
Nfac__model_1/conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp_1Nfac__model_1/conv__block/batch_normalization/FusedBatchNormV3/ReadVariableOp_12z
;fac__model_1/conv__block/batch_normalization/ReadVariableOp;fac__model_1/conv__block/batch_normalization/ReadVariableOp2~
=fac__model_1/conv__block/batch_normalization/ReadVariableOp_1=fac__model_1/conv__block/batch_normalization/ReadVariableOp_12t
8fac__model_1/conv__block/conv2d_1/BiasAdd/ReadVariableOp8fac__model_1/conv__block/conv2d_1/BiasAdd/ReadVariableOp2r
7fac__model_1/conv__block/conv2d_1/Conv2D/ReadVariableOp7fac__model_1/conv__block/conv2d_1/Conv2D/ReadVariableOp2д
Pfac__model_1/conv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpPfac__model_1/conv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2и
Rfac__model_1/conv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Rfac__model_1/conv__block_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12В
?fac__model_1/conv__block_1/batch_normalization_1/ReadVariableOp?fac__model_1/conv__block_1/batch_normalization_1/ReadVariableOp2Ж
Afac__model_1/conv__block_1/batch_normalization_1/ReadVariableOp_1Afac__model_1/conv__block_1/batch_normalization_1/ReadVariableOp_12x
:fac__model_1/conv__block_1/conv2d_2/BiasAdd/ReadVariableOp:fac__model_1/conv__block_1/conv2d_2/BiasAdd/ReadVariableOp2v
9fac__model_1/conv__block_1/conv2d_2/Conv2D/ReadVariableOp9fac__model_1/conv__block_1/conv2d_2/Conv2D/ReadVariableOp2д
Pfac__model_1/conv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOpPfac__model_1/conv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2и
Rfac__model_1/conv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Rfac__model_1/conv__block_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12В
?fac__model_1/conv__block_2/batch_normalization_2/ReadVariableOp?fac__model_1/conv__block_2/batch_normalization_2/ReadVariableOp2Ж
Afac__model_1/conv__block_2/batch_normalization_2/ReadVariableOp_1Afac__model_1/conv__block_2/batch_normalization_2/ReadVariableOp_12x
:fac__model_1/conv__block_2/conv2d_3/BiasAdd/ReadVariableOp:fac__model_1/conv__block_2/conv2d_3/BiasAdd/ReadVariableOp2v
9fac__model_1/conv__block_2/conv2d_3/Conv2D/ReadVariableOp9fac__model_1/conv__block_2/conv2d_3/Conv2D/ReadVariableOp2д
Pfac__model_1/conv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOpPfac__model_1/conv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2и
Rfac__model_1/conv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Rfac__model_1/conv__block_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12В
?fac__model_1/conv__block_3/batch_normalization_3/ReadVariableOp?fac__model_1/conv__block_3/batch_normalization_3/ReadVariableOp2Ж
Afac__model_1/conv__block_3/batch_normalization_3/ReadVariableOp_1Afac__model_1/conv__block_3/batch_normalization_3/ReadVariableOp_12x
:fac__model_1/conv__block_3/conv2d_4/BiasAdd/ReadVariableOp:fac__model_1/conv__block_3/conv2d_4/BiasAdd/ReadVariableOp2v
9fac__model_1/conv__block_3/conv2d_4/Conv2D/ReadVariableOp9fac__model_1/conv__block_3/conv2d_4/Conv2D/ReadVariableOp2д
Pfac__model_1/conv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOpPfac__model_1/conv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp2и
Rfac__model_1/conv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1Rfac__model_1/conv__block_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12В
?fac__model_1/conv__block_4/batch_normalization_4/ReadVariableOp?fac__model_1/conv__block_4/batch_normalization_4/ReadVariableOp2Ж
Afac__model_1/conv__block_4/batch_normalization_4/ReadVariableOp_1Afac__model_1/conv__block_4/batch_normalization_4/ReadVariableOp_12x
:fac__model_1/conv__block_4/conv2d_5/BiasAdd/ReadVariableOp:fac__model_1/conv__block_4/conv2d_5/BiasAdd/ReadVariableOp2v
9fac__model_1/conv__block_4/conv2d_5/Conv2D/ReadVariableOp9fac__model_1/conv__block_4/conv2d_5/Conv2D/ReadVariableOp2д
Pfac__model_1/conv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOpPfac__model_1/conv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp2и
Rfac__model_1/conv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1Rfac__model_1/conv__block_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12В
?fac__model_1/conv__block_5/batch_normalization_5/ReadVariableOp?fac__model_1/conv__block_5/batch_normalization_5/ReadVariableOp2Ж
Afac__model_1/conv__block_5/batch_normalization_5/ReadVariableOp_1Afac__model_1/conv__block_5/batch_normalization_5/ReadVariableOp_12x
:fac__model_1/conv__block_5/conv2d_6/BiasAdd/ReadVariableOp:fac__model_1/conv__block_5/conv2d_6/BiasAdd/ReadVariableOp2v
9fac__model_1/conv__block_5/conv2d_6/Conv2D/ReadVariableOp9fac__model_1/conv__block_5/conv2d_6/Conv2D/ReadVariableOp2д
Pfac__model_1/conv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpPfac__model_1/conv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp2и
Rfac__model_1/conv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Rfac__model_1/conv__block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12В
?fac__model_1/conv__block_6/batch_normalization_6/ReadVariableOp?fac__model_1/conv__block_6/batch_normalization_6/ReadVariableOp2Ж
Afac__model_1/conv__block_6/batch_normalization_6/ReadVariableOp_1Afac__model_1/conv__block_6/batch_normalization_6/ReadVariableOp_12x
:fac__model_1/conv__block_6/conv2d_7/BiasAdd/ReadVariableOp:fac__model_1/conv__block_6/conv2d_7/BiasAdd/ReadVariableOp2v
9fac__model_1/conv__block_6/conv2d_7/Conv2D/ReadVariableOp9fac__model_1/conv__block_6/conv2d_7/Conv2D/ReadVariableOp2V
)fac__model_1/dense/BiasAdd/ReadVariableOp)fac__model_1/dense/BiasAdd/ReadVariableOp2T
(fac__model_1/dense/MatMul/ReadVariableOp(fac__model_1/dense/MatMul/ReadVariableOp2Z
+fac__model_1/dense_1/BiasAdd/ReadVariableOp+fac__model_1/dense_1/BiasAdd/ReadVariableOp2X
*fac__model_1/dense_1/MatMul/ReadVariableOp*fac__model_1/dense_1/MatMul/ReadVariableOp:X T
/
_output_shapes
:         00
!
_user_specified_name	input_1
╘
Л
H__inference_conv__block_1_layer_call_and_return_conditional_losses_11352
input_1
conv2d_2_11230
conv2d_2_11232
batch_normalization_1_11299
batch_normalization_1_11301
batch_normalization_1_11303
batch_normalization_1_11305
identityИв-batch_normalization_1/StatefulPartitionedCallв conv2d_2/StatefulPartitionedCallв!dropout_1/StatefulPartitionedCallЭ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_2_11230conv2d_2_11232*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_112192"
 conv2d_2/StatefulPartitionedCall╝
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_1_11299batch_normalization_1_11301batch_normalization_1_11303batch_normalization_1_11305*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_112542/
-batch_normalization_1/StatefulPartitionedCallЪ
activation_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_113132
activation_1/PartitionedCallШ
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_113332#
!dropout_1/StatefulPartitionedCall¤
IdentityIdentity*dropout_1/StatefulPartitionedCall:output:0.^batch_normalization_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:          ::::::2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:X T
/
_output_shapes
:          
!
_user_specified_name	input_1
┘
Л
H__inference_conv__block_5_layer_call_and_return_conditional_losses_12760
input_1
conv2d_6_12638
conv2d_6_12640
batch_normalization_5_12707
batch_normalization_5_12709
batch_normalization_5_12711
batch_normalization_5_12713
identityИв-batch_normalization_5/StatefulPartitionedCallв conv2d_6/StatefulPartitionedCallв!dropout_5/StatefulPartitionedCallЮ
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_6_12638conv2d_6_12640*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_126272"
 conv2d_6/StatefulPartitionedCall╜
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0batch_normalization_5_12707batch_normalization_5_12709batch_normalization_5_12711batch_normalization_5_12713*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_126622/
-batch_normalization_5/StatefulPartitionedCallЫ
activation_5/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_5_layer_call_and_return_conditional_losses_127212
activation_5/PartitionedCallЩ
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall%activation_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_127412#
!dropout_5/StatefulPartitionedCall■
IdentityIdentity*dropout_5/StatefulPartitionedCall:output:0.^batch_normalization_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         `::::::2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall:X T
/
_output_shapes
:         `
!
_user_specified_name	input_1
╠
Ч
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_16404

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           `:`:`:`:`:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           `2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           `::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           `
 
_user_specified_nameinputs
█
Л
H__inference_conv__block_6_layer_call_and_return_conditional_losses_13106
input_1
conv2d_7_12984
conv2d_7_12986
batch_normalization_6_13053
batch_normalization_6_13055
batch_normalization_6_13057
batch_normalization_6_13059
identityИв-batch_normalization_6/StatefulPartitionedCallв conv2d_7/StatefulPartitionedCallв!dropout_6/StatefulPartitionedCallЮ
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_7_12984conv2d_7_12986*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_129732"
 conv2d_7/StatefulPartitionedCall╜
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0batch_normalization_6_13053batch_normalization_6_13055batch_normalization_6_13057batch_normalization_6_13059*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_130082/
-batch_normalization_6/StatefulPartitionedCallЫ
activation_6/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_6_layer_call_and_return_conditional_losses_130672
activation_6/PartitionedCallЩ
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall%activation_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_130872#
!dropout_6/StatefulPartitionedCall■
IdentityIdentity*dropout_6/StatefulPartitionedCall:output:0.^batch_normalization_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         А::::::2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall:Y U
0
_output_shapes
:         А
!
_user_specified_name	input_1
З
╜
+__inference_conv__block_layer_call_fn_11089
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCall╢
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv__block_layer_call_and_return_conditional_losses_110742
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         00 2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         00 ::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:         00 
!
_user_specified_name	input_1
└
є
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_16174

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
щ	
▄
C__inference_conv2d_2_layer_call_and_return_conditional_losses_11219

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:          ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
°
є
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_11272

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         @::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╔
Е
H__inference_conv__block_6_layer_call_and_return_conditional_losses_13149
x
conv2d_7_13132
conv2d_7_13134
batch_normalization_6_13137
batch_normalization_6_13139
batch_normalization_6_13141
batch_normalization_6_13143
identityИв-batch_normalization_6/StatefulPartitionedCallв conv2d_7/StatefulPartitionedCallв!dropout_6/StatefulPartitionedCallШ
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCallxconv2d_7_13132conv2d_7_13134*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_129732"
 conv2d_7/StatefulPartitionedCall╜
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0batch_normalization_6_13137batch_normalization_6_13139batch_normalization_6_13141batch_normalization_6_13143*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_130082/
-batch_normalization_6/StatefulPartitionedCallЫ
activation_6/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_6_layer_call_and_return_conditional_losses_130672
activation_6/PartitionedCallЩ
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall%activation_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_130872#
!dropout_6/StatefulPartitionedCall■
IdentityIdentity*dropout_6/StatefulPartitionedCall:output:0.^batch_normalization_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         А::::::2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall:S O
0
_output_shapes
:         А

_user_specified_namex
Ы
с
H__inference_conv__block_6_layer_call_and_return_conditional_losses_13186
x
conv2d_7_13169
conv2d_7_13171
batch_normalization_6_13174
batch_normalization_6_13176
batch_normalization_6_13178
batch_normalization_6_13180
identityИв-batch_normalization_6/StatefulPartitionedCallв conv2d_7/StatefulPartitionedCallШ
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCallxconv2d_7_13169conv2d_7_13171*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_129732"
 conv2d_7/StatefulPartitionedCall┐
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0batch_normalization_6_13174batch_normalization_6_13176batch_normalization_6_13178batch_normalization_6_13180*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_130262/
-batch_normalization_6/StatefulPartitionedCallЫ
activation_6/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_6_layer_call_and_return_conditional_losses_130672
activation_6/PartitionedCallБ
dropout_6/PartitionedCallPartitionedCall%activation_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_130922
dropout_6/PartitionedCall╥
IdentityIdentity"dropout_6/PartitionedCall:output:0.^batch_normalization_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         А::::::2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall:S O
0
_output_shapes
:         А

_user_specified_namex
к
I
-__inference_max_pooling2d_layer_call_fn_11101

inputs
identityь
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_110952
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ъ
¤
F__inference_conv__block_layer_call_and_return_conditional_losses_10994
input_1
conv2d_1_10872
conv2d_1_10874
batch_normalization_10941
batch_normalization_10943
batch_normalization_10945
batch_normalization_10947
identityИв+batch_normalization/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallвdropout/StatefulPartitionedCallЭ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_1_10872conv2d_1_10874*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_108612"
 conv2d_1/StatefulPartitionedCallо
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_10941batch_normalization_10943batch_normalization_10945batch_normalization_10947*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_108962-
+batch_normalization/StatefulPartitionedCallТ
activation/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_109552
activation/PartitionedCallР
dropout/StatefulPartitionedCallStatefulPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_109752!
dropout/StatefulPartitionedCallў
IdentityIdentity(dropout/StatefulPartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall*
T0*/
_output_shapes
:         00 2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         00 ::::::2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall:X T
/
_output_shapes
:         00 
!
_user_specified_name	input_1
╘
Л
H__inference_conv__block_3_layer_call_and_return_conditional_losses_12056
input_1
conv2d_4_11934
conv2d_4_11936
batch_normalization_3_12003
batch_normalization_3_12005
batch_normalization_3_12007
batch_normalization_3_12009
identityИв-batch_normalization_3/StatefulPartitionedCallв conv2d_4/StatefulPartitionedCallв!dropout_3/StatefulPartitionedCallЭ
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_4_11934conv2d_4_11936*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_119232"
 conv2d_4/StatefulPartitionedCall╝
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_3_12003batch_normalization_3_12005batch_normalization_3_12007batch_normalization_3_12009*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_119582/
-batch_normalization_3/StatefulPartitionedCallЪ
activation_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_3_layer_call_and_return_conditional_losses_120172
activation_3/PartitionedCallШ
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall%activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_120372#
!dropout_3/StatefulPartitionedCall¤
IdentityIdentity*dropout_3/StatefulPartitionedCall:output:0.^batch_normalization_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall*
T0*/
_output_shapes
:         `2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         @::::::2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall:X T
/
_output_shapes
:         @
!
_user_specified_name	input_1
╣
E
)__inference_dropout_6_layer_call_fn_17037

inputs
identity╬
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_130922
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╗
H
,__inference_activation_4_layer_call_fn_16642

inputs
identity╨
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_4_layer_call_and_return_conditional_losses_123632
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         

`2

Identity"
identityIdentity:output:0*.
_input_shapes
:         

`:W S
/
_output_shapes
:         

`
 
_user_specified_nameinputs
┴
b
)__inference_dropout_2_layer_call_fn_16296

inputs
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_116792
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
┘
c
G__inference_activation_6_layer_call_and_return_conditional_losses_13067

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:         А2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╒
c
G__inference_activation_1_layer_call_and_return_conditional_losses_11313

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:         @2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ъ	
▄
C__inference_conv2d_5_layer_call_and_return_conditional_losses_12269

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:``*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

`*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

`2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         

`2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         `::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         `
 
_user_specified_nameinputs
╓
и
5__inference_batch_normalization_2_layer_call_fn_16251

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_116002
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         @::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
¤
}
(__inference_conv2d_1_layer_call_fn_15768

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_108612
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         00 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         00 ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         00 
 
_user_specified_nameinputs
└
є
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_12244

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           `:`:`:`:`:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           `2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           `::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           `
 
_user_specified_nameinputs
т
╒
F__inference_conv__block_layer_call_and_return_conditional_losses_11074
x
conv2d_1_11057
conv2d_1_11059
batch_normalization_11062
batch_normalization_11064
batch_normalization_11066
batch_normalization_11068
identityИв+batch_normalization/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallЧ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCallxconv2d_1_11057conv2d_1_11059*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_108612"
 conv2d_1/StatefulPartitionedCall░
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_11062batch_normalization_11064batch_normalization_11066batch_normalization_11068*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_109142-
+batch_normalization/StatefulPartitionedCallТ
activation/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_109552
activation/PartitionedCall°
dropout/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_109802
dropout/PartitionedCall═
IdentityIdentity dropout/PartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall*
T0*/
_output_shapes
:         00 2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         00 ::::::2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall:R N
/
_output_shapes
:         00 

_user_specified_namex
╠
Ч
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11509

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Б
}
(__inference_conv2d_7_layer_call_fn_16872

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_129732
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ч
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_16475

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:         `2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         `2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:         `:W S
/
_output_shapes
:         `
 
_user_specified_nameinputs
щ	
▄
C__inference_conv2d_1_layer_call_and_return_conditional_losses_15759

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00 2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         00 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         00 ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         00 
 
_user_specified_nameinputs
╣3
Д
H__inference_conv__block_3_layer_call_and_return_conditional_losses_15325
x+
'conv2d_4_conv2d_readvariableop_resource,
(conv2d_4_biasadd_readvariableop_resource1
-batch_normalization_3_readvariableop_resource3
/batch_normalization_3_readvariableop_1_resourceB
>batch_normalization_3_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource
identityИв$batch_normalization_3/AssignNewValueв&batch_normalization_3/AssignNewValue_1в5batch_normalization_3/FusedBatchNormV3/ReadVariableOpв7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_3/ReadVariableOpв&batch_normalization_3/ReadVariableOp_1вconv2d_4/BiasAdd/ReadVariableOpвconv2d_4/Conv2D/ReadVariableOp░
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@`*
dtype02 
conv2d_4/Conv2D/ReadVariableOp╣
conv2d_4/Conv2DConv2Dx&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         `*
paddingSAME*
strides
2
conv2d_4/Conv2Dз
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02!
conv2d_4/BiasAdd/ReadVariableOpм
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         `2
conv2d_4/BiasAdd╢
$batch_normalization_3/ReadVariableOpReadVariableOp-batch_normalization_3_readvariableop_resource*
_output_shapes
:`*
dtype02&
$batch_normalization_3/ReadVariableOp╝
&batch_normalization_3/ReadVariableOp_1ReadVariableOp/batch_normalization_3_readvariableop_1_resource*
_output_shapes
:`*
dtype02(
&batch_normalization_3/ReadVariableOp_1щ
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype027
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpя
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype029
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1я
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3conv2d_4/BiasAdd:output:0,batch_normalization_3/ReadVariableOp:value:0.batch_normalization_3/ReadVariableOp_1:value:0=batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         `:`:`:`:`:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2(
&batch_normalization_3/FusedBatchNormV3▒
$batch_normalization_3/AssignNewValueAssignVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource3batch_normalization_3/FusedBatchNormV3:batch_mean:06^batch_normalization_3/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*Q
_classG
ECloc:@batch_normalization_3/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02&
$batch_normalization_3/AssignNewValue┐
&batch_normalization_3/AssignNewValue_1AssignVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_3/FusedBatchNormV3:batch_variance:08^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*S
_classI
GEloc:@batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02(
&batch_normalization_3/AssignNewValue_1Ф
activation_3/ReluRelu*batch_normalization_3/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         `2
activation_3/Reluw
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout_3/dropout/Const▓
dropout_3/dropout/MulMulactivation_3/Relu:activations:0 dropout_3/dropout/Const:output:0*
T0*/
_output_shapes
:         `2
dropout_3/dropout/MulБ
dropout_3/dropout/ShapeShapeactivation_3/Relu:activations:0*
T0*
_output_shapes
:2
dropout_3/dropout/Shape┌
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*/
_output_shapes
:         `*
dtype020
.dropout_3/dropout/random_uniform/RandomUniformЙ
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2"
 dropout_3/dropout/GreaterEqual/yю
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         `2 
dropout_3/dropout/GreaterEqualе
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         `2
dropout_3/dropout/Castк
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*/
_output_shapes
:         `2
dropout_3/dropout/Mul_1╠
IdentityIdentitydropout_3/dropout/Mul_1:z:0%^batch_normalization_3/AssignNewValue'^batch_normalization_3/AssignNewValue_16^batch_normalization_3/FusedBatchNormV3/ReadVariableOp8^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_3/ReadVariableOp'^batch_normalization_3/ReadVariableOp_1 ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         `2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         @::::::2L
$batch_normalization_3/AssignNewValue$batch_normalization_3/AssignNewValue2P
&batch_normalization_3/AssignNewValue_1&batch_normalization_3/AssignNewValue_12n
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp5batch_normalization_3/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2P
&batch_normalization_3/ReadVariableOp_1&batch_normalization_3/ReadVariableOp_12B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp:R N
/
_output_shapes
:         @

_user_specified_namex
╛
ё
N__inference_batch_normalization_layer_call_and_return_conditional_losses_15870

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                            ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
Є	
▄
C__inference_conv2d_7_layer_call_and_return_conditional_losses_16863

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAddЮ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╩
c
D__inference_dropout_5_layer_call_and_return_conditional_losses_12741

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╜
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2
dropout/GreaterEqual/y╟
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         А2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
їT
┘
G__inference_fac__model_1_layer_call_and_return_conditional_losses_14129

inputs
conv2d_14016
conv2d_14018
conv__block_14021
conv__block_14023
conv__block_14025
conv__block_14027
conv__block_14029
conv__block_14031
conv__block_1_14035
conv__block_1_14037
conv__block_1_14039
conv__block_1_14041
conv__block_1_14043
conv__block_1_14045
conv__block_2_14048
conv__block_2_14050
conv__block_2_14052
conv__block_2_14054
conv__block_2_14056
conv__block_2_14058
conv__block_3_14062
conv__block_3_14064
conv__block_3_14066
conv__block_3_14068
conv__block_3_14070
conv__block_3_14072
conv__block_4_14075
conv__block_4_14077
conv__block_4_14079
conv__block_4_14081
conv__block_4_14083
conv__block_4_14085
conv__block_5_14089
conv__block_5_14091
conv__block_5_14093
conv__block_5_14095
conv__block_5_14097
conv__block_5_14099
conv__block_6_14102
conv__block_6_14104
conv__block_6_14106
conv__block_6_14108
conv__block_6_14110
conv__block_6_14112
dense_14117
dense_14119
dense_1_14123
dense_1_14125
identityИвconv2d/StatefulPartitionedCallв#conv__block/StatefulPartitionedCallв%conv__block_1/StatefulPartitionedCallв%conv__block_2/StatefulPartitionedCallв%conv__block_3/StatefulPartitionedCallв%conv__block_4/StatefulPartitionedCallв%conv__block_5/StatefulPartitionedCallв%conv__block_6/StatefulPartitionedCallвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallТ
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_14016conv2d_14018*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_132282 
conv2d/StatefulPartitionedCallа
#conv__block/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv__block_14021conv__block_14023conv__block_14025conv__block_14027conv__block_14029conv__block_14031*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00 *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv__block_layer_call_and_return_conditional_losses_110742%
#conv__block/StatefulPartitionedCallУ
max_pooling2d/PartitionedCallPartitionedCall,conv__block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_110952
max_pooling2d/PartitionedCall▒
%conv__block_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv__block_1_14035conv__block_1_14037conv__block_1_14039conv__block_1_14041conv__block_1_14043conv__block_1_14045*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_1_layer_call_and_return_conditional_losses_114322'
%conv__block_1/StatefulPartitionedCall╣
%conv__block_2/StatefulPartitionedCallStatefulPartitionedCall.conv__block_1/StatefulPartitionedCall:output:0conv__block_2_14048conv__block_2_14050conv__block_2_14052conv__block_2_14054conv__block_2_14056conv__block_2_14058*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_2_layer_call_and_return_conditional_losses_117782'
%conv__block_2/StatefulPartitionedCallЫ
max_pooling2d_1/PartitionedCallPartitionedCall.conv__block_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_117992!
max_pooling2d_1/PartitionedCall│
%conv__block_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv__block_3_14062conv__block_3_14064conv__block_3_14066conv__block_3_14068conv__block_3_14070conv__block_3_14072*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_3_layer_call_and_return_conditional_losses_121362'
%conv__block_3/StatefulPartitionedCall╣
%conv__block_4/StatefulPartitionedCallStatefulPartitionedCall.conv__block_3/StatefulPartitionedCall:output:0conv__block_4_14075conv__block_4_14077conv__block_4_14079conv__block_4_14081conv__block_4_14083conv__block_4_14085*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

`*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_4_layer_call_and_return_conditional_losses_124822'
%conv__block_4/StatefulPartitionedCallЫ
max_pooling2d_2/PartitionedCallPartitionedCall.conv__block_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_125032!
max_pooling2d_2/PartitionedCall┤
%conv__block_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv__block_5_14089conv__block_5_14091conv__block_5_14093conv__block_5_14095conv__block_5_14097conv__block_5_14099*
Tin
	2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_5_layer_call_and_return_conditional_losses_128402'
%conv__block_5/StatefulPartitionedCall║
%conv__block_6/StatefulPartitionedCallStatefulPartitionedCall.conv__block_5/StatefulPartitionedCall:output:0conv__block_6_14102conv__block_6_14104conv__block_6_14106conv__block_6_14108conv__block_6_14110conv__block_6_14112*
Tin
	2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_6_layer_call_and_return_conditional_losses_131862'
%conv__block_6/StatefulPartitionedCallЬ
max_pooling2d_3/PartitionedCallPartitionedCall.conv__block_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_132072!
max_pooling2d_3/PartitionedCallЎ
flatten/PartitionedCallPartitionedCall(max_pooling2d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_135832
flatten/PartitionedCallЯ
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_14117dense_14119*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_136032
dense/StatefulPartitionedCall∙
dropout_7/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_136362
dropout_7/PartitionedCallл
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0dense_1_14123dense_1_14125*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_136602!
dense_1/StatefulPartitionedCallї
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall$^conv__block/StatefulPartitionedCall&^conv__block_1/StatefulPartitionedCall&^conv__block_2/StatefulPartitionedCall&^conv__block_3/StatefulPartitionedCall&^conv__block_4/StatefulPartitionedCall&^conv__block_5/StatefulPartitionedCall&^conv__block_6/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Ё
_input_shapes▐
█:         00::::::::::::::::::::::::::::::::::::::::::::::::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2J
#conv__block/StatefulPartitionedCall#conv__block/StatefulPartitionedCall2N
%conv__block_1/StatefulPartitionedCall%conv__block_1/StatefulPartitionedCall2N
%conv__block_2/StatefulPartitionedCall%conv__block_2/StatefulPartitionedCall2N
%conv__block_3/StatefulPartitionedCall%conv__block_3/StatefulPartitionedCall2N
%conv__block_4/StatefulPartitionedCall%conv__block_4/StatefulPartitionedCall2N
%conv__block_5/StatefulPartitionedCall%conv__block_5/StatefulPartitionedCall2N
%conv__block_6/StatefulPartitionedCall%conv__block_6/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:W S
/
_output_shapes
:         00
 
_user_specified_nameinputs
╓
и
5__inference_batch_normalization_1_layer_call_fn_16003

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_112542
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         @::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╠
є
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_16910

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1с
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3э
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,                           А::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
А
f
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_13207

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┬
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_16102

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2
dropout/GreaterEqual/y╞
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╩
Х
N__inference_batch_normalization_layer_call_and_return_conditional_losses_15852

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                            ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
╪
и
5__inference_batch_normalization_3_layer_call_fn_16384

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_119762
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         `2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         `::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         `
 
_user_specified_nameinputs
з 
┤
H__inference_conv__block_4_layer_call_and_return_conditional_losses_15446
x+
'conv2d_5_conv2d_readvariableop_resource,
(conv2d_5_biasadd_readvariableop_resource1
-batch_normalization_4_readvariableop_resource3
/batch_normalization_4_readvariableop_1_resourceB
>batch_normalization_4_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource
identityИв5batch_normalization_4/FusedBatchNormV3/ReadVariableOpв7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_4/ReadVariableOpв&batch_normalization_4/ReadVariableOp_1вconv2d_5/BiasAdd/ReadVariableOpвconv2d_5/Conv2D/ReadVariableOp░
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:``*
dtype02 
conv2d_5/Conv2D/ReadVariableOp║
conv2d_5/Conv2DConv2Dx&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

`*
paddingVALID*
strides
2
conv2d_5/Conv2Dз
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02!
conv2d_5/BiasAdd/ReadVariableOpм
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

`2
conv2d_5/BiasAdd╢
$batch_normalization_4/ReadVariableOpReadVariableOp-batch_normalization_4_readvariableop_resource*
_output_shapes
:`*
dtype02&
$batch_normalization_4/ReadVariableOp╝
&batch_normalization_4/ReadVariableOp_1ReadVariableOp/batch_normalization_4_readvariableop_1_resource*
_output_shapes
:`*
dtype02(
&batch_normalization_4/ReadVariableOp_1щ
5batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype027
5batch_normalization_4/FusedBatchNormV3/ReadVariableOpя
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype029
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1с
&batch_normalization_4/FusedBatchNormV3FusedBatchNormV3conv2d_5/BiasAdd:output:0,batch_normalization_4/ReadVariableOp:value:0.batch_normalization_4/ReadVariableOp_1:value:0=batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         

`:`:`:`:`:*
epsilon%oГ:*
is_training( 2(
&batch_normalization_4/FusedBatchNormV3Ф
activation_4/ReluRelu*batch_normalization_4/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         

`2
activation_4/ReluП
dropout_4/IdentityIdentityactivation_4/Relu:activations:0*
T0*/
_output_shapes
:         

`2
dropout_4/Identity№
IdentityIdentitydropout_4/Identity:output:06^batch_normalization_4/FusedBatchNormV3/ReadVariableOp8^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_4/ReadVariableOp'^batch_normalization_4/ReadVariableOp_1 ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         

`2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         `::::::2n
5batch_normalization_4/FusedBatchNormV3/ReadVariableOp5batch_normalization_4/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_17batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_4/ReadVariableOp$batch_normalization_4/ReadVariableOp2P
&batch_normalization_4/ReadVariableOp_1&batch_normalization_4/ReadVariableOp_12B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp:R N
/
_output_shapes
:         `

_user_specified_namex
∙
╣
-__inference_conv__block_3_layer_call_fn_15385
x
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИвStatefulPartitionedCall▓
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         `*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_conv__block_3_layer_call_and_return_conditional_losses_121362
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         `2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:         @::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:         @

_user_specified_namex
╪
и
5__inference_batch_normalization_1_layer_call_fn_16016

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_112722
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         @::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ч
b
D__inference_dropout_4_layer_call_and_return_conditional_losses_12388

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:         

`2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         

`2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:         

`:W S
/
_output_shapes
:         

`
 
_user_specified_nameinputs
н
ч
H__inference_conv__block_6_layer_call_and_return_conditional_losses_13126
input_1
conv2d_7_13109
conv2d_7_13111
batch_normalization_6_13114
batch_normalization_6_13116
batch_normalization_6_13118
batch_normalization_6_13120
identityИв-batch_normalization_6/StatefulPartitionedCallв conv2d_7/StatefulPartitionedCallЮ
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_7_13109conv2d_7_13111*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_129732"
 conv2d_7/StatefulPartitionedCall┐
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0batch_normalization_6_13114batch_normalization_6_13116batch_normalization_6_13118batch_normalization_6_13120*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_130262/
-batch_normalization_6/StatefulPartitionedCallЫ
activation_6/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_6_layer_call_and_return_conditional_losses_130672
activation_6/PartitionedCallБ
dropout_6/PartitionedCallPartitionedCall%activation_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_130922
dropout_6/PartitionedCall╥
IdentityIdentity"dropout_6/PartitionedCall:output:0.^batch_normalization_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:         А::::::2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall:Y U
0
_output_shapes
:         А
!
_user_specified_name	input_1
╪
Ч
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_12917

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1С
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,                           А::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
х
`
B__inference_dropout_layer_call_and_return_conditional_losses_10980

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:         00 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         00 2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:         00 :W S
/
_output_shapes
:         00 
 
_user_specified_nameinputs
╒
c
G__inference_activation_4_layer_call_and_return_conditional_losses_12363

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:         

`2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         

`2

Identity"
identityIdentity:output:0*.
_input_shapes
:         

`:W S
/
_output_shapes
:         

`
 
_user_specified_nameinputs
а
и
5__inference_batch_normalization_2_layer_call_fn_16200

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_115402
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs"▒L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*│
serving_defaultЯ
C
input_18
serving_default_input_1:0         00<
output_10
StatefulPartitionedCall:0         tensorflow/serving/predict:х╟
щ	

block1

block2
	pollingM1

block3

block4
	pollingM2

block5

block6
		pollingM3


block7

block8
	pollingM4
flatten
	dense
drop
outputLayer
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
╧_default_save_signature
+╨&call_and_return_all_conditional_losses
╤__call__"╠
_tf_keras_model▓{"class_name": "Fac_Model", "name": "fac__model_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Fac_Model"}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 1.000000082740371e-07, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
я


kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
+╥&call_and_return_all_conditional_losses
╙__call__"╚	
_tf_keras_layerо	{"class_name": "Conv2D", "name": "conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 48, 48]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 48, 48]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 48, 1]}}
╟
	convLayer
bnLayer
actRelu
 dropout
!trainable_variables
"regularization_losses
#	variables
$	keras_api
+╘&call_and_return_all_conditional_losses
╒__call__"А
_tf_keras_modelц{"class_name": "Conv_Block", "name": "conv__block", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Conv_Block"}}
¤
%trainable_variables
&regularization_losses
'	variables
(	keras_api
+╓&call_and_return_all_conditional_losses
╫__call__"ь
_tf_keras_layer╥{"class_name": "MaxPooling2D", "name": "max_pooling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
╔
)	convLayer
*bnLayer
+actRelu
,dropout
-trainable_variables
.regularization_losses
/	variables
0	keras_api
+╪&call_and_return_all_conditional_losses
┘__call__"В
_tf_keras_modelш{"class_name": "Conv_Block", "name": "conv__block_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Conv_Block"}}
╔
1	convLayer
2bnLayer
3actRelu
4dropout
5trainable_variables
6regularization_losses
7	variables
8	keras_api
+┌&call_and_return_all_conditional_losses
█__call__"В
_tf_keras_modelш{"class_name": "Conv_Block", "name": "conv__block_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Conv_Block"}}
Б
9trainable_variables
:regularization_losses
;	variables
<	keras_api
+▄&call_and_return_all_conditional_losses
▌__call__"Ё
_tf_keras_layer╓{"class_name": "MaxPooling2D", "name": "max_pooling2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
╔
=	convLayer
>bnLayer
?actRelu
@dropout
Atrainable_variables
Bregularization_losses
C	variables
D	keras_api
+▐&call_and_return_all_conditional_losses
▀__call__"В
_tf_keras_modelш{"class_name": "Conv_Block", "name": "conv__block_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Conv_Block"}}
╔
E	convLayer
FbnLayer
GactRelu
Hdropout
Itrainable_variables
Jregularization_losses
K	variables
L	keras_api
+р&call_and_return_all_conditional_losses
с__call__"В
_tf_keras_modelш{"class_name": "Conv_Block", "name": "conv__block_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Conv_Block"}}
Б
Mtrainable_variables
Nregularization_losses
O	variables
P	keras_api
+т&call_and_return_all_conditional_losses
у__call__"Ё
_tf_keras_layer╓{"class_name": "MaxPooling2D", "name": "max_pooling2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
╔
Q	convLayer
RbnLayer
SactRelu
Tdropout
Utrainable_variables
Vregularization_losses
W	variables
X	keras_api
+ф&call_and_return_all_conditional_losses
х__call__"В
_tf_keras_modelш{"class_name": "Conv_Block", "name": "conv__block_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Conv_Block"}}
╔
Y	convLayer
ZbnLayer
[actRelu
\dropout
]trainable_variables
^regularization_losses
_	variables
`	keras_api
+ц&call_and_return_all_conditional_losses
ч__call__"В
_tf_keras_modelш{"class_name": "Conv_Block", "name": "conv__block_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Conv_Block"}}
Б
atrainable_variables
bregularization_losses
c	variables
d	keras_api
+ш&call_and_return_all_conditional_losses
щ__call__"Ё
_tf_keras_layer╓{"class_name": "MaxPooling2D", "name": "max_pooling2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ф
etrainable_variables
fregularization_losses
g	variables
h	keras_api
+ъ&call_and_return_all_conditional_losses
ы__call__"╙
_tf_keras_layer╣{"class_name": "Flatten", "name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
Й

ikernel
jbias
ktrainable_variables
lregularization_losses
m	variables
n	keras_api
+ь&call_and_return_all_conditional_losses
э__call__"т
_tf_keras_layer╚{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish_ann_activation_function", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
ч
otrainable_variables
pregularization_losses
q	variables
r	keras_api
+ю&call_and_return_all_conditional_losses
я__call__"╓
_tf_keras_layer╝{"class_name": "Dropout", "name": "dropout_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_7", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}
Ї

skernel
tbias
utrainable_variables
vregularization_losses
w	variables
x	keras_api
+Ё&call_and_return_all_conditional_losses
ё__call__"═
_tf_keras_layer│{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 7, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
п
yiter

zbeta_1

{beta_2
	|decay
}learning_ratemЛmМimНjmОsmПtmР~mСmТ	АmУ	БmФ	ВmХ	ГmЦ	ДmЧ	ЕmШ	ЖmЩ	ЗmЪ	ИmЫ	ЙmЬ	КmЭ	ЛmЮ	МmЯ	Нmа	Оmб	Пmв	Рmг	Сmд	Тmе	Уmж	Фmз	Хmи	Цmй	Чmк	Шmл	Щmмvнvоivпjv░sv▒tv▓~v│v┤	Аv╡	Бv╢	Вv╖	Гv╕	Дv╣	Еv║	Жv╗	Зv╝	Иv╜	Йv╛	Кv┐	Лv└	Мv┴	Нv┬	Оv├	Пv─	Рv┼	Сv╞	Тv╟	Уv╚	Фv╔	Хv╩	Цv╦	Чv╠	Шv═	Щv╬"
	optimizer
└
0
1
~2
3
А4
Б5
В6
Г7
Д8
Е9
Ж10
З11
И12
Й13
К14
Л15
М16
Н17
О18
П19
Р20
С21
Т22
У23
Ф24
Х25
Ц26
Ч27
Ш28
Щ29
i30
j31
s32
t33"
trackable_list_wrapper
 "
trackable_list_wrapper
╛
0
1
~2
3
А4
Б5
Ъ6
Ы7
В8
Г9
Д10
Е11
Ь12
Э13
Ж14
З15
И16
Й17
Ю18
Я19
К20
Л21
М22
Н23
а24
б25
О26
П27
Р28
С29
в30
г31
Т32
У33
Ф34
Х35
д36
е37
Ц38
Ч39
Ш40
Щ41
ж42
з43
i44
j45
s46
t47"
trackable_list_wrapper
╙
trainable_variables
иlayers
 йlayer_regularization_losses
кnon_trainable_variables
regularization_losses
лlayer_metrics
мmetrics
	variables
╤__call__
╧_default_save_signature
+╨&call_and_return_all_conditional_losses
'╨"call_and_return_conditional_losses"
_generic_user_object
-
Єserving_default"
signature_map
':% 2conv2d/kernel
: 2conv2d/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
╡
trainable_variables
 нlayer_regularization_losses
оlayers
пnon_trainable_variables
regularization_losses
░layer_metrics
▒metrics
	variables
╙__call__
+╥&call_and_return_all_conditional_losses
'╥"call_and_return_conditional_losses"
_generic_user_object
·	

~kernel
bias
▓trainable_variables
│regularization_losses
┤	variables
╡	keras_api
+є&call_and_return_all_conditional_losses
Ї__call__"╧
_tf_keras_layer╡{"class_name": "Conv2D", "name": "conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 48, 32]}}
┴	
	╢axis

Аgamma
	Бbeta
Ъmoving_mean
Ыmoving_variance
╖trainable_variables
╕regularization_losses
╣	variables
║	keras_api
+ї&call_and_return_all_conditional_losses
Ў__call__"т
_tf_keras_layer╚{"class_name": "BatchNormalization", "name": "batch_normalization", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 48, 32]}}
╫
╗trainable_variables
╝regularization_losses
╜	variables
╛	keras_api
+ў&call_and_return_all_conditional_losses
°__call__"┬
_tf_keras_layerи{"class_name": "Activation", "name": "activation", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation", "trainable": true, "dtype": "float32", "activation": "relu"}}
ч
┐trainable_variables
└regularization_losses
┴	variables
┬	keras_api
+∙&call_and_return_all_conditional_losses
·__call__"╥
_tf_keras_layer╕{"class_name": "Dropout", "name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
>
~0
1
А2
Б3"
trackable_list_wrapper
 "
trackable_list_wrapper
N
~0
1
А2
Б3
Ъ4
Ы5"
trackable_list_wrapper
╡
!trainable_variables
├layers
 ─layer_regularization_losses
┼non_trainable_variables
"regularization_losses
╞layer_metrics
╟metrics
#	variables
╒__call__
+╘&call_and_return_all_conditional_losses
'╘"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
%trainable_variables
 ╚layer_regularization_losses
╔layers
╩non_trainable_variables
&regularization_losses
╦layer_metrics
╠metrics
'	variables
╫__call__
+╓&call_and_return_all_conditional_losses
'╓"call_and_return_conditional_losses"
_generic_user_object
№	
Вkernel
	Гbias
═trainable_variables
╬regularization_losses
╧	variables
╨	keras_api
+√&call_and_return_all_conditional_losses
№__call__"╧
_tf_keras_layer╡{"class_name": "Conv2D", "name": "conv2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 24, 32]}}
┼	
	╤axis

Дgamma
	Еbeta
Ьmoving_mean
Эmoving_variance
╥trainable_variables
╙regularization_losses
╘	variables
╒	keras_api
+¤&call_and_return_all_conditional_losses
■__call__"ц
_tf_keras_layer╠{"class_name": "BatchNormalization", "name": "batch_normalization_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 24, 64]}}
█
╓trainable_variables
╫regularization_losses
╪	variables
┘	keras_api
+ &call_and_return_all_conditional_losses
А__call__"╞
_tf_keras_layerм{"class_name": "Activation", "name": "activation_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_1", "trainable": true, "dtype": "float32", "activation": "relu"}}
ы
┌trainable_variables
█regularization_losses
▄	variables
▌	keras_api
+Б&call_and_return_all_conditional_losses
В__call__"╓
_tf_keras_layer╝{"class_name": "Dropout", "name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
@
В0
Г1
Д2
Е3"
trackable_list_wrapper
 "
trackable_list_wrapper
P
В0
Г1
Д2
Е3
Ь4
Э5"
trackable_list_wrapper
╡
-trainable_variables
▐layers
 ▀layer_regularization_losses
рnon_trainable_variables
.regularization_losses
сlayer_metrics
тmetrics
/	variables
┘__call__
+╪&call_and_return_all_conditional_losses
'╪"call_and_return_conditional_losses"
_generic_user_object
№	
Жkernel
	Зbias
уtrainable_variables
фregularization_losses
х	variables
ц	keras_api
+Г&call_and_return_all_conditional_losses
Д__call__"╧
_tf_keras_layer╡{"class_name": "Conv2D", "name": "conv2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 24, 64]}}
┼	
	чaxis

Иgamma
	Йbeta
Юmoving_mean
Яmoving_variance
шtrainable_variables
щregularization_losses
ъ	variables
ы	keras_api
+Е&call_and_return_all_conditional_losses
Ж__call__"ц
_tf_keras_layer╠{"class_name": "BatchNormalization", "name": "batch_normalization_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 24, 64]}}
█
ьtrainable_variables
эregularization_losses
ю	variables
я	keras_api
+З&call_and_return_all_conditional_losses
И__call__"╞
_tf_keras_layerм{"class_name": "Activation", "name": "activation_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_2", "trainable": true, "dtype": "float32", "activation": "relu"}}
ы
Ёtrainable_variables
ёregularization_losses
Є	variables
є	keras_api
+Й&call_and_return_all_conditional_losses
К__call__"╓
_tf_keras_layer╝{"class_name": "Dropout", "name": "dropout_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
@
Ж0
З1
И2
Й3"
trackable_list_wrapper
 "
trackable_list_wrapper
P
Ж0
З1
И2
Й3
Ю4
Я5"
trackable_list_wrapper
╡
5trainable_variables
Їlayers
 їlayer_regularization_losses
Ўnon_trainable_variables
6regularization_losses
ўlayer_metrics
°metrics
7	variables
█__call__
+┌&call_and_return_all_conditional_losses
'┌"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
9trainable_variables
 ∙layer_regularization_losses
·layers
√non_trainable_variables
:regularization_losses
№layer_metrics
¤metrics
;	variables
▌__call__
+▄&call_and_return_all_conditional_losses
'▄"call_and_return_conditional_losses"
_generic_user_object
№	
Кkernel
	Лbias
■trainable_variables
 regularization_losses
А	variables
Б	keras_api
+Л&call_and_return_all_conditional_losses
М__call__"╧
_tf_keras_layer╡{"class_name": "Conv2D", "name": "conv2d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 96, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12, 12, 64]}}
┼	
	Вaxis

Мgamma
	Нbeta
аmoving_mean
бmoving_variance
Гtrainable_variables
Дregularization_losses
Е	variables
Ж	keras_api
+Н&call_and_return_all_conditional_losses
О__call__"ц
_tf_keras_layer╠{"class_name": "BatchNormalization", "name": "batch_normalization_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_3", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 96}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12, 12, 96]}}
█
Зtrainable_variables
Иregularization_losses
Й	variables
К	keras_api
+П&call_and_return_all_conditional_losses
Р__call__"╞
_tf_keras_layerм{"class_name": "Activation", "name": "activation_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_3", "trainable": true, "dtype": "float32", "activation": "relu"}}
ы
Лtrainable_variables
Мregularization_losses
Н	variables
О	keras_api
+С&call_and_return_all_conditional_losses
Т__call__"╓
_tf_keras_layer╝{"class_name": "Dropout", "name": "dropout_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
@
К0
Л1
М2
Н3"
trackable_list_wrapper
 "
trackable_list_wrapper
P
К0
Л1
М2
Н3
а4
б5"
trackable_list_wrapper
╡
Atrainable_variables
Пlayers
 Рlayer_regularization_losses
Сnon_trainable_variables
Bregularization_losses
Тlayer_metrics
Уmetrics
C	variables
▀__call__
+▐&call_and_return_all_conditional_losses
'▐"call_and_return_conditional_losses"
_generic_user_object
¤	
Оkernel
	Пbias
Фtrainable_variables
Хregularization_losses
Ц	variables
Ч	keras_api
+У&call_and_return_all_conditional_losses
Ф__call__"╨
_tf_keras_layer╢{"class_name": "Conv2D", "name": "conv2d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 96, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 96}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12, 12, 96]}}
┼	
	Шaxis

Рgamma
	Сbeta
вmoving_mean
гmoving_variance
Щtrainable_variables
Ъregularization_losses
Ы	variables
Ь	keras_api
+Х&call_and_return_all_conditional_losses
Ц__call__"ц
_tf_keras_layer╠{"class_name": "BatchNormalization", "name": "batch_normalization_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_4", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 96}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10, 10, 96]}}
█
Эtrainable_variables
Юregularization_losses
Я	variables
а	keras_api
+Ч&call_and_return_all_conditional_losses
Ш__call__"╞
_tf_keras_layerм{"class_name": "Activation", "name": "activation_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_4", "trainable": true, "dtype": "float32", "activation": "relu"}}
ы
бtrainable_variables
вregularization_losses
г	variables
д	keras_api
+Щ&call_and_return_all_conditional_losses
Ъ__call__"╓
_tf_keras_layer╝{"class_name": "Dropout", "name": "dropout_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_4", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
@
О0
П1
Р2
С3"
trackable_list_wrapper
 "
trackable_list_wrapper
P
О0
П1
Р2
С3
в4
г5"
trackable_list_wrapper
╡
Itrainable_variables
еlayers
 жlayer_regularization_losses
зnon_trainable_variables
Jregularization_losses
иlayer_metrics
йmetrics
K	variables
с__call__
+р&call_and_return_all_conditional_losses
'р"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Mtrainable_variables
 кlayer_regularization_losses
лlayers
мnon_trainable_variables
Nregularization_losses
нlayer_metrics
оmetrics
O	variables
у__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses"
_generic_user_object
√	
Тkernel
	Уbias
пtrainable_variables
░regularization_losses
▒	variables
▓	keras_api
+Ы&call_and_return_all_conditional_losses
Ь__call__"╬
_tf_keras_layer┤{"class_name": "Conv2D", "name": "conv2d_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_6", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 96}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5, 5, 96]}}
┼	
	│axis

Фgamma
	Хbeta
дmoving_mean
еmoving_variance
┤trainable_variables
╡regularization_losses
╢	variables
╖	keras_api
+Э&call_and_return_all_conditional_losses
Ю__call__"ц
_tf_keras_layer╠{"class_name": "BatchNormalization", "name": "batch_normalization_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_5", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5, 5, 128]}}
█
╕trainable_variables
╣regularization_losses
║	variables
╗	keras_api
+Я&call_and_return_all_conditional_losses
а__call__"╞
_tf_keras_layerм{"class_name": "Activation", "name": "activation_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_5", "trainable": true, "dtype": "float32", "activation": "relu"}}
ы
╝trainable_variables
╜regularization_losses
╛	variables
┐	keras_api
+б&call_and_return_all_conditional_losses
в__call__"╓
_tf_keras_layer╝{"class_name": "Dropout", "name": "dropout_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_5", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
@
Т0
У1
Ф2
Х3"
trackable_list_wrapper
 "
trackable_list_wrapper
P
Т0
У1
Ф2
Х3
д4
е5"
trackable_list_wrapper
╡
Utrainable_variables
└layers
 ┴layer_regularization_losses
┬non_trainable_variables
Vregularization_losses
├layer_metrics
─metrics
W	variables
х__call__
+ф&call_and_return_all_conditional_losses
'ф"call_and_return_conditional_losses"
_generic_user_object
■	
Цkernel
	Чbias
┼trainable_variables
╞regularization_losses
╟	variables
╚	keras_api
+г&call_and_return_all_conditional_losses
д__call__"╤
_tf_keras_layer╖{"class_name": "Conv2D", "name": "conv2d_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_7", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5, 5, 128]}}
┼	
	╔axis

Шgamma
	Щbeta
жmoving_mean
зmoving_variance
╩trainable_variables
╦regularization_losses
╠	variables
═	keras_api
+е&call_and_return_all_conditional_losses
ж__call__"ц
_tf_keras_layer╠{"class_name": "BatchNormalization", "name": "batch_normalization_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 3, 128]}}
█
╬trainable_variables
╧regularization_losses
╨	variables
╤	keras_api
+з&call_and_return_all_conditional_losses
и__call__"╞
_tf_keras_layerм{"class_name": "Activation", "name": "activation_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_6", "trainable": true, "dtype": "float32", "activation": "relu"}}
ы
╥trainable_variables
╙regularization_losses
╘	variables
╒	keras_api
+й&call_and_return_all_conditional_losses
к__call__"╓
_tf_keras_layer╝{"class_name": "Dropout", "name": "dropout_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_6", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
@
Ц0
Ч1
Ш2
Щ3"
trackable_list_wrapper
 "
trackable_list_wrapper
P
Ц0
Ч1
Ш2
Щ3
ж4
з5"
trackable_list_wrapper
╡
]trainable_variables
╓layers
 ╫layer_regularization_losses
╪non_trainable_variables
^regularization_losses
┘layer_metrics
┌metrics
_	variables
ч__call__
+ц&call_and_return_all_conditional_losses
'ц"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
atrainable_variables
 █layer_regularization_losses
▄layers
▌non_trainable_variables
bregularization_losses
▐layer_metrics
▀metrics
c	variables
щ__call__
+ш&call_and_return_all_conditional_losses
'ш"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
etrainable_variables
 рlayer_regularization_losses
сlayers
тnon_trainable_variables
fregularization_losses
уlayer_metrics
фmetrics
g	variables
ы__call__
+ъ&call_and_return_all_conditional_losses
'ъ"call_and_return_conditional_losses"
_generic_user_object
:	А@2dense/kernel
:@2
dense/bias
.
i0
j1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
i0
j1"
trackable_list_wrapper
╡
ktrainable_variables
 хlayer_regularization_losses
цlayers
чnon_trainable_variables
lregularization_losses
шlayer_metrics
щmetrics
m	variables
э__call__
+ь&call_and_return_all_conditional_losses
'ь"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
otrainable_variables
 ъlayer_regularization_losses
ыlayers
ьnon_trainable_variables
pregularization_losses
эlayer_metrics
юmetrics
q	variables
я__call__
+ю&call_and_return_all_conditional_losses
'ю"call_and_return_conditional_losses"
_generic_user_object
 :@2dense_1/kernel
:2dense_1/bias
.
s0
t1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
s0
t1"
trackable_list_wrapper
╡
utrainable_variables
 яlayer_regularization_losses
Ёlayers
ёnon_trainable_variables
vregularization_losses
Єlayer_metrics
єmetrics
w	variables
ё__call__
+Ё&call_and_return_all_conditional_losses
'Ё"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
5:3  2conv__block/conv2d_1/kernel
':% 2conv__block/conv2d_1/bias
3:1 2%conv__block/batch_normalization/gamma
2:0 2$conv__block/batch_normalization/beta
7:5 @2conv__block_1/conv2d_2/kernel
):'@2conv__block_1/conv2d_2/bias
7:5@2)conv__block_1/batch_normalization_1/gamma
6:4@2(conv__block_1/batch_normalization_1/beta
7:5@@2conv__block_2/conv2d_3/kernel
):'@2conv__block_2/conv2d_3/bias
7:5@2)conv__block_2/batch_normalization_2/gamma
6:4@2(conv__block_2/batch_normalization_2/beta
7:5@`2conv__block_3/conv2d_4/kernel
):'`2conv__block_3/conv2d_4/bias
7:5`2)conv__block_3/batch_normalization_3/gamma
6:4`2(conv__block_3/batch_normalization_3/beta
7:5``2conv__block_4/conv2d_5/kernel
):'`2conv__block_4/conv2d_5/bias
7:5`2)conv__block_4/batch_normalization_4/gamma
6:4`2(conv__block_4/batch_normalization_4/beta
8:6`А2conv__block_5/conv2d_6/kernel
*:(А2conv__block_5/conv2d_6/bias
8:6А2)conv__block_5/batch_normalization_5/gamma
7:5А2(conv__block_5/batch_normalization_5/beta
9:7АА2conv__block_6/conv2d_7/kernel
*:(А2conv__block_6/conv2d_7/bias
8:6А2)conv__block_6/batch_normalization_6/gamma
7:5А2(conv__block_6/batch_normalization_6/beta
;:9  (2+conv__block/batch_normalization/moving_mean
?:=  (2/conv__block/batch_normalization/moving_variance
?:=@ (2/conv__block_1/batch_normalization_1/moving_mean
C:A@ (23conv__block_1/batch_normalization_1/moving_variance
?:=@ (2/conv__block_2/batch_normalization_2/moving_mean
C:A@ (23conv__block_2/batch_normalization_2/moving_variance
?:=` (2/conv__block_3/batch_normalization_3/moving_mean
C:A` (23conv__block_3/batch_normalization_3/moving_variance
?:=` (2/conv__block_4/batch_normalization_4/moving_mean
C:A` (23conv__block_4/batch_normalization_4/moving_variance
@:>А (2/conv__block_5/batch_normalization_5/moving_mean
D:BА (23conv__block_5/batch_normalization_5/moving_variance
@:>А (2/conv__block_6/batch_normalization_6/moving_mean
D:BА (23conv__block_6/batch_normalization_6/moving_variance
Ц
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15"
trackable_list_wrapper
 "
trackable_list_wrapper
Ф
Ъ0
Ы1
Ь2
Э3
Ю4
Я5
а6
б7
в8
г9
д10
е11
ж12
з13"
trackable_list_wrapper
 "
trackable_dict_wrapper
0
Ї0
ї1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
╕
▓trainable_variables
 Ўlayer_regularization_losses
ўlayers
°non_trainable_variables
│regularization_losses
∙layer_metrics
·metrics
┤	variables
Ї__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
0
А0
Б1"
trackable_list_wrapper
 "
trackable_list_wrapper
@
А0
Б1
Ъ2
Ы3"
trackable_list_wrapper
╕
╖trainable_variables
 √layer_regularization_losses
№layers
¤non_trainable_variables
╕regularization_losses
■layer_metrics
 metrics
╣	variables
Ў__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╗trainable_variables
 Аlayer_regularization_losses
Бlayers
Вnon_trainable_variables
╝regularization_losses
Гlayer_metrics
Дmetrics
╜	variables
°__call__
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
┐trainable_variables
 Еlayer_regularization_losses
Жlayers
Зnon_trainable_variables
└regularization_losses
Иlayer_metrics
Йmetrics
┴	variables
·__call__
+∙&call_and_return_all_conditional_losses
'∙"call_and_return_conditional_losses"
_generic_user_object
<
0
1
2
 3"
trackable_list_wrapper
 "
trackable_list_wrapper
0
Ъ0
Ы1"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
0
В0
Г1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
В0
Г1"
trackable_list_wrapper
╕
═trainable_variables
 Кlayer_regularization_losses
Лlayers
Мnon_trainable_variables
╬regularization_losses
Нlayer_metrics
Оmetrics
╧	variables
№__call__
+√&call_and_return_all_conditional_losses
'√"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
0
Д0
Е1"
trackable_list_wrapper
 "
trackable_list_wrapper
@
Д0
Е1
Ь2
Э3"
trackable_list_wrapper
╕
╥trainable_variables
 Пlayer_regularization_losses
Рlayers
Сnon_trainable_variables
╙regularization_losses
Тlayer_metrics
Уmetrics
╘	variables
■__call__
+¤&call_and_return_all_conditional_losses
'¤"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╓trainable_variables
 Фlayer_regularization_losses
Хlayers
Цnon_trainable_variables
╫regularization_losses
Чlayer_metrics
Шmetrics
╪	variables
А__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
┌trainable_variables
 Щlayer_regularization_losses
Ъlayers
Ыnon_trainable_variables
█regularization_losses
Ьlayer_metrics
Эmetrics
▄	variables
В__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses"
_generic_user_object
<
)0
*1
+2
,3"
trackable_list_wrapper
 "
trackable_list_wrapper
0
Ь0
Э1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
Ж0
З1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
Ж0
З1"
trackable_list_wrapper
╕
уtrainable_variables
 Юlayer_regularization_losses
Яlayers
аnon_trainable_variables
фregularization_losses
бlayer_metrics
вmetrics
х	variables
Д__call__
+Г&call_and_return_all_conditional_losses
'Г"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
0
И0
Й1"
trackable_list_wrapper
 "
trackable_list_wrapper
@
И0
Й1
Ю2
Я3"
trackable_list_wrapper
╕
шtrainable_variables
 гlayer_regularization_losses
дlayers
еnon_trainable_variables
щregularization_losses
жlayer_metrics
зmetrics
ъ	variables
Ж__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
ьtrainable_variables
 иlayer_regularization_losses
йlayers
кnon_trainable_variables
эregularization_losses
лlayer_metrics
мmetrics
ю	variables
И__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Ёtrainable_variables
 нlayer_regularization_losses
оlayers
пnon_trainable_variables
ёregularization_losses
░layer_metrics
▒metrics
Є	variables
К__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
_generic_user_object
<
10
21
32
43"
trackable_list_wrapper
 "
trackable_list_wrapper
0
Ю0
Я1"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
0
К0
Л1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
К0
Л1"
trackable_list_wrapper
╕
■trainable_variables
 ▓layer_regularization_losses
│layers
┤non_trainable_variables
 regularization_losses
╡layer_metrics
╢metrics
А	variables
М__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
0
М0
Н1"
trackable_list_wrapper
 "
trackable_list_wrapper
@
М0
Н1
а2
б3"
trackable_list_wrapper
╕
Гtrainable_variables
 ╖layer_regularization_losses
╕layers
╣non_trainable_variables
Дregularization_losses
║layer_metrics
╗metrics
Е	variables
О__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Зtrainable_variables
 ╝layer_regularization_losses
╜layers
╛non_trainable_variables
Иregularization_losses
┐layer_metrics
└metrics
Й	variables
Р__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Лtrainable_variables
 ┴layer_regularization_losses
┬layers
├non_trainable_variables
Мregularization_losses
─layer_metrics
┼metrics
Н	variables
Т__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses"
_generic_user_object
<
=0
>1
?2
@3"
trackable_list_wrapper
 "
trackable_list_wrapper
0
а0
б1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
О0
П1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
О0
П1"
trackable_list_wrapper
╕
Фtrainable_variables
 ╞layer_regularization_losses
╟layers
╚non_trainable_variables
Хregularization_losses
╔layer_metrics
╩metrics
Ц	variables
Ф__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
0
Р0
С1"
trackable_list_wrapper
 "
trackable_list_wrapper
@
Р0
С1
в2
г3"
trackable_list_wrapper
╕
Щtrainable_variables
 ╦layer_regularization_losses
╠layers
═non_trainable_variables
Ъregularization_losses
╬layer_metrics
╧metrics
Ы	variables
Ц__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Эtrainable_variables
 ╨layer_regularization_losses
╤layers
╥non_trainable_variables
Юregularization_losses
╙layer_metrics
╘metrics
Я	variables
Ш__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
бtrainable_variables
 ╒layer_regularization_losses
╓layers
╫non_trainable_variables
вregularization_losses
╪layer_metrics
┘metrics
г	variables
Ъ__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses"
_generic_user_object
<
E0
F1
G2
H3"
trackable_list_wrapper
 "
trackable_list_wrapper
0
в0
г1"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
0
Т0
У1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
Т0
У1"
trackable_list_wrapper
╕
пtrainable_variables
 ┌layer_regularization_losses
█layers
▄non_trainable_variables
░regularization_losses
▌layer_metrics
▐metrics
▒	variables
Ь__call__
+Ы&call_and_return_all_conditional_losses
'Ы"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
0
Ф0
Х1"
trackable_list_wrapper
 "
trackable_list_wrapper
@
Ф0
Х1
д2
е3"
trackable_list_wrapper
╕
┤trainable_variables
 ▀layer_regularization_losses
рlayers
сnon_trainable_variables
╡regularization_losses
тlayer_metrics
уmetrics
╢	variables
Ю__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╕trainable_variables
 фlayer_regularization_losses
хlayers
цnon_trainable_variables
╣regularization_losses
чlayer_metrics
шmetrics
║	variables
а__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╝trainable_variables
 щlayer_regularization_losses
ъlayers
ыnon_trainable_variables
╜regularization_losses
ьlayer_metrics
эmetrics
╛	variables
в__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses"
_generic_user_object
<
Q0
R1
S2
T3"
trackable_list_wrapper
 "
trackable_list_wrapper
0
д0
е1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
Ц0
Ч1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
Ц0
Ч1"
trackable_list_wrapper
╕
┼trainable_variables
 юlayer_regularization_losses
яlayers
Ёnon_trainable_variables
╞regularization_losses
ёlayer_metrics
Єmetrics
╟	variables
д__call__
+г&call_and_return_all_conditional_losses
'г"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
0
Ш0
Щ1"
trackable_list_wrapper
 "
trackable_list_wrapper
@
Ш0
Щ1
ж2
з3"
trackable_list_wrapper
╕
╩trainable_variables
 єlayer_regularization_losses
Їlayers
їnon_trainable_variables
╦regularization_losses
Ўlayer_metrics
ўmetrics
╠	variables
ж__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╬trainable_variables
 °layer_regularization_losses
∙layers
·non_trainable_variables
╧regularization_losses
√layer_metrics
№metrics
╨	variables
и__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╥trainable_variables
 ¤layer_regularization_losses
■layers
 non_trainable_variables
╙regularization_losses
Аlayer_metrics
Бmetrics
╘	variables
к__call__
+й&call_and_return_all_conditional_losses
'й"call_and_return_conditional_losses"
_generic_user_object
<
Y0
Z1
[2
\3"
trackable_list_wrapper
 "
trackable_list_wrapper
0
ж0
з1"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
┐

Вtotal

Гcount
Д	variables
Е	keras_api"Д
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
Д

Жtotal

Зcount
И
_fn_kwargs
Й	variables
К	keras_api"╕
_tf_keras_metricЭ{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
Ъ0
Ы1"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
Ь0
Э1"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
Ю0
Я1"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
а0
б1"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
в0
г1"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
д0
е1"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
ж0
з1"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
:  (2total
:  (2count
0
В0
Г1"
trackable_list_wrapper
.
Д	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Ж0
З1"
trackable_list_wrapper
.
Й	variables"
_generic_user_object
,:* 2Adam/conv2d/kernel/m
: 2Adam/conv2d/bias/m
$:"	А@2Adam/dense/kernel/m
:@2Adam/dense/bias/m
%:#@2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
::8  2"Adam/conv__block/conv2d_1/kernel/m
,:* 2 Adam/conv__block/conv2d_1/bias/m
8:6 2,Adam/conv__block/batch_normalization/gamma/m
7:5 2+Adam/conv__block/batch_normalization/beta/m
<:: @2$Adam/conv__block_1/conv2d_2/kernel/m
.:,@2"Adam/conv__block_1/conv2d_2/bias/m
<::@20Adam/conv__block_1/batch_normalization_1/gamma/m
;:9@2/Adam/conv__block_1/batch_normalization_1/beta/m
<::@@2$Adam/conv__block_2/conv2d_3/kernel/m
.:,@2"Adam/conv__block_2/conv2d_3/bias/m
<::@20Adam/conv__block_2/batch_normalization_2/gamma/m
;:9@2/Adam/conv__block_2/batch_normalization_2/beta/m
<::@`2$Adam/conv__block_3/conv2d_4/kernel/m
.:,`2"Adam/conv__block_3/conv2d_4/bias/m
<::`20Adam/conv__block_3/batch_normalization_3/gamma/m
;:9`2/Adam/conv__block_3/batch_normalization_3/beta/m
<::``2$Adam/conv__block_4/conv2d_5/kernel/m
.:,`2"Adam/conv__block_4/conv2d_5/bias/m
<::`20Adam/conv__block_4/batch_normalization_4/gamma/m
;:9`2/Adam/conv__block_4/batch_normalization_4/beta/m
=:;`А2$Adam/conv__block_5/conv2d_6/kernel/m
/:-А2"Adam/conv__block_5/conv2d_6/bias/m
=:;А20Adam/conv__block_5/batch_normalization_5/gamma/m
<::А2/Adam/conv__block_5/batch_normalization_5/beta/m
>:<АА2$Adam/conv__block_6/conv2d_7/kernel/m
/:-А2"Adam/conv__block_6/conv2d_7/bias/m
=:;А20Adam/conv__block_6/batch_normalization_6/gamma/m
<::А2/Adam/conv__block_6/batch_normalization_6/beta/m
,:* 2Adam/conv2d/kernel/v
: 2Adam/conv2d/bias/v
$:"	А@2Adam/dense/kernel/v
:@2Adam/dense/bias/v
%:#@2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
::8  2"Adam/conv__block/conv2d_1/kernel/v
,:* 2 Adam/conv__block/conv2d_1/bias/v
8:6 2,Adam/conv__block/batch_normalization/gamma/v
7:5 2+Adam/conv__block/batch_normalization/beta/v
<:: @2$Adam/conv__block_1/conv2d_2/kernel/v
.:,@2"Adam/conv__block_1/conv2d_2/bias/v
<::@20Adam/conv__block_1/batch_normalization_1/gamma/v
;:9@2/Adam/conv__block_1/batch_normalization_1/beta/v
<::@@2$Adam/conv__block_2/conv2d_3/kernel/v
.:,@2"Adam/conv__block_2/conv2d_3/bias/v
<::@20Adam/conv__block_2/batch_normalization_2/gamma/v
;:9@2/Adam/conv__block_2/batch_normalization_2/beta/v
<::@`2$Adam/conv__block_3/conv2d_4/kernel/v
.:,`2"Adam/conv__block_3/conv2d_4/bias/v
<::`20Adam/conv__block_3/batch_normalization_3/gamma/v
;:9`2/Adam/conv__block_3/batch_normalization_3/beta/v
<::``2$Adam/conv__block_4/conv2d_5/kernel/v
.:,`2"Adam/conv__block_4/conv2d_5/bias/v
<::`20Adam/conv__block_4/batch_normalization_4/gamma/v
;:9`2/Adam/conv__block_4/batch_normalization_4/beta/v
=:;`А2$Adam/conv__block_5/conv2d_6/kernel/v
/:-А2"Adam/conv__block_5/conv2d_6/bias/v
=:;А20Adam/conv__block_5/batch_normalization_5/gamma/v
<::А2/Adam/conv__block_5/batch_normalization_5/beta/v
>:<АА2$Adam/conv__block_6/conv2d_7/kernel/v
/:-А2"Adam/conv__block_6/conv2d_7/bias/v
=:;А20Adam/conv__block_6/batch_normalization_6/gamma/v
<::А2/Adam/conv__block_6/batch_normalization_6/beta/v
ц2у
 __inference__wrapped_model_10743╛
Л▓З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *.в+
)К&
input_1         00
▐2█
G__inference_fac__model_1_layer_call_and_return_conditional_losses_13793
G__inference_fac__model_1_layer_call_and_return_conditional_losses_14596
G__inference_fac__model_1_layer_call_and_return_conditional_losses_14783
G__inference_fac__model_1_layer_call_and_return_conditional_losses_13677┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Є2я
,__inference_fac__model_1_layer_call_fn_14228
,__inference_fac__model_1_layer_call_fn_14985
,__inference_fac__model_1_layer_call_fn_14884
,__inference_fac__model_1_layer_call_fn_14011┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ы2ш
A__inference_conv2d_layer_call_and_return_conditional_losses_14996в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╨2═
&__inference_conv2d_layer_call_fn_15005в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╒2╥
F__inference_conv__block_layer_call_and_return_conditional_losses_11014
F__inference_conv__block_layer_call_and_return_conditional_losses_10994
F__inference_conv__block_layer_call_and_return_conditional_losses_15040
F__inference_conv__block_layer_call_and_return_conditional_losses_15066п
ж▓в
FullArgSpec$
argsЪ
jself
jx

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
щ2ц
+__inference_conv__block_layer_call_fn_11089
+__inference_conv__block_layer_call_fn_15100
+__inference_conv__block_layer_call_fn_15083
+__inference_conv__block_layer_call_fn_11052п
ж▓в
FullArgSpec$
argsЪ
jself
jx

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
░2н
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_11095р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
Х2Т
-__inference_max_pooling2d_layer_call_fn_11101р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
▌2┌
H__inference_conv__block_1_layer_call_and_return_conditional_losses_15135
H__inference_conv__block_1_layer_call_and_return_conditional_losses_15161
H__inference_conv__block_1_layer_call_and_return_conditional_losses_11372
H__inference_conv__block_1_layer_call_and_return_conditional_losses_11352п
ж▓в
FullArgSpec$
argsЪ
jself
jx

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ё2ю
-__inference_conv__block_1_layer_call_fn_15178
-__inference_conv__block_1_layer_call_fn_15195
-__inference_conv__block_1_layer_call_fn_11447
-__inference_conv__block_1_layer_call_fn_11410п
ж▓в
FullArgSpec$
argsЪ
jself
jx

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
▌2┌
H__inference_conv__block_2_layer_call_and_return_conditional_losses_11718
H__inference_conv__block_2_layer_call_and_return_conditional_losses_15230
H__inference_conv__block_2_layer_call_and_return_conditional_losses_15256
H__inference_conv__block_2_layer_call_and_return_conditional_losses_11698п
ж▓в
FullArgSpec$
argsЪ
jself
jx

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ё2ю
-__inference_conv__block_2_layer_call_fn_15290
-__inference_conv__block_2_layer_call_fn_11793
-__inference_conv__block_2_layer_call_fn_11756
-__inference_conv__block_2_layer_call_fn_15273п
ж▓в
FullArgSpec$
argsЪ
jself
jx

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
▓2п
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_11799р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
Ч2Ф
/__inference_max_pooling2d_1_layer_call_fn_11805р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
▌2┌
H__inference_conv__block_3_layer_call_and_return_conditional_losses_12056
H__inference_conv__block_3_layer_call_and_return_conditional_losses_12076
H__inference_conv__block_3_layer_call_and_return_conditional_losses_15325
H__inference_conv__block_3_layer_call_and_return_conditional_losses_15351п
ж▓в
FullArgSpec$
argsЪ
jself
jx

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ё2ю
-__inference_conv__block_3_layer_call_fn_15385
-__inference_conv__block_3_layer_call_fn_12151
-__inference_conv__block_3_layer_call_fn_15368
-__inference_conv__block_3_layer_call_fn_12114п
ж▓в
FullArgSpec$
argsЪ
jself
jx

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
▌2┌
H__inference_conv__block_4_layer_call_and_return_conditional_losses_15420
H__inference_conv__block_4_layer_call_and_return_conditional_losses_15446
H__inference_conv__block_4_layer_call_and_return_conditional_losses_12402
H__inference_conv__block_4_layer_call_and_return_conditional_losses_12422п
ж▓в
FullArgSpec$
argsЪ
jself
jx

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ё2ю
-__inference_conv__block_4_layer_call_fn_15480
-__inference_conv__block_4_layer_call_fn_15463
-__inference_conv__block_4_layer_call_fn_12497
-__inference_conv__block_4_layer_call_fn_12460п
ж▓в
FullArgSpec$
argsЪ
jself
jx

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
▓2п
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_12503р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
Ч2Ф
/__inference_max_pooling2d_2_layer_call_fn_12509р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
▌2┌
H__inference_conv__block_5_layer_call_and_return_conditional_losses_12780
H__inference_conv__block_5_layer_call_and_return_conditional_losses_15515
H__inference_conv__block_5_layer_call_and_return_conditional_losses_12760
H__inference_conv__block_5_layer_call_and_return_conditional_losses_15541п
ж▓в
FullArgSpec$
argsЪ
jself
jx

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ё2ю
-__inference_conv__block_5_layer_call_fn_12855
-__inference_conv__block_5_layer_call_fn_15558
-__inference_conv__block_5_layer_call_fn_15575
-__inference_conv__block_5_layer_call_fn_12818п
ж▓в
FullArgSpec$
argsЪ
jself
jx

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
▌2┌
H__inference_conv__block_6_layer_call_and_return_conditional_losses_15636
H__inference_conv__block_6_layer_call_and_return_conditional_losses_15610
H__inference_conv__block_6_layer_call_and_return_conditional_losses_13106
H__inference_conv__block_6_layer_call_and_return_conditional_losses_13126п
ж▓в
FullArgSpec$
argsЪ
jself
jx

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ё2ю
-__inference_conv__block_6_layer_call_fn_15670
-__inference_conv__block_6_layer_call_fn_15653
-__inference_conv__block_6_layer_call_fn_13164
-__inference_conv__block_6_layer_call_fn_13201п
ж▓в
FullArgSpec$
argsЪ
jself
jx

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
▓2п
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_13207р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
Ч2Ф
/__inference_max_pooling2d_3_layer_call_fn_13213р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
ь2щ
B__inference_flatten_layer_call_and_return_conditional_losses_15676в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╤2╬
'__inference_flatten_layer_call_fn_15681в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_dense_layer_call_and_return_conditional_losses_15693в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╧2╠
%__inference_dense_layer_call_fn_15702в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╞2├
D__inference_dropout_7_layer_call_and_return_conditional_losses_15714
D__inference_dropout_7_layer_call_and_return_conditional_losses_15719┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Р2Н
)__inference_dropout_7_layer_call_fn_15724
)__inference_dropout_7_layer_call_fn_15729┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ь2щ
B__inference_dense_1_layer_call_and_return_conditional_losses_15740в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╤2╬
'__inference_dense_1_layer_call_fn_15749в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╩B╟
#__inference_signature_wrapper_14339input_1"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
э2ъ
C__inference_conv2d_1_layer_call_and_return_conditional_losses_15759в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╥2╧
(__inference_conv2d_1_layer_call_fn_15768в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·2ў
N__inference_batch_normalization_layer_call_and_return_conditional_losses_15870
N__inference_batch_normalization_layer_call_and_return_conditional_losses_15788
N__inference_batch_normalization_layer_call_and_return_conditional_losses_15852
N__inference_batch_normalization_layer_call_and_return_conditional_losses_15806┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
О2Л
3__inference_batch_normalization_layer_call_fn_15832
3__inference_batch_normalization_layer_call_fn_15883
3__inference_batch_normalization_layer_call_fn_15896
3__inference_batch_normalization_layer_call_fn_15819┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
я2ь
E__inference_activation_layer_call_and_return_conditional_losses_15901в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╘2╤
*__inference_activation_layer_call_fn_15906в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
┬2┐
B__inference_dropout_layer_call_and_return_conditional_losses_15923
B__inference_dropout_layer_call_and_return_conditional_losses_15918┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
М2Й
'__inference_dropout_layer_call_fn_15928
'__inference_dropout_layer_call_fn_15933┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
э2ъ
C__inference_conv2d_2_layer_call_and_return_conditional_losses_15943в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╥2╧
(__inference_conv2d_2_layer_call_fn_15952в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
В2 
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_15972
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_16054
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_16036
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_15990┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ц2У
5__inference_batch_normalization_1_layer_call_fn_16016
5__inference_batch_normalization_1_layer_call_fn_16080
5__inference_batch_normalization_1_layer_call_fn_16003
5__inference_batch_normalization_1_layer_call_fn_16067┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ё2ю
G__inference_activation_1_layer_call_and_return_conditional_losses_16085в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╓2╙
,__inference_activation_1_layer_call_fn_16090в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╞2├
D__inference_dropout_1_layer_call_and_return_conditional_losses_16102
D__inference_dropout_1_layer_call_and_return_conditional_losses_16107┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Р2Н
)__inference_dropout_1_layer_call_fn_16112
)__inference_dropout_1_layer_call_fn_16117┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
э2ъ
C__inference_conv2d_3_layer_call_and_return_conditional_losses_16127в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╥2╧
(__inference_conv2d_3_layer_call_fn_16136в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
В2 
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_16174
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_16220
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_16238
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_16156┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ц2У
5__inference_batch_normalization_2_layer_call_fn_16200
5__inference_batch_normalization_2_layer_call_fn_16251
5__inference_batch_normalization_2_layer_call_fn_16187
5__inference_batch_normalization_2_layer_call_fn_16264┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ё2ю
G__inference_activation_2_layer_call_and_return_conditional_losses_16269в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╓2╙
,__inference_activation_2_layer_call_fn_16274в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╞2├
D__inference_dropout_2_layer_call_and_return_conditional_losses_16291
D__inference_dropout_2_layer_call_and_return_conditional_losses_16286┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Р2Н
)__inference_dropout_2_layer_call_fn_16296
)__inference_dropout_2_layer_call_fn_16301┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
э2ъ
C__inference_conv2d_4_layer_call_and_return_conditional_losses_16311в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╥2╧
(__inference_conv2d_4_layer_call_fn_16320в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
В2 
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_16422
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_16404
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_16340
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_16358┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ц2У
5__inference_batch_normalization_3_layer_call_fn_16384
5__inference_batch_normalization_3_layer_call_fn_16435
5__inference_batch_normalization_3_layer_call_fn_16448
5__inference_batch_normalization_3_layer_call_fn_16371┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ё2ю
G__inference_activation_3_layer_call_and_return_conditional_losses_16453в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╓2╙
,__inference_activation_3_layer_call_fn_16458в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╞2├
D__inference_dropout_3_layer_call_and_return_conditional_losses_16475
D__inference_dropout_3_layer_call_and_return_conditional_losses_16470┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Р2Н
)__inference_dropout_3_layer_call_fn_16480
)__inference_dropout_3_layer_call_fn_16485┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
э2ъ
C__inference_conv2d_5_layer_call_and_return_conditional_losses_16495в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╥2╧
(__inference_conv2d_5_layer_call_fn_16504в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
В2 
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_16524
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_16606
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_16542
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_16588┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ц2У
5__inference_batch_normalization_4_layer_call_fn_16568
5__inference_batch_normalization_4_layer_call_fn_16555
5__inference_batch_normalization_4_layer_call_fn_16619
5__inference_batch_normalization_4_layer_call_fn_16632┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ё2ю
G__inference_activation_4_layer_call_and_return_conditional_losses_16637в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╓2╙
,__inference_activation_4_layer_call_fn_16642в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╞2├
D__inference_dropout_4_layer_call_and_return_conditional_losses_16659
D__inference_dropout_4_layer_call_and_return_conditional_losses_16654┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Р2Н
)__inference_dropout_4_layer_call_fn_16669
)__inference_dropout_4_layer_call_fn_16664┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
э2ъ
C__inference_conv2d_6_layer_call_and_return_conditional_losses_16679в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╥2╧
(__inference_conv2d_6_layer_call_fn_16688в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
В2 
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_16790
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_16708
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_16772
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_16726┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ц2У
5__inference_batch_normalization_5_layer_call_fn_16739
5__inference_batch_normalization_5_layer_call_fn_16803
5__inference_batch_normalization_5_layer_call_fn_16816
5__inference_batch_normalization_5_layer_call_fn_16752┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ё2ю
G__inference_activation_5_layer_call_and_return_conditional_losses_16821в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╓2╙
,__inference_activation_5_layer_call_fn_16826в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╞2├
D__inference_dropout_5_layer_call_and_return_conditional_losses_16838
D__inference_dropout_5_layer_call_and_return_conditional_losses_16843┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Р2Н
)__inference_dropout_5_layer_call_fn_16848
)__inference_dropout_5_layer_call_fn_16853┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
э2ъ
C__inference_conv2d_7_layer_call_and_return_conditional_losses_16863в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╥2╧
(__inference_conv2d_7_layer_call_fn_16872в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
В2 
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_16974
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_16910
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_16956
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_16892┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ц2У
5__inference_batch_normalization_6_layer_call_fn_16987
5__inference_batch_normalization_6_layer_call_fn_17000
5__inference_batch_normalization_6_layer_call_fn_16923
5__inference_batch_normalization_6_layer_call_fn_16936┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ё2ю
G__inference_activation_6_layer_call_and_return_conditional_losses_17005в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╓2╙
,__inference_activation_6_layer_call_fn_17010в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╞2├
D__inference_dropout_6_layer_call_and_return_conditional_losses_17027
D__inference_dropout_6_layer_call_and_return_conditional_losses_17022┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Р2Н
)__inference_dropout_6_layer_call_fn_17037
)__inference_dropout_6_layer_call_fn_17032┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 ю
 __inference__wrapped_model_10743╔X~АБЪЫВГДЕЬЭЖЗИЙЮЯКЛМНабОПРСвгТУФХдеЦЧШЩжзijst8в5
.в+
)К&
input_1         00
к "3к0
.
output_1"К
output_1         │
G__inference_activation_1_layer_call_and_return_conditional_losses_16085h7в4
-в*
(К%
inputs         @
к "-в*
#К 
0         @
Ъ Л
,__inference_activation_1_layer_call_fn_16090[7в4
-в*
(К%
inputs         @
к " К         @│
G__inference_activation_2_layer_call_and_return_conditional_losses_16269h7в4
-в*
(К%
inputs         @
к "-в*
#К 
0         @
Ъ Л
,__inference_activation_2_layer_call_fn_16274[7в4
-в*
(К%
inputs         @
к " К         @│
G__inference_activation_3_layer_call_and_return_conditional_losses_16453h7в4
-в*
(К%
inputs         `
к "-в*
#К 
0         `
Ъ Л
,__inference_activation_3_layer_call_fn_16458[7в4
-в*
(К%
inputs         `
к " К         `│
G__inference_activation_4_layer_call_and_return_conditional_losses_16637h7в4
-в*
(К%
inputs         

`
к "-в*
#К 
0         

`
Ъ Л
,__inference_activation_4_layer_call_fn_16642[7в4
-в*
(К%
inputs         

`
к " К         

`╡
G__inference_activation_5_layer_call_and_return_conditional_losses_16821j8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Н
,__inference_activation_5_layer_call_fn_16826]8в5
.в+
)К&
inputs         А
к "!К         А╡
G__inference_activation_6_layer_call_and_return_conditional_losses_17005j8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Н
,__inference_activation_6_layer_call_fn_17010]8в5
.в+
)К&
inputs         А
к "!К         А▒
E__inference_activation_layer_call_and_return_conditional_losses_15901h7в4
-в*
(К%
inputs         00 
к "-в*
#К 
0         00 
Ъ Й
*__inference_activation_layer_call_fn_15906[7в4
-в*
(К%
inputs         00 
к " К         00 ╩
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_15972vДЕЬЭ;в8
1в.
(К%
inputs         @
p
к "-в*
#К 
0         @
Ъ ╩
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_15990vДЕЬЭ;в8
1в.
(К%
inputs         @
p 
к "-в*
#К 
0         @
Ъ я
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_16036ЪДЕЬЭMвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ я
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_16054ЪДЕЬЭMвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ в
5__inference_batch_normalization_1_layer_call_fn_16003iДЕЬЭ;в8
1в.
(К%
inputs         @
p
к " К         @в
5__inference_batch_normalization_1_layer_call_fn_16016iДЕЬЭ;в8
1в.
(К%
inputs         @
p 
к " К         @╟
5__inference_batch_normalization_1_layer_call_fn_16067НДЕЬЭMвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @╟
5__inference_batch_normalization_1_layer_call_fn_16080НДЕЬЭMвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @я
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_16156ЪИЙЮЯMвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ я
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_16174ЪИЙЮЯMвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ ╩
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_16220vИЙЮЯ;в8
1в.
(К%
inputs         @
p
к "-в*
#К 
0         @
Ъ ╩
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_16238vИЙЮЯ;в8
1в.
(К%
inputs         @
p 
к "-в*
#К 
0         @
Ъ ╟
5__inference_batch_normalization_2_layer_call_fn_16187НИЙЮЯMвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @╟
5__inference_batch_normalization_2_layer_call_fn_16200НИЙЮЯMвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @в
5__inference_batch_normalization_2_layer_call_fn_16251iИЙЮЯ;в8
1в.
(К%
inputs         @
p
к " К         @в
5__inference_batch_normalization_2_layer_call_fn_16264iИЙЮЯ;в8
1в.
(К%
inputs         @
p 
к " К         @╩
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_16340vМНаб;в8
1в.
(К%
inputs         `
p
к "-в*
#К 
0         `
Ъ ╩
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_16358vМНаб;в8
1в.
(К%
inputs         `
p 
к "-в*
#К 
0         `
Ъ я
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_16404ЪМНабMвJ
Cв@
:К7
inputs+                           `
p
к "?в<
5К2
0+                           `
Ъ я
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_16422ЪМНабMвJ
Cв@
:К7
inputs+                           `
p 
к "?в<
5К2
0+                           `
Ъ в
5__inference_batch_normalization_3_layer_call_fn_16371iМНаб;в8
1в.
(К%
inputs         `
p
к " К         `в
5__inference_batch_normalization_3_layer_call_fn_16384iМНаб;в8
1в.
(К%
inputs         `
p 
к " К         `╟
5__inference_batch_normalization_3_layer_call_fn_16435НМНабMвJ
Cв@
:К7
inputs+                           `
p
к "2К/+                           `╟
5__inference_batch_normalization_3_layer_call_fn_16448НМНабMвJ
Cв@
:К7
inputs+                           `
p 
к "2К/+                           `я
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_16524ЪРСвгMвJ
Cв@
:К7
inputs+                           `
p
к "?в<
5К2
0+                           `
Ъ я
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_16542ЪРСвгMвJ
Cв@
:К7
inputs+                           `
p 
к "?в<
5К2
0+                           `
Ъ ╩
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_16588vРСвг;в8
1в.
(К%
inputs         

`
p
к "-в*
#К 
0         

`
Ъ ╩
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_16606vРСвг;в8
1в.
(К%
inputs         

`
p 
к "-в*
#К 
0         

`
Ъ ╟
5__inference_batch_normalization_4_layer_call_fn_16555НРСвгMвJ
Cв@
:К7
inputs+                           `
p
к "2К/+                           `╟
5__inference_batch_normalization_4_layer_call_fn_16568НРСвгMвJ
Cв@
:К7
inputs+                           `
p 
к "2К/+                           `в
5__inference_batch_normalization_4_layer_call_fn_16619iРСвг;в8
1в.
(К%
inputs         

`
p
к " К         

`в
5__inference_batch_normalization_4_layer_call_fn_16632iРСвг;в8
1в.
(К%
inputs         

`
p 
к " К         

`ё
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_16708ЬФХдеNвK
DвA
;К8
inputs,                           А
p
к "@в=
6К3
0,                           А
Ъ ё
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_16726ЬФХдеNвK
DвA
;К8
inputs,                           А
p 
к "@в=
6К3
0,                           А
Ъ ╠
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_16772xФХде<в9
2в/
)К&
inputs         А
p
к ".в+
$К!
0         А
Ъ ╠
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_16790xФХде<в9
2в/
)К&
inputs         А
p 
к ".в+
$К!
0         А
Ъ ╔
5__inference_batch_normalization_5_layer_call_fn_16739ПФХдеNвK
DвA
;К8
inputs,                           А
p
к "3К0,                           А╔
5__inference_batch_normalization_5_layer_call_fn_16752ПФХдеNвK
DвA
;К8
inputs,                           А
p 
к "3К0,                           Ад
5__inference_batch_normalization_5_layer_call_fn_16803kФХде<в9
2в/
)К&
inputs         А
p
к "!К         Ад
5__inference_batch_normalization_5_layer_call_fn_16816kФХде<в9
2в/
)К&
inputs         А
p 
к "!К         Аё
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_16892ЬШЩжзNвK
DвA
;К8
inputs,                           А
p
к "@в=
6К3
0,                           А
Ъ ё
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_16910ЬШЩжзNвK
DвA
;К8
inputs,                           А
p 
к "@в=
6К3
0,                           А
Ъ ╠
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_16956xШЩжз<в9
2в/
)К&
inputs         А
p
к ".в+
$К!
0         А
Ъ ╠
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_16974xШЩжз<в9
2в/
)К&
inputs         А
p 
к ".в+
$К!
0         А
Ъ ╔
5__inference_batch_normalization_6_layer_call_fn_16923ПШЩжзNвK
DвA
;К8
inputs,                           А
p
к "3К0,                           А╔
5__inference_batch_normalization_6_layer_call_fn_16936ПШЩжзNвK
DвA
;К8
inputs,                           А
p 
к "3К0,                           Ад
5__inference_batch_normalization_6_layer_call_fn_16987kШЩжз<в9
2в/
)К&
inputs         А
p
к "!К         Ад
5__inference_batch_normalization_6_layer_call_fn_17000kШЩжз<в9
2в/
)К&
inputs         А
p 
к "!К         А╚
N__inference_batch_normalization_layer_call_and_return_conditional_losses_15788vАБЪЫ;в8
1в.
(К%
inputs         00 
p
к "-в*
#К 
0         00 
Ъ ╚
N__inference_batch_normalization_layer_call_and_return_conditional_losses_15806vАБЪЫ;в8
1в.
(К%
inputs         00 
p 
к "-в*
#К 
0         00 
Ъ э
N__inference_batch_normalization_layer_call_and_return_conditional_losses_15852ЪАБЪЫMвJ
Cв@
:К7
inputs+                            
p
к "?в<
5К2
0+                            
Ъ э
N__inference_batch_normalization_layer_call_and_return_conditional_losses_15870ЪАБЪЫMвJ
Cв@
:К7
inputs+                            
p 
к "?в<
5К2
0+                            
Ъ а
3__inference_batch_normalization_layer_call_fn_15819iАБЪЫ;в8
1в.
(К%
inputs         00 
p
к " К         00 а
3__inference_batch_normalization_layer_call_fn_15832iАБЪЫ;в8
1в.
(К%
inputs         00 
p 
к " К         00 ┼
3__inference_batch_normalization_layer_call_fn_15883НАБЪЫMвJ
Cв@
:К7
inputs+                            
p
к "2К/+                            ┼
3__inference_batch_normalization_layer_call_fn_15896НАБЪЫMвJ
Cв@
:К7
inputs+                            
p 
к "2К/+                            │
C__inference_conv2d_1_layer_call_and_return_conditional_losses_15759l~7в4
-в*
(К%
inputs         00 
к "-в*
#К 
0         00 
Ъ Л
(__inference_conv2d_1_layer_call_fn_15768_~7в4
-в*
(К%
inputs         00 
к " К         00 ╡
C__inference_conv2d_2_layer_call_and_return_conditional_losses_15943nВГ7в4
-в*
(К%
inputs          
к "-в*
#К 
0         @
Ъ Н
(__inference_conv2d_2_layer_call_fn_15952aВГ7в4
-в*
(К%
inputs          
к " К         @╡
C__inference_conv2d_3_layer_call_and_return_conditional_losses_16127nЖЗ7в4
-в*
(К%
inputs         @
к "-в*
#К 
0         @
Ъ Н
(__inference_conv2d_3_layer_call_fn_16136aЖЗ7в4
-в*
(К%
inputs         @
к " К         @╡
C__inference_conv2d_4_layer_call_and_return_conditional_losses_16311nКЛ7в4
-в*
(К%
inputs         @
к "-в*
#К 
0         `
Ъ Н
(__inference_conv2d_4_layer_call_fn_16320aКЛ7в4
-в*
(К%
inputs         @
к " К         `╡
C__inference_conv2d_5_layer_call_and_return_conditional_losses_16495nОП7в4
-в*
(К%
inputs         `
к "-в*
#К 
0         

`
Ъ Н
(__inference_conv2d_5_layer_call_fn_16504aОП7в4
-в*
(К%
inputs         `
к " К         

`╢
C__inference_conv2d_6_layer_call_and_return_conditional_losses_16679oТУ7в4
-в*
(К%
inputs         `
к ".в+
$К!
0         А
Ъ О
(__inference_conv2d_6_layer_call_fn_16688bТУ7в4
-в*
(К%
inputs         `
к "!К         А╖
C__inference_conv2d_7_layer_call_and_return_conditional_losses_16863pЦЧ8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ П
(__inference_conv2d_7_layer_call_fn_16872cЦЧ8в5
.в+
)К&
inputs         А
к "!К         А▒
A__inference_conv2d_layer_call_and_return_conditional_losses_14996l7в4
-в*
(К%
inputs         00
к "-в*
#К 
0         00 
Ъ Й
&__inference_conv2d_layer_call_fn_15005_7в4
-в*
(К%
inputs         00
к " К         00 ╟
H__inference_conv__block_1_layer_call_and_return_conditional_losses_11352{ВГДЕЬЭ<в9
2в/
)К&
input_1          
p
к "-в*
#К 
0         @
Ъ ╟
H__inference_conv__block_1_layer_call_and_return_conditional_losses_11372{ВГДЕЬЭ<в9
2в/
)К&
input_1          
p 
к "-в*
#К 
0         @
Ъ ┴
H__inference_conv__block_1_layer_call_and_return_conditional_losses_15135uВГДЕЬЭ6в3
,в)
#К 
x          
p
к "-в*
#К 
0         @
Ъ ┴
H__inference_conv__block_1_layer_call_and_return_conditional_losses_15161uВГДЕЬЭ6в3
,в)
#К 
x          
p 
к "-в*
#К 
0         @
Ъ Я
-__inference_conv__block_1_layer_call_fn_11410nВГДЕЬЭ<в9
2в/
)К&
input_1          
p
к " К         @Я
-__inference_conv__block_1_layer_call_fn_11447nВГДЕЬЭ<в9
2в/
)К&
input_1          
p 
к " К         @Щ
-__inference_conv__block_1_layer_call_fn_15178hВГДЕЬЭ6в3
,в)
#К 
x          
p
к " К         @Щ
-__inference_conv__block_1_layer_call_fn_15195hВГДЕЬЭ6в3
,в)
#К 
x          
p 
к " К         @╟
H__inference_conv__block_2_layer_call_and_return_conditional_losses_11698{ЖЗИЙЮЯ<в9
2в/
)К&
input_1         @
p
к "-в*
#К 
0         @
Ъ ╟
H__inference_conv__block_2_layer_call_and_return_conditional_losses_11718{ЖЗИЙЮЯ<в9
2в/
)К&
input_1         @
p 
к "-в*
#К 
0         @
Ъ ┴
H__inference_conv__block_2_layer_call_and_return_conditional_losses_15230uЖЗИЙЮЯ6в3
,в)
#К 
x         @
p
к "-в*
#К 
0         @
Ъ ┴
H__inference_conv__block_2_layer_call_and_return_conditional_losses_15256uЖЗИЙЮЯ6в3
,в)
#К 
x         @
p 
к "-в*
#К 
0         @
Ъ Я
-__inference_conv__block_2_layer_call_fn_11756nЖЗИЙЮЯ<в9
2в/
)К&
input_1         @
p
к " К         @Я
-__inference_conv__block_2_layer_call_fn_11793nЖЗИЙЮЯ<в9
2в/
)К&
input_1         @
p 
к " К         @Щ
-__inference_conv__block_2_layer_call_fn_15273hЖЗИЙЮЯ6в3
,в)
#К 
x         @
p
к " К         @Щ
-__inference_conv__block_2_layer_call_fn_15290hЖЗИЙЮЯ6в3
,в)
#К 
x         @
p 
к " К         @╟
H__inference_conv__block_3_layer_call_and_return_conditional_losses_12056{КЛМНаб<в9
2в/
)К&
input_1         @
p
к "-в*
#К 
0         `
Ъ ╟
H__inference_conv__block_3_layer_call_and_return_conditional_losses_12076{КЛМНаб<в9
2в/
)К&
input_1         @
p 
к "-в*
#К 
0         `
Ъ ┴
H__inference_conv__block_3_layer_call_and_return_conditional_losses_15325uКЛМНаб6в3
,в)
#К 
x         @
p
к "-в*
#К 
0         `
Ъ ┴
H__inference_conv__block_3_layer_call_and_return_conditional_losses_15351uКЛМНаб6в3
,в)
#К 
x         @
p 
к "-в*
#К 
0         `
Ъ Я
-__inference_conv__block_3_layer_call_fn_12114nКЛМНаб<в9
2в/
)К&
input_1         @
p
к " К         `Я
-__inference_conv__block_3_layer_call_fn_12151nКЛМНаб<в9
2в/
)К&
input_1         @
p 
к " К         `Щ
-__inference_conv__block_3_layer_call_fn_15368hКЛМНаб6в3
,в)
#К 
x         @
p
к " К         `Щ
-__inference_conv__block_3_layer_call_fn_15385hКЛМНаб6в3
,в)
#К 
x         @
p 
к " К         `╟
H__inference_conv__block_4_layer_call_and_return_conditional_losses_12402{ОПРСвг<в9
2в/
)К&
input_1         `
p
к "-в*
#К 
0         

`
Ъ ╟
H__inference_conv__block_4_layer_call_and_return_conditional_losses_12422{ОПРСвг<в9
2в/
)К&
input_1         `
p 
к "-в*
#К 
0         

`
Ъ ┴
H__inference_conv__block_4_layer_call_and_return_conditional_losses_15420uОПРСвг6в3
,в)
#К 
x         `
p
к "-в*
#К 
0         

`
Ъ ┴
H__inference_conv__block_4_layer_call_and_return_conditional_losses_15446uОПРСвг6в3
,в)
#К 
x         `
p 
к "-в*
#К 
0         

`
Ъ Я
-__inference_conv__block_4_layer_call_fn_12460nОПРСвг<в9
2в/
)К&
input_1         `
p
к " К         

`Я
-__inference_conv__block_4_layer_call_fn_12497nОПРСвг<в9
2в/
)К&
input_1         `
p 
к " К         

`Щ
-__inference_conv__block_4_layer_call_fn_15463hОПРСвг6в3
,в)
#К 
x         `
p
к " К         

`Щ
-__inference_conv__block_4_layer_call_fn_15480hОПРСвг6в3
,в)
#К 
x         `
p 
к " К         

`╚
H__inference_conv__block_5_layer_call_and_return_conditional_losses_12760|ТУФХде<в9
2в/
)К&
input_1         `
p
к ".в+
$К!
0         А
Ъ ╚
H__inference_conv__block_5_layer_call_and_return_conditional_losses_12780|ТУФХде<в9
2в/
)К&
input_1         `
p 
к ".в+
$К!
0         А
Ъ ┬
H__inference_conv__block_5_layer_call_and_return_conditional_losses_15515vТУФХде6в3
,в)
#К 
x         `
p
к ".в+
$К!
0         А
Ъ ┬
H__inference_conv__block_5_layer_call_and_return_conditional_losses_15541vТУФХде6в3
,в)
#К 
x         `
p 
к ".в+
$К!
0         А
Ъ а
-__inference_conv__block_5_layer_call_fn_12818oТУФХде<в9
2в/
)К&
input_1         `
p
к "!К         Аа
-__inference_conv__block_5_layer_call_fn_12855oТУФХде<в9
2в/
)К&
input_1         `
p 
к "!К         АЪ
-__inference_conv__block_5_layer_call_fn_15558iТУФХде6в3
,в)
#К 
x         `
p
к "!К         АЪ
-__inference_conv__block_5_layer_call_fn_15575iТУФХде6в3
,в)
#К 
x         `
p 
к "!К         А╔
H__inference_conv__block_6_layer_call_and_return_conditional_losses_13106}ЦЧШЩжз=в:
3в0
*К'
input_1         А
p
к ".в+
$К!
0         А
Ъ ╔
H__inference_conv__block_6_layer_call_and_return_conditional_losses_13126}ЦЧШЩжз=в:
3в0
*К'
input_1         А
p 
к ".в+
$К!
0         А
Ъ ├
H__inference_conv__block_6_layer_call_and_return_conditional_losses_15610wЦЧШЩжз7в4
-в*
$К!
x         А
p
к ".в+
$К!
0         А
Ъ ├
H__inference_conv__block_6_layer_call_and_return_conditional_losses_15636wЦЧШЩжз7в4
-в*
$К!
x         А
p 
к ".в+
$К!
0         А
Ъ б
-__inference_conv__block_6_layer_call_fn_13164pЦЧШЩжз=в:
3в0
*К'
input_1         А
p
к "!К         Аб
-__inference_conv__block_6_layer_call_fn_13201pЦЧШЩжз=в:
3в0
*К'
input_1         А
p 
к "!К         АЫ
-__inference_conv__block_6_layer_call_fn_15653jЦЧШЩжз7в4
-в*
$К!
x         А
p
к "!К         АЫ
-__inference_conv__block_6_layer_call_fn_15670jЦЧШЩжз7в4
-в*
$К!
x         А
p 
к "!К         А├
F__inference_conv__block_layer_call_and_return_conditional_losses_10994y
~АБЪЫ<в9
2в/
)К&
input_1         00 
p
к "-в*
#К 
0         00 
Ъ ├
F__inference_conv__block_layer_call_and_return_conditional_losses_11014y
~АБЪЫ<в9
2в/
)К&
input_1         00 
p 
к "-в*
#К 
0         00 
Ъ ╜
F__inference_conv__block_layer_call_and_return_conditional_losses_15040s
~АБЪЫ6в3
,в)
#К 
x         00 
p
к "-в*
#К 
0         00 
Ъ ╜
F__inference_conv__block_layer_call_and_return_conditional_losses_15066s
~АБЪЫ6в3
,в)
#К 
x         00 
p 
к "-в*
#К 
0         00 
Ъ Ы
+__inference_conv__block_layer_call_fn_11052l
~АБЪЫ<в9
2в/
)К&
input_1         00 
p
к " К         00 Ы
+__inference_conv__block_layer_call_fn_11089l
~АБЪЫ<в9
2в/
)К&
input_1         00 
p 
к " К         00 Х
+__inference_conv__block_layer_call_fn_15083f
~АБЪЫ6в3
,в)
#К 
x         00 
p
к " К         00 Х
+__inference_conv__block_layer_call_fn_15100f
~АБЪЫ6в3
,в)
#К 
x         00 
p 
к " К         00 в
B__inference_dense_1_layer_call_and_return_conditional_losses_15740\st/в,
%в"
 К
inputs         @
к "%в"
К
0         
Ъ z
'__inference_dense_1_layer_call_fn_15749Ost/в,
%в"
 К
inputs         @
к "К         б
@__inference_dense_layer_call_and_return_conditional_losses_15693]ij0в-
&в#
!К
inputs         А
к "%в"
К
0         @
Ъ y
%__inference_dense_layer_call_fn_15702Pij0в-
&в#
!К
inputs         А
к "К         @┤
D__inference_dropout_1_layer_call_and_return_conditional_losses_16102l;в8
1в.
(К%
inputs         @
p
к "-в*
#К 
0         @
Ъ ┤
D__inference_dropout_1_layer_call_and_return_conditional_losses_16107l;в8
1в.
(К%
inputs         @
p 
к "-в*
#К 
0         @
Ъ М
)__inference_dropout_1_layer_call_fn_16112_;в8
1в.
(К%
inputs         @
p
к " К         @М
)__inference_dropout_1_layer_call_fn_16117_;в8
1в.
(К%
inputs         @
p 
к " К         @┤
D__inference_dropout_2_layer_call_and_return_conditional_losses_16286l;в8
1в.
(К%
inputs         @
p
к "-в*
#К 
0         @
Ъ ┤
D__inference_dropout_2_layer_call_and_return_conditional_losses_16291l;в8
1в.
(К%
inputs         @
p 
к "-в*
#К 
0         @
Ъ М
)__inference_dropout_2_layer_call_fn_16296_;в8
1в.
(К%
inputs         @
p
к " К         @М
)__inference_dropout_2_layer_call_fn_16301_;в8
1в.
(К%
inputs         @
p 
к " К         @┤
D__inference_dropout_3_layer_call_and_return_conditional_losses_16470l;в8
1в.
(К%
inputs         `
p
к "-в*
#К 
0         `
Ъ ┤
D__inference_dropout_3_layer_call_and_return_conditional_losses_16475l;в8
1в.
(К%
inputs         `
p 
к "-в*
#К 
0         `
Ъ М
)__inference_dropout_3_layer_call_fn_16480_;в8
1в.
(К%
inputs         `
p
к " К         `М
)__inference_dropout_3_layer_call_fn_16485_;в8
1в.
(К%
inputs         `
p 
к " К         `┤
D__inference_dropout_4_layer_call_and_return_conditional_losses_16654l;в8
1в.
(К%
inputs         

`
p
к "-в*
#К 
0         

`
Ъ ┤
D__inference_dropout_4_layer_call_and_return_conditional_losses_16659l;в8
1в.
(К%
inputs         

`
p 
к "-в*
#К 
0         

`
Ъ М
)__inference_dropout_4_layer_call_fn_16664_;в8
1в.
(К%
inputs         

`
p
к " К         

`М
)__inference_dropout_4_layer_call_fn_16669_;в8
1в.
(К%
inputs         

`
p 
к " К         

`╢
D__inference_dropout_5_layer_call_and_return_conditional_losses_16838n<в9
2в/
)К&
inputs         А
p
к ".в+
$К!
0         А
Ъ ╢
D__inference_dropout_5_layer_call_and_return_conditional_losses_16843n<в9
2в/
)К&
inputs         А
p 
к ".в+
$К!
0         А
Ъ О
)__inference_dropout_5_layer_call_fn_16848a<в9
2в/
)К&
inputs         А
p
к "!К         АО
)__inference_dropout_5_layer_call_fn_16853a<в9
2в/
)К&
inputs         А
p 
к "!К         А╢
D__inference_dropout_6_layer_call_and_return_conditional_losses_17022n<в9
2в/
)К&
inputs         А
p
к ".в+
$К!
0         А
Ъ ╢
D__inference_dropout_6_layer_call_and_return_conditional_losses_17027n<в9
2в/
)К&
inputs         А
p 
к ".в+
$К!
0         А
Ъ О
)__inference_dropout_6_layer_call_fn_17032a<в9
2в/
)К&
inputs         А
p
к "!К         АО
)__inference_dropout_6_layer_call_fn_17037a<в9
2в/
)К&
inputs         А
p 
к "!К         Ад
D__inference_dropout_7_layer_call_and_return_conditional_losses_15714\3в0
)в&
 К
inputs         @
p
к "%в"
К
0         @
Ъ д
D__inference_dropout_7_layer_call_and_return_conditional_losses_15719\3в0
)в&
 К
inputs         @
p 
к "%в"
К
0         @
Ъ |
)__inference_dropout_7_layer_call_fn_15724O3в0
)в&
 К
inputs         @
p
к "К         @|
)__inference_dropout_7_layer_call_fn_15729O3в0
)в&
 К
inputs         @
p 
к "К         @▓
B__inference_dropout_layer_call_and_return_conditional_losses_15918l;в8
1в.
(К%
inputs         00 
p
к "-в*
#К 
0         00 
Ъ ▓
B__inference_dropout_layer_call_and_return_conditional_losses_15923l;в8
1в.
(К%
inputs         00 
p 
к "-в*
#К 
0         00 
Ъ К
'__inference_dropout_layer_call_fn_15928_;в8
1в.
(К%
inputs         00 
p
к " К         00 К
'__inference_dropout_layer_call_fn_15933_;в8
1в.
(К%
inputs         00 
p 
к " К         00 Л
G__inference_fac__model_1_layer_call_and_return_conditional_losses_13677┐X~АБЪЫВГДЕЬЭЖЗИЙЮЯКЛМНабОПРСвгТУФХдеЦЧШЩжзijst<в9
2в/
)К&
input_1         00
p
к "%в"
К
0         
Ъ Л
G__inference_fac__model_1_layer_call_and_return_conditional_losses_13793┐X~АБЪЫВГДЕЬЭЖЗИЙЮЯКЛМНабОПРСвгТУФХдеЦЧШЩжзijst<в9
2в/
)К&
input_1         00
p 
к "%в"
К
0         
Ъ К
G__inference_fac__model_1_layer_call_and_return_conditional_losses_14596╛X~АБЪЫВГДЕЬЭЖЗИЙЮЯКЛМНабОПРСвгТУФХдеЦЧШЩжзijst;в8
1в.
(К%
inputs         00
p
к "%в"
К
0         
Ъ К
G__inference_fac__model_1_layer_call_and_return_conditional_losses_14783╛X~АБЪЫВГДЕЬЭЖЗИЙЮЯКЛМНабОПРСвгТУФХдеЦЧШЩжзijst;в8
1в.
(К%
inputs         00
p 
к "%в"
К
0         
Ъ у
,__inference_fac__model_1_layer_call_fn_14011▓X~АБЪЫВГДЕЬЭЖЗИЙЮЯКЛМНабОПРСвгТУФХдеЦЧШЩжзijst<в9
2в/
)К&
input_1         00
p
к "К         у
,__inference_fac__model_1_layer_call_fn_14228▓X~АБЪЫВГДЕЬЭЖЗИЙЮЯКЛМНабОПРСвгТУФХдеЦЧШЩжзijst<в9
2в/
)К&
input_1         00
p 
к "К         т
,__inference_fac__model_1_layer_call_fn_14884▒X~АБЪЫВГДЕЬЭЖЗИЙЮЯКЛМНабОПРСвгТУФХдеЦЧШЩжзijst;в8
1в.
(К%
inputs         00
p
к "К         т
,__inference_fac__model_1_layer_call_fn_14985▒X~АБЪЫВГДЕЬЭЖЗИЙЮЯКЛМНабОПРСвгТУФХдеЦЧШЩжзijst;в8
1в.
(К%
inputs         00
p 
к "К         и
B__inference_flatten_layer_call_and_return_conditional_losses_15676b8в5
.в+
)К&
inputs         А
к "&в#
К
0         А
Ъ А
'__inference_flatten_layer_call_fn_15681U8в5
.в+
)К&
inputs         А
к "К         Аэ
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_11799ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ┼
/__inference_max_pooling2d_1_layer_call_fn_11805СRвO
HвE
CК@
inputs4                                    
к ";К84                                    э
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_12503ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ┼
/__inference_max_pooling2d_2_layer_call_fn_12509СRвO
HвE
CК@
inputs4                                    
к ";К84                                    э
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_13207ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ┼
/__inference_max_pooling2d_3_layer_call_fn_13213СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ы
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_11095ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ├
-__inference_max_pooling2d_layer_call_fn_11101СRвO
HвE
CК@
inputs4                                    
к ";К84                                    №
#__inference_signature_wrapper_14339╘X~АБЪЫВГДЕЬЭЖЗИЙЮЯКЛМНабОПРСвгТУФХдеЦЧШЩжзijstCв@
в 
9к6
4
input_1)К&
input_1         00"3к0
.
output_1"К
output_1         