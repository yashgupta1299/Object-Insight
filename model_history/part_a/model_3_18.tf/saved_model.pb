зЫ
Ь€
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
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
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
Ѕ
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
executor_typestring И®
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
 И"serve*2.10.02unknown8йП	
Ж
Adam/l10_Dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/l10_Dense_2/bias/v

+Adam/l10_Dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/l10_Dense_2/bias/v*
_output_shapes
:*
dtype0
П
Adam/l10_Dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А**
shared_nameAdam/l10_Dense_2/kernel/v
И
-Adam/l10_Dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/l10_Dense_2/kernel/v*
_output_shapes
:	А*
dtype0
Е
Adam/l9_Dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*'
shared_nameAdam/l9_Dense_1/bias/v
~
*Adam/l9_Dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/l9_Dense_1/bias/v*
_output_shapes	
:А*
dtype0
О
Adam/l9_Dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*)
shared_nameAdam/l9_Dense_1/kernel/v
З
,Adam/l9_Dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/l9_Dense_1/kernel/v* 
_output_shapes
:
АА*
dtype0
Ж
Adam/l6_Conv2d_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/l6_Conv2d_4/bias/v

+Adam/l6_Conv2d_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/l6_Conv2d_4/bias/v*
_output_shapes
:@*
dtype0
Ц
Adam/l6_Conv2d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @**
shared_nameAdam/l6_Conv2d_4/kernel/v
П
-Adam/l6_Conv2d_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/l6_Conv2d_4/kernel/v*&
_output_shapes
: @*
dtype0
Ж
Adam/l5_Conv2d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/l5_Conv2d_3/bias/v

+Adam/l5_Conv2d_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/l5_Conv2d_3/bias/v*
_output_shapes
: *
dtype0
Ц
Adam/l5_Conv2d_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameAdam/l5_Conv2d_3/kernel/v
П
-Adam/l5_Conv2d_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/l5_Conv2d_3/kernel/v*&
_output_shapes
: *
dtype0
Ж
Adam/l3_Conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/l3_Conv2d_2/bias/v

+Adam/l3_Conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/l3_Conv2d_2/bias/v*
_output_shapes
:*
dtype0
Ц
Adam/l3_Conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/l3_Conv2d_2/kernel/v
П
-Adam/l3_Conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/l3_Conv2d_2/kernel/v*&
_output_shapes
:*
dtype0
Ж
Adam/l1_Conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/l1_Conv2d_1/bias/v

+Adam/l1_Conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/l1_Conv2d_1/bias/v*
_output_shapes
:*
dtype0
Ц
Adam/l1_Conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/l1_Conv2d_1/kernel/v
П
-Adam/l1_Conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/l1_Conv2d_1/kernel/v*&
_output_shapes
:*
dtype0
Ж
Adam/l10_Dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/l10_Dense_2/bias/m

+Adam/l10_Dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/l10_Dense_2/bias/m*
_output_shapes
:*
dtype0
П
Adam/l10_Dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А**
shared_nameAdam/l10_Dense_2/kernel/m
И
-Adam/l10_Dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/l10_Dense_2/kernel/m*
_output_shapes
:	А*
dtype0
Е
Adam/l9_Dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*'
shared_nameAdam/l9_Dense_1/bias/m
~
*Adam/l9_Dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/l9_Dense_1/bias/m*
_output_shapes	
:А*
dtype0
О
Adam/l9_Dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*)
shared_nameAdam/l9_Dense_1/kernel/m
З
,Adam/l9_Dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/l9_Dense_1/kernel/m* 
_output_shapes
:
АА*
dtype0
Ж
Adam/l6_Conv2d_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/l6_Conv2d_4/bias/m

+Adam/l6_Conv2d_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/l6_Conv2d_4/bias/m*
_output_shapes
:@*
dtype0
Ц
Adam/l6_Conv2d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @**
shared_nameAdam/l6_Conv2d_4/kernel/m
П
-Adam/l6_Conv2d_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/l6_Conv2d_4/kernel/m*&
_output_shapes
: @*
dtype0
Ж
Adam/l5_Conv2d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/l5_Conv2d_3/bias/m

+Adam/l5_Conv2d_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/l5_Conv2d_3/bias/m*
_output_shapes
: *
dtype0
Ц
Adam/l5_Conv2d_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameAdam/l5_Conv2d_3/kernel/m
П
-Adam/l5_Conv2d_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/l5_Conv2d_3/kernel/m*&
_output_shapes
: *
dtype0
Ж
Adam/l3_Conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/l3_Conv2d_2/bias/m

+Adam/l3_Conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/l3_Conv2d_2/bias/m*
_output_shapes
:*
dtype0
Ц
Adam/l3_Conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/l3_Conv2d_2/kernel/m
П
-Adam/l3_Conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/l3_Conv2d_2/kernel/m*&
_output_shapes
:*
dtype0
Ж
Adam/l1_Conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/l1_Conv2d_1/bias/m

+Adam/l1_Conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/l1_Conv2d_1/bias/m*
_output_shapes
:*
dtype0
Ц
Adam/l1_Conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/l1_Conv2d_1/kernel/m
П
-Adam/l1_Conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/l1_Conv2d_1/kernel/m*&
_output_shapes
:*
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
x
l10_Dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namel10_Dense_2/bias
q
$l10_Dense_2/bias/Read/ReadVariableOpReadVariableOpl10_Dense_2/bias*
_output_shapes
:*
dtype0
Б
l10_Dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*#
shared_namel10_Dense_2/kernel
z
&l10_Dense_2/kernel/Read/ReadVariableOpReadVariableOpl10_Dense_2/kernel*
_output_shapes
:	А*
dtype0
w
l9_Dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А* 
shared_namel9_Dense_1/bias
p
#l9_Dense_1/bias/Read/ReadVariableOpReadVariableOpl9_Dense_1/bias*
_output_shapes	
:А*
dtype0
А
l9_Dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*"
shared_namel9_Dense_1/kernel
y
%l9_Dense_1/kernel/Read/ReadVariableOpReadVariableOpl9_Dense_1/kernel* 
_output_shapes
:
АА*
dtype0
x
l6_Conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_namel6_Conv2d_4/bias
q
$l6_Conv2d_4/bias/Read/ReadVariableOpReadVariableOpl6_Conv2d_4/bias*
_output_shapes
:@*
dtype0
И
l6_Conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*#
shared_namel6_Conv2d_4/kernel
Б
&l6_Conv2d_4/kernel/Read/ReadVariableOpReadVariableOpl6_Conv2d_4/kernel*&
_output_shapes
: @*
dtype0
x
l5_Conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_namel5_Conv2d_3/bias
q
$l5_Conv2d_3/bias/Read/ReadVariableOpReadVariableOpl5_Conv2d_3/bias*
_output_shapes
: *
dtype0
И
l5_Conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_namel5_Conv2d_3/kernel
Б
&l5_Conv2d_3/kernel/Read/ReadVariableOpReadVariableOpl5_Conv2d_3/kernel*&
_output_shapes
: *
dtype0
x
l3_Conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namel3_Conv2d_2/bias
q
$l3_Conv2d_2/bias/Read/ReadVariableOpReadVariableOpl3_Conv2d_2/bias*
_output_shapes
:*
dtype0
И
l3_Conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_namel3_Conv2d_2/kernel
Б
&l3_Conv2d_2/kernel/Read/ReadVariableOpReadVariableOpl3_Conv2d_2/kernel*&
_output_shapes
:*
dtype0
x
l1_Conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namel1_Conv2d_1/bias
q
$l1_Conv2d_1/bias/Read/ReadVariableOpReadVariableOpl1_Conv2d_1/bias*
_output_shapes
:*
dtype0
И
l1_Conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_namel1_Conv2d_1/kernel
Б
&l1_Conv2d_1/kernel/Read/ReadVariableOpReadVariableOpl1_Conv2d_1/kernel*&
_output_shapes
:*
dtype0
О
serving_default_input_1Placeholder*1
_output_shapes
:€€€€€€€€€аа*
dtype0*&
shape:€€€€€€€€€аа
Ѓ
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1l1_Conv2d_1/kernell1_Conv2d_1/biasl3_Conv2d_2/kernell3_Conv2d_2/biasl5_Conv2d_3/kernell5_Conv2d_3/biasl6_Conv2d_4/kernell6_Conv2d_4/biasl9_Dense_1/kernell9_Dense_1/biasl10_Dense_2/kernell10_Dense_2/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *,
f'R%
#__inference_signature_wrapper_11591

NoOpNoOp
Ѓ\
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*й[
valueя[B№[ B’[
¶
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
inp
	l1

l2
l3
l4
l5
l6
l7
l8
l9
out
	optimizer

signatures*
Z
0
1
2
3
4
5
6
7
8
9
10
 11*
Z
0
1
2
3
4
5
6
7
8
9
10
 11*
* 
∞
!non_trainable_variables

"layers
#metrics
$layer_regularization_losses
%layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
&trace_0
'trace_1
(trace_2
)trace_3* 
6
*trace_0
+trace_1
,trace_2
-trace_3* 
* 
* 
»
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses

kernel
bias
 4_jit_compiled_convolution_op*
О
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses* 
»
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses

kernel
bias
 A_jit_compiled_convolution_op*
О
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses* 
»
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses

kernel
bias
 N_jit_compiled_convolution_op*
»
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

kernel
bias
 U_jit_compiled_convolution_op*
О
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses* 
О
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses* 
¶
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses

kernel
bias*
¶
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses

kernel
 bias*
і
niter

obeta_1

pbeta_2
	qdecay
rlearning_ratem≈m∆m«m»m…m mЋmћmЌmќmѕ m–v—v“v”v‘v’v÷v„vЎvўvЏvџ v№*

sserving_default* 
RL
VARIABLE_VALUEl1_Conv2d_1/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEl1_Conv2d_1/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEl3_Conv2d_2/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEl3_Conv2d_2/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEl5_Conv2d_3/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEl5_Conv2d_3/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEl6_Conv2d_4/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEl6_Conv2d_4/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEl9_Dense_1/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEl9_Dense_1/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEl10_Dense_2/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEl10_Dense_2/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
* 
R
0
	1

2
3
4
5
6
7
8
9
10*

t0
u1*
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

0
1*

0
1*
* 
У
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses*

{trace_0* 

|trace_0* 
* 
* 
* 
* 
У
}non_trainable_variables

~layers
metrics
 Аlayer_regularization_losses
Бlayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses* 

Вtrace_0* 

Гtrace_0* 

0
1*

0
1*
* 
Ш
Дnon_trainable_variables
Еlayers
Жmetrics
 Зlayer_regularization_losses
Иlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses*

Йtrace_0* 

Кtrace_0* 
* 
* 
* 
* 
Ц
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses* 

Рtrace_0* 

Сtrace_0* 

0
1*

0
1*
* 
Ш
Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses*

Чtrace_0* 

Шtrace_0* 
* 

0
1*

0
1*
* 
Ш
Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*

Юtrace_0* 

Яtrace_0* 
* 
* 
* 
* 
Ц
†non_trainable_variables
°layers
Ґmetrics
 £layer_regularization_losses
§layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses* 

•trace_0* 

¶trace_0* 
* 
* 
* 
Ц
Іnon_trainable_variables
®layers
©metrics
 ™layer_regularization_losses
Ђlayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses* 

ђtrace_0* 

≠trace_0* 

0
1*

0
1*
* 
Ш
Ѓnon_trainable_variables
ѓlayers
∞metrics
 ±layer_regularization_losses
≤layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses*

≥trace_0* 

іtrace_0* 

0
 1*

0
 1*
* 
Ш
µnon_trainable_variables
ґlayers
Јmetrics
 Єlayer_regularization_losses
єlayer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses*

Їtrace_0* 

їtrace_0* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
<
Љ	variables
љ	keras_api

Њtotal

њcount*
M
ј	variables
Ѕ	keras_api

¬total

√count
ƒ
_fn_kwargs*
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
Њ0
њ1*

Љ	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

¬0
√1*

ј	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
uo
VARIABLE_VALUEAdam/l1_Conv2d_1/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/l1_Conv2d_1/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/l3_Conv2d_2/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/l3_Conv2d_2/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/l5_Conv2d_3/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/l5_Conv2d_3/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/l6_Conv2d_4/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/l6_Conv2d_4/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/l9_Dense_1/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/l9_Dense_1/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/l10_Dense_2/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/l10_Dense_2/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/l1_Conv2d_1/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/l1_Conv2d_1/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/l3_Conv2d_2/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/l3_Conv2d_2/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/l5_Conv2d_3/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/l5_Conv2d_3/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/l6_Conv2d_4/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/l6_Conv2d_4/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/l9_Dense_1/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/l9_Dense_1/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/l10_Dense_2/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/l10_Dense_2/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Б
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename&l1_Conv2d_1/kernel/Read/ReadVariableOp$l1_Conv2d_1/bias/Read/ReadVariableOp&l3_Conv2d_2/kernel/Read/ReadVariableOp$l3_Conv2d_2/bias/Read/ReadVariableOp&l5_Conv2d_3/kernel/Read/ReadVariableOp$l5_Conv2d_3/bias/Read/ReadVariableOp&l6_Conv2d_4/kernel/Read/ReadVariableOp$l6_Conv2d_4/bias/Read/ReadVariableOp%l9_Dense_1/kernel/Read/ReadVariableOp#l9_Dense_1/bias/Read/ReadVariableOp&l10_Dense_2/kernel/Read/ReadVariableOp$l10_Dense_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp-Adam/l1_Conv2d_1/kernel/m/Read/ReadVariableOp+Adam/l1_Conv2d_1/bias/m/Read/ReadVariableOp-Adam/l3_Conv2d_2/kernel/m/Read/ReadVariableOp+Adam/l3_Conv2d_2/bias/m/Read/ReadVariableOp-Adam/l5_Conv2d_3/kernel/m/Read/ReadVariableOp+Adam/l5_Conv2d_3/bias/m/Read/ReadVariableOp-Adam/l6_Conv2d_4/kernel/m/Read/ReadVariableOp+Adam/l6_Conv2d_4/bias/m/Read/ReadVariableOp,Adam/l9_Dense_1/kernel/m/Read/ReadVariableOp*Adam/l9_Dense_1/bias/m/Read/ReadVariableOp-Adam/l10_Dense_2/kernel/m/Read/ReadVariableOp+Adam/l10_Dense_2/bias/m/Read/ReadVariableOp-Adam/l1_Conv2d_1/kernel/v/Read/ReadVariableOp+Adam/l1_Conv2d_1/bias/v/Read/ReadVariableOp-Adam/l3_Conv2d_2/kernel/v/Read/ReadVariableOp+Adam/l3_Conv2d_2/bias/v/Read/ReadVariableOp-Adam/l5_Conv2d_3/kernel/v/Read/ReadVariableOp+Adam/l5_Conv2d_3/bias/v/Read/ReadVariableOp-Adam/l6_Conv2d_4/kernel/v/Read/ReadVariableOp+Adam/l6_Conv2d_4/bias/v/Read/ReadVariableOp,Adam/l9_Dense_1/kernel/v/Read/ReadVariableOp*Adam/l9_Dense_1/bias/v/Read/ReadVariableOp-Adam/l10_Dense_2/kernel/v/Read/ReadVariableOp+Adam/l10_Dense_2/bias/v/Read/ReadVariableOpConst*:
Tin3
12/	*
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
__inference__traced_save_12070
ш	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamel1_Conv2d_1/kernell1_Conv2d_1/biasl3_Conv2d_2/kernell3_Conv2d_2/biasl5_Conv2d_3/kernell5_Conv2d_3/biasl6_Conv2d_4/kernell6_Conv2d_4/biasl9_Dense_1/kernell9_Dense_1/biasl10_Dense_2/kernell10_Dense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/l1_Conv2d_1/kernel/mAdam/l1_Conv2d_1/bias/mAdam/l3_Conv2d_2/kernel/mAdam/l3_Conv2d_2/bias/mAdam/l5_Conv2d_3/kernel/mAdam/l5_Conv2d_3/bias/mAdam/l6_Conv2d_4/kernel/mAdam/l6_Conv2d_4/bias/mAdam/l9_Dense_1/kernel/mAdam/l9_Dense_1/bias/mAdam/l10_Dense_2/kernel/mAdam/l10_Dense_2/bias/mAdam/l1_Conv2d_1/kernel/vAdam/l1_Conv2d_1/bias/vAdam/l3_Conv2d_2/kernel/vAdam/l3_Conv2d_2/bias/vAdam/l5_Conv2d_3/kernel/vAdam/l5_Conv2d_3/bias/vAdam/l6_Conv2d_4/kernel/vAdam/l6_Conv2d_4/bias/vAdam/l9_Dense_1/kernel/vAdam/l9_Dense_1/bias/vAdam/l10_Dense_2/kernel/vAdam/l10_Dense_2/bias/v*9
Tin2
02.*
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
!__inference__traced_restore_12215тЈ
Ј
J
.__inference_l2_MaxPool2D_1_layer_call_fn_11776

inputs
identityЏ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_l2_MaxPool2D_1_layer_call_and_return_conditional_losses_11112Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Є
H
,__inference_l8_Flatten_2_layer_call_fn_11866

inputs
identityґ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_l8_Flatten_2_layer_call_and_return_conditional_losses_11223a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
¶

ш
F__inference_l10_Dense_2_layer_call_and_return_conditional_losses_11253

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ь

ƒ
#__inference_signature_wrapper_11591
input_1!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А

unknown_10:
identityИҐStatefulPartitionedCallЉ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference__wrapped_model_11103o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аа: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€аа
!
_user_specified_name	input_1
а@
Н

B__inference_model_3_layer_call_and_return_conditional_losses_11700

inputsD
*l1_conv2d_1_conv2d_readvariableop_resource:9
+l1_conv2d_1_biasadd_readvariableop_resource:D
*l3_conv2d_2_conv2d_readvariableop_resource:9
+l3_conv2d_2_biasadd_readvariableop_resource:D
*l5_conv2d_3_conv2d_readvariableop_resource: 9
+l5_conv2d_3_biasadd_readvariableop_resource: D
*l6_conv2d_4_conv2d_readvariableop_resource: @9
+l6_conv2d_4_biasadd_readvariableop_resource:@=
)l9_dense_1_matmul_readvariableop_resource:
АА9
*l9_dense_1_biasadd_readvariableop_resource:	А=
*l10_dense_2_matmul_readvariableop_resource:	А9
+l10_dense_2_biasadd_readvariableop_resource:
identityИҐ"l10_Dense_2/BiasAdd/ReadVariableOpҐ!l10_Dense_2/MatMul/ReadVariableOpҐ"l1_Conv2d_1/BiasAdd/ReadVariableOpҐ!l1_Conv2d_1/Conv2D/ReadVariableOpҐ"l3_Conv2d_2/BiasAdd/ReadVariableOpҐ!l3_Conv2d_2/Conv2D/ReadVariableOpҐ"l5_Conv2d_3/BiasAdd/ReadVariableOpҐ!l5_Conv2d_3/Conv2D/ReadVariableOpҐ"l6_Conv2d_4/BiasAdd/ReadVariableOpҐ!l6_Conv2d_4/Conv2D/ReadVariableOpҐ!l9_Dense_1/BiasAdd/ReadVariableOpҐ l9_Dense_1/MatMul/ReadVariableOpФ
!l1_Conv2d_1/Conv2D/ReadVariableOpReadVariableOp*l1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0≤
l1_Conv2d_1/Conv2DConv2Dinputs)l1_Conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€66*
paddingVALID*
strides
К
"l1_Conv2d_1/BiasAdd/ReadVariableOpReadVariableOp+l1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0°
l1_Conv2d_1/BiasAddBiasAddl1_Conv2d_1/Conv2D:output:0*l1_Conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€66p
l1_Conv2d_1/ReluRelul1_Conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€66Ѓ
l2_MaxPool2D_1/MaxPoolMaxPooll1_Conv2d_1/Relu:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingVALID*
strides
Ф
!l3_Conv2d_2/Conv2D/ReadVariableOpReadVariableOp*l3_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ћ
l3_Conv2d_2/Conv2DConv2Dl2_MaxPool2D_1/MaxPool:output:0)l3_Conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingVALID*
strides
К
"l3_Conv2d_2/BiasAdd/ReadVariableOpReadVariableOp+l3_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0°
l3_Conv2d_2/BiasAddBiasAddl3_Conv2d_2/Conv2D:output:0*l3_Conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€p
l3_Conv2d_2/ReluRelul3_Conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€Ѓ
l4_MaxPool2D_2/MaxPoolMaxPooll3_Conv2d_2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€

*
ksize
*
paddingVALID*
strides
Ф
!l5_Conv2d_3/Conv2D/ReadVariableOpReadVariableOp*l5_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ћ
l5_Conv2d_3/Conv2DConv2Dl4_MaxPool2D_2/MaxPool:output:0)l5_Conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingVALID*
strides
К
"l5_Conv2d_3/BiasAdd/ReadVariableOpReadVariableOp+l5_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0°
l5_Conv2d_3/BiasAddBiasAddl5_Conv2d_3/Conv2D:output:0*l5_Conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ p
l5_Conv2d_3/ReluRelul5_Conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ Ф
!l6_Conv2d_4/Conv2D/ReadVariableOpReadVariableOp*l6_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0 
l6_Conv2d_4/Conv2DConv2Dl5_Conv2d_3/Relu:activations:0)l6_Conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
К
"l6_Conv2d_4/BiasAdd/ReadVariableOpReadVariableOp+l6_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0°
l6_Conv2d_4/BiasAddBiasAddl6_Conv2d_4/Conv2D:output:0*l6_Conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@p
l6_Conv2d_4/ReluRelul6_Conv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Ѓ
l7_MaxPool2D_3/MaxPoolMaxPooll6_Conv2d_4/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
c
l8_Flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Р
l8_Flatten_2/ReshapeReshapel7_MaxPool2D_3/MaxPool:output:0l8_Flatten_2/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АМ
 l9_Dense_1/MatMul/ReadVariableOpReadVariableOp)l9_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ч
l9_Dense_1/MatMulMatMull8_Flatten_2/Reshape:output:0(l9_Dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЙ
!l9_Dense_1/BiasAdd/ReadVariableOpReadVariableOp*l9_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ш
l9_Dense_1/BiasAddBiasAddl9_Dense_1/MatMul:product:0)l9_Dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аg
l9_Dense_1/ReluRelul9_Dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АН
!l10_Dense_2/MatMul/ReadVariableOpReadVariableOp*l10_dense_2_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Ш
l10_Dense_2/MatMulMatMull9_Dense_1/Relu:activations:0)l10_Dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€К
"l10_Dense_2/BiasAdd/ReadVariableOpReadVariableOp+l10_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ъ
l10_Dense_2/BiasAddBiasAddl10_Dense_2/MatMul:product:0*l10_Dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€n
l10_Dense_2/SoftmaxSoftmaxl10_Dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€l
IdentityIdentityl10_Dense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ъ
NoOpNoOp#^l10_Dense_2/BiasAdd/ReadVariableOp"^l10_Dense_2/MatMul/ReadVariableOp#^l1_Conv2d_1/BiasAdd/ReadVariableOp"^l1_Conv2d_1/Conv2D/ReadVariableOp#^l3_Conv2d_2/BiasAdd/ReadVariableOp"^l3_Conv2d_2/Conv2D/ReadVariableOp#^l5_Conv2d_3/BiasAdd/ReadVariableOp"^l5_Conv2d_3/Conv2D/ReadVariableOp#^l6_Conv2d_4/BiasAdd/ReadVariableOp"^l6_Conv2d_4/Conv2D/ReadVariableOp"^l9_Dense_1/BiasAdd/ReadVariableOp!^l9_Dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аа: : : : : : : : : : : : 2H
"l10_Dense_2/BiasAdd/ReadVariableOp"l10_Dense_2/BiasAdd/ReadVariableOp2F
!l10_Dense_2/MatMul/ReadVariableOp!l10_Dense_2/MatMul/ReadVariableOp2H
"l1_Conv2d_1/BiasAdd/ReadVariableOp"l1_Conv2d_1/BiasAdd/ReadVariableOp2F
!l1_Conv2d_1/Conv2D/ReadVariableOp!l1_Conv2d_1/Conv2D/ReadVariableOp2H
"l3_Conv2d_2/BiasAdd/ReadVariableOp"l3_Conv2d_2/BiasAdd/ReadVariableOp2F
!l3_Conv2d_2/Conv2D/ReadVariableOp!l3_Conv2d_2/Conv2D/ReadVariableOp2H
"l5_Conv2d_3/BiasAdd/ReadVariableOp"l5_Conv2d_3/BiasAdd/ReadVariableOp2F
!l5_Conv2d_3/Conv2D/ReadVariableOp!l5_Conv2d_3/Conv2D/ReadVariableOp2H
"l6_Conv2d_4/BiasAdd/ReadVariableOp"l6_Conv2d_4/BiasAdd/ReadVariableOp2F
!l6_Conv2d_4/Conv2D/ReadVariableOp!l6_Conv2d_4/Conv2D/ReadVariableOp2F
!l9_Dense_1/BiasAdd/ReadVariableOp!l9_Dense_1/BiasAdd/ReadVariableOp2D
 l9_Dense_1/MatMul/ReadVariableOp l9_Dense_1/MatMul/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
®

щ
E__inference_l9_Dense_1_layer_call_and_return_conditional_losses_11892

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ь-
Л
B__inference_model_3_layer_call_and_return_conditional_losses_11554
input_1+
l1_conv2d_1_11519:
l1_conv2d_1_11521:+
l3_conv2d_2_11525:
l3_conv2d_2_11527:+
l5_conv2d_3_11531: 
l5_conv2d_3_11533: +
l6_conv2d_4_11536: @
l6_conv2d_4_11538:@$
l9_dense_1_11543:
АА
l9_dense_1_11545:	А$
l10_dense_2_11548:	А
l10_dense_2_11550:
identityИҐ#l10_Dense_2/StatefulPartitionedCallҐ#l1_Conv2d_1/StatefulPartitionedCallҐ#l3_Conv2d_2/StatefulPartitionedCallҐ#l5_Conv2d_3/StatefulPartitionedCallҐ#l6_Conv2d_4/StatefulPartitionedCallҐ"l9_Dense_1/StatefulPartitionedCallЕ
#l1_Conv2d_1/StatefulPartitionedCallStatefulPartitionedCallinput_1l1_conv2d_1_11519l1_conv2d_1_11521*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€66*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_l1_Conv2d_1_layer_call_and_return_conditional_losses_11157ф
l2_MaxPool2D_1/PartitionedCallPartitionedCall,l1_Conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_l2_MaxPool2D_1_layer_call_and_return_conditional_losses_11112•
#l3_Conv2d_2/StatefulPartitionedCallStatefulPartitionedCall'l2_MaxPool2D_1/PartitionedCall:output:0l3_conv2d_2_11525l3_conv2d_2_11527*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_l3_Conv2d_2_layer_call_and_return_conditional_losses_11175ф
l4_MaxPool2D_2/PartitionedCallPartitionedCall,l3_Conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€

* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_l4_MaxPool2D_2_layer_call_and_return_conditional_losses_11124•
#l5_Conv2d_3/StatefulPartitionedCallStatefulPartitionedCall'l4_MaxPool2D_2/PartitionedCall:output:0l5_conv2d_3_11531l5_conv2d_3_11533*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_l5_Conv2d_3_layer_call_and_return_conditional_losses_11193™
#l6_Conv2d_4/StatefulPartitionedCallStatefulPartitionedCall,l5_Conv2d_3/StatefulPartitionedCall:output:0l6_conv2d_4_11536l6_conv2d_4_11538*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_l6_Conv2d_4_layer_call_and_return_conditional_losses_11210ф
l7_MaxPool2D_3/PartitionedCallPartitionedCall,l6_Conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_l7_MaxPool2D_3_layer_call_and_return_conditional_losses_11136д
l8_Flatten_2/PartitionedCallPartitionedCall'l7_MaxPool2D_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_l8_Flatten_2_layer_call_and_return_conditional_losses_11223Ш
"l9_Dense_1/StatefulPartitionedCallStatefulPartitionedCall%l8_Flatten_2/PartitionedCall:output:0l9_dense_1_11543l9_dense_1_11545*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_l9_Dense_1_layer_call_and_return_conditional_losses_11236°
#l10_Dense_2/StatefulPartitionedCallStatefulPartitionedCall+l9_Dense_1/StatefulPartitionedCall:output:0l10_dense_2_11548l10_dense_2_11550*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_l10_Dense_2_layer_call_and_return_conditional_losses_11253{
IdentityIdentity,l10_Dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€©
NoOpNoOp$^l10_Dense_2/StatefulPartitionedCall$^l1_Conv2d_1/StatefulPartitionedCall$^l3_Conv2d_2/StatefulPartitionedCall$^l5_Conv2d_3/StatefulPartitionedCall$^l6_Conv2d_4/StatefulPartitionedCall#^l9_Dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аа: : : : : : : : : : : : 2J
#l10_Dense_2/StatefulPartitionedCall#l10_Dense_2/StatefulPartitionedCall2J
#l1_Conv2d_1/StatefulPartitionedCall#l1_Conv2d_1/StatefulPartitionedCall2J
#l3_Conv2d_2/StatefulPartitionedCall#l3_Conv2d_2/StatefulPartitionedCall2J
#l5_Conv2d_3/StatefulPartitionedCall#l5_Conv2d_3/StatefulPartitionedCall2J
#l6_Conv2d_4/StatefulPartitionedCall#l6_Conv2d_4/StatefulPartitionedCall2H
"l9_Dense_1/StatefulPartitionedCall"l9_Dense_1/StatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€аа
!
_user_specified_name	input_1
С
e
I__inference_l4_MaxPool2D_2_layer_call_and_return_conditional_losses_11811

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
…
c
G__inference_l8_Flatten_2_layer_call_and_return_conditional_losses_11872

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
С
e
I__inference_l2_MaxPool2D_1_layer_call_and_return_conditional_losses_11781

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
С
e
I__inference_l7_MaxPool2D_3_layer_call_and_return_conditional_losses_11136

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Я
«
'__inference_model_3_layer_call_fn_11620

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А

unknown_10:
identityИҐStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_11260o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аа: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
¶±
Ћ
!__inference__traced_restore_12215
file_prefix=
#assignvariableop_l1_conv2d_1_kernel:1
#assignvariableop_1_l1_conv2d_1_bias:?
%assignvariableop_2_l3_conv2d_2_kernel:1
#assignvariableop_3_l3_conv2d_2_bias:?
%assignvariableop_4_l5_conv2d_3_kernel: 1
#assignvariableop_5_l5_conv2d_3_bias: ?
%assignvariableop_6_l6_conv2d_4_kernel: @1
#assignvariableop_7_l6_conv2d_4_bias:@8
$assignvariableop_8_l9_dense_1_kernel:
АА1
"assignvariableop_9_l9_dense_1_bias:	А9
&assignvariableop_10_l10_dense_2_kernel:	А2
$assignvariableop_11_l10_dense_2_bias:'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: %
assignvariableop_17_total_1: %
assignvariableop_18_count_1: #
assignvariableop_19_total: #
assignvariableop_20_count: G
-assignvariableop_21_adam_l1_conv2d_1_kernel_m:9
+assignvariableop_22_adam_l1_conv2d_1_bias_m:G
-assignvariableop_23_adam_l3_conv2d_2_kernel_m:9
+assignvariableop_24_adam_l3_conv2d_2_bias_m:G
-assignvariableop_25_adam_l5_conv2d_3_kernel_m: 9
+assignvariableop_26_adam_l5_conv2d_3_bias_m: G
-assignvariableop_27_adam_l6_conv2d_4_kernel_m: @9
+assignvariableop_28_adam_l6_conv2d_4_bias_m:@@
,assignvariableop_29_adam_l9_dense_1_kernel_m:
АА9
*assignvariableop_30_adam_l9_dense_1_bias_m:	А@
-assignvariableop_31_adam_l10_dense_2_kernel_m:	А9
+assignvariableop_32_adam_l10_dense_2_bias_m:G
-assignvariableop_33_adam_l1_conv2d_1_kernel_v:9
+assignvariableop_34_adam_l1_conv2d_1_bias_v:G
-assignvariableop_35_adam_l3_conv2d_2_kernel_v:9
+assignvariableop_36_adam_l3_conv2d_2_bias_v:G
-assignvariableop_37_adam_l5_conv2d_3_kernel_v: 9
+assignvariableop_38_adam_l5_conv2d_3_bias_v: G
-assignvariableop_39_adam_l6_conv2d_4_kernel_v: @9
+assignvariableop_40_adam_l6_conv2d_4_bias_v:@@
,assignvariableop_41_adam_l9_dense_1_kernel_v:
АА9
*assignvariableop_42_adam_l9_dense_1_bias_v:	А@
-assignvariableop_43_adam_l10_dense_2_kernel_v:	А9
+assignvariableop_44_adam_l10_dense_2_bias_v:
identity_46ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9Р
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*ґ
valueђB©.B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHћ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B З
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ќ
_output_shapesї
Є::::::::::::::::::::::::::::::::::::::::::::::*<
dtypes2
02.	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOpAssignVariableOp#assignvariableop_l1_conv2d_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_1AssignVariableOp#assignvariableop_1_l1_conv2d_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_2AssignVariableOp%assignvariableop_2_l3_conv2d_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_3AssignVariableOp#assignvariableop_3_l3_conv2d_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_4AssignVariableOp%assignvariableop_4_l5_conv2d_3_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_5AssignVariableOp#assignvariableop_5_l5_conv2d_3_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_6AssignVariableOp%assignvariableop_6_l6_conv2d_4_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_7AssignVariableOp#assignvariableop_7_l6_conv2d_4_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_8AssignVariableOp$assignvariableop_8_l9_dense_1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_9AssignVariableOp"assignvariableop_9_l9_dense_1_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_10AssignVariableOp&assignvariableop_10_l10_dense_2_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_11AssignVariableOp$assignvariableop_11_l10_dense_2_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:О
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_16AssignVariableOp&assignvariableop_16_adam_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_19AssignVariableOpassignvariableop_19_totalIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_20AssignVariableOpassignvariableop_20_countIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_21AssignVariableOp-assignvariableop_21_adam_l1_conv2d_1_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_22AssignVariableOp+assignvariableop_22_adam_l1_conv2d_1_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_23AssignVariableOp-assignvariableop_23_adam_l3_conv2d_2_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adam_l3_conv2d_2_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_25AssignVariableOp-assignvariableop_25_adam_l5_conv2d_3_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_l5_conv2d_3_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_27AssignVariableOp-assignvariableop_27_adam_l6_conv2d_4_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_l6_conv2d_4_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_29AssignVariableOp,assignvariableop_29_adam_l9_dense_1_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_l9_dense_1_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_31AssignVariableOp-assignvariableop_31_adam_l10_dense_2_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adam_l10_dense_2_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_33AssignVariableOp-assignvariableop_33_adam_l1_conv2d_1_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adam_l1_conv2d_1_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_35AssignVariableOp-assignvariableop_35_adam_l3_conv2d_2_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_36AssignVariableOp+assignvariableop_36_adam_l3_conv2d_2_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_37AssignVariableOp-assignvariableop_37_adam_l5_conv2d_3_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_38AssignVariableOp+assignvariableop_38_adam_l5_conv2d_3_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_39AssignVariableOp-assignvariableop_39_adam_l6_conv2d_4_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_40AssignVariableOp+assignvariableop_40_adam_l6_conv2d_4_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_41AssignVariableOp,assignvariableop_41_adam_l9_dense_1_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_42AssignVariableOp*assignvariableop_42_adam_l9_dense_1_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_43AssignVariableOp-assignvariableop_43_adam_l10_dense_2_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_44AssignVariableOp+assignvariableop_44_adam_l10_dense_2_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ≠
Identity_45Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_46IdentityIdentity_45:output:0^NoOp_1*
T0*
_output_shapes
: Ъ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_46Identity_46:output:0*o
_input_shapes^
\: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_44AssignVariableOp_442(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
х
†
+__inference_l1_Conv2d_1_layer_call_fn_11760

inputs!
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€66*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_l1_Conv2d_1_layer_call_and_return_conditional_losses_11157w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€66`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€аа: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
с
†
+__inference_l6_Conv2d_4_layer_call_fn_11840

inputs!
unknown: @
	unknown_0:@
identityИҐStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_l6_Conv2d_4_layer_call_and_return_conditional_losses_11210w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
с
†
+__inference_l3_Conv2d_2_layer_call_fn_11790

inputs!
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_l3_Conv2d_2_layer_call_and_return_conditional_losses_11175w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ж
€
F__inference_l5_Conv2d_3_layer_call_and_return_conditional_losses_11831

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€

: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€


 
_user_specified_nameinputs
а@
Н

B__inference_model_3_layer_call_and_return_conditional_losses_11751

inputsD
*l1_conv2d_1_conv2d_readvariableop_resource:9
+l1_conv2d_1_biasadd_readvariableop_resource:D
*l3_conv2d_2_conv2d_readvariableop_resource:9
+l3_conv2d_2_biasadd_readvariableop_resource:D
*l5_conv2d_3_conv2d_readvariableop_resource: 9
+l5_conv2d_3_biasadd_readvariableop_resource: D
*l6_conv2d_4_conv2d_readvariableop_resource: @9
+l6_conv2d_4_biasadd_readvariableop_resource:@=
)l9_dense_1_matmul_readvariableop_resource:
АА9
*l9_dense_1_biasadd_readvariableop_resource:	А=
*l10_dense_2_matmul_readvariableop_resource:	А9
+l10_dense_2_biasadd_readvariableop_resource:
identityИҐ"l10_Dense_2/BiasAdd/ReadVariableOpҐ!l10_Dense_2/MatMul/ReadVariableOpҐ"l1_Conv2d_1/BiasAdd/ReadVariableOpҐ!l1_Conv2d_1/Conv2D/ReadVariableOpҐ"l3_Conv2d_2/BiasAdd/ReadVariableOpҐ!l3_Conv2d_2/Conv2D/ReadVariableOpҐ"l5_Conv2d_3/BiasAdd/ReadVariableOpҐ!l5_Conv2d_3/Conv2D/ReadVariableOpҐ"l6_Conv2d_4/BiasAdd/ReadVariableOpҐ!l6_Conv2d_4/Conv2D/ReadVariableOpҐ!l9_Dense_1/BiasAdd/ReadVariableOpҐ l9_Dense_1/MatMul/ReadVariableOpФ
!l1_Conv2d_1/Conv2D/ReadVariableOpReadVariableOp*l1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0≤
l1_Conv2d_1/Conv2DConv2Dinputs)l1_Conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€66*
paddingVALID*
strides
К
"l1_Conv2d_1/BiasAdd/ReadVariableOpReadVariableOp+l1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0°
l1_Conv2d_1/BiasAddBiasAddl1_Conv2d_1/Conv2D:output:0*l1_Conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€66p
l1_Conv2d_1/ReluRelul1_Conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€66Ѓ
l2_MaxPool2D_1/MaxPoolMaxPooll1_Conv2d_1/Relu:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingVALID*
strides
Ф
!l3_Conv2d_2/Conv2D/ReadVariableOpReadVariableOp*l3_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ћ
l3_Conv2d_2/Conv2DConv2Dl2_MaxPool2D_1/MaxPool:output:0)l3_Conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingVALID*
strides
К
"l3_Conv2d_2/BiasAdd/ReadVariableOpReadVariableOp+l3_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0°
l3_Conv2d_2/BiasAddBiasAddl3_Conv2d_2/Conv2D:output:0*l3_Conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€p
l3_Conv2d_2/ReluRelul3_Conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€Ѓ
l4_MaxPool2D_2/MaxPoolMaxPooll3_Conv2d_2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€

*
ksize
*
paddingVALID*
strides
Ф
!l5_Conv2d_3/Conv2D/ReadVariableOpReadVariableOp*l5_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ћ
l5_Conv2d_3/Conv2DConv2Dl4_MaxPool2D_2/MaxPool:output:0)l5_Conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingVALID*
strides
К
"l5_Conv2d_3/BiasAdd/ReadVariableOpReadVariableOp+l5_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0°
l5_Conv2d_3/BiasAddBiasAddl5_Conv2d_3/Conv2D:output:0*l5_Conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ p
l5_Conv2d_3/ReluRelul5_Conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ Ф
!l6_Conv2d_4/Conv2D/ReadVariableOpReadVariableOp*l6_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0 
l6_Conv2d_4/Conv2DConv2Dl5_Conv2d_3/Relu:activations:0)l6_Conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
К
"l6_Conv2d_4/BiasAdd/ReadVariableOpReadVariableOp+l6_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0°
l6_Conv2d_4/BiasAddBiasAddl6_Conv2d_4/Conv2D:output:0*l6_Conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@p
l6_Conv2d_4/ReluRelul6_Conv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Ѓ
l7_MaxPool2D_3/MaxPoolMaxPooll6_Conv2d_4/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
c
l8_Flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Р
l8_Flatten_2/ReshapeReshapel7_MaxPool2D_3/MaxPool:output:0l8_Flatten_2/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АМ
 l9_Dense_1/MatMul/ReadVariableOpReadVariableOp)l9_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ч
l9_Dense_1/MatMulMatMull8_Flatten_2/Reshape:output:0(l9_Dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЙ
!l9_Dense_1/BiasAdd/ReadVariableOpReadVariableOp*l9_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ш
l9_Dense_1/BiasAddBiasAddl9_Dense_1/MatMul:product:0)l9_Dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аg
l9_Dense_1/ReluRelul9_Dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АН
!l10_Dense_2/MatMul/ReadVariableOpReadVariableOp*l10_dense_2_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Ш
l10_Dense_2/MatMulMatMull9_Dense_1/Relu:activations:0)l10_Dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€К
"l10_Dense_2/BiasAdd/ReadVariableOpReadVariableOp+l10_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ъ
l10_Dense_2/BiasAddBiasAddl10_Dense_2/MatMul:product:0*l10_Dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€n
l10_Dense_2/SoftmaxSoftmaxl10_Dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€l
IdentityIdentityl10_Dense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ъ
NoOpNoOp#^l10_Dense_2/BiasAdd/ReadVariableOp"^l10_Dense_2/MatMul/ReadVariableOp#^l1_Conv2d_1/BiasAdd/ReadVariableOp"^l1_Conv2d_1/Conv2D/ReadVariableOp#^l3_Conv2d_2/BiasAdd/ReadVariableOp"^l3_Conv2d_2/Conv2D/ReadVariableOp#^l5_Conv2d_3/BiasAdd/ReadVariableOp"^l5_Conv2d_3/Conv2D/ReadVariableOp#^l6_Conv2d_4/BiasAdd/ReadVariableOp"^l6_Conv2d_4/Conv2D/ReadVariableOp"^l9_Dense_1/BiasAdd/ReadVariableOp!^l9_Dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аа: : : : : : : : : : : : 2H
"l10_Dense_2/BiasAdd/ReadVariableOp"l10_Dense_2/BiasAdd/ReadVariableOp2F
!l10_Dense_2/MatMul/ReadVariableOp!l10_Dense_2/MatMul/ReadVariableOp2H
"l1_Conv2d_1/BiasAdd/ReadVariableOp"l1_Conv2d_1/BiasAdd/ReadVariableOp2F
!l1_Conv2d_1/Conv2D/ReadVariableOp!l1_Conv2d_1/Conv2D/ReadVariableOp2H
"l3_Conv2d_2/BiasAdd/ReadVariableOp"l3_Conv2d_2/BiasAdd/ReadVariableOp2F
!l3_Conv2d_2/Conv2D/ReadVariableOp!l3_Conv2d_2/Conv2D/ReadVariableOp2H
"l5_Conv2d_3/BiasAdd/ReadVariableOp"l5_Conv2d_3/BiasAdd/ReadVariableOp2F
!l5_Conv2d_3/Conv2D/ReadVariableOp!l5_Conv2d_3/Conv2D/ReadVariableOp2H
"l6_Conv2d_4/BiasAdd/ReadVariableOp"l6_Conv2d_4/BiasAdd/ReadVariableOp2F
!l6_Conv2d_4/Conv2D/ReadVariableOp!l6_Conv2d_4/Conv2D/ReadVariableOp2F
!l9_Dense_1/BiasAdd/ReadVariableOp!l9_Dense_1/BiasAdd/ReadVariableOp2D
 l9_Dense_1/MatMul/ReadVariableOp l9_Dense_1/MatMul/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
С
e
I__inference_l7_MaxPool2D_3_layer_call_and_return_conditional_losses_11861

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ј
J
.__inference_l4_MaxPool2D_2_layer_call_fn_11806

inputs
identityЏ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_l4_MaxPool2D_2_layer_call_and_return_conditional_losses_11124Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
С
e
I__inference_l4_MaxPool2D_2_layer_call_and_return_conditional_losses_11124

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ґ
»
'__inference_model_3_layer_call_fn_11287
input_1!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А

unknown_10:
identityИҐStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_11260o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аа: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€аа
!
_user_specified_name	input_1
С
e
I__inference_l2_MaxPool2D_1_layer_call_and_return_conditional_losses_11112

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
К
€
F__inference_l1_Conv2d_1_layer_call_and_return_conditional_losses_11771

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€66*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€66X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€66i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€66w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€аа: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
Ж
€
F__inference_l6_Conv2d_4_layer_call_and_return_conditional_losses_11210

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Ж
€
F__inference_l5_Conv2d_3_layer_call_and_return_conditional_losses_11193

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€

: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€


 
_user_specified_nameinputs
Ј
J
.__inference_l7_MaxPool2D_3_layer_call_fn_11856

inputs
identityЏ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_l7_MaxPool2D_3_layer_call_and_return_conditional_losses_11136Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ќ
Ъ
*__inference_l9_Dense_1_layer_call_fn_11881

inputs
unknown:
АА
	unknown_0:	А
identityИҐStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_l9_Dense_1_layer_call_and_return_conditional_losses_11236p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ж
€
F__inference_l3_Conv2d_2_layer_call_and_return_conditional_losses_11175

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Я
«
'__inference_model_3_layer_call_fn_11649

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А

unknown_10:
identityИҐStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_11422o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аа: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
щ-
К
B__inference_model_3_layer_call_and_return_conditional_losses_11422

inputs+
l1_conv2d_1_11387:
l1_conv2d_1_11389:+
l3_conv2d_2_11393:
l3_conv2d_2_11395:+
l5_conv2d_3_11399: 
l5_conv2d_3_11401: +
l6_conv2d_4_11404: @
l6_conv2d_4_11406:@$
l9_dense_1_11411:
АА
l9_dense_1_11413:	А$
l10_dense_2_11416:	А
l10_dense_2_11418:
identityИҐ#l10_Dense_2/StatefulPartitionedCallҐ#l1_Conv2d_1/StatefulPartitionedCallҐ#l3_Conv2d_2/StatefulPartitionedCallҐ#l5_Conv2d_3/StatefulPartitionedCallҐ#l6_Conv2d_4/StatefulPartitionedCallҐ"l9_Dense_1/StatefulPartitionedCallД
#l1_Conv2d_1/StatefulPartitionedCallStatefulPartitionedCallinputsl1_conv2d_1_11387l1_conv2d_1_11389*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€66*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_l1_Conv2d_1_layer_call_and_return_conditional_losses_11157ф
l2_MaxPool2D_1/PartitionedCallPartitionedCall,l1_Conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_l2_MaxPool2D_1_layer_call_and_return_conditional_losses_11112•
#l3_Conv2d_2/StatefulPartitionedCallStatefulPartitionedCall'l2_MaxPool2D_1/PartitionedCall:output:0l3_conv2d_2_11393l3_conv2d_2_11395*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_l3_Conv2d_2_layer_call_and_return_conditional_losses_11175ф
l4_MaxPool2D_2/PartitionedCallPartitionedCall,l3_Conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€

* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_l4_MaxPool2D_2_layer_call_and_return_conditional_losses_11124•
#l5_Conv2d_3/StatefulPartitionedCallStatefulPartitionedCall'l4_MaxPool2D_2/PartitionedCall:output:0l5_conv2d_3_11399l5_conv2d_3_11401*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_l5_Conv2d_3_layer_call_and_return_conditional_losses_11193™
#l6_Conv2d_4/StatefulPartitionedCallStatefulPartitionedCall,l5_Conv2d_3/StatefulPartitionedCall:output:0l6_conv2d_4_11404l6_conv2d_4_11406*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_l6_Conv2d_4_layer_call_and_return_conditional_losses_11210ф
l7_MaxPool2D_3/PartitionedCallPartitionedCall,l6_Conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_l7_MaxPool2D_3_layer_call_and_return_conditional_losses_11136д
l8_Flatten_2/PartitionedCallPartitionedCall'l7_MaxPool2D_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_l8_Flatten_2_layer_call_and_return_conditional_losses_11223Ш
"l9_Dense_1/StatefulPartitionedCallStatefulPartitionedCall%l8_Flatten_2/PartitionedCall:output:0l9_dense_1_11411l9_dense_1_11413*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_l9_Dense_1_layer_call_and_return_conditional_losses_11236°
#l10_Dense_2/StatefulPartitionedCallStatefulPartitionedCall+l9_Dense_1/StatefulPartitionedCall:output:0l10_dense_2_11416l10_dense_2_11418*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_l10_Dense_2_layer_call_and_return_conditional_losses_11253{
IdentityIdentity,l10_Dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€©
NoOpNoOp$^l10_Dense_2/StatefulPartitionedCall$^l1_Conv2d_1/StatefulPartitionedCall$^l3_Conv2d_2/StatefulPartitionedCall$^l5_Conv2d_3/StatefulPartitionedCall$^l6_Conv2d_4/StatefulPartitionedCall#^l9_Dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аа: : : : : : : : : : : : 2J
#l10_Dense_2/StatefulPartitionedCall#l10_Dense_2/StatefulPartitionedCall2J
#l1_Conv2d_1/StatefulPartitionedCall#l1_Conv2d_1/StatefulPartitionedCall2J
#l3_Conv2d_2/StatefulPartitionedCall#l3_Conv2d_2/StatefulPartitionedCall2J
#l5_Conv2d_3/StatefulPartitionedCall#l5_Conv2d_3/StatefulPartitionedCall2J
#l6_Conv2d_4/StatefulPartitionedCall#l6_Conv2d_4/StatefulPartitionedCall2H
"l9_Dense_1/StatefulPartitionedCall"l9_Dense_1/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
®

щ
E__inference_l9_Dense_1_layer_call_and_return_conditional_losses_11236

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
яY
С
__inference__traced_save_12070
file_prefix1
-savev2_l1_conv2d_1_kernel_read_readvariableop/
+savev2_l1_conv2d_1_bias_read_readvariableop1
-savev2_l3_conv2d_2_kernel_read_readvariableop/
+savev2_l3_conv2d_2_bias_read_readvariableop1
-savev2_l5_conv2d_3_kernel_read_readvariableop/
+savev2_l5_conv2d_3_bias_read_readvariableop1
-savev2_l6_conv2d_4_kernel_read_readvariableop/
+savev2_l6_conv2d_4_bias_read_readvariableop0
,savev2_l9_dense_1_kernel_read_readvariableop.
*savev2_l9_dense_1_bias_read_readvariableop1
-savev2_l10_dense_2_kernel_read_readvariableop/
+savev2_l10_dense_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop8
4savev2_adam_l1_conv2d_1_kernel_m_read_readvariableop6
2savev2_adam_l1_conv2d_1_bias_m_read_readvariableop8
4savev2_adam_l3_conv2d_2_kernel_m_read_readvariableop6
2savev2_adam_l3_conv2d_2_bias_m_read_readvariableop8
4savev2_adam_l5_conv2d_3_kernel_m_read_readvariableop6
2savev2_adam_l5_conv2d_3_bias_m_read_readvariableop8
4savev2_adam_l6_conv2d_4_kernel_m_read_readvariableop6
2savev2_adam_l6_conv2d_4_bias_m_read_readvariableop7
3savev2_adam_l9_dense_1_kernel_m_read_readvariableop5
1savev2_adam_l9_dense_1_bias_m_read_readvariableop8
4savev2_adam_l10_dense_2_kernel_m_read_readvariableop6
2savev2_adam_l10_dense_2_bias_m_read_readvariableop8
4savev2_adam_l1_conv2d_1_kernel_v_read_readvariableop6
2savev2_adam_l1_conv2d_1_bias_v_read_readvariableop8
4savev2_adam_l3_conv2d_2_kernel_v_read_readvariableop6
2savev2_adam_l3_conv2d_2_bias_v_read_readvariableop8
4savev2_adam_l5_conv2d_3_kernel_v_read_readvariableop6
2savev2_adam_l5_conv2d_3_bias_v_read_readvariableop8
4savev2_adam_l6_conv2d_4_kernel_v_read_readvariableop6
2savev2_adam_l6_conv2d_4_bias_v_read_readvariableop7
3savev2_adam_l9_dense_1_kernel_v_read_readvariableop5
1savev2_adam_l9_dense_1_bias_v_read_readvariableop8
4savev2_adam_l10_dense_2_kernel_v_read_readvariableop6
2savev2_adam_l10_dense_2_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Н
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*ґ
valueђB©.B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH…
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ѕ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0-savev2_l1_conv2d_1_kernel_read_readvariableop+savev2_l1_conv2d_1_bias_read_readvariableop-savev2_l3_conv2d_2_kernel_read_readvariableop+savev2_l3_conv2d_2_bias_read_readvariableop-savev2_l5_conv2d_3_kernel_read_readvariableop+savev2_l5_conv2d_3_bias_read_readvariableop-savev2_l6_conv2d_4_kernel_read_readvariableop+savev2_l6_conv2d_4_bias_read_readvariableop,savev2_l9_dense_1_kernel_read_readvariableop*savev2_l9_dense_1_bias_read_readvariableop-savev2_l10_dense_2_kernel_read_readvariableop+savev2_l10_dense_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop4savev2_adam_l1_conv2d_1_kernel_m_read_readvariableop2savev2_adam_l1_conv2d_1_bias_m_read_readvariableop4savev2_adam_l3_conv2d_2_kernel_m_read_readvariableop2savev2_adam_l3_conv2d_2_bias_m_read_readvariableop4savev2_adam_l5_conv2d_3_kernel_m_read_readvariableop2savev2_adam_l5_conv2d_3_bias_m_read_readvariableop4savev2_adam_l6_conv2d_4_kernel_m_read_readvariableop2savev2_adam_l6_conv2d_4_bias_m_read_readvariableop3savev2_adam_l9_dense_1_kernel_m_read_readvariableop1savev2_adam_l9_dense_1_bias_m_read_readvariableop4savev2_adam_l10_dense_2_kernel_m_read_readvariableop2savev2_adam_l10_dense_2_bias_m_read_readvariableop4savev2_adam_l1_conv2d_1_kernel_v_read_readvariableop2savev2_adam_l1_conv2d_1_bias_v_read_readvariableop4savev2_adam_l3_conv2d_2_kernel_v_read_readvariableop2savev2_adam_l3_conv2d_2_bias_v_read_readvariableop4savev2_adam_l5_conv2d_3_kernel_v_read_readvariableop2savev2_adam_l5_conv2d_3_bias_v_read_readvariableop4savev2_adam_l6_conv2d_4_kernel_v_read_readvariableop2savev2_adam_l6_conv2d_4_bias_v_read_readvariableop3savev2_adam_l9_dense_1_kernel_v_read_readvariableop1savev2_adam_l9_dense_1_bias_v_read_readvariableop4savev2_adam_l10_dense_2_kernel_v_read_readvariableop2savev2_adam_l10_dense_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *<
dtypes2
02.	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Ј
_input_shapes•
Ґ: ::::: : : @:@:
АА:А:	А:: : : : : : : : : ::::: : : @:@:
АА:А:	А:::::: : : @:@:
АА:А:	А:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:&	"
 
_output_shapes
:
АА:!


_output_shapes	
:А:%!

_output_shapes
:	А: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:% !

_output_shapes
:	А: !

_output_shapes
::,"(
&
_output_shapes
:: #

_output_shapes
::,$(
&
_output_shapes
:: %

_output_shapes
::,&(
&
_output_shapes
: : '

_output_shapes
: :,((
&
_output_shapes
: @: )

_output_shapes
:@:&*"
 
_output_shapes
:
АА:!+

_output_shapes	
:А:%,!

_output_shapes
:	А: -

_output_shapes
::.

_output_shapes
: 
µI
ђ
 __inference__wrapped_model_11103
input_1L
2model_3_l1_conv2d_1_conv2d_readvariableop_resource:A
3model_3_l1_conv2d_1_biasadd_readvariableop_resource:L
2model_3_l3_conv2d_2_conv2d_readvariableop_resource:A
3model_3_l3_conv2d_2_biasadd_readvariableop_resource:L
2model_3_l5_conv2d_3_conv2d_readvariableop_resource: A
3model_3_l5_conv2d_3_biasadd_readvariableop_resource: L
2model_3_l6_conv2d_4_conv2d_readvariableop_resource: @A
3model_3_l6_conv2d_4_biasadd_readvariableop_resource:@E
1model_3_l9_dense_1_matmul_readvariableop_resource:
ААA
2model_3_l9_dense_1_biasadd_readvariableop_resource:	АE
2model_3_l10_dense_2_matmul_readvariableop_resource:	АA
3model_3_l10_dense_2_biasadd_readvariableop_resource:
identityИҐ*model_3/l10_Dense_2/BiasAdd/ReadVariableOpҐ)model_3/l10_Dense_2/MatMul/ReadVariableOpҐ*model_3/l1_Conv2d_1/BiasAdd/ReadVariableOpҐ)model_3/l1_Conv2d_1/Conv2D/ReadVariableOpҐ*model_3/l3_Conv2d_2/BiasAdd/ReadVariableOpҐ)model_3/l3_Conv2d_2/Conv2D/ReadVariableOpҐ*model_3/l5_Conv2d_3/BiasAdd/ReadVariableOpҐ)model_3/l5_Conv2d_3/Conv2D/ReadVariableOpҐ*model_3/l6_Conv2d_4/BiasAdd/ReadVariableOpҐ)model_3/l6_Conv2d_4/Conv2D/ReadVariableOpҐ)model_3/l9_Dense_1/BiasAdd/ReadVariableOpҐ(model_3/l9_Dense_1/MatMul/ReadVariableOp§
)model_3/l1_Conv2d_1/Conv2D/ReadVariableOpReadVariableOp2model_3_l1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0√
model_3/l1_Conv2d_1/Conv2DConv2Dinput_11model_3/l1_Conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€66*
paddingVALID*
strides
Ъ
*model_3/l1_Conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3model_3_l1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0є
model_3/l1_Conv2d_1/BiasAddBiasAdd#model_3/l1_Conv2d_1/Conv2D:output:02model_3/l1_Conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€66А
model_3/l1_Conv2d_1/ReluRelu$model_3/l1_Conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€66Њ
model_3/l2_MaxPool2D_1/MaxPoolMaxPool&model_3/l1_Conv2d_1/Relu:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingVALID*
strides
§
)model_3/l3_Conv2d_2/Conv2D/ReadVariableOpReadVariableOp2model_3_l3_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0г
model_3/l3_Conv2d_2/Conv2DConv2D'model_3/l2_MaxPool2D_1/MaxPool:output:01model_3/l3_Conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingVALID*
strides
Ъ
*model_3/l3_Conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3model_3_l3_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0є
model_3/l3_Conv2d_2/BiasAddBiasAdd#model_3/l3_Conv2d_2/Conv2D:output:02model_3/l3_Conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€А
model_3/l3_Conv2d_2/ReluRelu$model_3/l3_Conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€Њ
model_3/l4_MaxPool2D_2/MaxPoolMaxPool&model_3/l3_Conv2d_2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€

*
ksize
*
paddingVALID*
strides
§
)model_3/l5_Conv2d_3/Conv2D/ReadVariableOpReadVariableOp2model_3_l5_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0г
model_3/l5_Conv2d_3/Conv2DConv2D'model_3/l4_MaxPool2D_2/MaxPool:output:01model_3/l5_Conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingVALID*
strides
Ъ
*model_3/l5_Conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3model_3_l5_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0є
model_3/l5_Conv2d_3/BiasAddBiasAdd#model_3/l5_Conv2d_3/Conv2D:output:02model_3/l5_Conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ А
model_3/l5_Conv2d_3/ReluRelu$model_3/l5_Conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ §
)model_3/l6_Conv2d_4/Conv2D/ReadVariableOpReadVariableOp2model_3_l6_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0в
model_3/l6_Conv2d_4/Conv2DConv2D&model_3/l5_Conv2d_3/Relu:activations:01model_3/l6_Conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
Ъ
*model_3/l6_Conv2d_4/BiasAdd/ReadVariableOpReadVariableOp3model_3_l6_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0є
model_3/l6_Conv2d_4/BiasAddBiasAdd#model_3/l6_Conv2d_4/Conv2D:output:02model_3/l6_Conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@А
model_3/l6_Conv2d_4/ReluRelu$model_3/l6_Conv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Њ
model_3/l7_MaxPool2D_3/MaxPoolMaxPool&model_3/l6_Conv2d_4/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
k
model_3/l8_Flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ®
model_3/l8_Flatten_2/ReshapeReshape'model_3/l7_MaxPool2D_3/MaxPool:output:0#model_3/l8_Flatten_2/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
(model_3/l9_Dense_1/MatMul/ReadVariableOpReadVariableOp1model_3_l9_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0ѓ
model_3/l9_Dense_1/MatMulMatMul%model_3/l8_Flatten_2/Reshape:output:00model_3/l9_Dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЩ
)model_3/l9_Dense_1/BiasAdd/ReadVariableOpReadVariableOp2model_3_l9_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0∞
model_3/l9_Dense_1/BiasAddBiasAdd#model_3/l9_Dense_1/MatMul:product:01model_3/l9_Dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
model_3/l9_Dense_1/ReluRelu#model_3/l9_Dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЭ
)model_3/l10_Dense_2/MatMul/ReadVariableOpReadVariableOp2model_3_l10_dense_2_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0∞
model_3/l10_Dense_2/MatMulMatMul%model_3/l9_Dense_1/Relu:activations:01model_3/l10_Dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ъ
*model_3/l10_Dense_2/BiasAdd/ReadVariableOpReadVariableOp3model_3_l10_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0≤
model_3/l10_Dense_2/BiasAddBiasAdd$model_3/l10_Dense_2/MatMul:product:02model_3/l10_Dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€~
model_3/l10_Dense_2/SoftmaxSoftmax$model_3/l10_Dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€t
IdentityIdentity%model_3/l10_Dense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Џ
NoOpNoOp+^model_3/l10_Dense_2/BiasAdd/ReadVariableOp*^model_3/l10_Dense_2/MatMul/ReadVariableOp+^model_3/l1_Conv2d_1/BiasAdd/ReadVariableOp*^model_3/l1_Conv2d_1/Conv2D/ReadVariableOp+^model_3/l3_Conv2d_2/BiasAdd/ReadVariableOp*^model_3/l3_Conv2d_2/Conv2D/ReadVariableOp+^model_3/l5_Conv2d_3/BiasAdd/ReadVariableOp*^model_3/l5_Conv2d_3/Conv2D/ReadVariableOp+^model_3/l6_Conv2d_4/BiasAdd/ReadVariableOp*^model_3/l6_Conv2d_4/Conv2D/ReadVariableOp*^model_3/l9_Dense_1/BiasAdd/ReadVariableOp)^model_3/l9_Dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аа: : : : : : : : : : : : 2X
*model_3/l10_Dense_2/BiasAdd/ReadVariableOp*model_3/l10_Dense_2/BiasAdd/ReadVariableOp2V
)model_3/l10_Dense_2/MatMul/ReadVariableOp)model_3/l10_Dense_2/MatMul/ReadVariableOp2X
*model_3/l1_Conv2d_1/BiasAdd/ReadVariableOp*model_3/l1_Conv2d_1/BiasAdd/ReadVariableOp2V
)model_3/l1_Conv2d_1/Conv2D/ReadVariableOp)model_3/l1_Conv2d_1/Conv2D/ReadVariableOp2X
*model_3/l3_Conv2d_2/BiasAdd/ReadVariableOp*model_3/l3_Conv2d_2/BiasAdd/ReadVariableOp2V
)model_3/l3_Conv2d_2/Conv2D/ReadVariableOp)model_3/l3_Conv2d_2/Conv2D/ReadVariableOp2X
*model_3/l5_Conv2d_3/BiasAdd/ReadVariableOp*model_3/l5_Conv2d_3/BiasAdd/ReadVariableOp2V
)model_3/l5_Conv2d_3/Conv2D/ReadVariableOp)model_3/l5_Conv2d_3/Conv2D/ReadVariableOp2X
*model_3/l6_Conv2d_4/BiasAdd/ReadVariableOp*model_3/l6_Conv2d_4/BiasAdd/ReadVariableOp2V
)model_3/l6_Conv2d_4/Conv2D/ReadVariableOp)model_3/l6_Conv2d_4/Conv2D/ReadVariableOp2V
)model_3/l9_Dense_1/BiasAdd/ReadVariableOp)model_3/l9_Dense_1/BiasAdd/ReadVariableOp2T
(model_3/l9_Dense_1/MatMul/ReadVariableOp(model_3/l9_Dense_1/MatMul/ReadVariableOp:Z V
1
_output_shapes
:€€€€€€€€€аа
!
_user_specified_name	input_1
Ж
€
F__inference_l3_Conv2d_2_layer_call_and_return_conditional_losses_11801

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ь-
Л
B__inference_model_3_layer_call_and_return_conditional_losses_11516
input_1+
l1_conv2d_1_11481:
l1_conv2d_1_11483:+
l3_conv2d_2_11487:
l3_conv2d_2_11489:+
l5_conv2d_3_11493: 
l5_conv2d_3_11495: +
l6_conv2d_4_11498: @
l6_conv2d_4_11500:@$
l9_dense_1_11505:
АА
l9_dense_1_11507:	А$
l10_dense_2_11510:	А
l10_dense_2_11512:
identityИҐ#l10_Dense_2/StatefulPartitionedCallҐ#l1_Conv2d_1/StatefulPartitionedCallҐ#l3_Conv2d_2/StatefulPartitionedCallҐ#l5_Conv2d_3/StatefulPartitionedCallҐ#l6_Conv2d_4/StatefulPartitionedCallҐ"l9_Dense_1/StatefulPartitionedCallЕ
#l1_Conv2d_1/StatefulPartitionedCallStatefulPartitionedCallinput_1l1_conv2d_1_11481l1_conv2d_1_11483*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€66*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_l1_Conv2d_1_layer_call_and_return_conditional_losses_11157ф
l2_MaxPool2D_1/PartitionedCallPartitionedCall,l1_Conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_l2_MaxPool2D_1_layer_call_and_return_conditional_losses_11112•
#l3_Conv2d_2/StatefulPartitionedCallStatefulPartitionedCall'l2_MaxPool2D_1/PartitionedCall:output:0l3_conv2d_2_11487l3_conv2d_2_11489*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_l3_Conv2d_2_layer_call_and_return_conditional_losses_11175ф
l4_MaxPool2D_2/PartitionedCallPartitionedCall,l3_Conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€

* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_l4_MaxPool2D_2_layer_call_and_return_conditional_losses_11124•
#l5_Conv2d_3/StatefulPartitionedCallStatefulPartitionedCall'l4_MaxPool2D_2/PartitionedCall:output:0l5_conv2d_3_11493l5_conv2d_3_11495*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_l5_Conv2d_3_layer_call_and_return_conditional_losses_11193™
#l6_Conv2d_4/StatefulPartitionedCallStatefulPartitionedCall,l5_Conv2d_3/StatefulPartitionedCall:output:0l6_conv2d_4_11498l6_conv2d_4_11500*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_l6_Conv2d_4_layer_call_and_return_conditional_losses_11210ф
l7_MaxPool2D_3/PartitionedCallPartitionedCall,l6_Conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_l7_MaxPool2D_3_layer_call_and_return_conditional_losses_11136д
l8_Flatten_2/PartitionedCallPartitionedCall'l7_MaxPool2D_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_l8_Flatten_2_layer_call_and_return_conditional_losses_11223Ш
"l9_Dense_1/StatefulPartitionedCallStatefulPartitionedCall%l8_Flatten_2/PartitionedCall:output:0l9_dense_1_11505l9_dense_1_11507*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_l9_Dense_1_layer_call_and_return_conditional_losses_11236°
#l10_Dense_2/StatefulPartitionedCallStatefulPartitionedCall+l9_Dense_1/StatefulPartitionedCall:output:0l10_dense_2_11510l10_dense_2_11512*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_l10_Dense_2_layer_call_and_return_conditional_losses_11253{
IdentityIdentity,l10_Dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€©
NoOpNoOp$^l10_Dense_2/StatefulPartitionedCall$^l1_Conv2d_1/StatefulPartitionedCall$^l3_Conv2d_2/StatefulPartitionedCall$^l5_Conv2d_3/StatefulPartitionedCall$^l6_Conv2d_4/StatefulPartitionedCall#^l9_Dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аа: : : : : : : : : : : : 2J
#l10_Dense_2/StatefulPartitionedCall#l10_Dense_2/StatefulPartitionedCall2J
#l1_Conv2d_1/StatefulPartitionedCall#l1_Conv2d_1/StatefulPartitionedCall2J
#l3_Conv2d_2/StatefulPartitionedCall#l3_Conv2d_2/StatefulPartitionedCall2J
#l5_Conv2d_3/StatefulPartitionedCall#l5_Conv2d_3/StatefulPartitionedCall2J
#l6_Conv2d_4/StatefulPartitionedCall#l6_Conv2d_4/StatefulPartitionedCall2H
"l9_Dense_1/StatefulPartitionedCall"l9_Dense_1/StatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€аа
!
_user_specified_name	input_1
щ-
К
B__inference_model_3_layer_call_and_return_conditional_losses_11260

inputs+
l1_conv2d_1_11158:
l1_conv2d_1_11160:+
l3_conv2d_2_11176:
l3_conv2d_2_11178:+
l5_conv2d_3_11194: 
l5_conv2d_3_11196: +
l6_conv2d_4_11211: @
l6_conv2d_4_11213:@$
l9_dense_1_11237:
АА
l9_dense_1_11239:	А$
l10_dense_2_11254:	А
l10_dense_2_11256:
identityИҐ#l10_Dense_2/StatefulPartitionedCallҐ#l1_Conv2d_1/StatefulPartitionedCallҐ#l3_Conv2d_2/StatefulPartitionedCallҐ#l5_Conv2d_3/StatefulPartitionedCallҐ#l6_Conv2d_4/StatefulPartitionedCallҐ"l9_Dense_1/StatefulPartitionedCallД
#l1_Conv2d_1/StatefulPartitionedCallStatefulPartitionedCallinputsl1_conv2d_1_11158l1_conv2d_1_11160*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€66*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_l1_Conv2d_1_layer_call_and_return_conditional_losses_11157ф
l2_MaxPool2D_1/PartitionedCallPartitionedCall,l1_Conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_l2_MaxPool2D_1_layer_call_and_return_conditional_losses_11112•
#l3_Conv2d_2/StatefulPartitionedCallStatefulPartitionedCall'l2_MaxPool2D_1/PartitionedCall:output:0l3_conv2d_2_11176l3_conv2d_2_11178*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_l3_Conv2d_2_layer_call_and_return_conditional_losses_11175ф
l4_MaxPool2D_2/PartitionedCallPartitionedCall,l3_Conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€

* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_l4_MaxPool2D_2_layer_call_and_return_conditional_losses_11124•
#l5_Conv2d_3/StatefulPartitionedCallStatefulPartitionedCall'l4_MaxPool2D_2/PartitionedCall:output:0l5_conv2d_3_11194l5_conv2d_3_11196*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_l5_Conv2d_3_layer_call_and_return_conditional_losses_11193™
#l6_Conv2d_4/StatefulPartitionedCallStatefulPartitionedCall,l5_Conv2d_3/StatefulPartitionedCall:output:0l6_conv2d_4_11211l6_conv2d_4_11213*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_l6_Conv2d_4_layer_call_and_return_conditional_losses_11210ф
l7_MaxPool2D_3/PartitionedCallPartitionedCall,l6_Conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_l7_MaxPool2D_3_layer_call_and_return_conditional_losses_11136д
l8_Flatten_2/PartitionedCallPartitionedCall'l7_MaxPool2D_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_l8_Flatten_2_layer_call_and_return_conditional_losses_11223Ш
"l9_Dense_1/StatefulPartitionedCallStatefulPartitionedCall%l8_Flatten_2/PartitionedCall:output:0l9_dense_1_11237l9_dense_1_11239*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_l9_Dense_1_layer_call_and_return_conditional_losses_11236°
#l10_Dense_2/StatefulPartitionedCallStatefulPartitionedCall+l9_Dense_1/StatefulPartitionedCall:output:0l10_dense_2_11254l10_dense_2_11256*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_l10_Dense_2_layer_call_and_return_conditional_losses_11253{
IdentityIdentity,l10_Dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€©
NoOpNoOp$^l10_Dense_2/StatefulPartitionedCall$^l1_Conv2d_1/StatefulPartitionedCall$^l3_Conv2d_2/StatefulPartitionedCall$^l5_Conv2d_3/StatefulPartitionedCall$^l6_Conv2d_4/StatefulPartitionedCall#^l9_Dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аа: : : : : : : : : : : : 2J
#l10_Dense_2/StatefulPartitionedCall#l10_Dense_2/StatefulPartitionedCall2J
#l1_Conv2d_1/StatefulPartitionedCall#l1_Conv2d_1/StatefulPartitionedCall2J
#l3_Conv2d_2/StatefulPartitionedCall#l3_Conv2d_2/StatefulPartitionedCall2J
#l5_Conv2d_3/StatefulPartitionedCall#l5_Conv2d_3/StatefulPartitionedCall2J
#l6_Conv2d_4/StatefulPartitionedCall#l6_Conv2d_4/StatefulPartitionedCall2H
"l9_Dense_1/StatefulPartitionedCall"l9_Dense_1/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
Ж
€
F__inference_l6_Conv2d_4_layer_call_and_return_conditional_losses_11851

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
с
†
+__inference_l5_Conv2d_3_layer_call_fn_11820

inputs!
unknown: 
	unknown_0: 
identityИҐStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_l5_Conv2d_3_layer_call_and_return_conditional_losses_11193w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€

: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€


 
_user_specified_nameinputs
¶

ш
F__inference_l10_Dense_2_layer_call_and_return_conditional_losses_11912

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
К
€
F__inference_l1_Conv2d_1_layer_call_and_return_conditional_losses_11157

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€66*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€66X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€66i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€66w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€аа: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
ћ
Щ
+__inference_l10_Dense_2_layer_call_fn_11901

inputs
unknown:	А
	unknown_0:
identityИҐStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_l10_Dense_2_layer_call_and_return_conditional_losses_11253o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
…
c
G__inference_l8_Flatten_2_layer_call_and_return_conditional_losses_11223

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ґ
»
'__inference_model_3_layer_call_fn_11478
input_1!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А

unknown_10:
identityИҐStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_11422o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аа: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€аа
!
_user_specified_name	input_1"µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*µ
serving_default°
E
input_1:
serving_default_input_1:0€€€€€€€€€аа<
output_10
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:рх
ї
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
inp
	l1

l2
l3
l4
l5
l6
l7
l8
l9
out
	optimizer

signatures"
_tf_keras_model
v
0
1
2
3
4
5
6
7
8
9
10
 11"
trackable_list_wrapper
v
0
1
2
3
4
5
6
7
8
9
10
 11"
trackable_list_wrapper
 "
trackable_list_wrapper
 
!non_trainable_variables

"layers
#metrics
$layer_regularization_losses
%layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ж
&trace_0
'trace_1
(trace_2
)trace_32ы
'__inference_model_3_layer_call_fn_11287
'__inference_model_3_layer_call_fn_11620
'__inference_model_3_layer_call_fn_11649
'__inference_model_3_layer_call_fn_11478‘
Ћ≤«
FullArgSpec-
args%Ъ"
jself
jinputs
jisBuildGraph
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 z&trace_0z'trace_1z(trace_2z)trace_3
“
*trace_0
+trace_1
,trace_2
-trace_32з
B__inference_model_3_layer_call_and_return_conditional_losses_11700
B__inference_model_3_layer_call_and_return_conditional_losses_11751
B__inference_model_3_layer_call_and_return_conditional_losses_11516
B__inference_model_3_layer_call_and_return_conditional_losses_11554‘
Ћ≤«
FullArgSpec-
args%Ъ"
jself
jinputs
jisBuildGraph
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 z*trace_0z+trace_1z,trace_2z-trace_3
ЋB»
 __inference__wrapped_model_11103input_1"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
"
_tf_keras_input_layer
Ё
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses

kernel
bias
 4_jit_compiled_convolution_op"
_tf_keras_layer
•
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses

kernel
bias
 A_jit_compiled_convolution_op"
_tf_keras_layer
•
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses

kernel
bias
 N_jit_compiled_convolution_op"
_tf_keras_layer
Ё
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

kernel
bias
 U_jit_compiled_convolution_op"
_tf_keras_layer
•
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses"
_tf_keras_layer
•
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses"
_tf_keras_layer
ї
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
ї
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses

kernel
 bias"
_tf_keras_layer
√
niter

obeta_1

pbeta_2
	qdecay
rlearning_ratem≈m∆m«m»m…m mЋmћmЌmќmѕ m–v—v“v”v‘v’v÷v„vЎvўvЏvџ v№"
	optimizer
,
sserving_default"
signature_map
,:*2l1_Conv2d_1/kernel
:2l1_Conv2d_1/bias
,:*2l3_Conv2d_2/kernel
:2l3_Conv2d_2/bias
,:* 2l5_Conv2d_3/kernel
: 2l5_Conv2d_3/bias
,:* @2l6_Conv2d_4/kernel
:@2l6_Conv2d_4/bias
%:#
АА2l9_Dense_1/kernel
:А2l9_Dense_1/bias
%:#	А2l10_Dense_2/kernel
:2l10_Dense_2/bias
 "
trackable_list_wrapper
n
0
	1

2
3
4
5
6
7
8
9
10"
trackable_list_wrapper
.
t0
u1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ОBЛ
'__inference_model_3_layer_call_fn_11287input_1"‘
Ћ≤«
FullArgSpec-
args%Ъ"
jself
jinputs
jisBuildGraph
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 
НBК
'__inference_model_3_layer_call_fn_11620inputs"‘
Ћ≤«
FullArgSpec-
args%Ъ"
jself
jinputs
jisBuildGraph
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 
НBК
'__inference_model_3_layer_call_fn_11649inputs"‘
Ћ≤«
FullArgSpec-
args%Ъ"
jself
jinputs
jisBuildGraph
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 
ОBЛ
'__inference_model_3_layer_call_fn_11478input_1"‘
Ћ≤«
FullArgSpec-
args%Ъ"
jself
jinputs
jisBuildGraph
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 
®B•
B__inference_model_3_layer_call_and_return_conditional_losses_11700inputs"‘
Ћ≤«
FullArgSpec-
args%Ъ"
jself
jinputs
jisBuildGraph
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 
®B•
B__inference_model_3_layer_call_and_return_conditional_losses_11751inputs"‘
Ћ≤«
FullArgSpec-
args%Ъ"
jself
jinputs
jisBuildGraph
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 
©B¶
B__inference_model_3_layer_call_and_return_conditional_losses_11516input_1"‘
Ћ≤«
FullArgSpec-
args%Ъ"
jself
jinputs
jisBuildGraph
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 
©B¶
B__inference_model_3_layer_call_and_return_conditional_losses_11554input_1"‘
Ћ≤«
FullArgSpec-
args%Ъ"
jself
jinputs
jisBuildGraph
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
п
{trace_02“
+__inference_l1_Conv2d_1_layer_call_fn_11760Ґ
Щ≤Х
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
annotations™ *
 z{trace_0
К
|trace_02н
F__inference_l1_Conv2d_1_layer_call_and_return_conditional_losses_11771Ґ
Щ≤Х
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
annotations™ *
 z|trace_0
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ѓ
}non_trainable_variables

~layers
metrics
 Аlayer_regularization_losses
Бlayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
ф
Вtrace_02’
.__inference_l2_MaxPool2D_1_layer_call_fn_11776Ґ
Щ≤Х
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
annotations™ *
 zВtrace_0
П
Гtrace_02р
I__inference_l2_MaxPool2D_1_layer_call_and_return_conditional_losses_11781Ґ
Щ≤Х
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
annotations™ *
 zГtrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Дnon_trainable_variables
Еlayers
Жmetrics
 Зlayer_regularization_losses
Иlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
с
Йtrace_02“
+__inference_l3_Conv2d_2_layer_call_fn_11790Ґ
Щ≤Х
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
annotations™ *
 zЙtrace_0
М
Кtrace_02н
F__inference_l3_Conv2d_2_layer_call_and_return_conditional_losses_11801Ґ
Щ≤Х
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
annotations™ *
 zКtrace_0
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
ф
Рtrace_02’
.__inference_l4_MaxPool2D_2_layer_call_fn_11806Ґ
Щ≤Х
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
annotations™ *
 zРtrace_0
П
Сtrace_02р
I__inference_l4_MaxPool2D_2_layer_call_and_return_conditional_losses_11811Ґ
Щ≤Х
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
annotations™ *
 zСtrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
с
Чtrace_02“
+__inference_l5_Conv2d_3_layer_call_fn_11820Ґ
Щ≤Х
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
annotations™ *
 zЧtrace_0
М
Шtrace_02н
F__inference_l5_Conv2d_3_layer_call_and_return_conditional_losses_11831Ґ
Щ≤Х
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
annotations™ *
 zШtrace_0
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
с
Юtrace_02“
+__inference_l6_Conv2d_4_layer_call_fn_11840Ґ
Щ≤Х
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
annotations™ *
 zЮtrace_0
М
Яtrace_02н
F__inference_l6_Conv2d_4_layer_call_and_return_conditional_losses_11851Ґ
Щ≤Х
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
annotations™ *
 zЯtrace_0
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
†non_trainable_variables
°layers
Ґmetrics
 £layer_regularization_losses
§layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
ф
•trace_02’
.__inference_l7_MaxPool2D_3_layer_call_fn_11856Ґ
Щ≤Х
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
annotations™ *
 z•trace_0
П
¶trace_02р
I__inference_l7_MaxPool2D_3_layer_call_and_return_conditional_losses_11861Ґ
Щ≤Х
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
annotations™ *
 z¶trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Іnon_trainable_variables
®layers
©metrics
 ™layer_regularization_losses
Ђlayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
т
ђtrace_02”
,__inference_l8_Flatten_2_layer_call_fn_11866Ґ
Щ≤Х
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
annotations™ *
 zђtrace_0
Н
≠trace_02о
G__inference_l8_Flatten_2_layer_call_and_return_conditional_losses_11872Ґ
Щ≤Х
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
annotations™ *
 z≠trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Ѓnon_trainable_variables
ѓlayers
∞metrics
 ±layer_regularization_losses
≤layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
р
≥trace_02—
*__inference_l9_Dense_1_layer_call_fn_11881Ґ
Щ≤Х
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
annotations™ *
 z≥trace_0
Л
іtrace_02м
E__inference_l9_Dense_1_layer_call_and_return_conditional_losses_11892Ґ
Щ≤Х
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
annotations™ *
 zіtrace_0
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
µnon_trainable_variables
ґlayers
Јmetrics
 Єlayer_regularization_losses
єlayer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
с
Їtrace_02“
+__inference_l10_Dense_2_layer_call_fn_11901Ґ
Щ≤Х
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
annotations™ *
 zЇtrace_0
М
їtrace_02н
F__inference_l10_Dense_2_layer_call_and_return_conditional_losses_11912Ґ
Щ≤Х
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
annotations™ *
 zїtrace_0
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 B«
#__inference_signature_wrapper_11591input_1"Ф
Н≤Й
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
annotations™ *
 
R
Љ	variables
љ	keras_api

Њtotal

њcount"
_tf_keras_metric
c
ј	variables
Ѕ	keras_api

¬total

√count
ƒ
_fn_kwargs"
_tf_keras_metric
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
яB№
+__inference_l1_Conv2d_1_layer_call_fn_11760inputs"Ґ
Щ≤Х
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
annotations™ *
 
ъBч
F__inference_l1_Conv2d_1_layer_call_and_return_conditional_losses_11771inputs"Ґ
Щ≤Х
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
annotations™ *
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
вBя
.__inference_l2_MaxPool2D_1_layer_call_fn_11776inputs"Ґ
Щ≤Х
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
annotations™ *
 
эBъ
I__inference_l2_MaxPool2D_1_layer_call_and_return_conditional_losses_11781inputs"Ґ
Щ≤Х
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
annotations™ *
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
яB№
+__inference_l3_Conv2d_2_layer_call_fn_11790inputs"Ґ
Щ≤Х
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
annotations™ *
 
ъBч
F__inference_l3_Conv2d_2_layer_call_and_return_conditional_losses_11801inputs"Ґ
Щ≤Х
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
annotations™ *
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
вBя
.__inference_l4_MaxPool2D_2_layer_call_fn_11806inputs"Ґ
Щ≤Х
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
annotations™ *
 
эBъ
I__inference_l4_MaxPool2D_2_layer_call_and_return_conditional_losses_11811inputs"Ґ
Щ≤Х
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
annotations™ *
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
яB№
+__inference_l5_Conv2d_3_layer_call_fn_11820inputs"Ґ
Щ≤Х
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
annotations™ *
 
ъBч
F__inference_l5_Conv2d_3_layer_call_and_return_conditional_losses_11831inputs"Ґ
Щ≤Х
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
annotations™ *
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
яB№
+__inference_l6_Conv2d_4_layer_call_fn_11840inputs"Ґ
Щ≤Х
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
annotations™ *
 
ъBч
F__inference_l6_Conv2d_4_layer_call_and_return_conditional_losses_11851inputs"Ґ
Щ≤Х
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
annotations™ *
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
вBя
.__inference_l7_MaxPool2D_3_layer_call_fn_11856inputs"Ґ
Щ≤Х
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
annotations™ *
 
эBъ
I__inference_l7_MaxPool2D_3_layer_call_and_return_conditional_losses_11861inputs"Ґ
Щ≤Х
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
annotations™ *
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
аBЁ
,__inference_l8_Flatten_2_layer_call_fn_11866inputs"Ґ
Щ≤Х
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
annotations™ *
 
ыBш
G__inference_l8_Flatten_2_layer_call_and_return_conditional_losses_11872inputs"Ґ
Щ≤Х
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
annotations™ *
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
ёBџ
*__inference_l9_Dense_1_layer_call_fn_11881inputs"Ґ
Щ≤Х
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
annotations™ *
 
щBц
E__inference_l9_Dense_1_layer_call_and_return_conditional_losses_11892inputs"Ґ
Щ≤Х
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
annotations™ *
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
яB№
+__inference_l10_Dense_2_layer_call_fn_11901inputs"Ґ
Щ≤Х
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
annotations™ *
 
ъBч
F__inference_l10_Dense_2_layer_call_and_return_conditional_losses_11912inputs"Ґ
Щ≤Х
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
annotations™ *
 
0
Њ0
њ1"
trackable_list_wrapper
.
Љ	variables"
_generic_user_object
:  (2total
:  (2count
0
¬0
√1"
trackable_list_wrapper
.
ј	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
1:/2Adam/l1_Conv2d_1/kernel/m
#:!2Adam/l1_Conv2d_1/bias/m
1:/2Adam/l3_Conv2d_2/kernel/m
#:!2Adam/l3_Conv2d_2/bias/m
1:/ 2Adam/l5_Conv2d_3/kernel/m
#:! 2Adam/l5_Conv2d_3/bias/m
1:/ @2Adam/l6_Conv2d_4/kernel/m
#:!@2Adam/l6_Conv2d_4/bias/m
*:(
АА2Adam/l9_Dense_1/kernel/m
#:!А2Adam/l9_Dense_1/bias/m
*:(	А2Adam/l10_Dense_2/kernel/m
#:!2Adam/l10_Dense_2/bias/m
1:/2Adam/l1_Conv2d_1/kernel/v
#:!2Adam/l1_Conv2d_1/bias/v
1:/2Adam/l3_Conv2d_2/kernel/v
#:!2Adam/l3_Conv2d_2/bias/v
1:/ 2Adam/l5_Conv2d_3/kernel/v
#:! 2Adam/l5_Conv2d_3/bias/v
1:/ @2Adam/l6_Conv2d_4/kernel/v
#:!@2Adam/l6_Conv2d_4/bias/v
*:(
АА2Adam/l9_Dense_1/kernel/v
#:!А2Adam/l9_Dense_1/bias/v
*:(	А2Adam/l10_Dense_2/kernel/v
#:!2Adam/l10_Dense_2/bias/v£
 __inference__wrapped_model_11103 :Ґ7
0Ґ-
+К(
input_1€€€€€€€€€аа
™ "3™0
.
output_1"К
output_1€€€€€€€€€І
F__inference_l10_Dense_2_layer_call_and_return_conditional_losses_11912] 0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€
Ъ 
+__inference_l10_Dense_2_layer_call_fn_11901P 0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€Є
F__inference_l1_Conv2d_1_layer_call_and_return_conditional_losses_11771n9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€аа
™ "-Ґ*
#К 
0€€€€€€€€€66
Ъ Р
+__inference_l1_Conv2d_1_layer_call_fn_11760a9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€аа
™ " К€€€€€€€€€66м
I__inference_l2_MaxPool2D_1_layer_call_and_return_conditional_losses_11781ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ƒ
.__inference_l2_MaxPool2D_1_layer_call_fn_11776СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ґ
F__inference_l3_Conv2d_2_layer_call_and_return_conditional_losses_11801l7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ "-Ґ*
#К 
0€€€€€€€€€
Ъ О
+__inference_l3_Conv2d_2_layer_call_fn_11790_7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ " К€€€€€€€€€м
I__inference_l4_MaxPool2D_2_layer_call_and_return_conditional_losses_11811ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ƒ
.__inference_l4_MaxPool2D_2_layer_call_fn_11806СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ґ
F__inference_l5_Conv2d_3_layer_call_and_return_conditional_losses_11831l7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€


™ "-Ґ*
#К 
0€€€€€€€€€ 
Ъ О
+__inference_l5_Conv2d_3_layer_call_fn_11820_7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€


™ " К€€€€€€€€€ ґ
F__inference_l6_Conv2d_4_layer_call_and_return_conditional_losses_11851l7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ О
+__inference_l6_Conv2d_4_layer_call_fn_11840_7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ " К€€€€€€€€€@м
I__inference_l7_MaxPool2D_3_layer_call_and_return_conditional_losses_11861ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ƒ
.__inference_l7_MaxPool2D_3_layer_call_fn_11856СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ђ
G__inference_l8_Flatten_2_layer_call_and_return_conditional_losses_11872a7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "&Ґ#
К
0€€€€€€€€€А
Ъ Д
,__inference_l8_Flatten_2_layer_call_fn_11866T7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "К€€€€€€€€€АІ
E__inference_l9_Dense_1_layer_call_and_return_conditional_losses_11892^0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А
Ъ 
*__inference_l9_Dense_1_layer_call_fn_11881Q0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€Аћ
B__inference_model_3_layer_call_and_return_conditional_losses_11516Е NҐK
4Ґ1
+К(
input_1€€€€€€€€€аа
p 
™

trainingp "%Ґ"
К
0€€€€€€€€€
Ъ ћ
B__inference_model_3_layer_call_and_return_conditional_losses_11554Е NҐK
4Ґ1
+К(
input_1€€€€€€€€€аа
p 
™

trainingp"%Ґ"
К
0€€€€€€€€€
Ъ Ћ
B__inference_model_3_layer_call_and_return_conditional_losses_11700Д MҐJ
3Ґ0
*К'
inputs€€€€€€€€€аа
p 
™

trainingp "%Ґ"
К
0€€€€€€€€€
Ъ Ћ
B__inference_model_3_layer_call_and_return_conditional_losses_11751Д MҐJ
3Ґ0
*К'
inputs€€€€€€€€€аа
p 
™

trainingp"%Ґ"
К
0€€€€€€€€€
Ъ £
'__inference_model_3_layer_call_fn_11287x NҐK
4Ґ1
+К(
input_1€€€€€€€€€аа
p 
™

trainingp "К€€€€€€€€€£
'__inference_model_3_layer_call_fn_11478x NҐK
4Ґ1
+К(
input_1€€€€€€€€€аа
p 
™

trainingp"К€€€€€€€€€Ґ
'__inference_model_3_layer_call_fn_11620w MҐJ
3Ґ0
*К'
inputs€€€€€€€€€аа
p 
™

trainingp "К€€€€€€€€€Ґ
'__inference_model_3_layer_call_fn_11649w MҐJ
3Ґ0
*К'
inputs€€€€€€€€€аа
p 
™

trainingp"К€€€€€€€€€≤
#__inference_signature_wrapper_11591К EҐB
Ґ 
;™8
6
input_1+К(
input_1€€€€€€€€€аа"3™0
.
output_1"К
output_1€€€€€€€€€