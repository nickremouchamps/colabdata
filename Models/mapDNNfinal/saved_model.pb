??!
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%??L>"
Ttype0:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
dtypetype?
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
list(type)(0?
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
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
-
Sqrt
x"T
y"T"
Ttype:

2
3
Square
x"T
y"T"
Ttype:
2
	
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-0-ga4dfb8d1a718??
`
meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namemean
Y
mean/Read/ReadVariableOpReadVariableOpmean*
_output_shapes
:*
dtype0
h
varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
variance
a
variance/Read/ReadVariableOpReadVariableOpvariance*
_output_shapes
:*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0	
?
batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_4/gamma
?
/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_4/gamma*
_output_shapes
:*
dtype0
?
batch_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_4/beta
?
.batch_normalization_4/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_4/beta*
_output_shapes
:*
dtype0
?
!batch_normalization_4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_4/moving_mean
?
5batch_normalization_4/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_4/moving_mean*
_output_shapes
:*
dtype0
?
%batch_normalization_4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_4/moving_variance
?
9batch_normalization_4/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_4/moving_variance*
_output_shapes
:*
dtype0
z
dense_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2* 
shared_namedense_24/kernel
s
#dense_24/kernel/Read/ReadVariableOpReadVariableOpdense_24/kernel*
_output_shapes

:2*
dtype0
r
dense_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_24/bias
k
!dense_24/bias/Read/ReadVariableOpReadVariableOpdense_24/bias*
_output_shapes
:2*
dtype0
z
dense_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2d* 
shared_namedense_25/kernel
s
#dense_25/kernel/Read/ReadVariableOpReadVariableOpdense_25/kernel*
_output_shapes

:2d*
dtype0
r
dense_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_25/bias
k
!dense_25/bias/Read/ReadVariableOpReadVariableOpdense_25/bias*
_output_shapes
:d*
dtype0
{
dense_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?* 
shared_namedense_26/kernel
t
#dense_26/kernel/Read/ReadVariableOpReadVariableOpdense_26/kernel*
_output_shapes
:	d?*
dtype0
s
dense_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_26/bias
l
!dense_26/bias/Read/ReadVariableOpReadVariableOpdense_26/bias*
_output_shapes	
:?*
dtype0
{
dense_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d* 
shared_namedense_27/kernel
t
#dense_27/kernel/Read/ReadVariableOpReadVariableOpdense_27/kernel*
_output_shapes
:	?d*
dtype0
r
dense_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_27/bias
k
!dense_27/bias/Read/ReadVariableOpReadVariableOpdense_27/bias*
_output_shapes
:d*
dtype0
z
dense_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2* 
shared_namedense_28/kernel
s
#dense_28/kernel/Read/ReadVariableOpReadVariableOpdense_28/kernel*
_output_shapes

:d2*
dtype0
r
dense_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_28/bias
k
!dense_28/bias/Read/ReadVariableOpReadVariableOpdense_28/bias*
_output_shapes
:2*
dtype0
z
dense_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2* 
shared_namedense_29/kernel
s
#dense_29/kernel/Read/ReadVariableOpReadVariableOpdense_29/kernel*
_output_shapes

:2*
dtype0
r
dense_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_29/bias
k
!dense_29/bias/Read/ReadVariableOpReadVariableOpdense_29/bias*
_output_shapes
:*
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
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0

NoOpNoOp
?3
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?3
value?2B?2 B?2
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
	layer_with_weights-7
	layer-8

	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
 
?

_keep_axis
_reduce_axis
_reduce_axis_mask
_broadcast_shape
mean
variance
	count
	keras_api
?
axis
	gamma
beta
moving_mean
moving_variance
trainable_variables
regularization_losses
	variables
 	keras_api
x
!
activation

"kernel
#bias
$trainable_variables
%regularization_losses
&	variables
'	keras_api
x
!
activation

(kernel
)bias
*trainable_variables
+regularization_losses
,	variables
-	keras_api
x
!
activation

.kernel
/bias
0trainable_variables
1regularization_losses
2	variables
3	keras_api
x
!
activation

4kernel
5bias
6trainable_variables
7regularization_losses
8	variables
9	keras_api
x
!
activation

:kernel
;bias
<trainable_variables
=regularization_losses
>	variables
?	keras_api
x
!
activation

@kernel
Abias
Btrainable_variables
Cregularization_losses
D	variables
E	keras_api
 
f
0
1
"2
#3
(4
)5
.6
/7
48
59
:10
;11
@12
A13
 
?
0
1
2
3
4
5
6
"7
#8
(9
)10
.11
/12
413
514
:15
;16
@17
A18
?
Fnon_trainable_variables
Glayer_regularization_losses
Hmetrics

Ilayers
trainable_variables
regularization_losses
	variables
Jlayer_metrics
 
 
 
 
 
NL
VARIABLE_VALUEmean4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEvariance8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEcount5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUE
 
 
fd
VARIABLE_VALUEbatch_normalization_4/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_4/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_4/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_4/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
2
3
?
Knon_trainable_variables
Llayer_regularization_losses
Mmetrics

Nlayers
trainable_variables
regularization_losses
	variables
Olayer_metrics
R
Ptrainable_variables
Qregularization_losses
R	variables
S	keras_api
[Y
VARIABLE_VALUEdense_24/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_24/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

"0
#1
 

"0
#1
?
Tnon_trainable_variables
Ulayer_regularization_losses
Vmetrics

Wlayers
$trainable_variables
%regularization_losses
&	variables
Xlayer_metrics
[Y
VARIABLE_VALUEdense_25/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_25/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

(0
)1
 

(0
)1
?
Ynon_trainable_variables
Zlayer_regularization_losses
[metrics

\layers
*trainable_variables
+regularization_losses
,	variables
]layer_metrics
[Y
VARIABLE_VALUEdense_26/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_26/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

.0
/1
 

.0
/1
?
^non_trainable_variables
_layer_regularization_losses
`metrics

alayers
0trainable_variables
1regularization_losses
2	variables
blayer_metrics
[Y
VARIABLE_VALUEdense_27/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_27/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

40
51
 

40
51
?
cnon_trainable_variables
dlayer_regularization_losses
emetrics

flayers
6trainable_variables
7regularization_losses
8	variables
glayer_metrics
[Y
VARIABLE_VALUEdense_28/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_28/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

:0
;1
 

:0
;1
?
hnon_trainable_variables
ilayer_regularization_losses
jmetrics

klayers
<trainable_variables
=regularization_losses
>	variables
llayer_metrics
[Y
VARIABLE_VALUEdense_29/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_29/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

@0
A1
 

@0
A1
?
mnon_trainable_variables
nlayer_regularization_losses
ometrics

players
Btrainable_variables
Cregularization_losses
D	variables
qlayer_metrics
#
0
1
2
3
4
 

r0
s1
t2
?
0
1
2
3
4
5
6
7
	8
 

0
1
 
 
 
 
 
 
 
?
unon_trainable_variables
vlayer_regularization_losses
wmetrics

xlayers
Ptrainable_variables
Qregularization_losses
R	variables
ylayer_metrics
 
 
 

!0
 
 
 
 

!0
 
 
 
 

!0
 
 
 
 

!0
 
 
 
 

!0
 
 
 
 

!0
 
4
	ztotal
	{count
|	variables
}	keras_api
G
	~total
	count
?
_fn_kwargs
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

z0
{1

|	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

~0
1

?	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_34keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
z
serving_default_input_5Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_5meanvariance%batch_normalization_4/moving_variancebatch_normalization_4/gamma!batch_normalization_4/moving_meanbatch_normalization_4/betadense_24/kerneldense_24/biasdense_25/kerneldense_25/biasdense_26/kerneldense_26/biasdense_27/kerneldense_27/biasdense_28/kerneldense_28/biasdense_29/kerneldense_29/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_1011595
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamemean/Read/ReadVariableOpvariance/Read/ReadVariableOpcount/Read/ReadVariableOp/batch_normalization_4/gamma/Read/ReadVariableOp.batch_normalization_4/beta/Read/ReadVariableOp5batch_normalization_4/moving_mean/Read/ReadVariableOp9batch_normalization_4/moving_variance/Read/ReadVariableOp#dense_24/kernel/Read/ReadVariableOp!dense_24/bias/Read/ReadVariableOp#dense_25/kernel/Read/ReadVariableOp!dense_25/bias/Read/ReadVariableOp#dense_26/kernel/Read/ReadVariableOp!dense_26/bias/Read/ReadVariableOp#dense_27/kernel/Read/ReadVariableOp!dense_27/bias/Read/ReadVariableOp#dense_28/kernel/Read/ReadVariableOp!dense_28/bias/Read/ReadVariableOp#dense_29/kernel/Read/ReadVariableOp!dense_29/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_3/Read/ReadVariableOpConst*&
Tin
2	*
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
GPU 2J 8? *)
f$R"
 __inference__traced_save_1012909
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemeanvariancecountbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_variancedense_24/kerneldense_24/biasdense_25/kerneldense_25/biasdense_26/kerneldense_26/biasdense_27/kerneldense_27/biasdense_28/kerneldense_28/biasdense_29/kerneldense_29/biastotalcount_1total_1count_2total_2count_3*%
Tin
2*
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
GPU 2J 8? *,
f'R%
#__inference__traced_restore_1012994??
?
?
*__inference_dense_28_layer_call_fn_1012465

inputs
unknown:d2
	unknown_0:2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_28_layer_call_and_return_conditional_losses_10103852
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
I__inference_dense_27_layer_call_and_return_all_conditional_losses_1012435

inputs
unknown:	?d
	unknown_0:d
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_27_layer_call_and_return_conditional_losses_10103392
StatefulPartitionedCall?
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU 2J 8? *:
f5R3
1__inference_dense_27_activity_regularizer_10101272
PartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????d2

Identityy

Identity_1IdentityPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?i
?
#__inference__traced_restore_1012994
file_prefix#
assignvariableop_mean:)
assignvariableop_1_variance:"
assignvariableop_2_count:	 <
.assignvariableop_3_batch_normalization_4_gamma:;
-assignvariableop_4_batch_normalization_4_beta:B
4assignvariableop_5_batch_normalization_4_moving_mean:F
8assignvariableop_6_batch_normalization_4_moving_variance:4
"assignvariableop_7_dense_24_kernel:2.
 assignvariableop_8_dense_24_bias:24
"assignvariableop_9_dense_25_kernel:2d/
!assignvariableop_10_dense_25_bias:d6
#assignvariableop_11_dense_26_kernel:	d?0
!assignvariableop_12_dense_26_bias:	?6
#assignvariableop_13_dense_27_kernel:	?d/
!assignvariableop_14_dense_27_bias:d5
#assignvariableop_15_dense_28_kernel:d2/
!assignvariableop_16_dense_28_bias:25
#assignvariableop_17_dense_29_kernel:2/
!assignvariableop_18_dense_29_bias:#
assignvariableop_19_total: %
assignvariableop_20_count_1: %
assignvariableop_21_total_1: %
assignvariableop_22_count_2: %
assignvariableop_23_total_2: %
assignvariableop_24_count_3: 
identity_26??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*|
_output_shapesj
h::::::::::::::::::::::::::*(
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_meanIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_varianceIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_countIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_4_gammaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp-assignvariableop_4_batch_normalization_4_betaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp4assignvariableop_5_batch_normalization_4_moving_meanIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp8assignvariableop_6_batch_normalization_4_moving_varianceIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_dense_24_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp assignvariableop_8_dense_24_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp"assignvariableop_9_dense_25_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp!assignvariableop_10_dense_25_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp#assignvariableop_11_dense_26_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp!assignvariableop_12_dense_26_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_dense_27_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp!assignvariableop_14_dense_27_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp#assignvariableop_15_dense_28_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp!assignvariableop_16_dense_28_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp#assignvariableop_17_dense_29_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp!assignvariableop_18_dense_29_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_totalIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_2Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOpassignvariableop_23_total_2Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOpassignvariableop_24_count_3Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_249
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_25Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_25?
Identity_26IdentityIdentity_25:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_26"#
identity_26Identity_26:output:0*G
_input_shapes6
4: : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_24AssignVariableOp_242(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
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
?
?
*__inference_dense_25_layer_call_fn_1012342

inputs
unknown:2d
	unknown_0:d
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_25_layer_call_and_return_conditional_losses_10102472
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
(__inference_mapDNN_layer_call_fn_1011641

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:2
	unknown_6:2
	unknown_7:2d
	unknown_8:d
	unknown_9:	d?

unknown_10:	?

unknown_11:	?d

unknown_12:d

unknown_13:d2

unknown_14:2

unknown_15:2

unknown_16:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout

2*
_collective_manager_ids
 *1
_output_shapes
:?????????: : : : : *4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_mapDNN_layer_call_and_return_conditional_losses_10105272
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?,
?
E__inference_dense_25_layer_call_and_return_conditional_losses_1010247

inputs0
matmul_readvariableop_resource:2d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_25/bias/Regularizer/Square/ReadVariableOp?.dense_25/kernel/Regularizer/Abs/ReadVariableOp?1dense_25/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAdd?
leaky_re_lu_4/LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????d*
alpha%???>2
leaky_re_lu_4/LeakyRelu?
!dense_25/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_25/kernel/Regularizer/Const?
.dense_25/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2d*
dtype020
.dense_25/kernel/Regularizer/Abs/ReadVariableOp?
dense_25/kernel/Regularizer/AbsAbs6dense_25/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:2d2!
dense_25/kernel/Regularizer/Abs?
#dense_25/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_25/kernel/Regularizer/Const_1?
dense_25/kernel/Regularizer/SumSum#dense_25/kernel/Regularizer/Abs:y:0,dense_25/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_25/kernel/Regularizer/Sum?
!dense_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_25/kernel/Regularizer/mul/x?
dense_25/kernel/Regularizer/mulMul*dense_25/kernel/Regularizer/mul/x:output:0(dense_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_25/kernel/Regularizer/mul?
dense_25/kernel/Regularizer/addAddV2*dense_25/kernel/Regularizer/Const:output:0#dense_25/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_25/kernel/Regularizer/add?
1dense_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2d*
dtype023
1dense_25/kernel/Regularizer/Square/ReadVariableOp?
"dense_25/kernel/Regularizer/SquareSquare9dense_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2d2$
"dense_25/kernel/Regularizer/Square?
#dense_25/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_25/kernel/Regularizer/Const_2?
!dense_25/kernel/Regularizer/Sum_1Sum&dense_25/kernel/Regularizer/Square:y:0,dense_25/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_25/kernel/Regularizer/Sum_1?
#dense_25/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_25/kernel/Regularizer/mul_1/x?
!dense_25/kernel/Regularizer/mul_1Mul,dense_25/kernel/Regularizer/mul_1/x:output:0*dense_25/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_25/kernel/Regularizer/mul_1?
!dense_25/kernel/Regularizer/add_1AddV2#dense_25/kernel/Regularizer/add:z:0%dense_25/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_25/kernel/Regularizer/add_1?
/dense_25/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_25/bias/Regularizer/Square/ReadVariableOp?
 dense_25/bias/Regularizer/SquareSquare7dense_25/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_25/bias/Regularizer/Square?
dense_25/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_25/bias/Regularizer/Const?
dense_25/bias/Regularizer/SumSum$dense_25/bias/Regularizer/Square:y:0(dense_25/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_25/bias/Regularizer/Sum?
dense_25/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_25/bias/Regularizer/mul/x?
dense_25/bias/Regularizer/mulMul(dense_25/bias/Regularizer/mul/x:output:0&dense_25/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_25/bias/Regularizer/mul?
IdentityIdentity%leaky_re_lu_4/LeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_25/bias/Regularizer/Square/ReadVariableOp/dense_25/bias/Regularizer/Square/ReadVariableOp2`
.dense_25/kernel/Regularizer/Abs/ReadVariableOp.dense_25/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_25/kernel/Regularizer/Square/ReadVariableOp1dense_25/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
H
1__inference_dense_24_activity_regularizer_1010088
x
identity@
SquareSquarex*
T0*
_output_shapes
:2
SquareA
RankRank
Square:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:?????????2
rangeN
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
?,
?
E__inference_dense_25_layer_call_and_return_conditional_losses_1012715

inputs0
matmul_readvariableop_resource:2d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_25/bias/Regularizer/Square/ReadVariableOp?.dense_25/kernel/Regularizer/Abs/ReadVariableOp?1dense_25/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAdd?
leaky_re_lu_4/LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????d*
alpha%???>2
leaky_re_lu_4/LeakyRelu?
!dense_25/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_25/kernel/Regularizer/Const?
.dense_25/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2d*
dtype020
.dense_25/kernel/Regularizer/Abs/ReadVariableOp?
dense_25/kernel/Regularizer/AbsAbs6dense_25/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:2d2!
dense_25/kernel/Regularizer/Abs?
#dense_25/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_25/kernel/Regularizer/Const_1?
dense_25/kernel/Regularizer/SumSum#dense_25/kernel/Regularizer/Abs:y:0,dense_25/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_25/kernel/Regularizer/Sum?
!dense_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_25/kernel/Regularizer/mul/x?
dense_25/kernel/Regularizer/mulMul*dense_25/kernel/Regularizer/mul/x:output:0(dense_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_25/kernel/Regularizer/mul?
dense_25/kernel/Regularizer/addAddV2*dense_25/kernel/Regularizer/Const:output:0#dense_25/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_25/kernel/Regularizer/add?
1dense_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2d*
dtype023
1dense_25/kernel/Regularizer/Square/ReadVariableOp?
"dense_25/kernel/Regularizer/SquareSquare9dense_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2d2$
"dense_25/kernel/Regularizer/Square?
#dense_25/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_25/kernel/Regularizer/Const_2?
!dense_25/kernel/Regularizer/Sum_1Sum&dense_25/kernel/Regularizer/Square:y:0,dense_25/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_25/kernel/Regularizer/Sum_1?
#dense_25/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_25/kernel/Regularizer/mul_1/x?
!dense_25/kernel/Regularizer/mul_1Mul,dense_25/kernel/Regularizer/mul_1/x:output:0*dense_25/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_25/kernel/Regularizer/mul_1?
!dense_25/kernel/Regularizer/add_1AddV2#dense_25/kernel/Regularizer/add:z:0%dense_25/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_25/kernel/Regularizer/add_1?
/dense_25/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_25/bias/Regularizer/Square/ReadVariableOp?
 dense_25/bias/Regularizer/SquareSquare7dense_25/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_25/bias/Regularizer/Square?
dense_25/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_25/bias/Regularizer/Const?
dense_25/bias/Regularizer/SumSum$dense_25/bias/Regularizer/Square:y:0(dense_25/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_25/bias/Regularizer/Sum?
dense_25/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_25/bias/Regularizer/mul/x?
dense_25/bias/Regularizer/mulMul(dense_25/bias/Regularizer/mul/x:output:0&dense_25/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_25/bias/Regularizer/mul?
IdentityIdentity%leaky_re_lu_4/LeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_25/bias/Regularizer/Square/ReadVariableOp/dense_25/bias/Regularizer/Square/ReadVariableOp2`
.dense_25/kernel/Regularizer/Abs/ReadVariableOp.dense_25/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_25/kernel/Regularizer/Square/ReadVariableOp1dense_25/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
I__inference_dense_25_layer_call_and_return_all_conditional_losses_1012353

inputs
unknown:2d
	unknown_0:d
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_25_layer_call_and_return_conditional_losses_10102472
StatefulPartitionedCall?
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU 2J 8? *:
f5R3
1__inference_dense_25_activity_regularizer_10101012
PartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????d2

Identityy

Identity_1IdentityPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
??
?
C__inference_mapDNN_layer_call_and_return_conditional_losses_1010945

inputs=
/normalization_4_reshape_readvariableop_resource:?
1normalization_4_reshape_1_readvariableop_resource:+
batch_normalization_4_1010755:+
batch_normalization_4_1010757:+
batch_normalization_4_1010759:+
batch_normalization_4_1010761:"
dense_24_1010764:2
dense_24_1010766:2"
dense_25_1010777:2d
dense_25_1010779:d#
dense_26_1010790:	d?
dense_26_1010792:	?#
dense_27_1010803:	?d
dense_27_1010805:d"
dense_28_1010816:d2
dense_28_1010818:2"
dense_29_1010829:2
dense_29_1010831:
identity

identity_1

identity_2

identity_3

identity_4

identity_5??-batch_normalization_4/StatefulPartitionedCall? dense_24/StatefulPartitionedCall?/dense_24/bias/Regularizer/Square/ReadVariableOp?.dense_24/kernel/Regularizer/Abs/ReadVariableOp?1dense_24/kernel/Regularizer/Square/ReadVariableOp? dense_25/StatefulPartitionedCall?/dense_25/bias/Regularizer/Square/ReadVariableOp?.dense_25/kernel/Regularizer/Abs/ReadVariableOp?1dense_25/kernel/Regularizer/Square/ReadVariableOp? dense_26/StatefulPartitionedCall?/dense_26/bias/Regularizer/Square/ReadVariableOp?.dense_26/kernel/Regularizer/Abs/ReadVariableOp?1dense_26/kernel/Regularizer/Square/ReadVariableOp? dense_27/StatefulPartitionedCall?/dense_27/bias/Regularizer/Square/ReadVariableOp?.dense_27/kernel/Regularizer/Abs/ReadVariableOp?1dense_27/kernel/Regularizer/Square/ReadVariableOp? dense_28/StatefulPartitionedCall?/dense_28/bias/Regularizer/Square/ReadVariableOp?.dense_28/kernel/Regularizer/Abs/ReadVariableOp?1dense_28/kernel/Regularizer/Square/ReadVariableOp? dense_29/StatefulPartitionedCall?&normalization_4/Reshape/ReadVariableOp?(normalization_4/Reshape_1/ReadVariableOp?
&normalization_4/Reshape/ReadVariableOpReadVariableOp/normalization_4_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_4/Reshape/ReadVariableOp?
normalization_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_4/Reshape/shape?
normalization_4/ReshapeReshape.normalization_4/Reshape/ReadVariableOp:value:0&normalization_4/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_4/Reshape?
(normalization_4/Reshape_1/ReadVariableOpReadVariableOp1normalization_4_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_4/Reshape_1/ReadVariableOp?
normalization_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_4/Reshape_1/shape?
normalization_4/Reshape_1Reshape0normalization_4/Reshape_1/ReadVariableOp:value:0(normalization_4/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_4/Reshape_1?
normalization_4/subSubinputs normalization_4/Reshape:output:0*
T0*'
_output_shapes
:?????????2
normalization_4/sub?
normalization_4/SqrtSqrt"normalization_4/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_4/Sqrt{
normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_4/Maximum/y?
normalization_4/MaximumMaximumnormalization_4/Sqrt:y:0"normalization_4/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_4/Maximum?
normalization_4/truedivRealDivnormalization_4/sub:z:0normalization_4/Maximum:z:0*
T0*'
_output_shapes
:?????????2
normalization_4/truediv?
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCallnormalization_4/truediv:z:0batch_normalization_4_1010755batch_normalization_4_1010757batch_normalization_4_1010759batch_normalization_4_1010761*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_10099972/
-batch_normalization_4/StatefulPartitionedCall?
 dense_24/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0dense_24_1010764dense_24_1010766*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_24_layer_call_and_return_conditional_losses_10102012"
 dense_24/StatefulPartitionedCall?
,dense_24/ActivityRegularizer/PartitionedCallPartitionedCall)dense_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU 2J 8? *:
f5R3
1__inference_dense_24_activity_regularizer_10100882.
,dense_24/ActivityRegularizer/PartitionedCall?
"dense_24/ActivityRegularizer/ShapeShape)dense_24/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_24/ActivityRegularizer/Shape?
0dense_24/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_24/ActivityRegularizer/strided_slice/stack?
2dense_24/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_24/ActivityRegularizer/strided_slice/stack_1?
2dense_24/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_24/ActivityRegularizer/strided_slice/stack_2?
*dense_24/ActivityRegularizer/strided_sliceStridedSlice+dense_24/ActivityRegularizer/Shape:output:09dense_24/ActivityRegularizer/strided_slice/stack:output:0;dense_24/ActivityRegularizer/strided_slice/stack_1:output:0;dense_24/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_24/ActivityRegularizer/strided_slice?
!dense_24/ActivityRegularizer/CastCast3dense_24/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_24/ActivityRegularizer/Cast?
$dense_24/ActivityRegularizer/truedivRealDiv5dense_24/ActivityRegularizer/PartitionedCall:output:0%dense_24/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_24/ActivityRegularizer/truediv?
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_1010777dense_25_1010779*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_25_layer_call_and_return_conditional_losses_10102472"
 dense_25/StatefulPartitionedCall?
,dense_25/ActivityRegularizer/PartitionedCallPartitionedCall)dense_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU 2J 8? *:
f5R3
1__inference_dense_25_activity_regularizer_10101012.
,dense_25/ActivityRegularizer/PartitionedCall?
"dense_25/ActivityRegularizer/ShapeShape)dense_25/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_25/ActivityRegularizer/Shape?
0dense_25/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_25/ActivityRegularizer/strided_slice/stack?
2dense_25/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_25/ActivityRegularizer/strided_slice/stack_1?
2dense_25/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_25/ActivityRegularizer/strided_slice/stack_2?
*dense_25/ActivityRegularizer/strided_sliceStridedSlice+dense_25/ActivityRegularizer/Shape:output:09dense_25/ActivityRegularizer/strided_slice/stack:output:0;dense_25/ActivityRegularizer/strided_slice/stack_1:output:0;dense_25/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_25/ActivityRegularizer/strided_slice?
!dense_25/ActivityRegularizer/CastCast3dense_25/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_25/ActivityRegularizer/Cast?
$dense_25/ActivityRegularizer/truedivRealDiv5dense_25/ActivityRegularizer/PartitionedCall:output:0%dense_25/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_25/ActivityRegularizer/truediv?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall)dense_25/StatefulPartitionedCall:output:0dense_26_1010790dense_26_1010792*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_26_layer_call_and_return_conditional_losses_10102932"
 dense_26/StatefulPartitionedCall?
,dense_26/ActivityRegularizer/PartitionedCallPartitionedCall)dense_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU 2J 8? *:
f5R3
1__inference_dense_26_activity_regularizer_10101142.
,dense_26/ActivityRegularizer/PartitionedCall?
"dense_26/ActivityRegularizer/ShapeShape)dense_26/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_26/ActivityRegularizer/Shape?
0dense_26/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_26/ActivityRegularizer/strided_slice/stack?
2dense_26/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_26/ActivityRegularizer/strided_slice/stack_1?
2dense_26/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_26/ActivityRegularizer/strided_slice/stack_2?
*dense_26/ActivityRegularizer/strided_sliceStridedSlice+dense_26/ActivityRegularizer/Shape:output:09dense_26/ActivityRegularizer/strided_slice/stack:output:0;dense_26/ActivityRegularizer/strided_slice/stack_1:output:0;dense_26/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_26/ActivityRegularizer/strided_slice?
!dense_26/ActivityRegularizer/CastCast3dense_26/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_26/ActivityRegularizer/Cast?
$dense_26/ActivityRegularizer/truedivRealDiv5dense_26/ActivityRegularizer/PartitionedCall:output:0%dense_26/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_26/ActivityRegularizer/truediv?
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_1010803dense_27_1010805*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_27_layer_call_and_return_conditional_losses_10103392"
 dense_27/StatefulPartitionedCall?
,dense_27/ActivityRegularizer/PartitionedCallPartitionedCall)dense_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU 2J 8? *:
f5R3
1__inference_dense_27_activity_regularizer_10101272.
,dense_27/ActivityRegularizer/PartitionedCall?
"dense_27/ActivityRegularizer/ShapeShape)dense_27/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_27/ActivityRegularizer/Shape?
0dense_27/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_27/ActivityRegularizer/strided_slice/stack?
2dense_27/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_27/ActivityRegularizer/strided_slice/stack_1?
2dense_27/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_27/ActivityRegularizer/strided_slice/stack_2?
*dense_27/ActivityRegularizer/strided_sliceStridedSlice+dense_27/ActivityRegularizer/Shape:output:09dense_27/ActivityRegularizer/strided_slice/stack:output:0;dense_27/ActivityRegularizer/strided_slice/stack_1:output:0;dense_27/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_27/ActivityRegularizer/strided_slice?
!dense_27/ActivityRegularizer/CastCast3dense_27/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_27/ActivityRegularizer/Cast?
$dense_27/ActivityRegularizer/truedivRealDiv5dense_27/ActivityRegularizer/PartitionedCall:output:0%dense_27/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_27/ActivityRegularizer/truediv?
 dense_28/StatefulPartitionedCallStatefulPartitionedCall)dense_27/StatefulPartitionedCall:output:0dense_28_1010816dense_28_1010818*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_28_layer_call_and_return_conditional_losses_10103852"
 dense_28/StatefulPartitionedCall?
,dense_28/ActivityRegularizer/PartitionedCallPartitionedCall)dense_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU 2J 8? *:
f5R3
1__inference_dense_28_activity_regularizer_10101402.
,dense_28/ActivityRegularizer/PartitionedCall?
"dense_28/ActivityRegularizer/ShapeShape)dense_28/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_28/ActivityRegularizer/Shape?
0dense_28/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_28/ActivityRegularizer/strided_slice/stack?
2dense_28/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_28/ActivityRegularizer/strided_slice/stack_1?
2dense_28/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_28/ActivityRegularizer/strided_slice/stack_2?
*dense_28/ActivityRegularizer/strided_sliceStridedSlice+dense_28/ActivityRegularizer/Shape:output:09dense_28/ActivityRegularizer/strided_slice/stack:output:0;dense_28/ActivityRegularizer/strided_slice/stack_1:output:0;dense_28/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_28/ActivityRegularizer/strided_slice?
!dense_28/ActivityRegularizer/CastCast3dense_28/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_28/ActivityRegularizer/Cast?
$dense_28/ActivityRegularizer/truedivRealDiv5dense_28/ActivityRegularizer/PartitionedCall:output:0%dense_28/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_28/ActivityRegularizer/truediv?
 dense_29/StatefulPartitionedCallStatefulPartitionedCall)dense_28/StatefulPartitionedCall:output:0dense_29_1010829dense_29_1010831*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_29_layer_call_and_return_conditional_losses_10104102"
 dense_29/StatefulPartitionedCall?
!dense_24/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_24/kernel/Regularizer/Const?
.dense_24/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_24_1010764*
_output_shapes

:2*
dtype020
.dense_24/kernel/Regularizer/Abs/ReadVariableOp?
dense_24/kernel/Regularizer/AbsAbs6dense_24/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:22!
dense_24/kernel/Regularizer/Abs?
#dense_24/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_24/kernel/Regularizer/Const_1?
dense_24/kernel/Regularizer/SumSum#dense_24/kernel/Regularizer/Abs:y:0,dense_24/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_24/kernel/Regularizer/Sum?
!dense_24/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_24/kernel/Regularizer/mul/x?
dense_24/kernel/Regularizer/mulMul*dense_24/kernel/Regularizer/mul/x:output:0(dense_24/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_24/kernel/Regularizer/mul?
dense_24/kernel/Regularizer/addAddV2*dense_24/kernel/Regularizer/Const:output:0#dense_24/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_24/kernel/Regularizer/add?
1dense_24/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_24_1010764*
_output_shapes

:2*
dtype023
1dense_24/kernel/Regularizer/Square/ReadVariableOp?
"dense_24/kernel/Regularizer/SquareSquare9dense_24/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22$
"dense_24/kernel/Regularizer/Square?
#dense_24/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_24/kernel/Regularizer/Const_2?
!dense_24/kernel/Regularizer/Sum_1Sum&dense_24/kernel/Regularizer/Square:y:0,dense_24/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_24/kernel/Regularizer/Sum_1?
#dense_24/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_24/kernel/Regularizer/mul_1/x?
!dense_24/kernel/Regularizer/mul_1Mul,dense_24/kernel/Regularizer/mul_1/x:output:0*dense_24/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_24/kernel/Regularizer/mul_1?
!dense_24/kernel/Regularizer/add_1AddV2#dense_24/kernel/Regularizer/add:z:0%dense_24/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_24/kernel/Regularizer/add_1?
/dense_24/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_24_1010766*
_output_shapes
:2*
dtype021
/dense_24/bias/Regularizer/Square/ReadVariableOp?
 dense_24/bias/Regularizer/SquareSquare7dense_24/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22"
 dense_24/bias/Regularizer/Square?
dense_24/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_24/bias/Regularizer/Const?
dense_24/bias/Regularizer/SumSum$dense_24/bias/Regularizer/Square:y:0(dense_24/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_24/bias/Regularizer/Sum?
dense_24/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_24/bias/Regularizer/mul/x?
dense_24/bias/Regularizer/mulMul(dense_24/bias/Regularizer/mul/x:output:0&dense_24/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_24/bias/Regularizer/mul?
!dense_25/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_25/kernel/Regularizer/Const?
.dense_25/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_25_1010777*
_output_shapes

:2d*
dtype020
.dense_25/kernel/Regularizer/Abs/ReadVariableOp?
dense_25/kernel/Regularizer/AbsAbs6dense_25/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:2d2!
dense_25/kernel/Regularizer/Abs?
#dense_25/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_25/kernel/Regularizer/Const_1?
dense_25/kernel/Regularizer/SumSum#dense_25/kernel/Regularizer/Abs:y:0,dense_25/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_25/kernel/Regularizer/Sum?
!dense_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_25/kernel/Regularizer/mul/x?
dense_25/kernel/Regularizer/mulMul*dense_25/kernel/Regularizer/mul/x:output:0(dense_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_25/kernel/Regularizer/mul?
dense_25/kernel/Regularizer/addAddV2*dense_25/kernel/Regularizer/Const:output:0#dense_25/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_25/kernel/Regularizer/add?
1dense_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_25_1010777*
_output_shapes

:2d*
dtype023
1dense_25/kernel/Regularizer/Square/ReadVariableOp?
"dense_25/kernel/Regularizer/SquareSquare9dense_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2d2$
"dense_25/kernel/Regularizer/Square?
#dense_25/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_25/kernel/Regularizer/Const_2?
!dense_25/kernel/Regularizer/Sum_1Sum&dense_25/kernel/Regularizer/Square:y:0,dense_25/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_25/kernel/Regularizer/Sum_1?
#dense_25/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_25/kernel/Regularizer/mul_1/x?
!dense_25/kernel/Regularizer/mul_1Mul,dense_25/kernel/Regularizer/mul_1/x:output:0*dense_25/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_25/kernel/Regularizer/mul_1?
!dense_25/kernel/Regularizer/add_1AddV2#dense_25/kernel/Regularizer/add:z:0%dense_25/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_25/kernel/Regularizer/add_1?
/dense_25/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_25_1010779*
_output_shapes
:d*
dtype021
/dense_25/bias/Regularizer/Square/ReadVariableOp?
 dense_25/bias/Regularizer/SquareSquare7dense_25/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_25/bias/Regularizer/Square?
dense_25/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_25/bias/Regularizer/Const?
dense_25/bias/Regularizer/SumSum$dense_25/bias/Regularizer/Square:y:0(dense_25/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_25/bias/Regularizer/Sum?
dense_25/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_25/bias/Regularizer/mul/x?
dense_25/bias/Regularizer/mulMul(dense_25/bias/Regularizer/mul/x:output:0&dense_25/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_25/bias/Regularizer/mul?
!dense_26/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_26/kernel/Regularizer/Const?
.dense_26/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_26_1010790*
_output_shapes
:	d?*
dtype020
.dense_26/kernel/Regularizer/Abs/ReadVariableOp?
dense_26/kernel/Regularizer/AbsAbs6dense_26/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	d?2!
dense_26/kernel/Regularizer/Abs?
#dense_26/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_26/kernel/Regularizer/Const_1?
dense_26/kernel/Regularizer/SumSum#dense_26/kernel/Regularizer/Abs:y:0,dense_26/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_26/kernel/Regularizer/Sum?
!dense_26/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_26/kernel/Regularizer/mul/x?
dense_26/kernel/Regularizer/mulMul*dense_26/kernel/Regularizer/mul/x:output:0(dense_26/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_26/kernel/Regularizer/mul?
dense_26/kernel/Regularizer/addAddV2*dense_26/kernel/Regularizer/Const:output:0#dense_26/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_26/kernel/Regularizer/add?
1dense_26/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_26_1010790*
_output_shapes
:	d?*
dtype023
1dense_26/kernel/Regularizer/Square/ReadVariableOp?
"dense_26/kernel/Regularizer/SquareSquare9dense_26/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	d?2$
"dense_26/kernel/Regularizer/Square?
#dense_26/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_26/kernel/Regularizer/Const_2?
!dense_26/kernel/Regularizer/Sum_1Sum&dense_26/kernel/Regularizer/Square:y:0,dense_26/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_26/kernel/Regularizer/Sum_1?
#dense_26/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_26/kernel/Regularizer/mul_1/x?
!dense_26/kernel/Regularizer/mul_1Mul,dense_26/kernel/Regularizer/mul_1/x:output:0*dense_26/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_26/kernel/Regularizer/mul_1?
!dense_26/kernel/Regularizer/add_1AddV2#dense_26/kernel/Regularizer/add:z:0%dense_26/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_26/kernel/Regularizer/add_1?
/dense_26/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_26_1010792*
_output_shapes	
:?*
dtype021
/dense_26/bias/Regularizer/Square/ReadVariableOp?
 dense_26/bias/Regularizer/SquareSquare7dense_26/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2"
 dense_26/bias/Regularizer/Square?
dense_26/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_26/bias/Regularizer/Const?
dense_26/bias/Regularizer/SumSum$dense_26/bias/Regularizer/Square:y:0(dense_26/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_26/bias/Regularizer/Sum?
dense_26/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_26/bias/Regularizer/mul/x?
dense_26/bias/Regularizer/mulMul(dense_26/bias/Regularizer/mul/x:output:0&dense_26/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_26/bias/Regularizer/mul?
!dense_27/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_27/kernel/Regularizer/Const?
.dense_27/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_27_1010803*
_output_shapes
:	?d*
dtype020
.dense_27/kernel/Regularizer/Abs/ReadVariableOp?
dense_27/kernel/Regularizer/AbsAbs6dense_27/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?d2!
dense_27/kernel/Regularizer/Abs?
#dense_27/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_27/kernel/Regularizer/Const_1?
dense_27/kernel/Regularizer/SumSum#dense_27/kernel/Regularizer/Abs:y:0,dense_27/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_27/kernel/Regularizer/Sum?
!dense_27/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_27/kernel/Regularizer/mul/x?
dense_27/kernel/Regularizer/mulMul*dense_27/kernel/Regularizer/mul/x:output:0(dense_27/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_27/kernel/Regularizer/mul?
dense_27/kernel/Regularizer/addAddV2*dense_27/kernel/Regularizer/Const:output:0#dense_27/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_27/kernel/Regularizer/add?
1dense_27/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_27_1010803*
_output_shapes
:	?d*
dtype023
1dense_27/kernel/Regularizer/Square/ReadVariableOp?
"dense_27/kernel/Regularizer/SquareSquare9dense_27/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?d2$
"dense_27/kernel/Regularizer/Square?
#dense_27/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_27/kernel/Regularizer/Const_2?
!dense_27/kernel/Regularizer/Sum_1Sum&dense_27/kernel/Regularizer/Square:y:0,dense_27/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_27/kernel/Regularizer/Sum_1?
#dense_27/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_27/kernel/Regularizer/mul_1/x?
!dense_27/kernel/Regularizer/mul_1Mul,dense_27/kernel/Regularizer/mul_1/x:output:0*dense_27/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_27/kernel/Regularizer/mul_1?
!dense_27/kernel/Regularizer/add_1AddV2#dense_27/kernel/Regularizer/add:z:0%dense_27/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_27/kernel/Regularizer/add_1?
/dense_27/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_27_1010805*
_output_shapes
:d*
dtype021
/dense_27/bias/Regularizer/Square/ReadVariableOp?
 dense_27/bias/Regularizer/SquareSquare7dense_27/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_27/bias/Regularizer/Square?
dense_27/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_27/bias/Regularizer/Const?
dense_27/bias/Regularizer/SumSum$dense_27/bias/Regularizer/Square:y:0(dense_27/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_27/bias/Regularizer/Sum?
dense_27/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_27/bias/Regularizer/mul/x?
dense_27/bias/Regularizer/mulMul(dense_27/bias/Regularizer/mul/x:output:0&dense_27/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_27/bias/Regularizer/mul?
!dense_28/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_28/kernel/Regularizer/Const?
.dense_28/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_28_1010816*
_output_shapes

:d2*
dtype020
.dense_28/kernel/Regularizer/Abs/ReadVariableOp?
dense_28/kernel/Regularizer/AbsAbs6dense_28/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:d22!
dense_28/kernel/Regularizer/Abs?
#dense_28/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_28/kernel/Regularizer/Const_1?
dense_28/kernel/Regularizer/SumSum#dense_28/kernel/Regularizer/Abs:y:0,dense_28/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_28/kernel/Regularizer/Sum?
!dense_28/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_28/kernel/Regularizer/mul/x?
dense_28/kernel/Regularizer/mulMul*dense_28/kernel/Regularizer/mul/x:output:0(dense_28/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_28/kernel/Regularizer/mul?
dense_28/kernel/Regularizer/addAddV2*dense_28/kernel/Regularizer/Const:output:0#dense_28/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_28/kernel/Regularizer/add?
1dense_28/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_28_1010816*
_output_shapes

:d2*
dtype023
1dense_28/kernel/Regularizer/Square/ReadVariableOp?
"dense_28/kernel/Regularizer/SquareSquare9dense_28/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d22$
"dense_28/kernel/Regularizer/Square?
#dense_28/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_28/kernel/Regularizer/Const_2?
!dense_28/kernel/Regularizer/Sum_1Sum&dense_28/kernel/Regularizer/Square:y:0,dense_28/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_28/kernel/Regularizer/Sum_1?
#dense_28/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_28/kernel/Regularizer/mul_1/x?
!dense_28/kernel/Regularizer/mul_1Mul,dense_28/kernel/Regularizer/mul_1/x:output:0*dense_28/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_28/kernel/Regularizer/mul_1?
!dense_28/kernel/Regularizer/add_1AddV2#dense_28/kernel/Regularizer/add:z:0%dense_28/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_28/kernel/Regularizer/add_1?
/dense_28/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_28_1010818*
_output_shapes
:2*
dtype021
/dense_28/bias/Regularizer/Square/ReadVariableOp?
 dense_28/bias/Regularizer/SquareSquare7dense_28/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22"
 dense_28/bias/Regularizer/Square?
dense_28/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_28/bias/Regularizer/Const?
dense_28/bias/Regularizer/SumSum$dense_28/bias/Regularizer/Square:y:0(dense_28/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/Sum?
dense_28/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_28/bias/Regularizer/mul/x?
dense_28/bias/Regularizer/mulMul(dense_28/bias/Regularizer/mul/x:output:0&dense_28/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/mul?	
IdentityIdentity)dense_29/StatefulPartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp!^dense_25/StatefulPartitionedCall0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp!^dense_26/StatefulPartitionedCall0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp!^dense_27/StatefulPartitionedCall0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?	

Identity_1Identity(dense_24/ActivityRegularizer/truediv:z:0.^batch_normalization_4/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp!^dense_25/StatefulPartitionedCall0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp!^dense_26/StatefulPartitionedCall0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp!^dense_27/StatefulPartitionedCall0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?	

Identity_2Identity(dense_25/ActivityRegularizer/truediv:z:0.^batch_normalization_4/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp!^dense_25/StatefulPartitionedCall0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp!^dense_26/StatefulPartitionedCall0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp!^dense_27/StatefulPartitionedCall0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?	

Identity_3Identity(dense_26/ActivityRegularizer/truediv:z:0.^batch_normalization_4/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp!^dense_25/StatefulPartitionedCall0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp!^dense_26/StatefulPartitionedCall0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp!^dense_27/StatefulPartitionedCall0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3?	

Identity_4Identity(dense_27/ActivityRegularizer/truediv:z:0.^batch_normalization_4/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp!^dense_25/StatefulPartitionedCall0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp!^dense_26/StatefulPartitionedCall0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp!^dense_27/StatefulPartitionedCall0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_4?	

Identity_5Identity(dense_28/ActivityRegularizer/truediv:z:0.^batch_normalization_4/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp!^dense_25/StatefulPartitionedCall0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp!^dense_26/StatefulPartitionedCall0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp!^dense_27/StatefulPartitionedCall0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : : : : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2b
/dense_24/bias/Regularizer/Square/ReadVariableOp/dense_24/bias/Regularizer/Square/ReadVariableOp2`
.dense_24/kernel/Regularizer/Abs/ReadVariableOp.dense_24/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_24/kernel/Regularizer/Square/ReadVariableOp1dense_24/kernel/Regularizer/Square/ReadVariableOp2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2b
/dense_25/bias/Regularizer/Square/ReadVariableOp/dense_25/bias/Regularizer/Square/ReadVariableOp2`
.dense_25/kernel/Regularizer/Abs/ReadVariableOp.dense_25/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_25/kernel/Regularizer/Square/ReadVariableOp1dense_25/kernel/Regularizer/Square/ReadVariableOp2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2b
/dense_26/bias/Regularizer/Square/ReadVariableOp/dense_26/bias/Regularizer/Square/ReadVariableOp2`
.dense_26/kernel/Regularizer/Abs/ReadVariableOp.dense_26/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_26/kernel/Regularizer/Square/ReadVariableOp1dense_26/kernel/Regularizer/Square/ReadVariableOp2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2b
/dense_27/bias/Regularizer/Square/ReadVariableOp/dense_27/bias/Regularizer/Square/ReadVariableOp2`
.dense_27/kernel/Regularizer/Abs/ReadVariableOp.dense_27/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_27/kernel/Regularizer/Square/ReadVariableOp1dense_27/kernel/Regularizer/Square/ReadVariableOp2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2b
/dense_28/bias/Regularizer/Square/ReadVariableOp/dense_28/bias/Regularizer/Square/ReadVariableOp2`
.dense_28/kernel/Regularizer/Abs/ReadVariableOp.dense_28/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_28/kernel/Regularizer/Square/ReadVariableOp1dense_28/kernel/Regularizer/Square/ReadVariableOp2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall2P
&normalization_4/Reshape/ReadVariableOp&normalization_4/Reshape/ReadVariableOp2T
(normalization_4/Reshape_1/ReadVariableOp(normalization_4/Reshape_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
(__inference_mapDNN_layer_call_fn_1011035
input_5
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:2
	unknown_6:2
	unknown_7:2d
	unknown_8:d
	unknown_9:	d?

unknown_10:	?

unknown_11:	?d

unknown_12:d

unknown_13:d2

unknown_14:2

unknown_15:2

unknown_16:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout

2*
_collective_manager_ids
 *1
_output_shapes
:?????????: : : : : *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_mapDNN_layer_call_and_return_conditional_losses_10109452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_5
?
?
*__inference_dense_29_layer_call_fn_1012485

inputs
unknown:2
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_29_layer_call_and_return_conditional_losses_10104102
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
__inference_loss_fn_2_1012547I
7dense_25_kernel_regularizer_abs_readvariableop_resource:2d
identity??.dense_25/kernel/Regularizer/Abs/ReadVariableOp?1dense_25/kernel/Regularizer/Square/ReadVariableOp?
!dense_25/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_25/kernel/Regularizer/Const?
.dense_25/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp7dense_25_kernel_regularizer_abs_readvariableop_resource*
_output_shapes

:2d*
dtype020
.dense_25/kernel/Regularizer/Abs/ReadVariableOp?
dense_25/kernel/Regularizer/AbsAbs6dense_25/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:2d2!
dense_25/kernel/Regularizer/Abs?
#dense_25/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_25/kernel/Regularizer/Const_1?
dense_25/kernel/Regularizer/SumSum#dense_25/kernel/Regularizer/Abs:y:0,dense_25/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_25/kernel/Regularizer/Sum?
!dense_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_25/kernel/Regularizer/mul/x?
dense_25/kernel/Regularizer/mulMul*dense_25/kernel/Regularizer/mul/x:output:0(dense_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_25/kernel/Regularizer/mul?
dense_25/kernel/Regularizer/addAddV2*dense_25/kernel/Regularizer/Const:output:0#dense_25/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_25/kernel/Regularizer/add?
1dense_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOp7dense_25_kernel_regularizer_abs_readvariableop_resource*
_output_shapes

:2d*
dtype023
1dense_25/kernel/Regularizer/Square/ReadVariableOp?
"dense_25/kernel/Regularizer/SquareSquare9dense_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2d2$
"dense_25/kernel/Regularizer/Square?
#dense_25/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_25/kernel/Regularizer/Const_2?
!dense_25/kernel/Regularizer/Sum_1Sum&dense_25/kernel/Regularizer/Square:y:0,dense_25/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_25/kernel/Regularizer/Sum_1?
#dense_25/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_25/kernel/Regularizer/mul_1/x?
!dense_25/kernel/Regularizer/mul_1Mul,dense_25/kernel/Regularizer/mul_1/x:output:0*dense_25/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_25/kernel/Regularizer/mul_1?
!dense_25/kernel/Regularizer/add_1AddV2#dense_25/kernel/Regularizer/add:z:0%dense_25/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_25/kernel/Regularizer/add_1?
IdentityIdentity%dense_25/kernel/Regularizer/add_1:z:0/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2`
.dense_25/kernel/Regularizer/Abs/ReadVariableOp.dense_25/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_25/kernel/Regularizer/Square/ReadVariableOp1dense_25/kernel/Regularizer/Square/ReadVariableOp
?
?
*__inference_dense_27_layer_call_fn_1012424

inputs
unknown:	?d
	unknown_0:d
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_27_layer_call_and_return_conditional_losses_10103392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1009937

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?,
?
E__inference_dense_26_layer_call_and_return_conditional_losses_1012747

inputs1
matmul_readvariableop_resource:	d?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_26/bias/Regularizer/Square/ReadVariableOp?.dense_26/kernel/Regularizer/Abs/ReadVariableOp?1dense_26/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd?
leaky_re_lu_4/LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:??????????*
alpha%???>2
leaky_re_lu_4/LeakyRelu?
!dense_26/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_26/kernel/Regularizer/Const?
.dense_26/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?*
dtype020
.dense_26/kernel/Regularizer/Abs/ReadVariableOp?
dense_26/kernel/Regularizer/AbsAbs6dense_26/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	d?2!
dense_26/kernel/Regularizer/Abs?
#dense_26/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_26/kernel/Regularizer/Const_1?
dense_26/kernel/Regularizer/SumSum#dense_26/kernel/Regularizer/Abs:y:0,dense_26/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_26/kernel/Regularizer/Sum?
!dense_26/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_26/kernel/Regularizer/mul/x?
dense_26/kernel/Regularizer/mulMul*dense_26/kernel/Regularizer/mul/x:output:0(dense_26/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_26/kernel/Regularizer/mul?
dense_26/kernel/Regularizer/addAddV2*dense_26/kernel/Regularizer/Const:output:0#dense_26/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_26/kernel/Regularizer/add?
1dense_26/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?*
dtype023
1dense_26/kernel/Regularizer/Square/ReadVariableOp?
"dense_26/kernel/Regularizer/SquareSquare9dense_26/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	d?2$
"dense_26/kernel/Regularizer/Square?
#dense_26/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_26/kernel/Regularizer/Const_2?
!dense_26/kernel/Regularizer/Sum_1Sum&dense_26/kernel/Regularizer/Square:y:0,dense_26/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_26/kernel/Regularizer/Sum_1?
#dense_26/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_26/kernel/Regularizer/mul_1/x?
!dense_26/kernel/Regularizer/mul_1Mul,dense_26/kernel/Regularizer/mul_1/x:output:0*dense_26/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_26/kernel/Regularizer/mul_1?
!dense_26/kernel/Regularizer/add_1AddV2#dense_26/kernel/Regularizer/add:z:0%dense_26/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_26/kernel/Regularizer/add_1?
/dense_26/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype021
/dense_26/bias/Regularizer/Square/ReadVariableOp?
 dense_26/bias/Regularizer/SquareSquare7dense_26/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2"
 dense_26/bias/Regularizer/Square?
dense_26/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_26/bias/Regularizer/Const?
dense_26/bias/Regularizer/SumSum$dense_26/bias/Regularizer/Square:y:0(dense_26/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_26/bias/Regularizer/Sum?
dense_26/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_26/bias/Regularizer/mul/x?
dense_26/bias/Regularizer/mulMul(dense_26/bias/Regularizer/mul/x:output:0&dense_26/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_26/bias/Regularizer/mul?
IdentityIdentity%leaky_re_lu_4/LeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_26/bias/Regularizer/Square/ReadVariableOp/dense_26/bias/Regularizer/Square/ReadVariableOp2`
.dense_26/kernel/Regularizer/Abs/ReadVariableOp.dense_26/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_26/kernel/Regularizer/Square/ReadVariableOp1dense_26/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?7
?

 __inference__traced_save_1012909
file_prefix#
savev2_mean_read_readvariableop'
#savev2_variance_read_readvariableop$
 savev2_count_read_readvariableop	:
6savev2_batch_normalization_4_gamma_read_readvariableop9
5savev2_batch_normalization_4_beta_read_readvariableop@
<savev2_batch_normalization_4_moving_mean_read_readvariableopD
@savev2_batch_normalization_4_moving_variance_read_readvariableop.
*savev2_dense_24_kernel_read_readvariableop,
(savev2_dense_24_bias_read_readvariableop.
*savev2_dense_25_kernel_read_readvariableop,
(savev2_dense_25_bias_read_readvariableop.
*savev2_dense_26_kernel_read_readvariableop,
(savev2_dense_26_bias_read_readvariableop.
*savev2_dense_27_kernel_read_readvariableop,
(savev2_dense_27_bias_read_readvariableop.
*savev2_dense_28_kernel_read_readvariableop,
(savev2_dense_28_bias_read_readvariableop.
*savev2_dense_29_kernel_read_readvariableop,
(savev2_dense_29_bias_read_readvariableop$
 savev2_total_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_3_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
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
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0savev2_mean_read_readvariableop#savev2_variance_read_readvariableop savev2_count_read_readvariableop6savev2_batch_normalization_4_gamma_read_readvariableop5savev2_batch_normalization_4_beta_read_readvariableop<savev2_batch_normalization_4_moving_mean_read_readvariableop@savev2_batch_normalization_4_moving_variance_read_readvariableop*savev2_dense_24_kernel_read_readvariableop(savev2_dense_24_bias_read_readvariableop*savev2_dense_25_kernel_read_readvariableop(savev2_dense_25_bias_read_readvariableop*savev2_dense_26_kernel_read_readvariableop(savev2_dense_26_bias_read_readvariableop*savev2_dense_27_kernel_read_readvariableop(savev2_dense_27_bias_read_readvariableop*savev2_dense_28_kernel_read_readvariableop(savev2_dense_28_bias_read_readvariableop*savev2_dense_29_kernel_read_readvariableop(savev2_dense_29_bias_read_readvariableop savev2_total_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_3_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *(
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: ::: :::::2:2:2d:d:	d?:?:	?d:d:d2:2:2:: : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:2: 	

_output_shapes
:2:$
 

_output_shapes

:2d: 

_output_shapes
:d:%!

_output_shapes
:	d?:!

_output_shapes	
:?:%!

_output_shapes
:	?d: 

_output_shapes
:d:$ 

_output_shapes

:d2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
I__inference_dense_24_layer_call_and_return_all_conditional_losses_1012312

inputs
unknown:2
	unknown_0:2
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_24_layer_call_and_return_conditional_losses_10102012
StatefulPartitionedCall?
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU 2J 8? *:
f5R3
1__inference_dense_24_activity_regularizer_10100882
PartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identityy

Identity_1IdentityPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_4_1012578J
7dense_26_kernel_regularizer_abs_readvariableop_resource:	d?
identity??.dense_26/kernel/Regularizer/Abs/ReadVariableOp?1dense_26/kernel/Regularizer/Square/ReadVariableOp?
!dense_26/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_26/kernel/Regularizer/Const?
.dense_26/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp7dense_26_kernel_regularizer_abs_readvariableop_resource*
_output_shapes
:	d?*
dtype020
.dense_26/kernel/Regularizer/Abs/ReadVariableOp?
dense_26/kernel/Regularizer/AbsAbs6dense_26/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	d?2!
dense_26/kernel/Regularizer/Abs?
#dense_26/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_26/kernel/Regularizer/Const_1?
dense_26/kernel/Regularizer/SumSum#dense_26/kernel/Regularizer/Abs:y:0,dense_26/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_26/kernel/Regularizer/Sum?
!dense_26/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_26/kernel/Regularizer/mul/x?
dense_26/kernel/Regularizer/mulMul*dense_26/kernel/Regularizer/mul/x:output:0(dense_26/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_26/kernel/Regularizer/mul?
dense_26/kernel/Regularizer/addAddV2*dense_26/kernel/Regularizer/Const:output:0#dense_26/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_26/kernel/Regularizer/add?
1dense_26/kernel/Regularizer/Square/ReadVariableOpReadVariableOp7dense_26_kernel_regularizer_abs_readvariableop_resource*
_output_shapes
:	d?*
dtype023
1dense_26/kernel/Regularizer/Square/ReadVariableOp?
"dense_26/kernel/Regularizer/SquareSquare9dense_26/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	d?2$
"dense_26/kernel/Regularizer/Square?
#dense_26/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_26/kernel/Regularizer/Const_2?
!dense_26/kernel/Regularizer/Sum_1Sum&dense_26/kernel/Regularizer/Square:y:0,dense_26/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_26/kernel/Regularizer/Sum_1?
#dense_26/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_26/kernel/Regularizer/mul_1/x?
!dense_26/kernel/Regularizer/mul_1Mul,dense_26/kernel/Regularizer/mul_1/x:output:0*dense_26/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_26/kernel/Regularizer/mul_1?
!dense_26/kernel/Regularizer/add_1AddV2#dense_26/kernel/Regularizer/add:z:0%dense_26/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_26/kernel/Regularizer/add_1?
IdentityIdentity%dense_26/kernel/Regularizer/add_1:z:0/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2`
.dense_26/kernel/Regularizer/Abs/ReadVariableOp.dense_26/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_26/kernel/Regularizer/Square/ReadVariableOp1dense_26/kernel/Regularizer/Square/ReadVariableOp
?,
?
E__inference_dense_24_layer_call_and_return_conditional_losses_1010201

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_24/bias/Regularizer/Square/ReadVariableOp?.dense_24/kernel/Regularizer/Abs/ReadVariableOp?1dense_24/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22	
BiasAdd?
leaky_re_lu_4/LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????2*
alpha%???>2
leaky_re_lu_4/LeakyRelu?
!dense_24/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_24/kernel/Regularizer/Const?
.dense_24/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype020
.dense_24/kernel/Regularizer/Abs/ReadVariableOp?
dense_24/kernel/Regularizer/AbsAbs6dense_24/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:22!
dense_24/kernel/Regularizer/Abs?
#dense_24/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_24/kernel/Regularizer/Const_1?
dense_24/kernel/Regularizer/SumSum#dense_24/kernel/Regularizer/Abs:y:0,dense_24/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_24/kernel/Regularizer/Sum?
!dense_24/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_24/kernel/Regularizer/mul/x?
dense_24/kernel/Regularizer/mulMul*dense_24/kernel/Regularizer/mul/x:output:0(dense_24/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_24/kernel/Regularizer/mul?
dense_24/kernel/Regularizer/addAddV2*dense_24/kernel/Regularizer/Const:output:0#dense_24/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_24/kernel/Regularizer/add?
1dense_24/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype023
1dense_24/kernel/Regularizer/Square/ReadVariableOp?
"dense_24/kernel/Regularizer/SquareSquare9dense_24/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22$
"dense_24/kernel/Regularizer/Square?
#dense_24/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_24/kernel/Regularizer/Const_2?
!dense_24/kernel/Regularizer/Sum_1Sum&dense_24/kernel/Regularizer/Square:y:0,dense_24/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_24/kernel/Regularizer/Sum_1?
#dense_24/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_24/kernel/Regularizer/mul_1/x?
!dense_24/kernel/Regularizer/mul_1Mul,dense_24/kernel/Regularizer/mul_1/x:output:0*dense_24/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_24/kernel/Regularizer/mul_1?
!dense_24/kernel/Regularizer/add_1AddV2#dense_24/kernel/Regularizer/add:z:0%dense_24/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_24/kernel/Regularizer/add_1?
/dense_24/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype021
/dense_24/bias/Regularizer/Square/ReadVariableOp?
 dense_24/bias/Regularizer/SquareSquare7dense_24/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22"
 dense_24/bias/Regularizer/Square?
dense_24/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_24/bias/Regularizer/Const?
dense_24/bias/Regularizer/SumSum$dense_24/bias/Regularizer/Square:y:0(dense_24/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_24/bias/Regularizer/Sum?
dense_24/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_24/bias/Regularizer/mul/x?
dense_24/bias/Regularizer/mulMul(dense_24/bias/Regularizer/mul/x:output:0&dense_24/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_24/bias/Regularizer/mul?
IdentityIdentity%leaky_re_lu_4/LeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_24/bias/Regularizer/Square/ReadVariableOp/dense_24/bias/Regularizer/Square/ReadVariableOp2`
.dense_24/kernel/Regularizer/Abs/ReadVariableOp.dense_24/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_24/kernel/Regularizer/Square/ReadVariableOp1dense_24/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
C__inference_mapDNN_layer_call_and_return_conditional_losses_1011241
input_5=
/normalization_4_reshape_readvariableop_resource:?
1normalization_4_reshape_1_readvariableop_resource:+
batch_normalization_4_1011051:+
batch_normalization_4_1011053:+
batch_normalization_4_1011055:+
batch_normalization_4_1011057:"
dense_24_1011060:2
dense_24_1011062:2"
dense_25_1011073:2d
dense_25_1011075:d#
dense_26_1011086:	d?
dense_26_1011088:	?#
dense_27_1011099:	?d
dense_27_1011101:d"
dense_28_1011112:d2
dense_28_1011114:2"
dense_29_1011125:2
dense_29_1011127:
identity

identity_1

identity_2

identity_3

identity_4

identity_5??-batch_normalization_4/StatefulPartitionedCall? dense_24/StatefulPartitionedCall?/dense_24/bias/Regularizer/Square/ReadVariableOp?.dense_24/kernel/Regularizer/Abs/ReadVariableOp?1dense_24/kernel/Regularizer/Square/ReadVariableOp? dense_25/StatefulPartitionedCall?/dense_25/bias/Regularizer/Square/ReadVariableOp?.dense_25/kernel/Regularizer/Abs/ReadVariableOp?1dense_25/kernel/Regularizer/Square/ReadVariableOp? dense_26/StatefulPartitionedCall?/dense_26/bias/Regularizer/Square/ReadVariableOp?.dense_26/kernel/Regularizer/Abs/ReadVariableOp?1dense_26/kernel/Regularizer/Square/ReadVariableOp? dense_27/StatefulPartitionedCall?/dense_27/bias/Regularizer/Square/ReadVariableOp?.dense_27/kernel/Regularizer/Abs/ReadVariableOp?1dense_27/kernel/Regularizer/Square/ReadVariableOp? dense_28/StatefulPartitionedCall?/dense_28/bias/Regularizer/Square/ReadVariableOp?.dense_28/kernel/Regularizer/Abs/ReadVariableOp?1dense_28/kernel/Regularizer/Square/ReadVariableOp? dense_29/StatefulPartitionedCall?&normalization_4/Reshape/ReadVariableOp?(normalization_4/Reshape_1/ReadVariableOp?
&normalization_4/Reshape/ReadVariableOpReadVariableOp/normalization_4_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_4/Reshape/ReadVariableOp?
normalization_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_4/Reshape/shape?
normalization_4/ReshapeReshape.normalization_4/Reshape/ReadVariableOp:value:0&normalization_4/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_4/Reshape?
(normalization_4/Reshape_1/ReadVariableOpReadVariableOp1normalization_4_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_4/Reshape_1/ReadVariableOp?
normalization_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_4/Reshape_1/shape?
normalization_4/Reshape_1Reshape0normalization_4/Reshape_1/ReadVariableOp:value:0(normalization_4/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_4/Reshape_1?
normalization_4/subSubinput_5 normalization_4/Reshape:output:0*
T0*'
_output_shapes
:?????????2
normalization_4/sub?
normalization_4/SqrtSqrt"normalization_4/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_4/Sqrt{
normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_4/Maximum/y?
normalization_4/MaximumMaximumnormalization_4/Sqrt:y:0"normalization_4/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_4/Maximum?
normalization_4/truedivRealDivnormalization_4/sub:z:0normalization_4/Maximum:z:0*
T0*'
_output_shapes
:?????????2
normalization_4/truediv?
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCallnormalization_4/truediv:z:0batch_normalization_4_1011051batch_normalization_4_1011053batch_normalization_4_1011055batch_normalization_4_1011057*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_10099372/
-batch_normalization_4/StatefulPartitionedCall?
 dense_24/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0dense_24_1011060dense_24_1011062*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_24_layer_call_and_return_conditional_losses_10102012"
 dense_24/StatefulPartitionedCall?
,dense_24/ActivityRegularizer/PartitionedCallPartitionedCall)dense_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU 2J 8? *:
f5R3
1__inference_dense_24_activity_regularizer_10100882.
,dense_24/ActivityRegularizer/PartitionedCall?
"dense_24/ActivityRegularizer/ShapeShape)dense_24/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_24/ActivityRegularizer/Shape?
0dense_24/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_24/ActivityRegularizer/strided_slice/stack?
2dense_24/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_24/ActivityRegularizer/strided_slice/stack_1?
2dense_24/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_24/ActivityRegularizer/strided_slice/stack_2?
*dense_24/ActivityRegularizer/strided_sliceStridedSlice+dense_24/ActivityRegularizer/Shape:output:09dense_24/ActivityRegularizer/strided_slice/stack:output:0;dense_24/ActivityRegularizer/strided_slice/stack_1:output:0;dense_24/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_24/ActivityRegularizer/strided_slice?
!dense_24/ActivityRegularizer/CastCast3dense_24/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_24/ActivityRegularizer/Cast?
$dense_24/ActivityRegularizer/truedivRealDiv5dense_24/ActivityRegularizer/PartitionedCall:output:0%dense_24/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_24/ActivityRegularizer/truediv?
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_1011073dense_25_1011075*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_25_layer_call_and_return_conditional_losses_10102472"
 dense_25/StatefulPartitionedCall?
,dense_25/ActivityRegularizer/PartitionedCallPartitionedCall)dense_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU 2J 8? *:
f5R3
1__inference_dense_25_activity_regularizer_10101012.
,dense_25/ActivityRegularizer/PartitionedCall?
"dense_25/ActivityRegularizer/ShapeShape)dense_25/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_25/ActivityRegularizer/Shape?
0dense_25/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_25/ActivityRegularizer/strided_slice/stack?
2dense_25/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_25/ActivityRegularizer/strided_slice/stack_1?
2dense_25/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_25/ActivityRegularizer/strided_slice/stack_2?
*dense_25/ActivityRegularizer/strided_sliceStridedSlice+dense_25/ActivityRegularizer/Shape:output:09dense_25/ActivityRegularizer/strided_slice/stack:output:0;dense_25/ActivityRegularizer/strided_slice/stack_1:output:0;dense_25/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_25/ActivityRegularizer/strided_slice?
!dense_25/ActivityRegularizer/CastCast3dense_25/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_25/ActivityRegularizer/Cast?
$dense_25/ActivityRegularizer/truedivRealDiv5dense_25/ActivityRegularizer/PartitionedCall:output:0%dense_25/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_25/ActivityRegularizer/truediv?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall)dense_25/StatefulPartitionedCall:output:0dense_26_1011086dense_26_1011088*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_26_layer_call_and_return_conditional_losses_10102932"
 dense_26/StatefulPartitionedCall?
,dense_26/ActivityRegularizer/PartitionedCallPartitionedCall)dense_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU 2J 8? *:
f5R3
1__inference_dense_26_activity_regularizer_10101142.
,dense_26/ActivityRegularizer/PartitionedCall?
"dense_26/ActivityRegularizer/ShapeShape)dense_26/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_26/ActivityRegularizer/Shape?
0dense_26/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_26/ActivityRegularizer/strided_slice/stack?
2dense_26/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_26/ActivityRegularizer/strided_slice/stack_1?
2dense_26/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_26/ActivityRegularizer/strided_slice/stack_2?
*dense_26/ActivityRegularizer/strided_sliceStridedSlice+dense_26/ActivityRegularizer/Shape:output:09dense_26/ActivityRegularizer/strided_slice/stack:output:0;dense_26/ActivityRegularizer/strided_slice/stack_1:output:0;dense_26/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_26/ActivityRegularizer/strided_slice?
!dense_26/ActivityRegularizer/CastCast3dense_26/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_26/ActivityRegularizer/Cast?
$dense_26/ActivityRegularizer/truedivRealDiv5dense_26/ActivityRegularizer/PartitionedCall:output:0%dense_26/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_26/ActivityRegularizer/truediv?
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_1011099dense_27_1011101*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_27_layer_call_and_return_conditional_losses_10103392"
 dense_27/StatefulPartitionedCall?
,dense_27/ActivityRegularizer/PartitionedCallPartitionedCall)dense_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU 2J 8? *:
f5R3
1__inference_dense_27_activity_regularizer_10101272.
,dense_27/ActivityRegularizer/PartitionedCall?
"dense_27/ActivityRegularizer/ShapeShape)dense_27/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_27/ActivityRegularizer/Shape?
0dense_27/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_27/ActivityRegularizer/strided_slice/stack?
2dense_27/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_27/ActivityRegularizer/strided_slice/stack_1?
2dense_27/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_27/ActivityRegularizer/strided_slice/stack_2?
*dense_27/ActivityRegularizer/strided_sliceStridedSlice+dense_27/ActivityRegularizer/Shape:output:09dense_27/ActivityRegularizer/strided_slice/stack:output:0;dense_27/ActivityRegularizer/strided_slice/stack_1:output:0;dense_27/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_27/ActivityRegularizer/strided_slice?
!dense_27/ActivityRegularizer/CastCast3dense_27/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_27/ActivityRegularizer/Cast?
$dense_27/ActivityRegularizer/truedivRealDiv5dense_27/ActivityRegularizer/PartitionedCall:output:0%dense_27/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_27/ActivityRegularizer/truediv?
 dense_28/StatefulPartitionedCallStatefulPartitionedCall)dense_27/StatefulPartitionedCall:output:0dense_28_1011112dense_28_1011114*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_28_layer_call_and_return_conditional_losses_10103852"
 dense_28/StatefulPartitionedCall?
,dense_28/ActivityRegularizer/PartitionedCallPartitionedCall)dense_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU 2J 8? *:
f5R3
1__inference_dense_28_activity_regularizer_10101402.
,dense_28/ActivityRegularizer/PartitionedCall?
"dense_28/ActivityRegularizer/ShapeShape)dense_28/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_28/ActivityRegularizer/Shape?
0dense_28/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_28/ActivityRegularizer/strided_slice/stack?
2dense_28/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_28/ActivityRegularizer/strided_slice/stack_1?
2dense_28/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_28/ActivityRegularizer/strided_slice/stack_2?
*dense_28/ActivityRegularizer/strided_sliceStridedSlice+dense_28/ActivityRegularizer/Shape:output:09dense_28/ActivityRegularizer/strided_slice/stack:output:0;dense_28/ActivityRegularizer/strided_slice/stack_1:output:0;dense_28/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_28/ActivityRegularizer/strided_slice?
!dense_28/ActivityRegularizer/CastCast3dense_28/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_28/ActivityRegularizer/Cast?
$dense_28/ActivityRegularizer/truedivRealDiv5dense_28/ActivityRegularizer/PartitionedCall:output:0%dense_28/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_28/ActivityRegularizer/truediv?
 dense_29/StatefulPartitionedCallStatefulPartitionedCall)dense_28/StatefulPartitionedCall:output:0dense_29_1011125dense_29_1011127*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_29_layer_call_and_return_conditional_losses_10104102"
 dense_29/StatefulPartitionedCall?
!dense_24/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_24/kernel/Regularizer/Const?
.dense_24/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_24_1011060*
_output_shapes

:2*
dtype020
.dense_24/kernel/Regularizer/Abs/ReadVariableOp?
dense_24/kernel/Regularizer/AbsAbs6dense_24/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:22!
dense_24/kernel/Regularizer/Abs?
#dense_24/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_24/kernel/Regularizer/Const_1?
dense_24/kernel/Regularizer/SumSum#dense_24/kernel/Regularizer/Abs:y:0,dense_24/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_24/kernel/Regularizer/Sum?
!dense_24/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_24/kernel/Regularizer/mul/x?
dense_24/kernel/Regularizer/mulMul*dense_24/kernel/Regularizer/mul/x:output:0(dense_24/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_24/kernel/Regularizer/mul?
dense_24/kernel/Regularizer/addAddV2*dense_24/kernel/Regularizer/Const:output:0#dense_24/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_24/kernel/Regularizer/add?
1dense_24/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_24_1011060*
_output_shapes

:2*
dtype023
1dense_24/kernel/Regularizer/Square/ReadVariableOp?
"dense_24/kernel/Regularizer/SquareSquare9dense_24/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22$
"dense_24/kernel/Regularizer/Square?
#dense_24/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_24/kernel/Regularizer/Const_2?
!dense_24/kernel/Regularizer/Sum_1Sum&dense_24/kernel/Regularizer/Square:y:0,dense_24/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_24/kernel/Regularizer/Sum_1?
#dense_24/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_24/kernel/Regularizer/mul_1/x?
!dense_24/kernel/Regularizer/mul_1Mul,dense_24/kernel/Regularizer/mul_1/x:output:0*dense_24/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_24/kernel/Regularizer/mul_1?
!dense_24/kernel/Regularizer/add_1AddV2#dense_24/kernel/Regularizer/add:z:0%dense_24/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_24/kernel/Regularizer/add_1?
/dense_24/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_24_1011062*
_output_shapes
:2*
dtype021
/dense_24/bias/Regularizer/Square/ReadVariableOp?
 dense_24/bias/Regularizer/SquareSquare7dense_24/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22"
 dense_24/bias/Regularizer/Square?
dense_24/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_24/bias/Regularizer/Const?
dense_24/bias/Regularizer/SumSum$dense_24/bias/Regularizer/Square:y:0(dense_24/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_24/bias/Regularizer/Sum?
dense_24/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_24/bias/Regularizer/mul/x?
dense_24/bias/Regularizer/mulMul(dense_24/bias/Regularizer/mul/x:output:0&dense_24/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_24/bias/Regularizer/mul?
!dense_25/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_25/kernel/Regularizer/Const?
.dense_25/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_25_1011073*
_output_shapes

:2d*
dtype020
.dense_25/kernel/Regularizer/Abs/ReadVariableOp?
dense_25/kernel/Regularizer/AbsAbs6dense_25/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:2d2!
dense_25/kernel/Regularizer/Abs?
#dense_25/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_25/kernel/Regularizer/Const_1?
dense_25/kernel/Regularizer/SumSum#dense_25/kernel/Regularizer/Abs:y:0,dense_25/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_25/kernel/Regularizer/Sum?
!dense_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_25/kernel/Regularizer/mul/x?
dense_25/kernel/Regularizer/mulMul*dense_25/kernel/Regularizer/mul/x:output:0(dense_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_25/kernel/Regularizer/mul?
dense_25/kernel/Regularizer/addAddV2*dense_25/kernel/Regularizer/Const:output:0#dense_25/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_25/kernel/Regularizer/add?
1dense_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_25_1011073*
_output_shapes

:2d*
dtype023
1dense_25/kernel/Regularizer/Square/ReadVariableOp?
"dense_25/kernel/Regularizer/SquareSquare9dense_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2d2$
"dense_25/kernel/Regularizer/Square?
#dense_25/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_25/kernel/Regularizer/Const_2?
!dense_25/kernel/Regularizer/Sum_1Sum&dense_25/kernel/Regularizer/Square:y:0,dense_25/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_25/kernel/Regularizer/Sum_1?
#dense_25/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_25/kernel/Regularizer/mul_1/x?
!dense_25/kernel/Regularizer/mul_1Mul,dense_25/kernel/Regularizer/mul_1/x:output:0*dense_25/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_25/kernel/Regularizer/mul_1?
!dense_25/kernel/Regularizer/add_1AddV2#dense_25/kernel/Regularizer/add:z:0%dense_25/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_25/kernel/Regularizer/add_1?
/dense_25/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_25_1011075*
_output_shapes
:d*
dtype021
/dense_25/bias/Regularizer/Square/ReadVariableOp?
 dense_25/bias/Regularizer/SquareSquare7dense_25/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_25/bias/Regularizer/Square?
dense_25/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_25/bias/Regularizer/Const?
dense_25/bias/Regularizer/SumSum$dense_25/bias/Regularizer/Square:y:0(dense_25/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_25/bias/Regularizer/Sum?
dense_25/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_25/bias/Regularizer/mul/x?
dense_25/bias/Regularizer/mulMul(dense_25/bias/Regularizer/mul/x:output:0&dense_25/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_25/bias/Regularizer/mul?
!dense_26/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_26/kernel/Regularizer/Const?
.dense_26/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_26_1011086*
_output_shapes
:	d?*
dtype020
.dense_26/kernel/Regularizer/Abs/ReadVariableOp?
dense_26/kernel/Regularizer/AbsAbs6dense_26/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	d?2!
dense_26/kernel/Regularizer/Abs?
#dense_26/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_26/kernel/Regularizer/Const_1?
dense_26/kernel/Regularizer/SumSum#dense_26/kernel/Regularizer/Abs:y:0,dense_26/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_26/kernel/Regularizer/Sum?
!dense_26/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_26/kernel/Regularizer/mul/x?
dense_26/kernel/Regularizer/mulMul*dense_26/kernel/Regularizer/mul/x:output:0(dense_26/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_26/kernel/Regularizer/mul?
dense_26/kernel/Regularizer/addAddV2*dense_26/kernel/Regularizer/Const:output:0#dense_26/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_26/kernel/Regularizer/add?
1dense_26/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_26_1011086*
_output_shapes
:	d?*
dtype023
1dense_26/kernel/Regularizer/Square/ReadVariableOp?
"dense_26/kernel/Regularizer/SquareSquare9dense_26/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	d?2$
"dense_26/kernel/Regularizer/Square?
#dense_26/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_26/kernel/Regularizer/Const_2?
!dense_26/kernel/Regularizer/Sum_1Sum&dense_26/kernel/Regularizer/Square:y:0,dense_26/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_26/kernel/Regularizer/Sum_1?
#dense_26/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_26/kernel/Regularizer/mul_1/x?
!dense_26/kernel/Regularizer/mul_1Mul,dense_26/kernel/Regularizer/mul_1/x:output:0*dense_26/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_26/kernel/Regularizer/mul_1?
!dense_26/kernel/Regularizer/add_1AddV2#dense_26/kernel/Regularizer/add:z:0%dense_26/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_26/kernel/Regularizer/add_1?
/dense_26/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_26_1011088*
_output_shapes	
:?*
dtype021
/dense_26/bias/Regularizer/Square/ReadVariableOp?
 dense_26/bias/Regularizer/SquareSquare7dense_26/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2"
 dense_26/bias/Regularizer/Square?
dense_26/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_26/bias/Regularizer/Const?
dense_26/bias/Regularizer/SumSum$dense_26/bias/Regularizer/Square:y:0(dense_26/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_26/bias/Regularizer/Sum?
dense_26/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_26/bias/Regularizer/mul/x?
dense_26/bias/Regularizer/mulMul(dense_26/bias/Regularizer/mul/x:output:0&dense_26/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_26/bias/Regularizer/mul?
!dense_27/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_27/kernel/Regularizer/Const?
.dense_27/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_27_1011099*
_output_shapes
:	?d*
dtype020
.dense_27/kernel/Regularizer/Abs/ReadVariableOp?
dense_27/kernel/Regularizer/AbsAbs6dense_27/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?d2!
dense_27/kernel/Regularizer/Abs?
#dense_27/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_27/kernel/Regularizer/Const_1?
dense_27/kernel/Regularizer/SumSum#dense_27/kernel/Regularizer/Abs:y:0,dense_27/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_27/kernel/Regularizer/Sum?
!dense_27/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_27/kernel/Regularizer/mul/x?
dense_27/kernel/Regularizer/mulMul*dense_27/kernel/Regularizer/mul/x:output:0(dense_27/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_27/kernel/Regularizer/mul?
dense_27/kernel/Regularizer/addAddV2*dense_27/kernel/Regularizer/Const:output:0#dense_27/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_27/kernel/Regularizer/add?
1dense_27/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_27_1011099*
_output_shapes
:	?d*
dtype023
1dense_27/kernel/Regularizer/Square/ReadVariableOp?
"dense_27/kernel/Regularizer/SquareSquare9dense_27/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?d2$
"dense_27/kernel/Regularizer/Square?
#dense_27/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_27/kernel/Regularizer/Const_2?
!dense_27/kernel/Regularizer/Sum_1Sum&dense_27/kernel/Regularizer/Square:y:0,dense_27/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_27/kernel/Regularizer/Sum_1?
#dense_27/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_27/kernel/Regularizer/mul_1/x?
!dense_27/kernel/Regularizer/mul_1Mul,dense_27/kernel/Regularizer/mul_1/x:output:0*dense_27/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_27/kernel/Regularizer/mul_1?
!dense_27/kernel/Regularizer/add_1AddV2#dense_27/kernel/Regularizer/add:z:0%dense_27/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_27/kernel/Regularizer/add_1?
/dense_27/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_27_1011101*
_output_shapes
:d*
dtype021
/dense_27/bias/Regularizer/Square/ReadVariableOp?
 dense_27/bias/Regularizer/SquareSquare7dense_27/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_27/bias/Regularizer/Square?
dense_27/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_27/bias/Regularizer/Const?
dense_27/bias/Regularizer/SumSum$dense_27/bias/Regularizer/Square:y:0(dense_27/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_27/bias/Regularizer/Sum?
dense_27/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_27/bias/Regularizer/mul/x?
dense_27/bias/Regularizer/mulMul(dense_27/bias/Regularizer/mul/x:output:0&dense_27/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_27/bias/Regularizer/mul?
!dense_28/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_28/kernel/Regularizer/Const?
.dense_28/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_28_1011112*
_output_shapes

:d2*
dtype020
.dense_28/kernel/Regularizer/Abs/ReadVariableOp?
dense_28/kernel/Regularizer/AbsAbs6dense_28/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:d22!
dense_28/kernel/Regularizer/Abs?
#dense_28/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_28/kernel/Regularizer/Const_1?
dense_28/kernel/Regularizer/SumSum#dense_28/kernel/Regularizer/Abs:y:0,dense_28/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_28/kernel/Regularizer/Sum?
!dense_28/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_28/kernel/Regularizer/mul/x?
dense_28/kernel/Regularizer/mulMul*dense_28/kernel/Regularizer/mul/x:output:0(dense_28/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_28/kernel/Regularizer/mul?
dense_28/kernel/Regularizer/addAddV2*dense_28/kernel/Regularizer/Const:output:0#dense_28/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_28/kernel/Regularizer/add?
1dense_28/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_28_1011112*
_output_shapes

:d2*
dtype023
1dense_28/kernel/Regularizer/Square/ReadVariableOp?
"dense_28/kernel/Regularizer/SquareSquare9dense_28/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d22$
"dense_28/kernel/Regularizer/Square?
#dense_28/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_28/kernel/Regularizer/Const_2?
!dense_28/kernel/Regularizer/Sum_1Sum&dense_28/kernel/Regularizer/Square:y:0,dense_28/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_28/kernel/Regularizer/Sum_1?
#dense_28/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_28/kernel/Regularizer/mul_1/x?
!dense_28/kernel/Regularizer/mul_1Mul,dense_28/kernel/Regularizer/mul_1/x:output:0*dense_28/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_28/kernel/Regularizer/mul_1?
!dense_28/kernel/Regularizer/add_1AddV2#dense_28/kernel/Regularizer/add:z:0%dense_28/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_28/kernel/Regularizer/add_1?
/dense_28/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_28_1011114*
_output_shapes
:2*
dtype021
/dense_28/bias/Regularizer/Square/ReadVariableOp?
 dense_28/bias/Regularizer/SquareSquare7dense_28/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22"
 dense_28/bias/Regularizer/Square?
dense_28/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_28/bias/Regularizer/Const?
dense_28/bias/Regularizer/SumSum$dense_28/bias/Regularizer/Square:y:0(dense_28/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/Sum?
dense_28/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_28/bias/Regularizer/mul/x?
dense_28/bias/Regularizer/mulMul(dense_28/bias/Regularizer/mul/x:output:0&dense_28/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/mul?	
IdentityIdentity)dense_29/StatefulPartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp!^dense_25/StatefulPartitionedCall0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp!^dense_26/StatefulPartitionedCall0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp!^dense_27/StatefulPartitionedCall0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?	

Identity_1Identity(dense_24/ActivityRegularizer/truediv:z:0.^batch_normalization_4/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp!^dense_25/StatefulPartitionedCall0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp!^dense_26/StatefulPartitionedCall0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp!^dense_27/StatefulPartitionedCall0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?	

Identity_2Identity(dense_25/ActivityRegularizer/truediv:z:0.^batch_normalization_4/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp!^dense_25/StatefulPartitionedCall0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp!^dense_26/StatefulPartitionedCall0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp!^dense_27/StatefulPartitionedCall0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?	

Identity_3Identity(dense_26/ActivityRegularizer/truediv:z:0.^batch_normalization_4/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp!^dense_25/StatefulPartitionedCall0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp!^dense_26/StatefulPartitionedCall0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp!^dense_27/StatefulPartitionedCall0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3?	

Identity_4Identity(dense_27/ActivityRegularizer/truediv:z:0.^batch_normalization_4/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp!^dense_25/StatefulPartitionedCall0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp!^dense_26/StatefulPartitionedCall0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp!^dense_27/StatefulPartitionedCall0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_4?	

Identity_5Identity(dense_28/ActivityRegularizer/truediv:z:0.^batch_normalization_4/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp!^dense_25/StatefulPartitionedCall0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp!^dense_26/StatefulPartitionedCall0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp!^dense_27/StatefulPartitionedCall0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : : : : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2b
/dense_24/bias/Regularizer/Square/ReadVariableOp/dense_24/bias/Regularizer/Square/ReadVariableOp2`
.dense_24/kernel/Regularizer/Abs/ReadVariableOp.dense_24/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_24/kernel/Regularizer/Square/ReadVariableOp1dense_24/kernel/Regularizer/Square/ReadVariableOp2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2b
/dense_25/bias/Regularizer/Square/ReadVariableOp/dense_25/bias/Regularizer/Square/ReadVariableOp2`
.dense_25/kernel/Regularizer/Abs/ReadVariableOp.dense_25/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_25/kernel/Regularizer/Square/ReadVariableOp1dense_25/kernel/Regularizer/Square/ReadVariableOp2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2b
/dense_26/bias/Regularizer/Square/ReadVariableOp/dense_26/bias/Regularizer/Square/ReadVariableOp2`
.dense_26/kernel/Regularizer/Abs/ReadVariableOp.dense_26/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_26/kernel/Regularizer/Square/ReadVariableOp1dense_26/kernel/Regularizer/Square/ReadVariableOp2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2b
/dense_27/bias/Regularizer/Square/ReadVariableOp/dense_27/bias/Regularizer/Square/ReadVariableOp2`
.dense_27/kernel/Regularizer/Abs/ReadVariableOp.dense_27/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_27/kernel/Regularizer/Square/ReadVariableOp1dense_27/kernel/Regularizer/Square/ReadVariableOp2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2b
/dense_28/bias/Regularizer/Square/ReadVariableOp/dense_28/bias/Regularizer/Square/ReadVariableOp2`
.dense_28/kernel/Regularizer/Abs/ReadVariableOp.dense_28/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_28/kernel/Regularizer/Square/ReadVariableOp1dense_28/kernel/Regularizer/Square/ReadVariableOp2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall2P
&normalization_4/Reshape/ReadVariableOp&normalization_4/Reshape/ReadVariableOp2T
(normalization_4/Reshape_1/ReadVariableOp(normalization_4/Reshape_1/ReadVariableOp:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_5
?
?
__inference_loss_fn_8_1012640I
7dense_28_kernel_regularizer_abs_readvariableop_resource:d2
identity??.dense_28/kernel/Regularizer/Abs/ReadVariableOp?1dense_28/kernel/Regularizer/Square/ReadVariableOp?
!dense_28/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_28/kernel/Regularizer/Const?
.dense_28/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp7dense_28_kernel_regularizer_abs_readvariableop_resource*
_output_shapes

:d2*
dtype020
.dense_28/kernel/Regularizer/Abs/ReadVariableOp?
dense_28/kernel/Regularizer/AbsAbs6dense_28/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:d22!
dense_28/kernel/Regularizer/Abs?
#dense_28/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_28/kernel/Regularizer/Const_1?
dense_28/kernel/Regularizer/SumSum#dense_28/kernel/Regularizer/Abs:y:0,dense_28/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_28/kernel/Regularizer/Sum?
!dense_28/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_28/kernel/Regularizer/mul/x?
dense_28/kernel/Regularizer/mulMul*dense_28/kernel/Regularizer/mul/x:output:0(dense_28/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_28/kernel/Regularizer/mul?
dense_28/kernel/Regularizer/addAddV2*dense_28/kernel/Regularizer/Const:output:0#dense_28/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_28/kernel/Regularizer/add?
1dense_28/kernel/Regularizer/Square/ReadVariableOpReadVariableOp7dense_28_kernel_regularizer_abs_readvariableop_resource*
_output_shapes

:d2*
dtype023
1dense_28/kernel/Regularizer/Square/ReadVariableOp?
"dense_28/kernel/Regularizer/SquareSquare9dense_28/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d22$
"dense_28/kernel/Regularizer/Square?
#dense_28/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_28/kernel/Regularizer/Const_2?
!dense_28/kernel/Regularizer/Sum_1Sum&dense_28/kernel/Regularizer/Square:y:0,dense_28/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_28/kernel/Regularizer/Sum_1?
#dense_28/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_28/kernel/Regularizer/mul_1/x?
!dense_28/kernel/Regularizer/mul_1Mul,dense_28/kernel/Regularizer/mul_1/x:output:0*dense_28/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_28/kernel/Regularizer/mul_1?
!dense_28/kernel/Regularizer/add_1AddV2#dense_28/kernel/Regularizer/add:z:0%dense_28/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_28/kernel/Regularizer/add_1?
IdentityIdentity%dense_28/kernel/Regularizer/add_1:z:0/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2`
.dense_28/kernel/Regularizer/Abs/ReadVariableOp.dense_28/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_28/kernel/Regularizer/Square/ReadVariableOp1dense_28/kernel/Regularizer/Square/ReadVariableOp
?
H
1__inference_dense_26_activity_regularizer_1010114
x
identity@
SquareSquarex*
T0*
_output_shapes
:2
SquareA
RankRank
Square:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:?????????2
rangeN
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
??
?
C__inference_mapDNN_layer_call_and_return_conditional_losses_1011447
input_5=
/normalization_4_reshape_readvariableop_resource:?
1normalization_4_reshape_1_readvariableop_resource:+
batch_normalization_4_1011257:+
batch_normalization_4_1011259:+
batch_normalization_4_1011261:+
batch_normalization_4_1011263:"
dense_24_1011266:2
dense_24_1011268:2"
dense_25_1011279:2d
dense_25_1011281:d#
dense_26_1011292:	d?
dense_26_1011294:	?#
dense_27_1011305:	?d
dense_27_1011307:d"
dense_28_1011318:d2
dense_28_1011320:2"
dense_29_1011331:2
dense_29_1011333:
identity

identity_1

identity_2

identity_3

identity_4

identity_5??-batch_normalization_4/StatefulPartitionedCall? dense_24/StatefulPartitionedCall?/dense_24/bias/Regularizer/Square/ReadVariableOp?.dense_24/kernel/Regularizer/Abs/ReadVariableOp?1dense_24/kernel/Regularizer/Square/ReadVariableOp? dense_25/StatefulPartitionedCall?/dense_25/bias/Regularizer/Square/ReadVariableOp?.dense_25/kernel/Regularizer/Abs/ReadVariableOp?1dense_25/kernel/Regularizer/Square/ReadVariableOp? dense_26/StatefulPartitionedCall?/dense_26/bias/Regularizer/Square/ReadVariableOp?.dense_26/kernel/Regularizer/Abs/ReadVariableOp?1dense_26/kernel/Regularizer/Square/ReadVariableOp? dense_27/StatefulPartitionedCall?/dense_27/bias/Regularizer/Square/ReadVariableOp?.dense_27/kernel/Regularizer/Abs/ReadVariableOp?1dense_27/kernel/Regularizer/Square/ReadVariableOp? dense_28/StatefulPartitionedCall?/dense_28/bias/Regularizer/Square/ReadVariableOp?.dense_28/kernel/Regularizer/Abs/ReadVariableOp?1dense_28/kernel/Regularizer/Square/ReadVariableOp? dense_29/StatefulPartitionedCall?&normalization_4/Reshape/ReadVariableOp?(normalization_4/Reshape_1/ReadVariableOp?
&normalization_4/Reshape/ReadVariableOpReadVariableOp/normalization_4_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_4/Reshape/ReadVariableOp?
normalization_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_4/Reshape/shape?
normalization_4/ReshapeReshape.normalization_4/Reshape/ReadVariableOp:value:0&normalization_4/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_4/Reshape?
(normalization_4/Reshape_1/ReadVariableOpReadVariableOp1normalization_4_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_4/Reshape_1/ReadVariableOp?
normalization_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_4/Reshape_1/shape?
normalization_4/Reshape_1Reshape0normalization_4/Reshape_1/ReadVariableOp:value:0(normalization_4/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_4/Reshape_1?
normalization_4/subSubinput_5 normalization_4/Reshape:output:0*
T0*'
_output_shapes
:?????????2
normalization_4/sub?
normalization_4/SqrtSqrt"normalization_4/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_4/Sqrt{
normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_4/Maximum/y?
normalization_4/MaximumMaximumnormalization_4/Sqrt:y:0"normalization_4/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_4/Maximum?
normalization_4/truedivRealDivnormalization_4/sub:z:0normalization_4/Maximum:z:0*
T0*'
_output_shapes
:?????????2
normalization_4/truediv?
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCallnormalization_4/truediv:z:0batch_normalization_4_1011257batch_normalization_4_1011259batch_normalization_4_1011261batch_normalization_4_1011263*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_10099972/
-batch_normalization_4/StatefulPartitionedCall?
 dense_24/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0dense_24_1011266dense_24_1011268*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_24_layer_call_and_return_conditional_losses_10102012"
 dense_24/StatefulPartitionedCall?
,dense_24/ActivityRegularizer/PartitionedCallPartitionedCall)dense_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU 2J 8? *:
f5R3
1__inference_dense_24_activity_regularizer_10100882.
,dense_24/ActivityRegularizer/PartitionedCall?
"dense_24/ActivityRegularizer/ShapeShape)dense_24/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_24/ActivityRegularizer/Shape?
0dense_24/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_24/ActivityRegularizer/strided_slice/stack?
2dense_24/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_24/ActivityRegularizer/strided_slice/stack_1?
2dense_24/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_24/ActivityRegularizer/strided_slice/stack_2?
*dense_24/ActivityRegularizer/strided_sliceStridedSlice+dense_24/ActivityRegularizer/Shape:output:09dense_24/ActivityRegularizer/strided_slice/stack:output:0;dense_24/ActivityRegularizer/strided_slice/stack_1:output:0;dense_24/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_24/ActivityRegularizer/strided_slice?
!dense_24/ActivityRegularizer/CastCast3dense_24/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_24/ActivityRegularizer/Cast?
$dense_24/ActivityRegularizer/truedivRealDiv5dense_24/ActivityRegularizer/PartitionedCall:output:0%dense_24/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_24/ActivityRegularizer/truediv?
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_1011279dense_25_1011281*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_25_layer_call_and_return_conditional_losses_10102472"
 dense_25/StatefulPartitionedCall?
,dense_25/ActivityRegularizer/PartitionedCallPartitionedCall)dense_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU 2J 8? *:
f5R3
1__inference_dense_25_activity_regularizer_10101012.
,dense_25/ActivityRegularizer/PartitionedCall?
"dense_25/ActivityRegularizer/ShapeShape)dense_25/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_25/ActivityRegularizer/Shape?
0dense_25/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_25/ActivityRegularizer/strided_slice/stack?
2dense_25/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_25/ActivityRegularizer/strided_slice/stack_1?
2dense_25/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_25/ActivityRegularizer/strided_slice/stack_2?
*dense_25/ActivityRegularizer/strided_sliceStridedSlice+dense_25/ActivityRegularizer/Shape:output:09dense_25/ActivityRegularizer/strided_slice/stack:output:0;dense_25/ActivityRegularizer/strided_slice/stack_1:output:0;dense_25/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_25/ActivityRegularizer/strided_slice?
!dense_25/ActivityRegularizer/CastCast3dense_25/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_25/ActivityRegularizer/Cast?
$dense_25/ActivityRegularizer/truedivRealDiv5dense_25/ActivityRegularizer/PartitionedCall:output:0%dense_25/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_25/ActivityRegularizer/truediv?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall)dense_25/StatefulPartitionedCall:output:0dense_26_1011292dense_26_1011294*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_26_layer_call_and_return_conditional_losses_10102932"
 dense_26/StatefulPartitionedCall?
,dense_26/ActivityRegularizer/PartitionedCallPartitionedCall)dense_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU 2J 8? *:
f5R3
1__inference_dense_26_activity_regularizer_10101142.
,dense_26/ActivityRegularizer/PartitionedCall?
"dense_26/ActivityRegularizer/ShapeShape)dense_26/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_26/ActivityRegularizer/Shape?
0dense_26/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_26/ActivityRegularizer/strided_slice/stack?
2dense_26/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_26/ActivityRegularizer/strided_slice/stack_1?
2dense_26/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_26/ActivityRegularizer/strided_slice/stack_2?
*dense_26/ActivityRegularizer/strided_sliceStridedSlice+dense_26/ActivityRegularizer/Shape:output:09dense_26/ActivityRegularizer/strided_slice/stack:output:0;dense_26/ActivityRegularizer/strided_slice/stack_1:output:0;dense_26/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_26/ActivityRegularizer/strided_slice?
!dense_26/ActivityRegularizer/CastCast3dense_26/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_26/ActivityRegularizer/Cast?
$dense_26/ActivityRegularizer/truedivRealDiv5dense_26/ActivityRegularizer/PartitionedCall:output:0%dense_26/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_26/ActivityRegularizer/truediv?
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_1011305dense_27_1011307*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_27_layer_call_and_return_conditional_losses_10103392"
 dense_27/StatefulPartitionedCall?
,dense_27/ActivityRegularizer/PartitionedCallPartitionedCall)dense_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU 2J 8? *:
f5R3
1__inference_dense_27_activity_regularizer_10101272.
,dense_27/ActivityRegularizer/PartitionedCall?
"dense_27/ActivityRegularizer/ShapeShape)dense_27/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_27/ActivityRegularizer/Shape?
0dense_27/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_27/ActivityRegularizer/strided_slice/stack?
2dense_27/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_27/ActivityRegularizer/strided_slice/stack_1?
2dense_27/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_27/ActivityRegularizer/strided_slice/stack_2?
*dense_27/ActivityRegularizer/strided_sliceStridedSlice+dense_27/ActivityRegularizer/Shape:output:09dense_27/ActivityRegularizer/strided_slice/stack:output:0;dense_27/ActivityRegularizer/strided_slice/stack_1:output:0;dense_27/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_27/ActivityRegularizer/strided_slice?
!dense_27/ActivityRegularizer/CastCast3dense_27/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_27/ActivityRegularizer/Cast?
$dense_27/ActivityRegularizer/truedivRealDiv5dense_27/ActivityRegularizer/PartitionedCall:output:0%dense_27/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_27/ActivityRegularizer/truediv?
 dense_28/StatefulPartitionedCallStatefulPartitionedCall)dense_27/StatefulPartitionedCall:output:0dense_28_1011318dense_28_1011320*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_28_layer_call_and_return_conditional_losses_10103852"
 dense_28/StatefulPartitionedCall?
,dense_28/ActivityRegularizer/PartitionedCallPartitionedCall)dense_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU 2J 8? *:
f5R3
1__inference_dense_28_activity_regularizer_10101402.
,dense_28/ActivityRegularizer/PartitionedCall?
"dense_28/ActivityRegularizer/ShapeShape)dense_28/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_28/ActivityRegularizer/Shape?
0dense_28/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_28/ActivityRegularizer/strided_slice/stack?
2dense_28/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_28/ActivityRegularizer/strided_slice/stack_1?
2dense_28/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_28/ActivityRegularizer/strided_slice/stack_2?
*dense_28/ActivityRegularizer/strided_sliceStridedSlice+dense_28/ActivityRegularizer/Shape:output:09dense_28/ActivityRegularizer/strided_slice/stack:output:0;dense_28/ActivityRegularizer/strided_slice/stack_1:output:0;dense_28/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_28/ActivityRegularizer/strided_slice?
!dense_28/ActivityRegularizer/CastCast3dense_28/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_28/ActivityRegularizer/Cast?
$dense_28/ActivityRegularizer/truedivRealDiv5dense_28/ActivityRegularizer/PartitionedCall:output:0%dense_28/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_28/ActivityRegularizer/truediv?
 dense_29/StatefulPartitionedCallStatefulPartitionedCall)dense_28/StatefulPartitionedCall:output:0dense_29_1011331dense_29_1011333*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_29_layer_call_and_return_conditional_losses_10104102"
 dense_29/StatefulPartitionedCall?
!dense_24/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_24/kernel/Regularizer/Const?
.dense_24/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_24_1011266*
_output_shapes

:2*
dtype020
.dense_24/kernel/Regularizer/Abs/ReadVariableOp?
dense_24/kernel/Regularizer/AbsAbs6dense_24/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:22!
dense_24/kernel/Regularizer/Abs?
#dense_24/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_24/kernel/Regularizer/Const_1?
dense_24/kernel/Regularizer/SumSum#dense_24/kernel/Regularizer/Abs:y:0,dense_24/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_24/kernel/Regularizer/Sum?
!dense_24/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_24/kernel/Regularizer/mul/x?
dense_24/kernel/Regularizer/mulMul*dense_24/kernel/Regularizer/mul/x:output:0(dense_24/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_24/kernel/Regularizer/mul?
dense_24/kernel/Regularizer/addAddV2*dense_24/kernel/Regularizer/Const:output:0#dense_24/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_24/kernel/Regularizer/add?
1dense_24/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_24_1011266*
_output_shapes

:2*
dtype023
1dense_24/kernel/Regularizer/Square/ReadVariableOp?
"dense_24/kernel/Regularizer/SquareSquare9dense_24/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22$
"dense_24/kernel/Regularizer/Square?
#dense_24/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_24/kernel/Regularizer/Const_2?
!dense_24/kernel/Regularizer/Sum_1Sum&dense_24/kernel/Regularizer/Square:y:0,dense_24/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_24/kernel/Regularizer/Sum_1?
#dense_24/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_24/kernel/Regularizer/mul_1/x?
!dense_24/kernel/Regularizer/mul_1Mul,dense_24/kernel/Regularizer/mul_1/x:output:0*dense_24/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_24/kernel/Regularizer/mul_1?
!dense_24/kernel/Regularizer/add_1AddV2#dense_24/kernel/Regularizer/add:z:0%dense_24/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_24/kernel/Regularizer/add_1?
/dense_24/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_24_1011268*
_output_shapes
:2*
dtype021
/dense_24/bias/Regularizer/Square/ReadVariableOp?
 dense_24/bias/Regularizer/SquareSquare7dense_24/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22"
 dense_24/bias/Regularizer/Square?
dense_24/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_24/bias/Regularizer/Const?
dense_24/bias/Regularizer/SumSum$dense_24/bias/Regularizer/Square:y:0(dense_24/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_24/bias/Regularizer/Sum?
dense_24/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_24/bias/Regularizer/mul/x?
dense_24/bias/Regularizer/mulMul(dense_24/bias/Regularizer/mul/x:output:0&dense_24/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_24/bias/Regularizer/mul?
!dense_25/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_25/kernel/Regularizer/Const?
.dense_25/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_25_1011279*
_output_shapes

:2d*
dtype020
.dense_25/kernel/Regularizer/Abs/ReadVariableOp?
dense_25/kernel/Regularizer/AbsAbs6dense_25/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:2d2!
dense_25/kernel/Regularizer/Abs?
#dense_25/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_25/kernel/Regularizer/Const_1?
dense_25/kernel/Regularizer/SumSum#dense_25/kernel/Regularizer/Abs:y:0,dense_25/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_25/kernel/Regularizer/Sum?
!dense_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_25/kernel/Regularizer/mul/x?
dense_25/kernel/Regularizer/mulMul*dense_25/kernel/Regularizer/mul/x:output:0(dense_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_25/kernel/Regularizer/mul?
dense_25/kernel/Regularizer/addAddV2*dense_25/kernel/Regularizer/Const:output:0#dense_25/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_25/kernel/Regularizer/add?
1dense_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_25_1011279*
_output_shapes

:2d*
dtype023
1dense_25/kernel/Regularizer/Square/ReadVariableOp?
"dense_25/kernel/Regularizer/SquareSquare9dense_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2d2$
"dense_25/kernel/Regularizer/Square?
#dense_25/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_25/kernel/Regularizer/Const_2?
!dense_25/kernel/Regularizer/Sum_1Sum&dense_25/kernel/Regularizer/Square:y:0,dense_25/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_25/kernel/Regularizer/Sum_1?
#dense_25/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_25/kernel/Regularizer/mul_1/x?
!dense_25/kernel/Regularizer/mul_1Mul,dense_25/kernel/Regularizer/mul_1/x:output:0*dense_25/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_25/kernel/Regularizer/mul_1?
!dense_25/kernel/Regularizer/add_1AddV2#dense_25/kernel/Regularizer/add:z:0%dense_25/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_25/kernel/Regularizer/add_1?
/dense_25/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_25_1011281*
_output_shapes
:d*
dtype021
/dense_25/bias/Regularizer/Square/ReadVariableOp?
 dense_25/bias/Regularizer/SquareSquare7dense_25/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_25/bias/Regularizer/Square?
dense_25/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_25/bias/Regularizer/Const?
dense_25/bias/Regularizer/SumSum$dense_25/bias/Regularizer/Square:y:0(dense_25/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_25/bias/Regularizer/Sum?
dense_25/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_25/bias/Regularizer/mul/x?
dense_25/bias/Regularizer/mulMul(dense_25/bias/Regularizer/mul/x:output:0&dense_25/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_25/bias/Regularizer/mul?
!dense_26/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_26/kernel/Regularizer/Const?
.dense_26/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_26_1011292*
_output_shapes
:	d?*
dtype020
.dense_26/kernel/Regularizer/Abs/ReadVariableOp?
dense_26/kernel/Regularizer/AbsAbs6dense_26/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	d?2!
dense_26/kernel/Regularizer/Abs?
#dense_26/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_26/kernel/Regularizer/Const_1?
dense_26/kernel/Regularizer/SumSum#dense_26/kernel/Regularizer/Abs:y:0,dense_26/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_26/kernel/Regularizer/Sum?
!dense_26/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_26/kernel/Regularizer/mul/x?
dense_26/kernel/Regularizer/mulMul*dense_26/kernel/Regularizer/mul/x:output:0(dense_26/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_26/kernel/Regularizer/mul?
dense_26/kernel/Regularizer/addAddV2*dense_26/kernel/Regularizer/Const:output:0#dense_26/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_26/kernel/Regularizer/add?
1dense_26/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_26_1011292*
_output_shapes
:	d?*
dtype023
1dense_26/kernel/Regularizer/Square/ReadVariableOp?
"dense_26/kernel/Regularizer/SquareSquare9dense_26/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	d?2$
"dense_26/kernel/Regularizer/Square?
#dense_26/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_26/kernel/Regularizer/Const_2?
!dense_26/kernel/Regularizer/Sum_1Sum&dense_26/kernel/Regularizer/Square:y:0,dense_26/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_26/kernel/Regularizer/Sum_1?
#dense_26/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_26/kernel/Regularizer/mul_1/x?
!dense_26/kernel/Regularizer/mul_1Mul,dense_26/kernel/Regularizer/mul_1/x:output:0*dense_26/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_26/kernel/Regularizer/mul_1?
!dense_26/kernel/Regularizer/add_1AddV2#dense_26/kernel/Regularizer/add:z:0%dense_26/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_26/kernel/Regularizer/add_1?
/dense_26/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_26_1011294*
_output_shapes	
:?*
dtype021
/dense_26/bias/Regularizer/Square/ReadVariableOp?
 dense_26/bias/Regularizer/SquareSquare7dense_26/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2"
 dense_26/bias/Regularizer/Square?
dense_26/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_26/bias/Regularizer/Const?
dense_26/bias/Regularizer/SumSum$dense_26/bias/Regularizer/Square:y:0(dense_26/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_26/bias/Regularizer/Sum?
dense_26/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_26/bias/Regularizer/mul/x?
dense_26/bias/Regularizer/mulMul(dense_26/bias/Regularizer/mul/x:output:0&dense_26/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_26/bias/Regularizer/mul?
!dense_27/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_27/kernel/Regularizer/Const?
.dense_27/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_27_1011305*
_output_shapes
:	?d*
dtype020
.dense_27/kernel/Regularizer/Abs/ReadVariableOp?
dense_27/kernel/Regularizer/AbsAbs6dense_27/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?d2!
dense_27/kernel/Regularizer/Abs?
#dense_27/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_27/kernel/Regularizer/Const_1?
dense_27/kernel/Regularizer/SumSum#dense_27/kernel/Regularizer/Abs:y:0,dense_27/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_27/kernel/Regularizer/Sum?
!dense_27/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_27/kernel/Regularizer/mul/x?
dense_27/kernel/Regularizer/mulMul*dense_27/kernel/Regularizer/mul/x:output:0(dense_27/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_27/kernel/Regularizer/mul?
dense_27/kernel/Regularizer/addAddV2*dense_27/kernel/Regularizer/Const:output:0#dense_27/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_27/kernel/Regularizer/add?
1dense_27/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_27_1011305*
_output_shapes
:	?d*
dtype023
1dense_27/kernel/Regularizer/Square/ReadVariableOp?
"dense_27/kernel/Regularizer/SquareSquare9dense_27/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?d2$
"dense_27/kernel/Regularizer/Square?
#dense_27/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_27/kernel/Regularizer/Const_2?
!dense_27/kernel/Regularizer/Sum_1Sum&dense_27/kernel/Regularizer/Square:y:0,dense_27/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_27/kernel/Regularizer/Sum_1?
#dense_27/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_27/kernel/Regularizer/mul_1/x?
!dense_27/kernel/Regularizer/mul_1Mul,dense_27/kernel/Regularizer/mul_1/x:output:0*dense_27/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_27/kernel/Regularizer/mul_1?
!dense_27/kernel/Regularizer/add_1AddV2#dense_27/kernel/Regularizer/add:z:0%dense_27/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_27/kernel/Regularizer/add_1?
/dense_27/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_27_1011307*
_output_shapes
:d*
dtype021
/dense_27/bias/Regularizer/Square/ReadVariableOp?
 dense_27/bias/Regularizer/SquareSquare7dense_27/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_27/bias/Regularizer/Square?
dense_27/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_27/bias/Regularizer/Const?
dense_27/bias/Regularizer/SumSum$dense_27/bias/Regularizer/Square:y:0(dense_27/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_27/bias/Regularizer/Sum?
dense_27/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_27/bias/Regularizer/mul/x?
dense_27/bias/Regularizer/mulMul(dense_27/bias/Regularizer/mul/x:output:0&dense_27/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_27/bias/Regularizer/mul?
!dense_28/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_28/kernel/Regularizer/Const?
.dense_28/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_28_1011318*
_output_shapes

:d2*
dtype020
.dense_28/kernel/Regularizer/Abs/ReadVariableOp?
dense_28/kernel/Regularizer/AbsAbs6dense_28/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:d22!
dense_28/kernel/Regularizer/Abs?
#dense_28/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_28/kernel/Regularizer/Const_1?
dense_28/kernel/Regularizer/SumSum#dense_28/kernel/Regularizer/Abs:y:0,dense_28/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_28/kernel/Regularizer/Sum?
!dense_28/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_28/kernel/Regularizer/mul/x?
dense_28/kernel/Regularizer/mulMul*dense_28/kernel/Regularizer/mul/x:output:0(dense_28/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_28/kernel/Regularizer/mul?
dense_28/kernel/Regularizer/addAddV2*dense_28/kernel/Regularizer/Const:output:0#dense_28/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_28/kernel/Regularizer/add?
1dense_28/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_28_1011318*
_output_shapes

:d2*
dtype023
1dense_28/kernel/Regularizer/Square/ReadVariableOp?
"dense_28/kernel/Regularizer/SquareSquare9dense_28/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d22$
"dense_28/kernel/Regularizer/Square?
#dense_28/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_28/kernel/Regularizer/Const_2?
!dense_28/kernel/Regularizer/Sum_1Sum&dense_28/kernel/Regularizer/Square:y:0,dense_28/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_28/kernel/Regularizer/Sum_1?
#dense_28/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_28/kernel/Regularizer/mul_1/x?
!dense_28/kernel/Regularizer/mul_1Mul,dense_28/kernel/Regularizer/mul_1/x:output:0*dense_28/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_28/kernel/Regularizer/mul_1?
!dense_28/kernel/Regularizer/add_1AddV2#dense_28/kernel/Regularizer/add:z:0%dense_28/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_28/kernel/Regularizer/add_1?
/dense_28/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_28_1011320*
_output_shapes
:2*
dtype021
/dense_28/bias/Regularizer/Square/ReadVariableOp?
 dense_28/bias/Regularizer/SquareSquare7dense_28/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22"
 dense_28/bias/Regularizer/Square?
dense_28/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_28/bias/Regularizer/Const?
dense_28/bias/Regularizer/SumSum$dense_28/bias/Regularizer/Square:y:0(dense_28/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/Sum?
dense_28/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_28/bias/Regularizer/mul/x?
dense_28/bias/Regularizer/mulMul(dense_28/bias/Regularizer/mul/x:output:0&dense_28/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/mul?	
IdentityIdentity)dense_29/StatefulPartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp!^dense_25/StatefulPartitionedCall0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp!^dense_26/StatefulPartitionedCall0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp!^dense_27/StatefulPartitionedCall0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?	

Identity_1Identity(dense_24/ActivityRegularizer/truediv:z:0.^batch_normalization_4/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp!^dense_25/StatefulPartitionedCall0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp!^dense_26/StatefulPartitionedCall0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp!^dense_27/StatefulPartitionedCall0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?	

Identity_2Identity(dense_25/ActivityRegularizer/truediv:z:0.^batch_normalization_4/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp!^dense_25/StatefulPartitionedCall0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp!^dense_26/StatefulPartitionedCall0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp!^dense_27/StatefulPartitionedCall0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?	

Identity_3Identity(dense_26/ActivityRegularizer/truediv:z:0.^batch_normalization_4/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp!^dense_25/StatefulPartitionedCall0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp!^dense_26/StatefulPartitionedCall0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp!^dense_27/StatefulPartitionedCall0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3?	

Identity_4Identity(dense_27/ActivityRegularizer/truediv:z:0.^batch_normalization_4/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp!^dense_25/StatefulPartitionedCall0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp!^dense_26/StatefulPartitionedCall0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp!^dense_27/StatefulPartitionedCall0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_4?	

Identity_5Identity(dense_28/ActivityRegularizer/truediv:z:0.^batch_normalization_4/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp!^dense_25/StatefulPartitionedCall0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp!^dense_26/StatefulPartitionedCall0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp!^dense_27/StatefulPartitionedCall0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : : : : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2b
/dense_24/bias/Regularizer/Square/ReadVariableOp/dense_24/bias/Regularizer/Square/ReadVariableOp2`
.dense_24/kernel/Regularizer/Abs/ReadVariableOp.dense_24/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_24/kernel/Regularizer/Square/ReadVariableOp1dense_24/kernel/Regularizer/Square/ReadVariableOp2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2b
/dense_25/bias/Regularizer/Square/ReadVariableOp/dense_25/bias/Regularizer/Square/ReadVariableOp2`
.dense_25/kernel/Regularizer/Abs/ReadVariableOp.dense_25/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_25/kernel/Regularizer/Square/ReadVariableOp1dense_25/kernel/Regularizer/Square/ReadVariableOp2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2b
/dense_26/bias/Regularizer/Square/ReadVariableOp/dense_26/bias/Regularizer/Square/ReadVariableOp2`
.dense_26/kernel/Regularizer/Abs/ReadVariableOp.dense_26/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_26/kernel/Regularizer/Square/ReadVariableOp1dense_26/kernel/Regularizer/Square/ReadVariableOp2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2b
/dense_27/bias/Regularizer/Square/ReadVariableOp/dense_27/bias/Regularizer/Square/ReadVariableOp2`
.dense_27/kernel/Regularizer/Abs/ReadVariableOp.dense_27/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_27/kernel/Regularizer/Square/ReadVariableOp1dense_27/kernel/Regularizer/Square/ReadVariableOp2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2b
/dense_28/bias/Regularizer/Square/ReadVariableOp/dense_28/bias/Regularizer/Square/ReadVariableOp2`
.dense_28/kernel/Regularizer/Abs/ReadVariableOp.dense_28/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_28/kernel/Regularizer/Square/ReadVariableOp1dense_28/kernel/Regularizer/Square/ReadVariableOp2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall2P
&normalization_4/Reshape/ReadVariableOp&normalization_4/Reshape/ReadVariableOp2T
(normalization_4/Reshape_1/ReadVariableOp(normalization_4/Reshape_1/ReadVariableOp:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_5
?
?
(__inference_mapDNN_layer_call_fn_1010571
input_5
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:2
	unknown_6:2
	unknown_7:2d
	unknown_8:d
	unknown_9:	d?

unknown_10:	?

unknown_11:	?d

unknown_12:d

unknown_13:d2

unknown_14:2

unknown_15:2

unknown_16:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout

2*
_collective_manager_ids
 *1
_output_shapes
:?????????: : : : : *4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_mapDNN_layer_call_and_return_conditional_losses_10105272
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_5
?
H
1__inference_dense_25_activity_regularizer_1010101
x
identity@
SquareSquarex*
T0*
_output_shapes
:2
SquareA
RankRank
Square:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:?????????2
rangeN
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
?,
?
__inference_adapt_step_929186
iterator

iterator_1%
add_readvariableop_resource:	 %
readvariableop_resource:'
readvariableop_2_resource:??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?IteratorGetNext?ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?add/ReadVariableOp?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*'
_output_shapes
:?????????*&
output_shapes
:?????????*
output_types
22
IteratorGetNext?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeanIteratorGetNext:components:0'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceIteratorGetNext:components:0moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1j
ShapeShapeIteratorGetNext:components:0*
T0*
_output_shapes
:*
out_type0	2
Shapen
GatherV2/indicesConst*
_output_shapes
:*
dtype0*
valueB: 2
GatherV2/indices`
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/axis?
GatherV2GatherV2Shape:output:0GatherV2/indices:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
:2

GatherV2X
ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
ConstX
ProdProdGatherV2:output:0Const:output:0*
T0	*
_output_shapes
: 2
Prod|
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype0	2
add/ReadVariableOp_
addAddV2Prod:output:0add/ReadVariableOp:value:0*
T0	*
_output_shapes
: 2
addS
CastCastProd:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2
CastQ
Cast_1Castadd:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2
Cast_1T
truedivRealDivCast:y:0
Cast_1:y:0*
T0*
_output_shapes
: 2	
truedivS
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xO
subSubsub/x:output:0truediv:z:0*
T0*
_output_shapes
: 2
subt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpW
mulMulReadVariableOp:value:0sub:z:0*
T0*
_output_shapes
:2
mula
mul_1Mulmoments/Squeeze:output:0truediv:z:0*
T0*
_output_shapes
:2
mul_1P
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:2
add_1x
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1_
sub_1SubReadVariableOp_1:value:0	add_1:z:0*
T0*
_output_shapes
:2
sub_1S
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
pow/yQ
powPow	sub_1:z:0pow/y:output:0*
T0*
_output_shapes
:2
powz
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
:*
dtype02
ReadVariableOp_2_
add_2AddV2ReadVariableOp_2:value:0pow:z:0*
T0*
_output_shapes
:2
add_2N
mul_2Mul	add_2:z:0sub:z:0*
T0*
_output_shapes
:2
mul_2_
sub_2Submoments/Squeeze:output:0	add_1:z:0*
T0*
_output_shapes
:2
sub_2W
pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
pow_1/yW
pow_1Pow	sub_2:z:0pow_1/y:output:0*
T0*
_output_shapes
:2
pow_1c
add_3AddV2moments/Squeeze_1:output:0	pow_1:z:0*
T0*
_output_shapes
:2
add_3R
mul_3Mul	add_3:z:0truediv:z:0*
T0*
_output_shapes
:2
mul_3R
add_4AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:2
add_4?
AssignVariableOpAssignVariableOpreadvariableop_resource	add_1:z:0^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignVariableOp?
AssignVariableOp_1AssignVariableOpreadvariableop_2_resource	add_4:z:0^ReadVariableOp_2*
_output_shapes
 *
dtype02
AssignVariableOp_1?
AssignVariableOp_2AssignVariableOpadd_readvariableop_resourceadd:z:0^add/ReadVariableOp*
_output_shapes
 *
dtype0	2
AssignVariableOp_2*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22"
IteratorGetNextIteratorGetNext2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22(
add/ReadVariableOpadd/ReadVariableOp:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator
?
?
I__inference_dense_26_layer_call_and_return_all_conditional_losses_1012394

inputs
unknown:	d?
	unknown_0:	?
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_26_layer_call_and_return_conditional_losses_10102932
StatefulPartitionedCall?
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU 2J 8? *:
f5R3
1__inference_dense_26_activity_regularizer_10101142
PartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identityy

Identity_1IdentityPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
I__inference_dense_28_layer_call_and_return_all_conditional_losses_1012476

inputs
unknown:d2
	unknown_0:2
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_28_layer_call_and_return_conditional_losses_10103852
StatefulPartitionedCall?
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU 2J 8? *:
f5R3
1__inference_dense_28_activity_regularizer_10101402
PartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identityy

Identity_1IdentityPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
__inference_loss_fn_6_1012609J
7dense_27_kernel_regularizer_abs_readvariableop_resource:	?d
identity??.dense_27/kernel/Regularizer/Abs/ReadVariableOp?1dense_27/kernel/Regularizer/Square/ReadVariableOp?
!dense_27/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_27/kernel/Regularizer/Const?
.dense_27/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp7dense_27_kernel_regularizer_abs_readvariableop_resource*
_output_shapes
:	?d*
dtype020
.dense_27/kernel/Regularizer/Abs/ReadVariableOp?
dense_27/kernel/Regularizer/AbsAbs6dense_27/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?d2!
dense_27/kernel/Regularizer/Abs?
#dense_27/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_27/kernel/Regularizer/Const_1?
dense_27/kernel/Regularizer/SumSum#dense_27/kernel/Regularizer/Abs:y:0,dense_27/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_27/kernel/Regularizer/Sum?
!dense_27/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_27/kernel/Regularizer/mul/x?
dense_27/kernel/Regularizer/mulMul*dense_27/kernel/Regularizer/mul/x:output:0(dense_27/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_27/kernel/Regularizer/mul?
dense_27/kernel/Regularizer/addAddV2*dense_27/kernel/Regularizer/Const:output:0#dense_27/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_27/kernel/Regularizer/add?
1dense_27/kernel/Regularizer/Square/ReadVariableOpReadVariableOp7dense_27_kernel_regularizer_abs_readvariableop_resource*
_output_shapes
:	?d*
dtype023
1dense_27/kernel/Regularizer/Square/ReadVariableOp?
"dense_27/kernel/Regularizer/SquareSquare9dense_27/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?d2$
"dense_27/kernel/Regularizer/Square?
#dense_27/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_27/kernel/Regularizer/Const_2?
!dense_27/kernel/Regularizer/Sum_1Sum&dense_27/kernel/Regularizer/Square:y:0,dense_27/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_27/kernel/Regularizer/Sum_1?
#dense_27/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_27/kernel/Regularizer/mul_1/x?
!dense_27/kernel/Regularizer/mul_1Mul,dense_27/kernel/Regularizer/mul_1/x:output:0*dense_27/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_27/kernel/Regularizer/mul_1?
!dense_27/kernel/Regularizer/add_1AddV2#dense_27/kernel/Regularizer/add:z:0%dense_27/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_27/kernel/Regularizer/add_1?
IdentityIdentity%dense_27/kernel/Regularizer/add_1:z:0/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2`
.dense_27/kernel/Regularizer/Abs/ReadVariableOp.dense_27/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_27/kernel/Regularizer/Square/ReadVariableOp1dense_27/kernel/Regularizer/Square/ReadVariableOp
??
?
"__inference__wrapped_model_1009913
input_5D
6mapdnn_normalization_4_reshape_readvariableop_resource:F
8mapdnn_normalization_4_reshape_1_readvariableop_resource:L
>mapdnn_batch_normalization_4_batchnorm_readvariableop_resource:P
Bmapdnn_batch_normalization_4_batchnorm_mul_readvariableop_resource:N
@mapdnn_batch_normalization_4_batchnorm_readvariableop_1_resource:N
@mapdnn_batch_normalization_4_batchnorm_readvariableop_2_resource:@
.mapdnn_dense_24_matmul_readvariableop_resource:2=
/mapdnn_dense_24_biasadd_readvariableop_resource:2@
.mapdnn_dense_25_matmul_readvariableop_resource:2d=
/mapdnn_dense_25_biasadd_readvariableop_resource:dA
.mapdnn_dense_26_matmul_readvariableop_resource:	d?>
/mapdnn_dense_26_biasadd_readvariableop_resource:	?A
.mapdnn_dense_27_matmul_readvariableop_resource:	?d=
/mapdnn_dense_27_biasadd_readvariableop_resource:d@
.mapdnn_dense_28_matmul_readvariableop_resource:d2=
/mapdnn_dense_28_biasadd_readvariableop_resource:2@
.mapdnn_dense_29_matmul_readvariableop_resource:2=
/mapdnn_dense_29_biasadd_readvariableop_resource:
identity??5mapDNN/batch_normalization_4/batchnorm/ReadVariableOp?7mapDNN/batch_normalization_4/batchnorm/ReadVariableOp_1?7mapDNN/batch_normalization_4/batchnorm/ReadVariableOp_2?9mapDNN/batch_normalization_4/batchnorm/mul/ReadVariableOp?&mapDNN/dense_24/BiasAdd/ReadVariableOp?%mapDNN/dense_24/MatMul/ReadVariableOp?&mapDNN/dense_25/BiasAdd/ReadVariableOp?%mapDNN/dense_25/MatMul/ReadVariableOp?&mapDNN/dense_26/BiasAdd/ReadVariableOp?%mapDNN/dense_26/MatMul/ReadVariableOp?&mapDNN/dense_27/BiasAdd/ReadVariableOp?%mapDNN/dense_27/MatMul/ReadVariableOp?&mapDNN/dense_28/BiasAdd/ReadVariableOp?%mapDNN/dense_28/MatMul/ReadVariableOp?&mapDNN/dense_29/BiasAdd/ReadVariableOp?%mapDNN/dense_29/MatMul/ReadVariableOp?-mapDNN/normalization_4/Reshape/ReadVariableOp?/mapDNN/normalization_4/Reshape_1/ReadVariableOp?
-mapDNN/normalization_4/Reshape/ReadVariableOpReadVariableOp6mapdnn_normalization_4_reshape_readvariableop_resource*
_output_shapes
:*
dtype02/
-mapDNN/normalization_4/Reshape/ReadVariableOp?
$mapDNN/normalization_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2&
$mapDNN/normalization_4/Reshape/shape?
mapDNN/normalization_4/ReshapeReshape5mapDNN/normalization_4/Reshape/ReadVariableOp:value:0-mapDNN/normalization_4/Reshape/shape:output:0*
T0*
_output_shapes

:2 
mapDNN/normalization_4/Reshape?
/mapDNN/normalization_4/Reshape_1/ReadVariableOpReadVariableOp8mapdnn_normalization_4_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype021
/mapDNN/normalization_4/Reshape_1/ReadVariableOp?
&mapDNN/normalization_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2(
&mapDNN/normalization_4/Reshape_1/shape?
 mapDNN/normalization_4/Reshape_1Reshape7mapDNN/normalization_4/Reshape_1/ReadVariableOp:value:0/mapDNN/normalization_4/Reshape_1/shape:output:0*
T0*
_output_shapes

:2"
 mapDNN/normalization_4/Reshape_1?
mapDNN/normalization_4/subSubinput_5'mapDNN/normalization_4/Reshape:output:0*
T0*'
_output_shapes
:?????????2
mapDNN/normalization_4/sub?
mapDNN/normalization_4/SqrtSqrt)mapDNN/normalization_4/Reshape_1:output:0*
T0*
_output_shapes

:2
mapDNN/normalization_4/Sqrt?
 mapDNN/normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32"
 mapDNN/normalization_4/Maximum/y?
mapDNN/normalization_4/MaximumMaximummapDNN/normalization_4/Sqrt:y:0)mapDNN/normalization_4/Maximum/y:output:0*
T0*
_output_shapes

:2 
mapDNN/normalization_4/Maximum?
mapDNN/normalization_4/truedivRealDivmapDNN/normalization_4/sub:z:0"mapDNN/normalization_4/Maximum:z:0*
T0*'
_output_shapes
:?????????2 
mapDNN/normalization_4/truediv?
5mapDNN/batch_normalization_4/batchnorm/ReadVariableOpReadVariableOp>mapdnn_batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype027
5mapDNN/batch_normalization_4/batchnorm/ReadVariableOp?
,mapDNN/batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2.
,mapDNN/batch_normalization_4/batchnorm/add/y?
*mapDNN/batch_normalization_4/batchnorm/addAddV2=mapDNN/batch_normalization_4/batchnorm/ReadVariableOp:value:05mapDNN/batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes
:2,
*mapDNN/batch_normalization_4/batchnorm/add?
,mapDNN/batch_normalization_4/batchnorm/RsqrtRsqrt.mapDNN/batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes
:2.
,mapDNN/batch_normalization_4/batchnorm/Rsqrt?
9mapDNN/batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpBmapdnn_batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02;
9mapDNN/batch_normalization_4/batchnorm/mul/ReadVariableOp?
*mapDNN/batch_normalization_4/batchnorm/mulMul0mapDNN/batch_normalization_4/batchnorm/Rsqrt:y:0AmapDNN/batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2,
*mapDNN/batch_normalization_4/batchnorm/mul?
,mapDNN/batch_normalization_4/batchnorm/mul_1Mul"mapDNN/normalization_4/truediv:z:0.mapDNN/batch_normalization_4/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2.
,mapDNN/batch_normalization_4/batchnorm/mul_1?
7mapDNN/batch_normalization_4/batchnorm/ReadVariableOp_1ReadVariableOp@mapdnn_batch_normalization_4_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype029
7mapDNN/batch_normalization_4/batchnorm/ReadVariableOp_1?
,mapDNN/batch_normalization_4/batchnorm/mul_2Mul?mapDNN/batch_normalization_4/batchnorm/ReadVariableOp_1:value:0.mapDNN/batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes
:2.
,mapDNN/batch_normalization_4/batchnorm/mul_2?
7mapDNN/batch_normalization_4/batchnorm/ReadVariableOp_2ReadVariableOp@mapdnn_batch_normalization_4_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype029
7mapDNN/batch_normalization_4/batchnorm/ReadVariableOp_2?
*mapDNN/batch_normalization_4/batchnorm/subSub?mapDNN/batch_normalization_4/batchnorm/ReadVariableOp_2:value:00mapDNN/batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2,
*mapDNN/batch_normalization_4/batchnorm/sub?
,mapDNN/batch_normalization_4/batchnorm/add_1AddV20mapDNN/batch_normalization_4/batchnorm/mul_1:z:0.mapDNN/batch_normalization_4/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2.
,mapDNN/batch_normalization_4/batchnorm/add_1?
%mapDNN/dense_24/MatMul/ReadVariableOpReadVariableOp.mapdnn_dense_24_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02'
%mapDNN/dense_24/MatMul/ReadVariableOp?
mapDNN/dense_24/MatMulMatMul0mapDNN/batch_normalization_4/batchnorm/add_1:z:0-mapDNN/dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
mapDNN/dense_24/MatMul?
&mapDNN/dense_24/BiasAdd/ReadVariableOpReadVariableOp/mapdnn_dense_24_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02(
&mapDNN/dense_24/BiasAdd/ReadVariableOp?
mapDNN/dense_24/BiasAddBiasAdd mapDNN/dense_24/MatMul:product:0.mapDNN/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
mapDNN/dense_24/BiasAdd?
'mapDNN/dense_24/leaky_re_lu_4/LeakyRelu	LeakyRelu mapDNN/dense_24/BiasAdd:output:0*'
_output_shapes
:?????????2*
alpha%???>2)
'mapDNN/dense_24/leaky_re_lu_4/LeakyRelu?
*mapDNN/dense_24/ActivityRegularizer/SquareSquare5mapDNN/dense_24/leaky_re_lu_4/LeakyRelu:activations:0*
T0*'
_output_shapes
:?????????22,
*mapDNN/dense_24/ActivityRegularizer/Square?
)mapDNN/dense_24/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)mapDNN/dense_24/ActivityRegularizer/Const?
'mapDNN/dense_24/ActivityRegularizer/SumSum.mapDNN/dense_24/ActivityRegularizer/Square:y:02mapDNN/dense_24/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2)
'mapDNN/dense_24/ActivityRegularizer/Sum?
)mapDNN/dense_24/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2+
)mapDNN/dense_24/ActivityRegularizer/mul/x?
'mapDNN/dense_24/ActivityRegularizer/mulMul2mapDNN/dense_24/ActivityRegularizer/mul/x:output:00mapDNN/dense_24/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'mapDNN/dense_24/ActivityRegularizer/mul?
)mapDNN/dense_24/ActivityRegularizer/ShapeShape5mapDNN/dense_24/leaky_re_lu_4/LeakyRelu:activations:0*
T0*
_output_shapes
:2+
)mapDNN/dense_24/ActivityRegularizer/Shape?
7mapDNN/dense_24/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7mapDNN/dense_24/ActivityRegularizer/strided_slice/stack?
9mapDNN/dense_24/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9mapDNN/dense_24/ActivityRegularizer/strided_slice/stack_1?
9mapDNN/dense_24/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9mapDNN/dense_24/ActivityRegularizer/strided_slice/stack_2?
1mapDNN/dense_24/ActivityRegularizer/strided_sliceStridedSlice2mapDNN/dense_24/ActivityRegularizer/Shape:output:0@mapDNN/dense_24/ActivityRegularizer/strided_slice/stack:output:0BmapDNN/dense_24/ActivityRegularizer/strided_slice/stack_1:output:0BmapDNN/dense_24/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1mapDNN/dense_24/ActivityRegularizer/strided_slice?
(mapDNN/dense_24/ActivityRegularizer/CastCast:mapDNN/dense_24/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2*
(mapDNN/dense_24/ActivityRegularizer/Cast?
+mapDNN/dense_24/ActivityRegularizer/truedivRealDiv+mapDNN/dense_24/ActivityRegularizer/mul:z:0,mapDNN/dense_24/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2-
+mapDNN/dense_24/ActivityRegularizer/truediv?
%mapDNN/dense_25/MatMul/ReadVariableOpReadVariableOp.mapdnn_dense_25_matmul_readvariableop_resource*
_output_shapes

:2d*
dtype02'
%mapDNN/dense_25/MatMul/ReadVariableOp?
mapDNN/dense_25/MatMulMatMul5mapDNN/dense_24/leaky_re_lu_4/LeakyRelu:activations:0-mapDNN/dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
mapDNN/dense_25/MatMul?
&mapDNN/dense_25/BiasAdd/ReadVariableOpReadVariableOp/mapdnn_dense_25_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02(
&mapDNN/dense_25/BiasAdd/ReadVariableOp?
mapDNN/dense_25/BiasAddBiasAdd mapDNN/dense_25/MatMul:product:0.mapDNN/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
mapDNN/dense_25/BiasAdd?
'mapDNN/dense_25/leaky_re_lu_4/LeakyRelu	LeakyRelu mapDNN/dense_25/BiasAdd:output:0*'
_output_shapes
:?????????d*
alpha%???>2)
'mapDNN/dense_25/leaky_re_lu_4/LeakyRelu?
*mapDNN/dense_25/ActivityRegularizer/SquareSquare5mapDNN/dense_25/leaky_re_lu_4/LeakyRelu:activations:0*
T0*'
_output_shapes
:?????????d2,
*mapDNN/dense_25/ActivityRegularizer/Square?
)mapDNN/dense_25/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)mapDNN/dense_25/ActivityRegularizer/Const?
'mapDNN/dense_25/ActivityRegularizer/SumSum.mapDNN/dense_25/ActivityRegularizer/Square:y:02mapDNN/dense_25/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2)
'mapDNN/dense_25/ActivityRegularizer/Sum?
)mapDNN/dense_25/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2+
)mapDNN/dense_25/ActivityRegularizer/mul/x?
'mapDNN/dense_25/ActivityRegularizer/mulMul2mapDNN/dense_25/ActivityRegularizer/mul/x:output:00mapDNN/dense_25/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'mapDNN/dense_25/ActivityRegularizer/mul?
)mapDNN/dense_25/ActivityRegularizer/ShapeShape5mapDNN/dense_25/leaky_re_lu_4/LeakyRelu:activations:0*
T0*
_output_shapes
:2+
)mapDNN/dense_25/ActivityRegularizer/Shape?
7mapDNN/dense_25/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7mapDNN/dense_25/ActivityRegularizer/strided_slice/stack?
9mapDNN/dense_25/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9mapDNN/dense_25/ActivityRegularizer/strided_slice/stack_1?
9mapDNN/dense_25/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9mapDNN/dense_25/ActivityRegularizer/strided_slice/stack_2?
1mapDNN/dense_25/ActivityRegularizer/strided_sliceStridedSlice2mapDNN/dense_25/ActivityRegularizer/Shape:output:0@mapDNN/dense_25/ActivityRegularizer/strided_slice/stack:output:0BmapDNN/dense_25/ActivityRegularizer/strided_slice/stack_1:output:0BmapDNN/dense_25/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1mapDNN/dense_25/ActivityRegularizer/strided_slice?
(mapDNN/dense_25/ActivityRegularizer/CastCast:mapDNN/dense_25/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2*
(mapDNN/dense_25/ActivityRegularizer/Cast?
+mapDNN/dense_25/ActivityRegularizer/truedivRealDiv+mapDNN/dense_25/ActivityRegularizer/mul:z:0,mapDNN/dense_25/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2-
+mapDNN/dense_25/ActivityRegularizer/truediv?
%mapDNN/dense_26/MatMul/ReadVariableOpReadVariableOp.mapdnn_dense_26_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02'
%mapDNN/dense_26/MatMul/ReadVariableOp?
mapDNN/dense_26/MatMulMatMul5mapDNN/dense_25/leaky_re_lu_4/LeakyRelu:activations:0-mapDNN/dense_26/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
mapDNN/dense_26/MatMul?
&mapDNN/dense_26/BiasAdd/ReadVariableOpReadVariableOp/mapdnn_dense_26_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&mapDNN/dense_26/BiasAdd/ReadVariableOp?
mapDNN/dense_26/BiasAddBiasAdd mapDNN/dense_26/MatMul:product:0.mapDNN/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
mapDNN/dense_26/BiasAdd?
'mapDNN/dense_26/leaky_re_lu_4/LeakyRelu	LeakyRelu mapDNN/dense_26/BiasAdd:output:0*(
_output_shapes
:??????????*
alpha%???>2)
'mapDNN/dense_26/leaky_re_lu_4/LeakyRelu?
*mapDNN/dense_26/ActivityRegularizer/SquareSquare5mapDNN/dense_26/leaky_re_lu_4/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2,
*mapDNN/dense_26/ActivityRegularizer/Square?
)mapDNN/dense_26/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)mapDNN/dense_26/ActivityRegularizer/Const?
'mapDNN/dense_26/ActivityRegularizer/SumSum.mapDNN/dense_26/ActivityRegularizer/Square:y:02mapDNN/dense_26/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2)
'mapDNN/dense_26/ActivityRegularizer/Sum?
)mapDNN/dense_26/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2+
)mapDNN/dense_26/ActivityRegularizer/mul/x?
'mapDNN/dense_26/ActivityRegularizer/mulMul2mapDNN/dense_26/ActivityRegularizer/mul/x:output:00mapDNN/dense_26/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'mapDNN/dense_26/ActivityRegularizer/mul?
)mapDNN/dense_26/ActivityRegularizer/ShapeShape5mapDNN/dense_26/leaky_re_lu_4/LeakyRelu:activations:0*
T0*
_output_shapes
:2+
)mapDNN/dense_26/ActivityRegularizer/Shape?
7mapDNN/dense_26/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7mapDNN/dense_26/ActivityRegularizer/strided_slice/stack?
9mapDNN/dense_26/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9mapDNN/dense_26/ActivityRegularizer/strided_slice/stack_1?
9mapDNN/dense_26/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9mapDNN/dense_26/ActivityRegularizer/strided_slice/stack_2?
1mapDNN/dense_26/ActivityRegularizer/strided_sliceStridedSlice2mapDNN/dense_26/ActivityRegularizer/Shape:output:0@mapDNN/dense_26/ActivityRegularizer/strided_slice/stack:output:0BmapDNN/dense_26/ActivityRegularizer/strided_slice/stack_1:output:0BmapDNN/dense_26/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1mapDNN/dense_26/ActivityRegularizer/strided_slice?
(mapDNN/dense_26/ActivityRegularizer/CastCast:mapDNN/dense_26/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2*
(mapDNN/dense_26/ActivityRegularizer/Cast?
+mapDNN/dense_26/ActivityRegularizer/truedivRealDiv+mapDNN/dense_26/ActivityRegularizer/mul:z:0,mapDNN/dense_26/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2-
+mapDNN/dense_26/ActivityRegularizer/truediv?
%mapDNN/dense_27/MatMul/ReadVariableOpReadVariableOp.mapdnn_dense_27_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02'
%mapDNN/dense_27/MatMul/ReadVariableOp?
mapDNN/dense_27/MatMulMatMul5mapDNN/dense_26/leaky_re_lu_4/LeakyRelu:activations:0-mapDNN/dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
mapDNN/dense_27/MatMul?
&mapDNN/dense_27/BiasAdd/ReadVariableOpReadVariableOp/mapdnn_dense_27_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02(
&mapDNN/dense_27/BiasAdd/ReadVariableOp?
mapDNN/dense_27/BiasAddBiasAdd mapDNN/dense_27/MatMul:product:0.mapDNN/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
mapDNN/dense_27/BiasAdd?
'mapDNN/dense_27/leaky_re_lu_4/LeakyRelu	LeakyRelu mapDNN/dense_27/BiasAdd:output:0*'
_output_shapes
:?????????d*
alpha%???>2)
'mapDNN/dense_27/leaky_re_lu_4/LeakyRelu?
*mapDNN/dense_27/ActivityRegularizer/SquareSquare5mapDNN/dense_27/leaky_re_lu_4/LeakyRelu:activations:0*
T0*'
_output_shapes
:?????????d2,
*mapDNN/dense_27/ActivityRegularizer/Square?
)mapDNN/dense_27/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)mapDNN/dense_27/ActivityRegularizer/Const?
'mapDNN/dense_27/ActivityRegularizer/SumSum.mapDNN/dense_27/ActivityRegularizer/Square:y:02mapDNN/dense_27/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2)
'mapDNN/dense_27/ActivityRegularizer/Sum?
)mapDNN/dense_27/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2+
)mapDNN/dense_27/ActivityRegularizer/mul/x?
'mapDNN/dense_27/ActivityRegularizer/mulMul2mapDNN/dense_27/ActivityRegularizer/mul/x:output:00mapDNN/dense_27/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'mapDNN/dense_27/ActivityRegularizer/mul?
)mapDNN/dense_27/ActivityRegularizer/ShapeShape5mapDNN/dense_27/leaky_re_lu_4/LeakyRelu:activations:0*
T0*
_output_shapes
:2+
)mapDNN/dense_27/ActivityRegularizer/Shape?
7mapDNN/dense_27/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7mapDNN/dense_27/ActivityRegularizer/strided_slice/stack?
9mapDNN/dense_27/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9mapDNN/dense_27/ActivityRegularizer/strided_slice/stack_1?
9mapDNN/dense_27/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9mapDNN/dense_27/ActivityRegularizer/strided_slice/stack_2?
1mapDNN/dense_27/ActivityRegularizer/strided_sliceStridedSlice2mapDNN/dense_27/ActivityRegularizer/Shape:output:0@mapDNN/dense_27/ActivityRegularizer/strided_slice/stack:output:0BmapDNN/dense_27/ActivityRegularizer/strided_slice/stack_1:output:0BmapDNN/dense_27/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1mapDNN/dense_27/ActivityRegularizer/strided_slice?
(mapDNN/dense_27/ActivityRegularizer/CastCast:mapDNN/dense_27/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2*
(mapDNN/dense_27/ActivityRegularizer/Cast?
+mapDNN/dense_27/ActivityRegularizer/truedivRealDiv+mapDNN/dense_27/ActivityRegularizer/mul:z:0,mapDNN/dense_27/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2-
+mapDNN/dense_27/ActivityRegularizer/truediv?
%mapDNN/dense_28/MatMul/ReadVariableOpReadVariableOp.mapdnn_dense_28_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype02'
%mapDNN/dense_28/MatMul/ReadVariableOp?
mapDNN/dense_28/MatMulMatMul5mapDNN/dense_27/leaky_re_lu_4/LeakyRelu:activations:0-mapDNN/dense_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
mapDNN/dense_28/MatMul?
&mapDNN/dense_28/BiasAdd/ReadVariableOpReadVariableOp/mapdnn_dense_28_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02(
&mapDNN/dense_28/BiasAdd/ReadVariableOp?
mapDNN/dense_28/BiasAddBiasAdd mapDNN/dense_28/MatMul:product:0.mapDNN/dense_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
mapDNN/dense_28/BiasAdd?
'mapDNN/dense_28/leaky_re_lu_4/LeakyRelu	LeakyRelu mapDNN/dense_28/BiasAdd:output:0*'
_output_shapes
:?????????2*
alpha%???>2)
'mapDNN/dense_28/leaky_re_lu_4/LeakyRelu?
*mapDNN/dense_28/ActivityRegularizer/SquareSquare5mapDNN/dense_28/leaky_re_lu_4/LeakyRelu:activations:0*
T0*'
_output_shapes
:?????????22,
*mapDNN/dense_28/ActivityRegularizer/Square?
)mapDNN/dense_28/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)mapDNN/dense_28/ActivityRegularizer/Const?
'mapDNN/dense_28/ActivityRegularizer/SumSum.mapDNN/dense_28/ActivityRegularizer/Square:y:02mapDNN/dense_28/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2)
'mapDNN/dense_28/ActivityRegularizer/Sum?
)mapDNN/dense_28/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2+
)mapDNN/dense_28/ActivityRegularizer/mul/x?
'mapDNN/dense_28/ActivityRegularizer/mulMul2mapDNN/dense_28/ActivityRegularizer/mul/x:output:00mapDNN/dense_28/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'mapDNN/dense_28/ActivityRegularizer/mul?
)mapDNN/dense_28/ActivityRegularizer/ShapeShape5mapDNN/dense_28/leaky_re_lu_4/LeakyRelu:activations:0*
T0*
_output_shapes
:2+
)mapDNN/dense_28/ActivityRegularizer/Shape?
7mapDNN/dense_28/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7mapDNN/dense_28/ActivityRegularizer/strided_slice/stack?
9mapDNN/dense_28/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9mapDNN/dense_28/ActivityRegularizer/strided_slice/stack_1?
9mapDNN/dense_28/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9mapDNN/dense_28/ActivityRegularizer/strided_slice/stack_2?
1mapDNN/dense_28/ActivityRegularizer/strided_sliceStridedSlice2mapDNN/dense_28/ActivityRegularizer/Shape:output:0@mapDNN/dense_28/ActivityRegularizer/strided_slice/stack:output:0BmapDNN/dense_28/ActivityRegularizer/strided_slice/stack_1:output:0BmapDNN/dense_28/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1mapDNN/dense_28/ActivityRegularizer/strided_slice?
(mapDNN/dense_28/ActivityRegularizer/CastCast:mapDNN/dense_28/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2*
(mapDNN/dense_28/ActivityRegularizer/Cast?
+mapDNN/dense_28/ActivityRegularizer/truedivRealDiv+mapDNN/dense_28/ActivityRegularizer/mul:z:0,mapDNN/dense_28/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2-
+mapDNN/dense_28/ActivityRegularizer/truediv?
%mapDNN/dense_29/MatMul/ReadVariableOpReadVariableOp.mapdnn_dense_29_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02'
%mapDNN/dense_29/MatMul/ReadVariableOp?
mapDNN/dense_29/MatMulMatMul5mapDNN/dense_28/leaky_re_lu_4/LeakyRelu:activations:0-mapDNN/dense_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
mapDNN/dense_29/MatMul?
&mapDNN/dense_29/BiasAdd/ReadVariableOpReadVariableOp/mapdnn_dense_29_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&mapDNN/dense_29/BiasAdd/ReadVariableOp?
mapDNN/dense_29/BiasAddBiasAdd mapDNN/dense_29/MatMul:product:0.mapDNN/dense_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
mapDNN/dense_29/BiasAdd?
'mapDNN/dense_29/leaky_re_lu_4/LeakyRelu	LeakyRelu mapDNN/dense_29/BiasAdd:output:0*'
_output_shapes
:?????????*
alpha%???>2)
'mapDNN/dense_29/leaky_re_lu_4/LeakyRelu?
IdentityIdentity5mapDNN/dense_29/leaky_re_lu_4/LeakyRelu:activations:06^mapDNN/batch_normalization_4/batchnorm/ReadVariableOp8^mapDNN/batch_normalization_4/batchnorm/ReadVariableOp_18^mapDNN/batch_normalization_4/batchnorm/ReadVariableOp_2:^mapDNN/batch_normalization_4/batchnorm/mul/ReadVariableOp'^mapDNN/dense_24/BiasAdd/ReadVariableOp&^mapDNN/dense_24/MatMul/ReadVariableOp'^mapDNN/dense_25/BiasAdd/ReadVariableOp&^mapDNN/dense_25/MatMul/ReadVariableOp'^mapDNN/dense_26/BiasAdd/ReadVariableOp&^mapDNN/dense_26/MatMul/ReadVariableOp'^mapDNN/dense_27/BiasAdd/ReadVariableOp&^mapDNN/dense_27/MatMul/ReadVariableOp'^mapDNN/dense_28/BiasAdd/ReadVariableOp&^mapDNN/dense_28/MatMul/ReadVariableOp'^mapDNN/dense_29/BiasAdd/ReadVariableOp&^mapDNN/dense_29/MatMul/ReadVariableOp.^mapDNN/normalization_4/Reshape/ReadVariableOp0^mapDNN/normalization_4/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : : : : : : : 2n
5mapDNN/batch_normalization_4/batchnorm/ReadVariableOp5mapDNN/batch_normalization_4/batchnorm/ReadVariableOp2r
7mapDNN/batch_normalization_4/batchnorm/ReadVariableOp_17mapDNN/batch_normalization_4/batchnorm/ReadVariableOp_12r
7mapDNN/batch_normalization_4/batchnorm/ReadVariableOp_27mapDNN/batch_normalization_4/batchnorm/ReadVariableOp_22v
9mapDNN/batch_normalization_4/batchnorm/mul/ReadVariableOp9mapDNN/batch_normalization_4/batchnorm/mul/ReadVariableOp2P
&mapDNN/dense_24/BiasAdd/ReadVariableOp&mapDNN/dense_24/BiasAdd/ReadVariableOp2N
%mapDNN/dense_24/MatMul/ReadVariableOp%mapDNN/dense_24/MatMul/ReadVariableOp2P
&mapDNN/dense_25/BiasAdd/ReadVariableOp&mapDNN/dense_25/BiasAdd/ReadVariableOp2N
%mapDNN/dense_25/MatMul/ReadVariableOp%mapDNN/dense_25/MatMul/ReadVariableOp2P
&mapDNN/dense_26/BiasAdd/ReadVariableOp&mapDNN/dense_26/BiasAdd/ReadVariableOp2N
%mapDNN/dense_26/MatMul/ReadVariableOp%mapDNN/dense_26/MatMul/ReadVariableOp2P
&mapDNN/dense_27/BiasAdd/ReadVariableOp&mapDNN/dense_27/BiasAdd/ReadVariableOp2N
%mapDNN/dense_27/MatMul/ReadVariableOp%mapDNN/dense_27/MatMul/ReadVariableOp2P
&mapDNN/dense_28/BiasAdd/ReadVariableOp&mapDNN/dense_28/BiasAdd/ReadVariableOp2N
%mapDNN/dense_28/MatMul/ReadVariableOp%mapDNN/dense_28/MatMul/ReadVariableOp2P
&mapDNN/dense_29/BiasAdd/ReadVariableOp&mapDNN/dense_29/BiasAdd/ReadVariableOp2N
%mapDNN/dense_29/MatMul/ReadVariableOp%mapDNN/dense_29/MatMul/ReadVariableOp2^
-mapDNN/normalization_4/Reshape/ReadVariableOp-mapDNN/normalization_4/Reshape/ReadVariableOp2b
/mapDNN/normalization_4/Reshape_1/ReadVariableOp/mapDNN/normalization_4/Reshape_1/ReadVariableOp:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_5
?
H
1__inference_dense_28_activity_regularizer_1010140
x
identity@
SquareSquarex*
T0*
_output_shapes
:2
SquareA
RankRank
Square:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:?????????2
rangeN
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
?
?
7__inference_batch_normalization_4_layer_call_fn_1012217

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_10099972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?)
?
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1012271

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?,
?
E__inference_dense_27_layer_call_and_return_conditional_losses_1012779

inputs1
matmul_readvariableop_resource:	?d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_27/bias/Regularizer/Square/ReadVariableOp?.dense_27/kernel/Regularizer/Abs/ReadVariableOp?1dense_27/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAdd?
leaky_re_lu_4/LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????d*
alpha%???>2
leaky_re_lu_4/LeakyRelu?
!dense_27/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_27/kernel/Regularizer/Const?
.dense_27/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?d*
dtype020
.dense_27/kernel/Regularizer/Abs/ReadVariableOp?
dense_27/kernel/Regularizer/AbsAbs6dense_27/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?d2!
dense_27/kernel/Regularizer/Abs?
#dense_27/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_27/kernel/Regularizer/Const_1?
dense_27/kernel/Regularizer/SumSum#dense_27/kernel/Regularizer/Abs:y:0,dense_27/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_27/kernel/Regularizer/Sum?
!dense_27/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_27/kernel/Regularizer/mul/x?
dense_27/kernel/Regularizer/mulMul*dense_27/kernel/Regularizer/mul/x:output:0(dense_27/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_27/kernel/Regularizer/mul?
dense_27/kernel/Regularizer/addAddV2*dense_27/kernel/Regularizer/Const:output:0#dense_27/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_27/kernel/Regularizer/add?
1dense_27/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?d*
dtype023
1dense_27/kernel/Regularizer/Square/ReadVariableOp?
"dense_27/kernel/Regularizer/SquareSquare9dense_27/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?d2$
"dense_27/kernel/Regularizer/Square?
#dense_27/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_27/kernel/Regularizer/Const_2?
!dense_27/kernel/Regularizer/Sum_1Sum&dense_27/kernel/Regularizer/Square:y:0,dense_27/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_27/kernel/Regularizer/Sum_1?
#dense_27/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_27/kernel/Regularizer/mul_1/x?
!dense_27/kernel/Regularizer/mul_1Mul,dense_27/kernel/Regularizer/mul_1/x:output:0*dense_27/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_27/kernel/Regularizer/mul_1?
!dense_27/kernel/Regularizer/add_1AddV2#dense_27/kernel/Regularizer/add:z:0%dense_27/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_27/kernel/Regularizer/add_1?
/dense_27/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_27/bias/Regularizer/Square/ReadVariableOp?
 dense_27/bias/Regularizer/SquareSquare7dense_27/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_27/bias/Regularizer/Square?
dense_27/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_27/bias/Regularizer/Const?
dense_27/bias/Regularizer/SumSum$dense_27/bias/Regularizer/Square:y:0(dense_27/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_27/bias/Regularizer/Sum?
dense_27/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_27/bias/Regularizer/mul/x?
dense_27/bias/Regularizer/mulMul(dense_27/bias/Regularizer/mul/x:output:0&dense_27/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_27/bias/Regularizer/mul?
IdentityIdentity%leaky_re_lu_4/LeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_27/bias/Regularizer/Square/ReadVariableOp/dense_27/bias/Regularizer/Square/ReadVariableOp2`
.dense_27/kernel/Regularizer/Abs/ReadVariableOp.dense_27/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_27/kernel/Regularizer/Square/ReadVariableOp1dense_27/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_dense_26_layer_call_fn_1012383

inputs
unknown:	d?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_26_layer_call_and_return_conditional_losses_10102932
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_1012527F
8dense_24_bias_regularizer_square_readvariableop_resource:2
identity??/dense_24/bias/Regularizer/Square/ReadVariableOp?
/dense_24/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_24_bias_regularizer_square_readvariableop_resource*
_output_shapes
:2*
dtype021
/dense_24/bias/Regularizer/Square/ReadVariableOp?
 dense_24/bias/Regularizer/SquareSquare7dense_24/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22"
 dense_24/bias/Regularizer/Square?
dense_24/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_24/bias/Regularizer/Const?
dense_24/bias/Regularizer/SumSum$dense_24/bias/Regularizer/Square:y:0(dense_24/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_24/bias/Regularizer/Sum?
dense_24/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_24/bias/Regularizer/mul/x?
dense_24/bias/Regularizer/mulMul(dense_24/bias/Regularizer/mul/x:output:0&dense_24/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_24/bias/Regularizer/mul?
IdentityIdentity!dense_24/bias/Regularizer/mul:z:00^dense_24/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_24/bias/Regularizer/Square/ReadVariableOp/dense_24/bias/Regularizer/Square/ReadVariableOp
?,
?
E__inference_dense_28_layer_call_and_return_conditional_losses_1012811

inputs0
matmul_readvariableop_resource:d2-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_28/bias/Regularizer/Square/ReadVariableOp?.dense_28/kernel/Regularizer/Abs/ReadVariableOp?1dense_28/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22	
BiasAdd?
leaky_re_lu_4/LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????2*
alpha%???>2
leaky_re_lu_4/LeakyRelu?
!dense_28/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_28/kernel/Regularizer/Const?
.dense_28/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d2*
dtype020
.dense_28/kernel/Regularizer/Abs/ReadVariableOp?
dense_28/kernel/Regularizer/AbsAbs6dense_28/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:d22!
dense_28/kernel/Regularizer/Abs?
#dense_28/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_28/kernel/Regularizer/Const_1?
dense_28/kernel/Regularizer/SumSum#dense_28/kernel/Regularizer/Abs:y:0,dense_28/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_28/kernel/Regularizer/Sum?
!dense_28/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_28/kernel/Regularizer/mul/x?
dense_28/kernel/Regularizer/mulMul*dense_28/kernel/Regularizer/mul/x:output:0(dense_28/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_28/kernel/Regularizer/mul?
dense_28/kernel/Regularizer/addAddV2*dense_28/kernel/Regularizer/Const:output:0#dense_28/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_28/kernel/Regularizer/add?
1dense_28/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d2*
dtype023
1dense_28/kernel/Regularizer/Square/ReadVariableOp?
"dense_28/kernel/Regularizer/SquareSquare9dense_28/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d22$
"dense_28/kernel/Regularizer/Square?
#dense_28/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_28/kernel/Regularizer/Const_2?
!dense_28/kernel/Regularizer/Sum_1Sum&dense_28/kernel/Regularizer/Square:y:0,dense_28/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_28/kernel/Regularizer/Sum_1?
#dense_28/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_28/kernel/Regularizer/mul_1/x?
!dense_28/kernel/Regularizer/mul_1Mul,dense_28/kernel/Regularizer/mul_1/x:output:0*dense_28/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_28/kernel/Regularizer/mul_1?
!dense_28/kernel/Regularizer/add_1AddV2#dense_28/kernel/Regularizer/add:z:0%dense_28/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_28/kernel/Regularizer/add_1?
/dense_28/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype021
/dense_28/bias/Regularizer/Square/ReadVariableOp?
 dense_28/bias/Regularizer/SquareSquare7dense_28/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22"
 dense_28/bias/Regularizer/Square?
dense_28/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_28/bias/Regularizer/Const?
dense_28/bias/Regularizer/SumSum$dense_28/bias/Regularizer/Square:y:0(dense_28/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/Sum?
dense_28/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_28/bias/Regularizer/mul/x?
dense_28/bias/Regularizer/mulMul(dense_28/bias/Regularizer/mul/x:output:0&dense_28/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/mul?
IdentityIdentity%leaky_re_lu_4/LeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_28/bias/Regularizer/Square/ReadVariableOp/dense_28/bias/Regularizer/Square/ReadVariableOp2`
.dense_28/kernel/Regularizer/Abs/ReadVariableOp.dense_28/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_28/kernel/Regularizer/Square/ReadVariableOp1dense_28/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?,
?
E__inference_dense_24_layer_call_and_return_conditional_losses_1012683

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_24/bias/Regularizer/Square/ReadVariableOp?.dense_24/kernel/Regularizer/Abs/ReadVariableOp?1dense_24/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22	
BiasAdd?
leaky_re_lu_4/LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????2*
alpha%???>2
leaky_re_lu_4/LeakyRelu?
!dense_24/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_24/kernel/Regularizer/Const?
.dense_24/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype020
.dense_24/kernel/Regularizer/Abs/ReadVariableOp?
dense_24/kernel/Regularizer/AbsAbs6dense_24/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:22!
dense_24/kernel/Regularizer/Abs?
#dense_24/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_24/kernel/Regularizer/Const_1?
dense_24/kernel/Regularizer/SumSum#dense_24/kernel/Regularizer/Abs:y:0,dense_24/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_24/kernel/Regularizer/Sum?
!dense_24/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_24/kernel/Regularizer/mul/x?
dense_24/kernel/Regularizer/mulMul*dense_24/kernel/Regularizer/mul/x:output:0(dense_24/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_24/kernel/Regularizer/mul?
dense_24/kernel/Regularizer/addAddV2*dense_24/kernel/Regularizer/Const:output:0#dense_24/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_24/kernel/Regularizer/add?
1dense_24/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype023
1dense_24/kernel/Regularizer/Square/ReadVariableOp?
"dense_24/kernel/Regularizer/SquareSquare9dense_24/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22$
"dense_24/kernel/Regularizer/Square?
#dense_24/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_24/kernel/Regularizer/Const_2?
!dense_24/kernel/Regularizer/Sum_1Sum&dense_24/kernel/Regularizer/Square:y:0,dense_24/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_24/kernel/Regularizer/Sum_1?
#dense_24/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_24/kernel/Regularizer/mul_1/x?
!dense_24/kernel/Regularizer/mul_1Mul,dense_24/kernel/Regularizer/mul_1/x:output:0*dense_24/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_24/kernel/Regularizer/mul_1?
!dense_24/kernel/Regularizer/add_1AddV2#dense_24/kernel/Regularizer/add:z:0%dense_24/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_24/kernel/Regularizer/add_1?
/dense_24/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype021
/dense_24/bias/Regularizer/Square/ReadVariableOp?
 dense_24/bias/Regularizer/SquareSquare7dense_24/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22"
 dense_24/bias/Regularizer/Square?
dense_24/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_24/bias/Regularizer/Const?
dense_24/bias/Regularizer/SumSum$dense_24/bias/Regularizer/Square:y:0(dense_24/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_24/bias/Regularizer/Sum?
dense_24/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_24/bias/Regularizer/mul/x?
dense_24/bias/Regularizer/mulMul(dense_24/bias/Regularizer/mul/x:output:0&dense_24/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_24/bias/Regularizer/mul?
IdentityIdentity%leaky_re_lu_4/LeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_24/bias/Regularizer/Square/ReadVariableOp/dense_24/bias/Regularizer/Square/ReadVariableOp2`
.dense_24/kernel/Regularizer/Abs/ReadVariableOp.dense_24/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_24/kernel/Regularizer/Square/ReadVariableOp1dense_24/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
E__inference_dense_29_layer_call_and_return_conditional_losses_1010410

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
leaky_re_lu_4/LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????*
alpha%???>2
leaky_re_lu_4/LeakyRelu?
IdentityIdentity%leaky_re_lu_4/LeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_dense_24_layer_call_fn_1012301

inputs
unknown:2
	unknown_0:2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_24_layer_call_and_return_conditional_losses_10102012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_4_layer_call_fn_1012204

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_10099372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1012237

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
E__inference_dense_29_layer_call_and_return_conditional_losses_1012496

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
leaky_re_lu_4/LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????*
alpha%???>2
leaky_re_lu_4/LeakyRelu?
IdentityIdentity%leaky_re_lu_4/LeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
(__inference_mapDNN_layer_call_fn_1011687

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:2
	unknown_6:2
	unknown_7:2d
	unknown_8:d
	unknown_9:	d?

unknown_10:	?

unknown_11:	?d

unknown_12:d

unknown_13:d2

unknown_14:2

unknown_15:2

unknown_16:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout

2*
_collective_manager_ids
 *1
_output_shapes
:?????????: : : : : *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_mapDNN_layer_call_and_return_conditional_losses_10109452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_5_1012589G
8dense_26_bias_regularizer_square_readvariableop_resource:	?
identity??/dense_26/bias/Regularizer/Square/ReadVariableOp?
/dense_26/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_26_bias_regularizer_square_readvariableop_resource*
_output_shapes	
:?*
dtype021
/dense_26/bias/Regularizer/Square/ReadVariableOp?
 dense_26/bias/Regularizer/SquareSquare7dense_26/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2"
 dense_26/bias/Regularizer/Square?
dense_26/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_26/bias/Regularizer/Const?
dense_26/bias/Regularizer/SumSum$dense_26/bias/Regularizer/Square:y:0(dense_26/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_26/bias/Regularizer/Sum?
dense_26/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_26/bias/Regularizer/mul/x?
dense_26/bias/Regularizer/mulMul(dense_26/bias/Regularizer/mul/x:output:0&dense_26/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_26/bias/Regularizer/mul?
IdentityIdentity!dense_26/bias/Regularizer/mul:z:00^dense_26/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_26/bias/Regularizer/Square/ReadVariableOp/dense_26/bias/Regularizer/Square/ReadVariableOp
?)
?
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1009997

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?,
?
E__inference_dense_26_layer_call_and_return_conditional_losses_1010293

inputs1
matmul_readvariableop_resource:	d?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_26/bias/Regularizer/Square/ReadVariableOp?.dense_26/kernel/Regularizer/Abs/ReadVariableOp?1dense_26/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd?
leaky_re_lu_4/LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:??????????*
alpha%???>2
leaky_re_lu_4/LeakyRelu?
!dense_26/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_26/kernel/Regularizer/Const?
.dense_26/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?*
dtype020
.dense_26/kernel/Regularizer/Abs/ReadVariableOp?
dense_26/kernel/Regularizer/AbsAbs6dense_26/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	d?2!
dense_26/kernel/Regularizer/Abs?
#dense_26/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_26/kernel/Regularizer/Const_1?
dense_26/kernel/Regularizer/SumSum#dense_26/kernel/Regularizer/Abs:y:0,dense_26/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_26/kernel/Regularizer/Sum?
!dense_26/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_26/kernel/Regularizer/mul/x?
dense_26/kernel/Regularizer/mulMul*dense_26/kernel/Regularizer/mul/x:output:0(dense_26/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_26/kernel/Regularizer/mul?
dense_26/kernel/Regularizer/addAddV2*dense_26/kernel/Regularizer/Const:output:0#dense_26/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_26/kernel/Regularizer/add?
1dense_26/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?*
dtype023
1dense_26/kernel/Regularizer/Square/ReadVariableOp?
"dense_26/kernel/Regularizer/SquareSquare9dense_26/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	d?2$
"dense_26/kernel/Regularizer/Square?
#dense_26/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_26/kernel/Regularizer/Const_2?
!dense_26/kernel/Regularizer/Sum_1Sum&dense_26/kernel/Regularizer/Square:y:0,dense_26/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_26/kernel/Regularizer/Sum_1?
#dense_26/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_26/kernel/Regularizer/mul_1/x?
!dense_26/kernel/Regularizer/mul_1Mul,dense_26/kernel/Regularizer/mul_1/x:output:0*dense_26/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_26/kernel/Regularizer/mul_1?
!dense_26/kernel/Regularizer/add_1AddV2#dense_26/kernel/Regularizer/add:z:0%dense_26/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_26/kernel/Regularizer/add_1?
/dense_26/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype021
/dense_26/bias/Regularizer/Square/ReadVariableOp?
 dense_26/bias/Regularizer/SquareSquare7dense_26/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2"
 dense_26/bias/Regularizer/Square?
dense_26/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_26/bias/Regularizer/Const?
dense_26/bias/Regularizer/SumSum$dense_26/bias/Regularizer/Square:y:0(dense_26/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_26/bias/Regularizer/Sum?
dense_26/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_26/bias/Regularizer/mul/x?
dense_26/bias/Regularizer/mulMul(dense_26/bias/Regularizer/mul/x:output:0&dense_26/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_26/bias/Regularizer/mul?
IdentityIdentity%leaky_re_lu_4/LeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_26/bias/Regularizer/Square/ReadVariableOp/dense_26/bias/Regularizer/Square/ReadVariableOp2`
.dense_26/kernel/Regularizer/Abs/ReadVariableOp.dense_26/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_26/kernel/Regularizer/Square/ReadVariableOp1dense_26/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?,
?
E__inference_dense_28_layer_call_and_return_conditional_losses_1010385

inputs0
matmul_readvariableop_resource:d2-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_28/bias/Regularizer/Square/ReadVariableOp?.dense_28/kernel/Regularizer/Abs/ReadVariableOp?1dense_28/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22	
BiasAdd?
leaky_re_lu_4/LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????2*
alpha%???>2
leaky_re_lu_4/LeakyRelu?
!dense_28/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_28/kernel/Regularizer/Const?
.dense_28/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d2*
dtype020
.dense_28/kernel/Regularizer/Abs/ReadVariableOp?
dense_28/kernel/Regularizer/AbsAbs6dense_28/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:d22!
dense_28/kernel/Regularizer/Abs?
#dense_28/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_28/kernel/Regularizer/Const_1?
dense_28/kernel/Regularizer/SumSum#dense_28/kernel/Regularizer/Abs:y:0,dense_28/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_28/kernel/Regularizer/Sum?
!dense_28/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_28/kernel/Regularizer/mul/x?
dense_28/kernel/Regularizer/mulMul*dense_28/kernel/Regularizer/mul/x:output:0(dense_28/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_28/kernel/Regularizer/mul?
dense_28/kernel/Regularizer/addAddV2*dense_28/kernel/Regularizer/Const:output:0#dense_28/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_28/kernel/Regularizer/add?
1dense_28/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d2*
dtype023
1dense_28/kernel/Regularizer/Square/ReadVariableOp?
"dense_28/kernel/Regularizer/SquareSquare9dense_28/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d22$
"dense_28/kernel/Regularizer/Square?
#dense_28/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_28/kernel/Regularizer/Const_2?
!dense_28/kernel/Regularizer/Sum_1Sum&dense_28/kernel/Regularizer/Square:y:0,dense_28/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_28/kernel/Regularizer/Sum_1?
#dense_28/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_28/kernel/Regularizer/mul_1/x?
!dense_28/kernel/Regularizer/mul_1Mul,dense_28/kernel/Regularizer/mul_1/x:output:0*dense_28/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_28/kernel/Regularizer/mul_1?
!dense_28/kernel/Regularizer/add_1AddV2#dense_28/kernel/Regularizer/add:z:0%dense_28/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_28/kernel/Regularizer/add_1?
/dense_28/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype021
/dense_28/bias/Regularizer/Square/ReadVariableOp?
 dense_28/bias/Regularizer/SquareSquare7dense_28/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22"
 dense_28/bias/Regularizer/Square?
dense_28/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_28/bias/Regularizer/Const?
dense_28/bias/Regularizer/SumSum$dense_28/bias/Regularizer/Square:y:0(dense_28/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/Sum?
dense_28/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_28/bias/Regularizer/mul/x?
dense_28/bias/Regularizer/mulMul(dense_28/bias/Regularizer/mul/x:output:0&dense_28/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/mul?
IdentityIdentity%leaky_re_lu_4/LeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_28/bias/Regularizer/Square/ReadVariableOp/dense_28/bias/Regularizer/Square/ReadVariableOp2`
.dense_28/kernel/Regularizer/Abs/ReadVariableOp.dense_28/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_28/kernel/Regularizer/Square/ReadVariableOp1dense_28/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?
C__inference_mapDNN_layer_call_and_return_conditional_losses_1010527

inputs=
/normalization_4_reshape_readvariableop_resource:?
1normalization_4_reshape_1_readvariableop_resource:+
batch_normalization_4_1010160:+
batch_normalization_4_1010162:+
batch_normalization_4_1010164:+
batch_normalization_4_1010166:"
dense_24_1010202:2
dense_24_1010204:2"
dense_25_1010248:2d
dense_25_1010250:d#
dense_26_1010294:	d?
dense_26_1010296:	?#
dense_27_1010340:	?d
dense_27_1010342:d"
dense_28_1010386:d2
dense_28_1010388:2"
dense_29_1010411:2
dense_29_1010413:
identity

identity_1

identity_2

identity_3

identity_4

identity_5??-batch_normalization_4/StatefulPartitionedCall? dense_24/StatefulPartitionedCall?/dense_24/bias/Regularizer/Square/ReadVariableOp?.dense_24/kernel/Regularizer/Abs/ReadVariableOp?1dense_24/kernel/Regularizer/Square/ReadVariableOp? dense_25/StatefulPartitionedCall?/dense_25/bias/Regularizer/Square/ReadVariableOp?.dense_25/kernel/Regularizer/Abs/ReadVariableOp?1dense_25/kernel/Regularizer/Square/ReadVariableOp? dense_26/StatefulPartitionedCall?/dense_26/bias/Regularizer/Square/ReadVariableOp?.dense_26/kernel/Regularizer/Abs/ReadVariableOp?1dense_26/kernel/Regularizer/Square/ReadVariableOp? dense_27/StatefulPartitionedCall?/dense_27/bias/Regularizer/Square/ReadVariableOp?.dense_27/kernel/Regularizer/Abs/ReadVariableOp?1dense_27/kernel/Regularizer/Square/ReadVariableOp? dense_28/StatefulPartitionedCall?/dense_28/bias/Regularizer/Square/ReadVariableOp?.dense_28/kernel/Regularizer/Abs/ReadVariableOp?1dense_28/kernel/Regularizer/Square/ReadVariableOp? dense_29/StatefulPartitionedCall?&normalization_4/Reshape/ReadVariableOp?(normalization_4/Reshape_1/ReadVariableOp?
&normalization_4/Reshape/ReadVariableOpReadVariableOp/normalization_4_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_4/Reshape/ReadVariableOp?
normalization_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_4/Reshape/shape?
normalization_4/ReshapeReshape.normalization_4/Reshape/ReadVariableOp:value:0&normalization_4/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_4/Reshape?
(normalization_4/Reshape_1/ReadVariableOpReadVariableOp1normalization_4_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_4/Reshape_1/ReadVariableOp?
normalization_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_4/Reshape_1/shape?
normalization_4/Reshape_1Reshape0normalization_4/Reshape_1/ReadVariableOp:value:0(normalization_4/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_4/Reshape_1?
normalization_4/subSubinputs normalization_4/Reshape:output:0*
T0*'
_output_shapes
:?????????2
normalization_4/sub?
normalization_4/SqrtSqrt"normalization_4/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_4/Sqrt{
normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_4/Maximum/y?
normalization_4/MaximumMaximumnormalization_4/Sqrt:y:0"normalization_4/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_4/Maximum?
normalization_4/truedivRealDivnormalization_4/sub:z:0normalization_4/Maximum:z:0*
T0*'
_output_shapes
:?????????2
normalization_4/truediv?
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCallnormalization_4/truediv:z:0batch_normalization_4_1010160batch_normalization_4_1010162batch_normalization_4_1010164batch_normalization_4_1010166*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_10099372/
-batch_normalization_4/StatefulPartitionedCall?
 dense_24/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0dense_24_1010202dense_24_1010204*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_24_layer_call_and_return_conditional_losses_10102012"
 dense_24/StatefulPartitionedCall?
,dense_24/ActivityRegularizer/PartitionedCallPartitionedCall)dense_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU 2J 8? *:
f5R3
1__inference_dense_24_activity_regularizer_10100882.
,dense_24/ActivityRegularizer/PartitionedCall?
"dense_24/ActivityRegularizer/ShapeShape)dense_24/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_24/ActivityRegularizer/Shape?
0dense_24/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_24/ActivityRegularizer/strided_slice/stack?
2dense_24/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_24/ActivityRegularizer/strided_slice/stack_1?
2dense_24/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_24/ActivityRegularizer/strided_slice/stack_2?
*dense_24/ActivityRegularizer/strided_sliceStridedSlice+dense_24/ActivityRegularizer/Shape:output:09dense_24/ActivityRegularizer/strided_slice/stack:output:0;dense_24/ActivityRegularizer/strided_slice/stack_1:output:0;dense_24/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_24/ActivityRegularizer/strided_slice?
!dense_24/ActivityRegularizer/CastCast3dense_24/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_24/ActivityRegularizer/Cast?
$dense_24/ActivityRegularizer/truedivRealDiv5dense_24/ActivityRegularizer/PartitionedCall:output:0%dense_24/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_24/ActivityRegularizer/truediv?
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_1010248dense_25_1010250*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_25_layer_call_and_return_conditional_losses_10102472"
 dense_25/StatefulPartitionedCall?
,dense_25/ActivityRegularizer/PartitionedCallPartitionedCall)dense_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU 2J 8? *:
f5R3
1__inference_dense_25_activity_regularizer_10101012.
,dense_25/ActivityRegularizer/PartitionedCall?
"dense_25/ActivityRegularizer/ShapeShape)dense_25/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_25/ActivityRegularizer/Shape?
0dense_25/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_25/ActivityRegularizer/strided_slice/stack?
2dense_25/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_25/ActivityRegularizer/strided_slice/stack_1?
2dense_25/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_25/ActivityRegularizer/strided_slice/stack_2?
*dense_25/ActivityRegularizer/strided_sliceStridedSlice+dense_25/ActivityRegularizer/Shape:output:09dense_25/ActivityRegularizer/strided_slice/stack:output:0;dense_25/ActivityRegularizer/strided_slice/stack_1:output:0;dense_25/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_25/ActivityRegularizer/strided_slice?
!dense_25/ActivityRegularizer/CastCast3dense_25/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_25/ActivityRegularizer/Cast?
$dense_25/ActivityRegularizer/truedivRealDiv5dense_25/ActivityRegularizer/PartitionedCall:output:0%dense_25/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_25/ActivityRegularizer/truediv?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall)dense_25/StatefulPartitionedCall:output:0dense_26_1010294dense_26_1010296*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_26_layer_call_and_return_conditional_losses_10102932"
 dense_26/StatefulPartitionedCall?
,dense_26/ActivityRegularizer/PartitionedCallPartitionedCall)dense_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU 2J 8? *:
f5R3
1__inference_dense_26_activity_regularizer_10101142.
,dense_26/ActivityRegularizer/PartitionedCall?
"dense_26/ActivityRegularizer/ShapeShape)dense_26/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_26/ActivityRegularizer/Shape?
0dense_26/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_26/ActivityRegularizer/strided_slice/stack?
2dense_26/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_26/ActivityRegularizer/strided_slice/stack_1?
2dense_26/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_26/ActivityRegularizer/strided_slice/stack_2?
*dense_26/ActivityRegularizer/strided_sliceStridedSlice+dense_26/ActivityRegularizer/Shape:output:09dense_26/ActivityRegularizer/strided_slice/stack:output:0;dense_26/ActivityRegularizer/strided_slice/stack_1:output:0;dense_26/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_26/ActivityRegularizer/strided_slice?
!dense_26/ActivityRegularizer/CastCast3dense_26/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_26/ActivityRegularizer/Cast?
$dense_26/ActivityRegularizer/truedivRealDiv5dense_26/ActivityRegularizer/PartitionedCall:output:0%dense_26/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_26/ActivityRegularizer/truediv?
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_1010340dense_27_1010342*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_27_layer_call_and_return_conditional_losses_10103392"
 dense_27/StatefulPartitionedCall?
,dense_27/ActivityRegularizer/PartitionedCallPartitionedCall)dense_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU 2J 8? *:
f5R3
1__inference_dense_27_activity_regularizer_10101272.
,dense_27/ActivityRegularizer/PartitionedCall?
"dense_27/ActivityRegularizer/ShapeShape)dense_27/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_27/ActivityRegularizer/Shape?
0dense_27/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_27/ActivityRegularizer/strided_slice/stack?
2dense_27/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_27/ActivityRegularizer/strided_slice/stack_1?
2dense_27/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_27/ActivityRegularizer/strided_slice/stack_2?
*dense_27/ActivityRegularizer/strided_sliceStridedSlice+dense_27/ActivityRegularizer/Shape:output:09dense_27/ActivityRegularizer/strided_slice/stack:output:0;dense_27/ActivityRegularizer/strided_slice/stack_1:output:0;dense_27/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_27/ActivityRegularizer/strided_slice?
!dense_27/ActivityRegularizer/CastCast3dense_27/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_27/ActivityRegularizer/Cast?
$dense_27/ActivityRegularizer/truedivRealDiv5dense_27/ActivityRegularizer/PartitionedCall:output:0%dense_27/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_27/ActivityRegularizer/truediv?
 dense_28/StatefulPartitionedCallStatefulPartitionedCall)dense_27/StatefulPartitionedCall:output:0dense_28_1010386dense_28_1010388*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_28_layer_call_and_return_conditional_losses_10103852"
 dense_28/StatefulPartitionedCall?
,dense_28/ActivityRegularizer/PartitionedCallPartitionedCall)dense_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU 2J 8? *:
f5R3
1__inference_dense_28_activity_regularizer_10101402.
,dense_28/ActivityRegularizer/PartitionedCall?
"dense_28/ActivityRegularizer/ShapeShape)dense_28/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_28/ActivityRegularizer/Shape?
0dense_28/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_28/ActivityRegularizer/strided_slice/stack?
2dense_28/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_28/ActivityRegularizer/strided_slice/stack_1?
2dense_28/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_28/ActivityRegularizer/strided_slice/stack_2?
*dense_28/ActivityRegularizer/strided_sliceStridedSlice+dense_28/ActivityRegularizer/Shape:output:09dense_28/ActivityRegularizer/strided_slice/stack:output:0;dense_28/ActivityRegularizer/strided_slice/stack_1:output:0;dense_28/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_28/ActivityRegularizer/strided_slice?
!dense_28/ActivityRegularizer/CastCast3dense_28/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_28/ActivityRegularizer/Cast?
$dense_28/ActivityRegularizer/truedivRealDiv5dense_28/ActivityRegularizer/PartitionedCall:output:0%dense_28/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_28/ActivityRegularizer/truediv?
 dense_29/StatefulPartitionedCallStatefulPartitionedCall)dense_28/StatefulPartitionedCall:output:0dense_29_1010411dense_29_1010413*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_29_layer_call_and_return_conditional_losses_10104102"
 dense_29/StatefulPartitionedCall?
!dense_24/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_24/kernel/Regularizer/Const?
.dense_24/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_24_1010202*
_output_shapes

:2*
dtype020
.dense_24/kernel/Regularizer/Abs/ReadVariableOp?
dense_24/kernel/Regularizer/AbsAbs6dense_24/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:22!
dense_24/kernel/Regularizer/Abs?
#dense_24/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_24/kernel/Regularizer/Const_1?
dense_24/kernel/Regularizer/SumSum#dense_24/kernel/Regularizer/Abs:y:0,dense_24/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_24/kernel/Regularizer/Sum?
!dense_24/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_24/kernel/Regularizer/mul/x?
dense_24/kernel/Regularizer/mulMul*dense_24/kernel/Regularizer/mul/x:output:0(dense_24/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_24/kernel/Regularizer/mul?
dense_24/kernel/Regularizer/addAddV2*dense_24/kernel/Regularizer/Const:output:0#dense_24/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_24/kernel/Regularizer/add?
1dense_24/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_24_1010202*
_output_shapes

:2*
dtype023
1dense_24/kernel/Regularizer/Square/ReadVariableOp?
"dense_24/kernel/Regularizer/SquareSquare9dense_24/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22$
"dense_24/kernel/Regularizer/Square?
#dense_24/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_24/kernel/Regularizer/Const_2?
!dense_24/kernel/Regularizer/Sum_1Sum&dense_24/kernel/Regularizer/Square:y:0,dense_24/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_24/kernel/Regularizer/Sum_1?
#dense_24/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_24/kernel/Regularizer/mul_1/x?
!dense_24/kernel/Regularizer/mul_1Mul,dense_24/kernel/Regularizer/mul_1/x:output:0*dense_24/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_24/kernel/Regularizer/mul_1?
!dense_24/kernel/Regularizer/add_1AddV2#dense_24/kernel/Regularizer/add:z:0%dense_24/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_24/kernel/Regularizer/add_1?
/dense_24/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_24_1010204*
_output_shapes
:2*
dtype021
/dense_24/bias/Regularizer/Square/ReadVariableOp?
 dense_24/bias/Regularizer/SquareSquare7dense_24/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22"
 dense_24/bias/Regularizer/Square?
dense_24/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_24/bias/Regularizer/Const?
dense_24/bias/Regularizer/SumSum$dense_24/bias/Regularizer/Square:y:0(dense_24/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_24/bias/Regularizer/Sum?
dense_24/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_24/bias/Regularizer/mul/x?
dense_24/bias/Regularizer/mulMul(dense_24/bias/Regularizer/mul/x:output:0&dense_24/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_24/bias/Regularizer/mul?
!dense_25/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_25/kernel/Regularizer/Const?
.dense_25/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_25_1010248*
_output_shapes

:2d*
dtype020
.dense_25/kernel/Regularizer/Abs/ReadVariableOp?
dense_25/kernel/Regularizer/AbsAbs6dense_25/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:2d2!
dense_25/kernel/Regularizer/Abs?
#dense_25/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_25/kernel/Regularizer/Const_1?
dense_25/kernel/Regularizer/SumSum#dense_25/kernel/Regularizer/Abs:y:0,dense_25/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_25/kernel/Regularizer/Sum?
!dense_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_25/kernel/Regularizer/mul/x?
dense_25/kernel/Regularizer/mulMul*dense_25/kernel/Regularizer/mul/x:output:0(dense_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_25/kernel/Regularizer/mul?
dense_25/kernel/Regularizer/addAddV2*dense_25/kernel/Regularizer/Const:output:0#dense_25/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_25/kernel/Regularizer/add?
1dense_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_25_1010248*
_output_shapes

:2d*
dtype023
1dense_25/kernel/Regularizer/Square/ReadVariableOp?
"dense_25/kernel/Regularizer/SquareSquare9dense_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2d2$
"dense_25/kernel/Regularizer/Square?
#dense_25/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_25/kernel/Regularizer/Const_2?
!dense_25/kernel/Regularizer/Sum_1Sum&dense_25/kernel/Regularizer/Square:y:0,dense_25/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_25/kernel/Regularizer/Sum_1?
#dense_25/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_25/kernel/Regularizer/mul_1/x?
!dense_25/kernel/Regularizer/mul_1Mul,dense_25/kernel/Regularizer/mul_1/x:output:0*dense_25/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_25/kernel/Regularizer/mul_1?
!dense_25/kernel/Regularizer/add_1AddV2#dense_25/kernel/Regularizer/add:z:0%dense_25/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_25/kernel/Regularizer/add_1?
/dense_25/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_25_1010250*
_output_shapes
:d*
dtype021
/dense_25/bias/Regularizer/Square/ReadVariableOp?
 dense_25/bias/Regularizer/SquareSquare7dense_25/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_25/bias/Regularizer/Square?
dense_25/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_25/bias/Regularizer/Const?
dense_25/bias/Regularizer/SumSum$dense_25/bias/Regularizer/Square:y:0(dense_25/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_25/bias/Regularizer/Sum?
dense_25/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_25/bias/Regularizer/mul/x?
dense_25/bias/Regularizer/mulMul(dense_25/bias/Regularizer/mul/x:output:0&dense_25/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_25/bias/Regularizer/mul?
!dense_26/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_26/kernel/Regularizer/Const?
.dense_26/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_26_1010294*
_output_shapes
:	d?*
dtype020
.dense_26/kernel/Regularizer/Abs/ReadVariableOp?
dense_26/kernel/Regularizer/AbsAbs6dense_26/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	d?2!
dense_26/kernel/Regularizer/Abs?
#dense_26/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_26/kernel/Regularizer/Const_1?
dense_26/kernel/Regularizer/SumSum#dense_26/kernel/Regularizer/Abs:y:0,dense_26/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_26/kernel/Regularizer/Sum?
!dense_26/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_26/kernel/Regularizer/mul/x?
dense_26/kernel/Regularizer/mulMul*dense_26/kernel/Regularizer/mul/x:output:0(dense_26/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_26/kernel/Regularizer/mul?
dense_26/kernel/Regularizer/addAddV2*dense_26/kernel/Regularizer/Const:output:0#dense_26/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_26/kernel/Regularizer/add?
1dense_26/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_26_1010294*
_output_shapes
:	d?*
dtype023
1dense_26/kernel/Regularizer/Square/ReadVariableOp?
"dense_26/kernel/Regularizer/SquareSquare9dense_26/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	d?2$
"dense_26/kernel/Regularizer/Square?
#dense_26/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_26/kernel/Regularizer/Const_2?
!dense_26/kernel/Regularizer/Sum_1Sum&dense_26/kernel/Regularizer/Square:y:0,dense_26/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_26/kernel/Regularizer/Sum_1?
#dense_26/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_26/kernel/Regularizer/mul_1/x?
!dense_26/kernel/Regularizer/mul_1Mul,dense_26/kernel/Regularizer/mul_1/x:output:0*dense_26/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_26/kernel/Regularizer/mul_1?
!dense_26/kernel/Regularizer/add_1AddV2#dense_26/kernel/Regularizer/add:z:0%dense_26/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_26/kernel/Regularizer/add_1?
/dense_26/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_26_1010296*
_output_shapes	
:?*
dtype021
/dense_26/bias/Regularizer/Square/ReadVariableOp?
 dense_26/bias/Regularizer/SquareSquare7dense_26/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2"
 dense_26/bias/Regularizer/Square?
dense_26/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_26/bias/Regularizer/Const?
dense_26/bias/Regularizer/SumSum$dense_26/bias/Regularizer/Square:y:0(dense_26/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_26/bias/Regularizer/Sum?
dense_26/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_26/bias/Regularizer/mul/x?
dense_26/bias/Regularizer/mulMul(dense_26/bias/Regularizer/mul/x:output:0&dense_26/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_26/bias/Regularizer/mul?
!dense_27/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_27/kernel/Regularizer/Const?
.dense_27/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_27_1010340*
_output_shapes
:	?d*
dtype020
.dense_27/kernel/Regularizer/Abs/ReadVariableOp?
dense_27/kernel/Regularizer/AbsAbs6dense_27/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?d2!
dense_27/kernel/Regularizer/Abs?
#dense_27/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_27/kernel/Regularizer/Const_1?
dense_27/kernel/Regularizer/SumSum#dense_27/kernel/Regularizer/Abs:y:0,dense_27/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_27/kernel/Regularizer/Sum?
!dense_27/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_27/kernel/Regularizer/mul/x?
dense_27/kernel/Regularizer/mulMul*dense_27/kernel/Regularizer/mul/x:output:0(dense_27/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_27/kernel/Regularizer/mul?
dense_27/kernel/Regularizer/addAddV2*dense_27/kernel/Regularizer/Const:output:0#dense_27/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_27/kernel/Regularizer/add?
1dense_27/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_27_1010340*
_output_shapes
:	?d*
dtype023
1dense_27/kernel/Regularizer/Square/ReadVariableOp?
"dense_27/kernel/Regularizer/SquareSquare9dense_27/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?d2$
"dense_27/kernel/Regularizer/Square?
#dense_27/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_27/kernel/Regularizer/Const_2?
!dense_27/kernel/Regularizer/Sum_1Sum&dense_27/kernel/Regularizer/Square:y:0,dense_27/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_27/kernel/Regularizer/Sum_1?
#dense_27/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_27/kernel/Regularizer/mul_1/x?
!dense_27/kernel/Regularizer/mul_1Mul,dense_27/kernel/Regularizer/mul_1/x:output:0*dense_27/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_27/kernel/Regularizer/mul_1?
!dense_27/kernel/Regularizer/add_1AddV2#dense_27/kernel/Regularizer/add:z:0%dense_27/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_27/kernel/Regularizer/add_1?
/dense_27/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_27_1010342*
_output_shapes
:d*
dtype021
/dense_27/bias/Regularizer/Square/ReadVariableOp?
 dense_27/bias/Regularizer/SquareSquare7dense_27/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_27/bias/Regularizer/Square?
dense_27/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_27/bias/Regularizer/Const?
dense_27/bias/Regularizer/SumSum$dense_27/bias/Regularizer/Square:y:0(dense_27/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_27/bias/Regularizer/Sum?
dense_27/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_27/bias/Regularizer/mul/x?
dense_27/bias/Regularizer/mulMul(dense_27/bias/Regularizer/mul/x:output:0&dense_27/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_27/bias/Regularizer/mul?
!dense_28/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_28/kernel/Regularizer/Const?
.dense_28/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_28_1010386*
_output_shapes

:d2*
dtype020
.dense_28/kernel/Regularizer/Abs/ReadVariableOp?
dense_28/kernel/Regularizer/AbsAbs6dense_28/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:d22!
dense_28/kernel/Regularizer/Abs?
#dense_28/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_28/kernel/Regularizer/Const_1?
dense_28/kernel/Regularizer/SumSum#dense_28/kernel/Regularizer/Abs:y:0,dense_28/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_28/kernel/Regularizer/Sum?
!dense_28/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_28/kernel/Regularizer/mul/x?
dense_28/kernel/Regularizer/mulMul*dense_28/kernel/Regularizer/mul/x:output:0(dense_28/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_28/kernel/Regularizer/mul?
dense_28/kernel/Regularizer/addAddV2*dense_28/kernel/Regularizer/Const:output:0#dense_28/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_28/kernel/Regularizer/add?
1dense_28/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_28_1010386*
_output_shapes

:d2*
dtype023
1dense_28/kernel/Regularizer/Square/ReadVariableOp?
"dense_28/kernel/Regularizer/SquareSquare9dense_28/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d22$
"dense_28/kernel/Regularizer/Square?
#dense_28/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_28/kernel/Regularizer/Const_2?
!dense_28/kernel/Regularizer/Sum_1Sum&dense_28/kernel/Regularizer/Square:y:0,dense_28/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_28/kernel/Regularizer/Sum_1?
#dense_28/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_28/kernel/Regularizer/mul_1/x?
!dense_28/kernel/Regularizer/mul_1Mul,dense_28/kernel/Regularizer/mul_1/x:output:0*dense_28/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_28/kernel/Regularizer/mul_1?
!dense_28/kernel/Regularizer/add_1AddV2#dense_28/kernel/Regularizer/add:z:0%dense_28/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_28/kernel/Regularizer/add_1?
/dense_28/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_28_1010388*
_output_shapes
:2*
dtype021
/dense_28/bias/Regularizer/Square/ReadVariableOp?
 dense_28/bias/Regularizer/SquareSquare7dense_28/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22"
 dense_28/bias/Regularizer/Square?
dense_28/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_28/bias/Regularizer/Const?
dense_28/bias/Regularizer/SumSum$dense_28/bias/Regularizer/Square:y:0(dense_28/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/Sum?
dense_28/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_28/bias/Regularizer/mul/x?
dense_28/bias/Regularizer/mulMul(dense_28/bias/Regularizer/mul/x:output:0&dense_28/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/mul?	
IdentityIdentity)dense_29/StatefulPartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp!^dense_25/StatefulPartitionedCall0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp!^dense_26/StatefulPartitionedCall0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp!^dense_27/StatefulPartitionedCall0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?	

Identity_1Identity(dense_24/ActivityRegularizer/truediv:z:0.^batch_normalization_4/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp!^dense_25/StatefulPartitionedCall0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp!^dense_26/StatefulPartitionedCall0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp!^dense_27/StatefulPartitionedCall0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?	

Identity_2Identity(dense_25/ActivityRegularizer/truediv:z:0.^batch_normalization_4/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp!^dense_25/StatefulPartitionedCall0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp!^dense_26/StatefulPartitionedCall0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp!^dense_27/StatefulPartitionedCall0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?	

Identity_3Identity(dense_26/ActivityRegularizer/truediv:z:0.^batch_normalization_4/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp!^dense_25/StatefulPartitionedCall0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp!^dense_26/StatefulPartitionedCall0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp!^dense_27/StatefulPartitionedCall0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3?	

Identity_4Identity(dense_27/ActivityRegularizer/truediv:z:0.^batch_normalization_4/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp!^dense_25/StatefulPartitionedCall0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp!^dense_26/StatefulPartitionedCall0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp!^dense_27/StatefulPartitionedCall0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_4?	

Identity_5Identity(dense_28/ActivityRegularizer/truediv:z:0.^batch_normalization_4/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp!^dense_25/StatefulPartitionedCall0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp!^dense_26/StatefulPartitionedCall0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp!^dense_27/StatefulPartitionedCall0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : : : : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2b
/dense_24/bias/Regularizer/Square/ReadVariableOp/dense_24/bias/Regularizer/Square/ReadVariableOp2`
.dense_24/kernel/Regularizer/Abs/ReadVariableOp.dense_24/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_24/kernel/Regularizer/Square/ReadVariableOp1dense_24/kernel/Regularizer/Square/ReadVariableOp2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2b
/dense_25/bias/Regularizer/Square/ReadVariableOp/dense_25/bias/Regularizer/Square/ReadVariableOp2`
.dense_25/kernel/Regularizer/Abs/ReadVariableOp.dense_25/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_25/kernel/Regularizer/Square/ReadVariableOp1dense_25/kernel/Regularizer/Square/ReadVariableOp2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2b
/dense_26/bias/Regularizer/Square/ReadVariableOp/dense_26/bias/Regularizer/Square/ReadVariableOp2`
.dense_26/kernel/Regularizer/Abs/ReadVariableOp.dense_26/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_26/kernel/Regularizer/Square/ReadVariableOp1dense_26/kernel/Regularizer/Square/ReadVariableOp2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2b
/dense_27/bias/Regularizer/Square/ReadVariableOp/dense_27/bias/Regularizer/Square/ReadVariableOp2`
.dense_27/kernel/Regularizer/Abs/ReadVariableOp.dense_27/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_27/kernel/Regularizer/Square/ReadVariableOp1dense_27/kernel/Regularizer/Square/ReadVariableOp2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2b
/dense_28/bias/Regularizer/Square/ReadVariableOp/dense_28/bias/Regularizer/Square/ReadVariableOp2`
.dense_28/kernel/Regularizer/Abs/ReadVariableOp.dense_28/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_28/kernel/Regularizer/Square/ReadVariableOp1dense_28/kernel/Regularizer/Square/ReadVariableOp2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall2P
&normalization_4/Reshape/ReadVariableOp&normalization_4/Reshape/ReadVariableOp2T
(normalization_4/Reshape_1/ReadVariableOp(normalization_4/Reshape_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?,
?
E__inference_dense_27_layer_call_and_return_conditional_losses_1010339

inputs1
matmul_readvariableop_resource:	?d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_27/bias/Regularizer/Square/ReadVariableOp?.dense_27/kernel/Regularizer/Abs/ReadVariableOp?1dense_27/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAdd?
leaky_re_lu_4/LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????d*
alpha%???>2
leaky_re_lu_4/LeakyRelu?
!dense_27/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_27/kernel/Regularizer/Const?
.dense_27/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?d*
dtype020
.dense_27/kernel/Regularizer/Abs/ReadVariableOp?
dense_27/kernel/Regularizer/AbsAbs6dense_27/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?d2!
dense_27/kernel/Regularizer/Abs?
#dense_27/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_27/kernel/Regularizer/Const_1?
dense_27/kernel/Regularizer/SumSum#dense_27/kernel/Regularizer/Abs:y:0,dense_27/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_27/kernel/Regularizer/Sum?
!dense_27/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_27/kernel/Regularizer/mul/x?
dense_27/kernel/Regularizer/mulMul*dense_27/kernel/Regularizer/mul/x:output:0(dense_27/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_27/kernel/Regularizer/mul?
dense_27/kernel/Regularizer/addAddV2*dense_27/kernel/Regularizer/Const:output:0#dense_27/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_27/kernel/Regularizer/add?
1dense_27/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?d*
dtype023
1dense_27/kernel/Regularizer/Square/ReadVariableOp?
"dense_27/kernel/Regularizer/SquareSquare9dense_27/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?d2$
"dense_27/kernel/Regularizer/Square?
#dense_27/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_27/kernel/Regularizer/Const_2?
!dense_27/kernel/Regularizer/Sum_1Sum&dense_27/kernel/Regularizer/Square:y:0,dense_27/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_27/kernel/Regularizer/Sum_1?
#dense_27/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_27/kernel/Regularizer/mul_1/x?
!dense_27/kernel/Regularizer/mul_1Mul,dense_27/kernel/Regularizer/mul_1/x:output:0*dense_27/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_27/kernel/Regularizer/mul_1?
!dense_27/kernel/Regularizer/add_1AddV2#dense_27/kernel/Regularizer/add:z:0%dense_27/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_27/kernel/Regularizer/add_1?
/dense_27/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_27/bias/Regularizer/Square/ReadVariableOp?
 dense_27/bias/Regularizer/SquareSquare7dense_27/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_27/bias/Regularizer/Square?
dense_27/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_27/bias/Regularizer/Const?
dense_27/bias/Regularizer/SumSum$dense_27/bias/Regularizer/Square:y:0(dense_27/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_27/bias/Regularizer/Sum?
dense_27/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_27/bias/Regularizer/mul/x?
dense_27/bias/Regularizer/mulMul(dense_27/bias/Regularizer/mul/x:output:0&dense_27/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_27/bias/Regularizer/mul?
IdentityIdentity%leaky_re_lu_4/LeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_27/bias/Regularizer/Square/ReadVariableOp/dense_27/bias/Regularizer/Square/ReadVariableOp2`
.dense_27/kernel/Regularizer/Abs/ReadVariableOp.dense_27/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_27/kernel/Regularizer/Square/ReadVariableOp1dense_27/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_7_1012620F
8dense_27_bias_regularizer_square_readvariableop_resource:d
identity??/dense_27/bias/Regularizer/Square/ReadVariableOp?
/dense_27/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_27_bias_regularizer_square_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_27/bias/Regularizer/Square/ReadVariableOp?
 dense_27/bias/Regularizer/SquareSquare7dense_27/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_27/bias/Regularizer/Square?
dense_27/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_27/bias/Regularizer/Const?
dense_27/bias/Regularizer/SumSum$dense_27/bias/Regularizer/Square:y:0(dense_27/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_27/bias/Regularizer/Sum?
dense_27/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_27/bias/Regularizer/mul/x?
dense_27/bias/Regularizer/mulMul(dense_27/bias/Regularizer/mul/x:output:0&dense_27/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_27/bias/Regularizer/mul?
IdentityIdentity!dense_27/bias/Regularizer/mul:z:00^dense_27/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_27/bias/Regularizer/Square/ReadVariableOp/dense_27/bias/Regularizer/Square/ReadVariableOp
??
?
C__inference_mapDNN_layer_call_and_return_conditional_losses_1011932

inputs=
/normalization_4_reshape_readvariableop_resource:?
1normalization_4_reshape_1_readvariableop_resource:E
7batch_normalization_4_batchnorm_readvariableop_resource:I
;batch_normalization_4_batchnorm_mul_readvariableop_resource:G
9batch_normalization_4_batchnorm_readvariableop_1_resource:G
9batch_normalization_4_batchnorm_readvariableop_2_resource:9
'dense_24_matmul_readvariableop_resource:26
(dense_24_biasadd_readvariableop_resource:29
'dense_25_matmul_readvariableop_resource:2d6
(dense_25_biasadd_readvariableop_resource:d:
'dense_26_matmul_readvariableop_resource:	d?7
(dense_26_biasadd_readvariableop_resource:	?:
'dense_27_matmul_readvariableop_resource:	?d6
(dense_27_biasadd_readvariableop_resource:d9
'dense_28_matmul_readvariableop_resource:d26
(dense_28_biasadd_readvariableop_resource:29
'dense_29_matmul_readvariableop_resource:26
(dense_29_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3

identity_4

identity_5??.batch_normalization_4/batchnorm/ReadVariableOp?0batch_normalization_4/batchnorm/ReadVariableOp_1?0batch_normalization_4/batchnorm/ReadVariableOp_2?2batch_normalization_4/batchnorm/mul/ReadVariableOp?dense_24/BiasAdd/ReadVariableOp?dense_24/MatMul/ReadVariableOp?/dense_24/bias/Regularizer/Square/ReadVariableOp?.dense_24/kernel/Regularizer/Abs/ReadVariableOp?1dense_24/kernel/Regularizer/Square/ReadVariableOp?dense_25/BiasAdd/ReadVariableOp?dense_25/MatMul/ReadVariableOp?/dense_25/bias/Regularizer/Square/ReadVariableOp?.dense_25/kernel/Regularizer/Abs/ReadVariableOp?1dense_25/kernel/Regularizer/Square/ReadVariableOp?dense_26/BiasAdd/ReadVariableOp?dense_26/MatMul/ReadVariableOp?/dense_26/bias/Regularizer/Square/ReadVariableOp?.dense_26/kernel/Regularizer/Abs/ReadVariableOp?1dense_26/kernel/Regularizer/Square/ReadVariableOp?dense_27/BiasAdd/ReadVariableOp?dense_27/MatMul/ReadVariableOp?/dense_27/bias/Regularizer/Square/ReadVariableOp?.dense_27/kernel/Regularizer/Abs/ReadVariableOp?1dense_27/kernel/Regularizer/Square/ReadVariableOp?dense_28/BiasAdd/ReadVariableOp?dense_28/MatMul/ReadVariableOp?/dense_28/bias/Regularizer/Square/ReadVariableOp?.dense_28/kernel/Regularizer/Abs/ReadVariableOp?1dense_28/kernel/Regularizer/Square/ReadVariableOp?dense_29/BiasAdd/ReadVariableOp?dense_29/MatMul/ReadVariableOp?&normalization_4/Reshape/ReadVariableOp?(normalization_4/Reshape_1/ReadVariableOp?
&normalization_4/Reshape/ReadVariableOpReadVariableOp/normalization_4_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_4/Reshape/ReadVariableOp?
normalization_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_4/Reshape/shape?
normalization_4/ReshapeReshape.normalization_4/Reshape/ReadVariableOp:value:0&normalization_4/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_4/Reshape?
(normalization_4/Reshape_1/ReadVariableOpReadVariableOp1normalization_4_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_4/Reshape_1/ReadVariableOp?
normalization_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_4/Reshape_1/shape?
normalization_4/Reshape_1Reshape0normalization_4/Reshape_1/ReadVariableOp:value:0(normalization_4/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_4/Reshape_1?
normalization_4/subSubinputs normalization_4/Reshape:output:0*
T0*'
_output_shapes
:?????????2
normalization_4/sub?
normalization_4/SqrtSqrt"normalization_4/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_4/Sqrt{
normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_4/Maximum/y?
normalization_4/MaximumMaximumnormalization_4/Sqrt:y:0"normalization_4/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_4/Maximum?
normalization_4/truedivRealDivnormalization_4/sub:z:0normalization_4/Maximum:z:0*
T0*'
_output_shapes
:?????????2
normalization_4/truediv?
.batch_normalization_4/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype020
.batch_normalization_4/batchnorm/ReadVariableOp?
%batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_4/batchnorm/add/y?
#batch_normalization_4/batchnorm/addAddV26batch_normalization_4/batchnorm/ReadVariableOp:value:0.batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes
:2%
#batch_normalization_4/batchnorm/add?
%batch_normalization_4/batchnorm/RsqrtRsqrt'batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes
:2'
%batch_normalization_4/batchnorm/Rsqrt?
2batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype024
2batch_normalization_4/batchnorm/mul/ReadVariableOp?
#batch_normalization_4/batchnorm/mulMul)batch_normalization_4/batchnorm/Rsqrt:y:0:batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2%
#batch_normalization_4/batchnorm/mul?
%batch_normalization_4/batchnorm/mul_1Mulnormalization_4/truediv:z:0'batch_normalization_4/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2'
%batch_normalization_4/batchnorm/mul_1?
0batch_normalization_4/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_4_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype022
0batch_normalization_4/batchnorm/ReadVariableOp_1?
%batch_normalization_4/batchnorm/mul_2Mul8batch_normalization_4/batchnorm/ReadVariableOp_1:value:0'batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes
:2'
%batch_normalization_4/batchnorm/mul_2?
0batch_normalization_4/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_4_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype022
0batch_normalization_4/batchnorm/ReadVariableOp_2?
#batch_normalization_4/batchnorm/subSub8batch_normalization_4/batchnorm/ReadVariableOp_2:value:0)batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2%
#batch_normalization_4/batchnorm/sub?
%batch_normalization_4/batchnorm/add_1AddV2)batch_normalization_4/batchnorm/mul_1:z:0'batch_normalization_4/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2'
%batch_normalization_4/batchnorm/add_1?
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02 
dense_24/MatMul/ReadVariableOp?
dense_24/MatMulMatMul)batch_normalization_4/batchnorm/add_1:z:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_24/MatMul?
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_24/BiasAdd/ReadVariableOp?
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_24/BiasAdd?
 dense_24/leaky_re_lu_4/LeakyRelu	LeakyReludense_24/BiasAdd:output:0*'
_output_shapes
:?????????2*
alpha%???>2"
 dense_24/leaky_re_lu_4/LeakyRelu?
#dense_24/ActivityRegularizer/SquareSquare.dense_24/leaky_re_lu_4/LeakyRelu:activations:0*
T0*'
_output_shapes
:?????????22%
#dense_24/ActivityRegularizer/Square?
"dense_24/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_24/ActivityRegularizer/Const?
 dense_24/ActivityRegularizer/SumSum'dense_24/ActivityRegularizer/Square:y:0+dense_24/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_24/ActivityRegularizer/Sum?
"dense_24/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_24/ActivityRegularizer/mul/x?
 dense_24/ActivityRegularizer/mulMul+dense_24/ActivityRegularizer/mul/x:output:0)dense_24/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_24/ActivityRegularizer/mul?
"dense_24/ActivityRegularizer/ShapeShape.dense_24/leaky_re_lu_4/LeakyRelu:activations:0*
T0*
_output_shapes
:2$
"dense_24/ActivityRegularizer/Shape?
0dense_24/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_24/ActivityRegularizer/strided_slice/stack?
2dense_24/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_24/ActivityRegularizer/strided_slice/stack_1?
2dense_24/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_24/ActivityRegularizer/strided_slice/stack_2?
*dense_24/ActivityRegularizer/strided_sliceStridedSlice+dense_24/ActivityRegularizer/Shape:output:09dense_24/ActivityRegularizer/strided_slice/stack:output:0;dense_24/ActivityRegularizer/strided_slice/stack_1:output:0;dense_24/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_24/ActivityRegularizer/strided_slice?
!dense_24/ActivityRegularizer/CastCast3dense_24/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_24/ActivityRegularizer/Cast?
$dense_24/ActivityRegularizer/truedivRealDiv$dense_24/ActivityRegularizer/mul:z:0%dense_24/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_24/ActivityRegularizer/truediv?
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes

:2d*
dtype02 
dense_25/MatMul/ReadVariableOp?
dense_25/MatMulMatMul.dense_24/leaky_re_lu_4/LeakyRelu:activations:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_25/MatMul?
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_25/BiasAdd/ReadVariableOp?
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_25/BiasAdd?
 dense_25/leaky_re_lu_4/LeakyRelu	LeakyReludense_25/BiasAdd:output:0*'
_output_shapes
:?????????d*
alpha%???>2"
 dense_25/leaky_re_lu_4/LeakyRelu?
#dense_25/ActivityRegularizer/SquareSquare.dense_25/leaky_re_lu_4/LeakyRelu:activations:0*
T0*'
_output_shapes
:?????????d2%
#dense_25/ActivityRegularizer/Square?
"dense_25/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_25/ActivityRegularizer/Const?
 dense_25/ActivityRegularizer/SumSum'dense_25/ActivityRegularizer/Square:y:0+dense_25/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_25/ActivityRegularizer/Sum?
"dense_25/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_25/ActivityRegularizer/mul/x?
 dense_25/ActivityRegularizer/mulMul+dense_25/ActivityRegularizer/mul/x:output:0)dense_25/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_25/ActivityRegularizer/mul?
"dense_25/ActivityRegularizer/ShapeShape.dense_25/leaky_re_lu_4/LeakyRelu:activations:0*
T0*
_output_shapes
:2$
"dense_25/ActivityRegularizer/Shape?
0dense_25/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_25/ActivityRegularizer/strided_slice/stack?
2dense_25/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_25/ActivityRegularizer/strided_slice/stack_1?
2dense_25/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_25/ActivityRegularizer/strided_slice/stack_2?
*dense_25/ActivityRegularizer/strided_sliceStridedSlice+dense_25/ActivityRegularizer/Shape:output:09dense_25/ActivityRegularizer/strided_slice/stack:output:0;dense_25/ActivityRegularizer/strided_slice/stack_1:output:0;dense_25/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_25/ActivityRegularizer/strided_slice?
!dense_25/ActivityRegularizer/CastCast3dense_25/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_25/ActivityRegularizer/Cast?
$dense_25/ActivityRegularizer/truedivRealDiv$dense_25/ActivityRegularizer/mul:z:0%dense_25/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_25/ActivityRegularizer/truediv?
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02 
dense_26/MatMul/ReadVariableOp?
dense_26/MatMulMatMul.dense_25/leaky_re_lu_4/LeakyRelu:activations:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_26/MatMul?
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_26/BiasAdd/ReadVariableOp?
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_26/BiasAdd?
 dense_26/leaky_re_lu_4/LeakyRelu	LeakyReludense_26/BiasAdd:output:0*(
_output_shapes
:??????????*
alpha%???>2"
 dense_26/leaky_re_lu_4/LeakyRelu?
#dense_26/ActivityRegularizer/SquareSquare.dense_26/leaky_re_lu_4/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2%
#dense_26/ActivityRegularizer/Square?
"dense_26/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_26/ActivityRegularizer/Const?
 dense_26/ActivityRegularizer/SumSum'dense_26/ActivityRegularizer/Square:y:0+dense_26/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_26/ActivityRegularizer/Sum?
"dense_26/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_26/ActivityRegularizer/mul/x?
 dense_26/ActivityRegularizer/mulMul+dense_26/ActivityRegularizer/mul/x:output:0)dense_26/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_26/ActivityRegularizer/mul?
"dense_26/ActivityRegularizer/ShapeShape.dense_26/leaky_re_lu_4/LeakyRelu:activations:0*
T0*
_output_shapes
:2$
"dense_26/ActivityRegularizer/Shape?
0dense_26/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_26/ActivityRegularizer/strided_slice/stack?
2dense_26/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_26/ActivityRegularizer/strided_slice/stack_1?
2dense_26/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_26/ActivityRegularizer/strided_slice/stack_2?
*dense_26/ActivityRegularizer/strided_sliceStridedSlice+dense_26/ActivityRegularizer/Shape:output:09dense_26/ActivityRegularizer/strided_slice/stack:output:0;dense_26/ActivityRegularizer/strided_slice/stack_1:output:0;dense_26/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_26/ActivityRegularizer/strided_slice?
!dense_26/ActivityRegularizer/CastCast3dense_26/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_26/ActivityRegularizer/Cast?
$dense_26/ActivityRegularizer/truedivRealDiv$dense_26/ActivityRegularizer/mul:z:0%dense_26/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_26/ActivityRegularizer/truediv?
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02 
dense_27/MatMul/ReadVariableOp?
dense_27/MatMulMatMul.dense_26/leaky_re_lu_4/LeakyRelu:activations:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_27/MatMul?
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_27/BiasAdd/ReadVariableOp?
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_27/BiasAdd?
 dense_27/leaky_re_lu_4/LeakyRelu	LeakyReludense_27/BiasAdd:output:0*'
_output_shapes
:?????????d*
alpha%???>2"
 dense_27/leaky_re_lu_4/LeakyRelu?
#dense_27/ActivityRegularizer/SquareSquare.dense_27/leaky_re_lu_4/LeakyRelu:activations:0*
T0*'
_output_shapes
:?????????d2%
#dense_27/ActivityRegularizer/Square?
"dense_27/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_27/ActivityRegularizer/Const?
 dense_27/ActivityRegularizer/SumSum'dense_27/ActivityRegularizer/Square:y:0+dense_27/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_27/ActivityRegularizer/Sum?
"dense_27/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_27/ActivityRegularizer/mul/x?
 dense_27/ActivityRegularizer/mulMul+dense_27/ActivityRegularizer/mul/x:output:0)dense_27/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_27/ActivityRegularizer/mul?
"dense_27/ActivityRegularizer/ShapeShape.dense_27/leaky_re_lu_4/LeakyRelu:activations:0*
T0*
_output_shapes
:2$
"dense_27/ActivityRegularizer/Shape?
0dense_27/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_27/ActivityRegularizer/strided_slice/stack?
2dense_27/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_27/ActivityRegularizer/strided_slice/stack_1?
2dense_27/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_27/ActivityRegularizer/strided_slice/stack_2?
*dense_27/ActivityRegularizer/strided_sliceStridedSlice+dense_27/ActivityRegularizer/Shape:output:09dense_27/ActivityRegularizer/strided_slice/stack:output:0;dense_27/ActivityRegularizer/strided_slice/stack_1:output:0;dense_27/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_27/ActivityRegularizer/strided_slice?
!dense_27/ActivityRegularizer/CastCast3dense_27/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_27/ActivityRegularizer/Cast?
$dense_27/ActivityRegularizer/truedivRealDiv$dense_27/ActivityRegularizer/mul:z:0%dense_27/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_27/ActivityRegularizer/truediv?
dense_28/MatMul/ReadVariableOpReadVariableOp'dense_28_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype02 
dense_28/MatMul/ReadVariableOp?
dense_28/MatMulMatMul.dense_27/leaky_re_lu_4/LeakyRelu:activations:0&dense_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_28/MatMul?
dense_28/BiasAdd/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_28/BiasAdd/ReadVariableOp?
dense_28/BiasAddBiasAdddense_28/MatMul:product:0'dense_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_28/BiasAdd?
 dense_28/leaky_re_lu_4/LeakyRelu	LeakyReludense_28/BiasAdd:output:0*'
_output_shapes
:?????????2*
alpha%???>2"
 dense_28/leaky_re_lu_4/LeakyRelu?
#dense_28/ActivityRegularizer/SquareSquare.dense_28/leaky_re_lu_4/LeakyRelu:activations:0*
T0*'
_output_shapes
:?????????22%
#dense_28/ActivityRegularizer/Square?
"dense_28/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_28/ActivityRegularizer/Const?
 dense_28/ActivityRegularizer/SumSum'dense_28/ActivityRegularizer/Square:y:0+dense_28/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_28/ActivityRegularizer/Sum?
"dense_28/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_28/ActivityRegularizer/mul/x?
 dense_28/ActivityRegularizer/mulMul+dense_28/ActivityRegularizer/mul/x:output:0)dense_28/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_28/ActivityRegularizer/mul?
"dense_28/ActivityRegularizer/ShapeShape.dense_28/leaky_re_lu_4/LeakyRelu:activations:0*
T0*
_output_shapes
:2$
"dense_28/ActivityRegularizer/Shape?
0dense_28/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_28/ActivityRegularizer/strided_slice/stack?
2dense_28/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_28/ActivityRegularizer/strided_slice/stack_1?
2dense_28/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_28/ActivityRegularizer/strided_slice/stack_2?
*dense_28/ActivityRegularizer/strided_sliceStridedSlice+dense_28/ActivityRegularizer/Shape:output:09dense_28/ActivityRegularizer/strided_slice/stack:output:0;dense_28/ActivityRegularizer/strided_slice/stack_1:output:0;dense_28/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_28/ActivityRegularizer/strided_slice?
!dense_28/ActivityRegularizer/CastCast3dense_28/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_28/ActivityRegularizer/Cast?
$dense_28/ActivityRegularizer/truedivRealDiv$dense_28/ActivityRegularizer/mul:z:0%dense_28/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_28/ActivityRegularizer/truediv?
dense_29/MatMul/ReadVariableOpReadVariableOp'dense_29_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02 
dense_29/MatMul/ReadVariableOp?
dense_29/MatMulMatMul.dense_28/leaky_re_lu_4/LeakyRelu:activations:0&dense_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_29/MatMul?
dense_29/BiasAdd/ReadVariableOpReadVariableOp(dense_29_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_29/BiasAdd/ReadVariableOp?
dense_29/BiasAddBiasAdddense_29/MatMul:product:0'dense_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_29/BiasAdd?
 dense_29/leaky_re_lu_4/LeakyRelu	LeakyReludense_29/BiasAdd:output:0*'
_output_shapes
:?????????*
alpha%???>2"
 dense_29/leaky_re_lu_4/LeakyRelu?
!dense_24/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_24/kernel/Regularizer/Const?
.dense_24/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource*
_output_shapes

:2*
dtype020
.dense_24/kernel/Regularizer/Abs/ReadVariableOp?
dense_24/kernel/Regularizer/AbsAbs6dense_24/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:22!
dense_24/kernel/Regularizer/Abs?
#dense_24/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_24/kernel/Regularizer/Const_1?
dense_24/kernel/Regularizer/SumSum#dense_24/kernel/Regularizer/Abs:y:0,dense_24/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_24/kernel/Regularizer/Sum?
!dense_24/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_24/kernel/Regularizer/mul/x?
dense_24/kernel/Regularizer/mulMul*dense_24/kernel/Regularizer/mul/x:output:0(dense_24/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_24/kernel/Regularizer/mul?
dense_24/kernel/Regularizer/addAddV2*dense_24/kernel/Regularizer/Const:output:0#dense_24/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_24/kernel/Regularizer/add?
1dense_24/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource*
_output_shapes

:2*
dtype023
1dense_24/kernel/Regularizer/Square/ReadVariableOp?
"dense_24/kernel/Regularizer/SquareSquare9dense_24/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22$
"dense_24/kernel/Regularizer/Square?
#dense_24/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_24/kernel/Regularizer/Const_2?
!dense_24/kernel/Regularizer/Sum_1Sum&dense_24/kernel/Regularizer/Square:y:0,dense_24/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_24/kernel/Regularizer/Sum_1?
#dense_24/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_24/kernel/Regularizer/mul_1/x?
!dense_24/kernel/Regularizer/mul_1Mul,dense_24/kernel/Regularizer/mul_1/x:output:0*dense_24/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_24/kernel/Regularizer/mul_1?
!dense_24/kernel/Regularizer/add_1AddV2#dense_24/kernel/Regularizer/add:z:0%dense_24/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_24/kernel/Regularizer/add_1?
/dense_24/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype021
/dense_24/bias/Regularizer/Square/ReadVariableOp?
 dense_24/bias/Regularizer/SquareSquare7dense_24/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22"
 dense_24/bias/Regularizer/Square?
dense_24/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_24/bias/Regularizer/Const?
dense_24/bias/Regularizer/SumSum$dense_24/bias/Regularizer/Square:y:0(dense_24/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_24/bias/Regularizer/Sum?
dense_24/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_24/bias/Regularizer/mul/x?
dense_24/bias/Regularizer/mulMul(dense_24/bias/Regularizer/mul/x:output:0&dense_24/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_24/bias/Regularizer/mul?
!dense_25/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_25/kernel/Regularizer/Const?
.dense_25/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes

:2d*
dtype020
.dense_25/kernel/Regularizer/Abs/ReadVariableOp?
dense_25/kernel/Regularizer/AbsAbs6dense_25/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:2d2!
dense_25/kernel/Regularizer/Abs?
#dense_25/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_25/kernel/Regularizer/Const_1?
dense_25/kernel/Regularizer/SumSum#dense_25/kernel/Regularizer/Abs:y:0,dense_25/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_25/kernel/Regularizer/Sum?
!dense_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_25/kernel/Regularizer/mul/x?
dense_25/kernel/Regularizer/mulMul*dense_25/kernel/Regularizer/mul/x:output:0(dense_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_25/kernel/Regularizer/mul?
dense_25/kernel/Regularizer/addAddV2*dense_25/kernel/Regularizer/Const:output:0#dense_25/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_25/kernel/Regularizer/add?
1dense_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes

:2d*
dtype023
1dense_25/kernel/Regularizer/Square/ReadVariableOp?
"dense_25/kernel/Regularizer/SquareSquare9dense_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2d2$
"dense_25/kernel/Regularizer/Square?
#dense_25/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_25/kernel/Regularizer/Const_2?
!dense_25/kernel/Regularizer/Sum_1Sum&dense_25/kernel/Regularizer/Square:y:0,dense_25/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_25/kernel/Regularizer/Sum_1?
#dense_25/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_25/kernel/Regularizer/mul_1/x?
!dense_25/kernel/Regularizer/mul_1Mul,dense_25/kernel/Regularizer/mul_1/x:output:0*dense_25/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_25/kernel/Regularizer/mul_1?
!dense_25/kernel/Regularizer/add_1AddV2#dense_25/kernel/Regularizer/add:z:0%dense_25/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_25/kernel/Regularizer/add_1?
/dense_25/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_25/bias/Regularizer/Square/ReadVariableOp?
 dense_25/bias/Regularizer/SquareSquare7dense_25/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_25/bias/Regularizer/Square?
dense_25/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_25/bias/Regularizer/Const?
dense_25/bias/Regularizer/SumSum$dense_25/bias/Regularizer/Square:y:0(dense_25/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_25/bias/Regularizer/Sum?
dense_25/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_25/bias/Regularizer/mul/x?
dense_25/bias/Regularizer/mulMul(dense_25/bias/Regularizer/mul/x:output:0&dense_25/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_25/bias/Regularizer/mul?
!dense_26/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_26/kernel/Regularizer/Const?
.dense_26/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype020
.dense_26/kernel/Regularizer/Abs/ReadVariableOp?
dense_26/kernel/Regularizer/AbsAbs6dense_26/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	d?2!
dense_26/kernel/Regularizer/Abs?
#dense_26/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_26/kernel/Regularizer/Const_1?
dense_26/kernel/Regularizer/SumSum#dense_26/kernel/Regularizer/Abs:y:0,dense_26/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_26/kernel/Regularizer/Sum?
!dense_26/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_26/kernel/Regularizer/mul/x?
dense_26/kernel/Regularizer/mulMul*dense_26/kernel/Regularizer/mul/x:output:0(dense_26/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_26/kernel/Regularizer/mul?
dense_26/kernel/Regularizer/addAddV2*dense_26/kernel/Regularizer/Const:output:0#dense_26/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_26/kernel/Regularizer/add?
1dense_26/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype023
1dense_26/kernel/Regularizer/Square/ReadVariableOp?
"dense_26/kernel/Regularizer/SquareSquare9dense_26/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	d?2$
"dense_26/kernel/Regularizer/Square?
#dense_26/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_26/kernel/Regularizer/Const_2?
!dense_26/kernel/Regularizer/Sum_1Sum&dense_26/kernel/Regularizer/Square:y:0,dense_26/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_26/kernel/Regularizer/Sum_1?
#dense_26/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_26/kernel/Regularizer/mul_1/x?
!dense_26/kernel/Regularizer/mul_1Mul,dense_26/kernel/Regularizer/mul_1/x:output:0*dense_26/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_26/kernel/Regularizer/mul_1?
!dense_26/kernel/Regularizer/add_1AddV2#dense_26/kernel/Regularizer/add:z:0%dense_26/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_26/kernel/Regularizer/add_1?
/dense_26/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype021
/dense_26/bias/Regularizer/Square/ReadVariableOp?
 dense_26/bias/Regularizer/SquareSquare7dense_26/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2"
 dense_26/bias/Regularizer/Square?
dense_26/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_26/bias/Regularizer/Const?
dense_26/bias/Regularizer/SumSum$dense_26/bias/Regularizer/Square:y:0(dense_26/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_26/bias/Regularizer/Sum?
dense_26/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_26/bias/Regularizer/mul/x?
dense_26/bias/Regularizer/mulMul(dense_26/bias/Regularizer/mul/x:output:0&dense_26/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_26/bias/Regularizer/mul?
!dense_27/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_27/kernel/Regularizer/Const?
.dense_27/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype020
.dense_27/kernel/Regularizer/Abs/ReadVariableOp?
dense_27/kernel/Regularizer/AbsAbs6dense_27/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?d2!
dense_27/kernel/Regularizer/Abs?
#dense_27/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_27/kernel/Regularizer/Const_1?
dense_27/kernel/Regularizer/SumSum#dense_27/kernel/Regularizer/Abs:y:0,dense_27/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_27/kernel/Regularizer/Sum?
!dense_27/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_27/kernel/Regularizer/mul/x?
dense_27/kernel/Regularizer/mulMul*dense_27/kernel/Regularizer/mul/x:output:0(dense_27/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_27/kernel/Regularizer/mul?
dense_27/kernel/Regularizer/addAddV2*dense_27/kernel/Regularizer/Const:output:0#dense_27/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_27/kernel/Regularizer/add?
1dense_27/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype023
1dense_27/kernel/Regularizer/Square/ReadVariableOp?
"dense_27/kernel/Regularizer/SquareSquare9dense_27/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?d2$
"dense_27/kernel/Regularizer/Square?
#dense_27/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_27/kernel/Regularizer/Const_2?
!dense_27/kernel/Regularizer/Sum_1Sum&dense_27/kernel/Regularizer/Square:y:0,dense_27/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_27/kernel/Regularizer/Sum_1?
#dense_27/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_27/kernel/Regularizer/mul_1/x?
!dense_27/kernel/Regularizer/mul_1Mul,dense_27/kernel/Regularizer/mul_1/x:output:0*dense_27/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_27/kernel/Regularizer/mul_1?
!dense_27/kernel/Regularizer/add_1AddV2#dense_27/kernel/Regularizer/add:z:0%dense_27/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_27/kernel/Regularizer/add_1?
/dense_27/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_27/bias/Regularizer/Square/ReadVariableOp?
 dense_27/bias/Regularizer/SquareSquare7dense_27/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_27/bias/Regularizer/Square?
dense_27/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_27/bias/Regularizer/Const?
dense_27/bias/Regularizer/SumSum$dense_27/bias/Regularizer/Square:y:0(dense_27/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_27/bias/Regularizer/Sum?
dense_27/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_27/bias/Regularizer/mul/x?
dense_27/bias/Regularizer/mulMul(dense_27/bias/Regularizer/mul/x:output:0&dense_27/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_27/bias/Regularizer/mul?
!dense_28/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_28/kernel/Regularizer/Const?
.dense_28/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'dense_28_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype020
.dense_28/kernel/Regularizer/Abs/ReadVariableOp?
dense_28/kernel/Regularizer/AbsAbs6dense_28/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:d22!
dense_28/kernel/Regularizer/Abs?
#dense_28/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_28/kernel/Regularizer/Const_1?
dense_28/kernel/Regularizer/SumSum#dense_28/kernel/Regularizer/Abs:y:0,dense_28/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_28/kernel/Regularizer/Sum?
!dense_28/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_28/kernel/Regularizer/mul/x?
dense_28/kernel/Regularizer/mulMul*dense_28/kernel/Regularizer/mul/x:output:0(dense_28/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_28/kernel/Regularizer/mul?
dense_28/kernel/Regularizer/addAddV2*dense_28/kernel/Regularizer/Const:output:0#dense_28/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_28/kernel/Regularizer/add?
1dense_28/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_28_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype023
1dense_28/kernel/Regularizer/Square/ReadVariableOp?
"dense_28/kernel/Regularizer/SquareSquare9dense_28/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d22$
"dense_28/kernel/Regularizer/Square?
#dense_28/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_28/kernel/Regularizer/Const_2?
!dense_28/kernel/Regularizer/Sum_1Sum&dense_28/kernel/Regularizer/Square:y:0,dense_28/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_28/kernel/Regularizer/Sum_1?
#dense_28/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_28/kernel/Regularizer/mul_1/x?
!dense_28/kernel/Regularizer/mul_1Mul,dense_28/kernel/Regularizer/mul_1/x:output:0*dense_28/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_28/kernel/Regularizer/mul_1?
!dense_28/kernel/Regularizer/add_1AddV2#dense_28/kernel/Regularizer/add:z:0%dense_28/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_28/kernel/Regularizer/add_1?
/dense_28/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype021
/dense_28/bias/Regularizer/Square/ReadVariableOp?
 dense_28/bias/Regularizer/SquareSquare7dense_28/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22"
 dense_28/bias/Regularizer/Square?
dense_28/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_28/bias/Regularizer/Const?
dense_28/bias/Regularizer/SumSum$dense_28/bias/Regularizer/Square:y:0(dense_28/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/Sum?
dense_28/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_28/bias/Regularizer/mul/x?
dense_28/bias/Regularizer/mulMul(dense_28/bias/Regularizer/mul/x:output:0&dense_28/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/mul?
IdentityIdentity.dense_29/leaky_re_lu_4/LeakyRelu:activations:0/^batch_normalization_4/batchnorm/ReadVariableOp1^batch_normalization_4/batchnorm/ReadVariableOp_11^batch_normalization_4/batchnorm/ReadVariableOp_23^batch_normalization_4/batchnorm/mul/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity(dense_24/ActivityRegularizer/truediv:z:0/^batch_normalization_4/batchnorm/ReadVariableOp1^batch_normalization_4/batchnorm/ReadVariableOp_11^batch_normalization_4/batchnorm/ReadVariableOp_23^batch_normalization_4/batchnorm/mul/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity(dense_25/ActivityRegularizer/truediv:z:0/^batch_normalization_4/batchnorm/ReadVariableOp1^batch_normalization_4/batchnorm/ReadVariableOp_11^batch_normalization_4/batchnorm/ReadVariableOp_23^batch_normalization_4/batchnorm/mul/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity(dense_26/ActivityRegularizer/truediv:z:0/^batch_normalization_4/batchnorm/ReadVariableOp1^batch_normalization_4/batchnorm/ReadVariableOp_11^batch_normalization_4/batchnorm/ReadVariableOp_23^batch_normalization_4/batchnorm/mul/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3?

Identity_4Identity(dense_27/ActivityRegularizer/truediv:z:0/^batch_normalization_4/batchnorm/ReadVariableOp1^batch_normalization_4/batchnorm/ReadVariableOp_11^batch_normalization_4/batchnorm/ReadVariableOp_23^batch_normalization_4/batchnorm/mul/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_4?

Identity_5Identity(dense_28/ActivityRegularizer/truediv:z:0/^batch_normalization_4/batchnorm/ReadVariableOp1^batch_normalization_4/batchnorm/ReadVariableOp_11^batch_normalization_4/batchnorm/ReadVariableOp_23^batch_normalization_4/batchnorm/mul/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : : : : : : : 2`
.batch_normalization_4/batchnorm/ReadVariableOp.batch_normalization_4/batchnorm/ReadVariableOp2d
0batch_normalization_4/batchnorm/ReadVariableOp_10batch_normalization_4/batchnorm/ReadVariableOp_12d
0batch_normalization_4/batchnorm/ReadVariableOp_20batch_normalization_4/batchnorm/ReadVariableOp_22h
2batch_normalization_4/batchnorm/mul/ReadVariableOp2batch_normalization_4/batchnorm/mul/ReadVariableOp2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp2b
/dense_24/bias/Regularizer/Square/ReadVariableOp/dense_24/bias/Regularizer/Square/ReadVariableOp2`
.dense_24/kernel/Regularizer/Abs/ReadVariableOp.dense_24/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_24/kernel/Regularizer/Square/ReadVariableOp1dense_24/kernel/Regularizer/Square/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp2b
/dense_25/bias/Regularizer/Square/ReadVariableOp/dense_25/bias/Regularizer/Square/ReadVariableOp2`
.dense_25/kernel/Regularizer/Abs/ReadVariableOp.dense_25/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_25/kernel/Regularizer/Square/ReadVariableOp1dense_25/kernel/Regularizer/Square/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2b
/dense_26/bias/Regularizer/Square/ReadVariableOp/dense_26/bias/Regularizer/Square/ReadVariableOp2`
.dense_26/kernel/Regularizer/Abs/ReadVariableOp.dense_26/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_26/kernel/Regularizer/Square/ReadVariableOp1dense_26/kernel/Regularizer/Square/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp2b
/dense_27/bias/Regularizer/Square/ReadVariableOp/dense_27/bias/Regularizer/Square/ReadVariableOp2`
.dense_27/kernel/Regularizer/Abs/ReadVariableOp.dense_27/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_27/kernel/Regularizer/Square/ReadVariableOp1dense_27/kernel/Regularizer/Square/ReadVariableOp2B
dense_28/BiasAdd/ReadVariableOpdense_28/BiasAdd/ReadVariableOp2@
dense_28/MatMul/ReadVariableOpdense_28/MatMul/ReadVariableOp2b
/dense_28/bias/Regularizer/Square/ReadVariableOp/dense_28/bias/Regularizer/Square/ReadVariableOp2`
.dense_28/kernel/Regularizer/Abs/ReadVariableOp.dense_28/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_28/kernel/Regularizer/Square/ReadVariableOp1dense_28/kernel/Regularizer/Square/ReadVariableOp2B
dense_29/BiasAdd/ReadVariableOpdense_29/BiasAdd/ReadVariableOp2@
dense_29/MatMul/ReadVariableOpdense_29/MatMul/ReadVariableOp2P
&normalization_4/Reshape/ReadVariableOp&normalization_4/Reshape/ReadVariableOp2T
(normalization_4/Reshape_1/ReadVariableOp(normalization_4/Reshape_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_1012516I
7dense_24_kernel_regularizer_abs_readvariableop_resource:2
identity??.dense_24/kernel/Regularizer/Abs/ReadVariableOp?1dense_24/kernel/Regularizer/Square/ReadVariableOp?
!dense_24/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_24/kernel/Regularizer/Const?
.dense_24/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp7dense_24_kernel_regularizer_abs_readvariableop_resource*
_output_shapes

:2*
dtype020
.dense_24/kernel/Regularizer/Abs/ReadVariableOp?
dense_24/kernel/Regularizer/AbsAbs6dense_24/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:22!
dense_24/kernel/Regularizer/Abs?
#dense_24/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_24/kernel/Regularizer/Const_1?
dense_24/kernel/Regularizer/SumSum#dense_24/kernel/Regularizer/Abs:y:0,dense_24/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_24/kernel/Regularizer/Sum?
!dense_24/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_24/kernel/Regularizer/mul/x?
dense_24/kernel/Regularizer/mulMul*dense_24/kernel/Regularizer/mul/x:output:0(dense_24/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_24/kernel/Regularizer/mul?
dense_24/kernel/Regularizer/addAddV2*dense_24/kernel/Regularizer/Const:output:0#dense_24/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_24/kernel/Regularizer/add?
1dense_24/kernel/Regularizer/Square/ReadVariableOpReadVariableOp7dense_24_kernel_regularizer_abs_readvariableop_resource*
_output_shapes

:2*
dtype023
1dense_24/kernel/Regularizer/Square/ReadVariableOp?
"dense_24/kernel/Regularizer/SquareSquare9dense_24/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22$
"dense_24/kernel/Regularizer/Square?
#dense_24/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_24/kernel/Regularizer/Const_2?
!dense_24/kernel/Regularizer/Sum_1Sum&dense_24/kernel/Regularizer/Square:y:0,dense_24/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_24/kernel/Regularizer/Sum_1?
#dense_24/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_24/kernel/Regularizer/mul_1/x?
!dense_24/kernel/Regularizer/mul_1Mul,dense_24/kernel/Regularizer/mul_1/x:output:0*dense_24/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_24/kernel/Regularizer/mul_1?
!dense_24/kernel/Regularizer/add_1AddV2#dense_24/kernel/Regularizer/add:z:0%dense_24/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_24/kernel/Regularizer/add_1?
IdentityIdentity%dense_24/kernel/Regularizer/add_1:z:0/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2`
.dense_24/kernel/Regularizer/Abs/ReadVariableOp.dense_24/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_24/kernel/Regularizer/Square/ReadVariableOp1dense_24/kernel/Regularizer/Square/ReadVariableOp
??
?
C__inference_mapDNN_layer_call_and_return_conditional_losses_1012191

inputs=
/normalization_4_reshape_readvariableop_resource:?
1normalization_4_reshape_1_readvariableop_resource:K
=batch_normalization_4_assignmovingavg_readvariableop_resource:M
?batch_normalization_4_assignmovingavg_1_readvariableop_resource:I
;batch_normalization_4_batchnorm_mul_readvariableop_resource:E
7batch_normalization_4_batchnorm_readvariableop_resource:9
'dense_24_matmul_readvariableop_resource:26
(dense_24_biasadd_readvariableop_resource:29
'dense_25_matmul_readvariableop_resource:2d6
(dense_25_biasadd_readvariableop_resource:d:
'dense_26_matmul_readvariableop_resource:	d?7
(dense_26_biasadd_readvariableop_resource:	?:
'dense_27_matmul_readvariableop_resource:	?d6
(dense_27_biasadd_readvariableop_resource:d9
'dense_28_matmul_readvariableop_resource:d26
(dense_28_biasadd_readvariableop_resource:29
'dense_29_matmul_readvariableop_resource:26
(dense_29_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3

identity_4

identity_5??%batch_normalization_4/AssignMovingAvg?4batch_normalization_4/AssignMovingAvg/ReadVariableOp?'batch_normalization_4/AssignMovingAvg_1?6batch_normalization_4/AssignMovingAvg_1/ReadVariableOp?.batch_normalization_4/batchnorm/ReadVariableOp?2batch_normalization_4/batchnorm/mul/ReadVariableOp?dense_24/BiasAdd/ReadVariableOp?dense_24/MatMul/ReadVariableOp?/dense_24/bias/Regularizer/Square/ReadVariableOp?.dense_24/kernel/Regularizer/Abs/ReadVariableOp?1dense_24/kernel/Regularizer/Square/ReadVariableOp?dense_25/BiasAdd/ReadVariableOp?dense_25/MatMul/ReadVariableOp?/dense_25/bias/Regularizer/Square/ReadVariableOp?.dense_25/kernel/Regularizer/Abs/ReadVariableOp?1dense_25/kernel/Regularizer/Square/ReadVariableOp?dense_26/BiasAdd/ReadVariableOp?dense_26/MatMul/ReadVariableOp?/dense_26/bias/Regularizer/Square/ReadVariableOp?.dense_26/kernel/Regularizer/Abs/ReadVariableOp?1dense_26/kernel/Regularizer/Square/ReadVariableOp?dense_27/BiasAdd/ReadVariableOp?dense_27/MatMul/ReadVariableOp?/dense_27/bias/Regularizer/Square/ReadVariableOp?.dense_27/kernel/Regularizer/Abs/ReadVariableOp?1dense_27/kernel/Regularizer/Square/ReadVariableOp?dense_28/BiasAdd/ReadVariableOp?dense_28/MatMul/ReadVariableOp?/dense_28/bias/Regularizer/Square/ReadVariableOp?.dense_28/kernel/Regularizer/Abs/ReadVariableOp?1dense_28/kernel/Regularizer/Square/ReadVariableOp?dense_29/BiasAdd/ReadVariableOp?dense_29/MatMul/ReadVariableOp?&normalization_4/Reshape/ReadVariableOp?(normalization_4/Reshape_1/ReadVariableOp?
&normalization_4/Reshape/ReadVariableOpReadVariableOp/normalization_4_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_4/Reshape/ReadVariableOp?
normalization_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_4/Reshape/shape?
normalization_4/ReshapeReshape.normalization_4/Reshape/ReadVariableOp:value:0&normalization_4/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_4/Reshape?
(normalization_4/Reshape_1/ReadVariableOpReadVariableOp1normalization_4_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_4/Reshape_1/ReadVariableOp?
normalization_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_4/Reshape_1/shape?
normalization_4/Reshape_1Reshape0normalization_4/Reshape_1/ReadVariableOp:value:0(normalization_4/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_4/Reshape_1?
normalization_4/subSubinputs normalization_4/Reshape:output:0*
T0*'
_output_shapes
:?????????2
normalization_4/sub?
normalization_4/SqrtSqrt"normalization_4/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_4/Sqrt{
normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_4/Maximum/y?
normalization_4/MaximumMaximumnormalization_4/Sqrt:y:0"normalization_4/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_4/Maximum?
normalization_4/truedivRealDivnormalization_4/sub:z:0normalization_4/Maximum:z:0*
T0*'
_output_shapes
:?????????2
normalization_4/truediv?
4batch_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_4/moments/mean/reduction_indices?
"batch_normalization_4/moments/meanMeannormalization_4/truediv:z:0=batch_normalization_4/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2$
"batch_normalization_4/moments/mean?
*batch_normalization_4/moments/StopGradientStopGradient+batch_normalization_4/moments/mean:output:0*
T0*
_output_shapes

:2,
*batch_normalization_4/moments/StopGradient?
/batch_normalization_4/moments/SquaredDifferenceSquaredDifferencenormalization_4/truediv:z:03batch_normalization_4/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????21
/batch_normalization_4/moments/SquaredDifference?
8batch_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_4/moments/variance/reduction_indices?
&batch_normalization_4/moments/varianceMean3batch_normalization_4/moments/SquaredDifference:z:0Abatch_normalization_4/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2(
&batch_normalization_4/moments/variance?
%batch_normalization_4/moments/SqueezeSqueeze+batch_normalization_4/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2'
%batch_normalization_4/moments/Squeeze?
'batch_normalization_4/moments/Squeeze_1Squeeze/batch_normalization_4/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2)
'batch_normalization_4/moments/Squeeze_1?
+batch_normalization_4/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2-
+batch_normalization_4/AssignMovingAvg/decay?
4batch_normalization_4/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_4_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype026
4batch_normalization_4/AssignMovingAvg/ReadVariableOp?
)batch_normalization_4/AssignMovingAvg/subSub<batch_normalization_4/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_4/moments/Squeeze:output:0*
T0*
_output_shapes
:2+
)batch_normalization_4/AssignMovingAvg/sub?
)batch_normalization_4/AssignMovingAvg/mulMul-batch_normalization_4/AssignMovingAvg/sub:z:04batch_normalization_4/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2+
)batch_normalization_4/AssignMovingAvg/mul?
%batch_normalization_4/AssignMovingAvgAssignSubVariableOp=batch_normalization_4_assignmovingavg_readvariableop_resource-batch_normalization_4/AssignMovingAvg/mul:z:05^batch_normalization_4/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_4/AssignMovingAvg?
-batch_normalization_4/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_4/AssignMovingAvg_1/decay?
6batch_normalization_4/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_4_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype028
6batch_normalization_4/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_4/AssignMovingAvg_1/subSub>batch_normalization_4/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_4/moments/Squeeze_1:output:0*
T0*
_output_shapes
:2-
+batch_normalization_4/AssignMovingAvg_1/sub?
+batch_normalization_4/AssignMovingAvg_1/mulMul/batch_normalization_4/AssignMovingAvg_1/sub:z:06batch_normalization_4/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2-
+batch_normalization_4/AssignMovingAvg_1/mul?
'batch_normalization_4/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_4_assignmovingavg_1_readvariableop_resource/batch_normalization_4/AssignMovingAvg_1/mul:z:07^batch_normalization_4/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_4/AssignMovingAvg_1?
%batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_4/batchnorm/add/y?
#batch_normalization_4/batchnorm/addAddV20batch_normalization_4/moments/Squeeze_1:output:0.batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes
:2%
#batch_normalization_4/batchnorm/add?
%batch_normalization_4/batchnorm/RsqrtRsqrt'batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes
:2'
%batch_normalization_4/batchnorm/Rsqrt?
2batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype024
2batch_normalization_4/batchnorm/mul/ReadVariableOp?
#batch_normalization_4/batchnorm/mulMul)batch_normalization_4/batchnorm/Rsqrt:y:0:batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2%
#batch_normalization_4/batchnorm/mul?
%batch_normalization_4/batchnorm/mul_1Mulnormalization_4/truediv:z:0'batch_normalization_4/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2'
%batch_normalization_4/batchnorm/mul_1?
%batch_normalization_4/batchnorm/mul_2Mul.batch_normalization_4/moments/Squeeze:output:0'batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes
:2'
%batch_normalization_4/batchnorm/mul_2?
.batch_normalization_4/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype020
.batch_normalization_4/batchnorm/ReadVariableOp?
#batch_normalization_4/batchnorm/subSub6batch_normalization_4/batchnorm/ReadVariableOp:value:0)batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2%
#batch_normalization_4/batchnorm/sub?
%batch_normalization_4/batchnorm/add_1AddV2)batch_normalization_4/batchnorm/mul_1:z:0'batch_normalization_4/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2'
%batch_normalization_4/batchnorm/add_1?
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02 
dense_24/MatMul/ReadVariableOp?
dense_24/MatMulMatMul)batch_normalization_4/batchnorm/add_1:z:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_24/MatMul?
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_24/BiasAdd/ReadVariableOp?
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_24/BiasAdd?
 dense_24/leaky_re_lu_4/LeakyRelu	LeakyReludense_24/BiasAdd:output:0*'
_output_shapes
:?????????2*
alpha%???>2"
 dense_24/leaky_re_lu_4/LeakyRelu?
#dense_24/ActivityRegularizer/SquareSquare.dense_24/leaky_re_lu_4/LeakyRelu:activations:0*
T0*'
_output_shapes
:?????????22%
#dense_24/ActivityRegularizer/Square?
"dense_24/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_24/ActivityRegularizer/Const?
 dense_24/ActivityRegularizer/SumSum'dense_24/ActivityRegularizer/Square:y:0+dense_24/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_24/ActivityRegularizer/Sum?
"dense_24/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_24/ActivityRegularizer/mul/x?
 dense_24/ActivityRegularizer/mulMul+dense_24/ActivityRegularizer/mul/x:output:0)dense_24/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_24/ActivityRegularizer/mul?
"dense_24/ActivityRegularizer/ShapeShape.dense_24/leaky_re_lu_4/LeakyRelu:activations:0*
T0*
_output_shapes
:2$
"dense_24/ActivityRegularizer/Shape?
0dense_24/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_24/ActivityRegularizer/strided_slice/stack?
2dense_24/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_24/ActivityRegularizer/strided_slice/stack_1?
2dense_24/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_24/ActivityRegularizer/strided_slice/stack_2?
*dense_24/ActivityRegularizer/strided_sliceStridedSlice+dense_24/ActivityRegularizer/Shape:output:09dense_24/ActivityRegularizer/strided_slice/stack:output:0;dense_24/ActivityRegularizer/strided_slice/stack_1:output:0;dense_24/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_24/ActivityRegularizer/strided_slice?
!dense_24/ActivityRegularizer/CastCast3dense_24/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_24/ActivityRegularizer/Cast?
$dense_24/ActivityRegularizer/truedivRealDiv$dense_24/ActivityRegularizer/mul:z:0%dense_24/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_24/ActivityRegularizer/truediv?
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes

:2d*
dtype02 
dense_25/MatMul/ReadVariableOp?
dense_25/MatMulMatMul.dense_24/leaky_re_lu_4/LeakyRelu:activations:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_25/MatMul?
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_25/BiasAdd/ReadVariableOp?
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_25/BiasAdd?
 dense_25/leaky_re_lu_4/LeakyRelu	LeakyReludense_25/BiasAdd:output:0*'
_output_shapes
:?????????d*
alpha%???>2"
 dense_25/leaky_re_lu_4/LeakyRelu?
#dense_25/ActivityRegularizer/SquareSquare.dense_25/leaky_re_lu_4/LeakyRelu:activations:0*
T0*'
_output_shapes
:?????????d2%
#dense_25/ActivityRegularizer/Square?
"dense_25/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_25/ActivityRegularizer/Const?
 dense_25/ActivityRegularizer/SumSum'dense_25/ActivityRegularizer/Square:y:0+dense_25/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_25/ActivityRegularizer/Sum?
"dense_25/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_25/ActivityRegularizer/mul/x?
 dense_25/ActivityRegularizer/mulMul+dense_25/ActivityRegularizer/mul/x:output:0)dense_25/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_25/ActivityRegularizer/mul?
"dense_25/ActivityRegularizer/ShapeShape.dense_25/leaky_re_lu_4/LeakyRelu:activations:0*
T0*
_output_shapes
:2$
"dense_25/ActivityRegularizer/Shape?
0dense_25/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_25/ActivityRegularizer/strided_slice/stack?
2dense_25/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_25/ActivityRegularizer/strided_slice/stack_1?
2dense_25/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_25/ActivityRegularizer/strided_slice/stack_2?
*dense_25/ActivityRegularizer/strided_sliceStridedSlice+dense_25/ActivityRegularizer/Shape:output:09dense_25/ActivityRegularizer/strided_slice/stack:output:0;dense_25/ActivityRegularizer/strided_slice/stack_1:output:0;dense_25/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_25/ActivityRegularizer/strided_slice?
!dense_25/ActivityRegularizer/CastCast3dense_25/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_25/ActivityRegularizer/Cast?
$dense_25/ActivityRegularizer/truedivRealDiv$dense_25/ActivityRegularizer/mul:z:0%dense_25/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_25/ActivityRegularizer/truediv?
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02 
dense_26/MatMul/ReadVariableOp?
dense_26/MatMulMatMul.dense_25/leaky_re_lu_4/LeakyRelu:activations:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_26/MatMul?
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_26/BiasAdd/ReadVariableOp?
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_26/BiasAdd?
 dense_26/leaky_re_lu_4/LeakyRelu	LeakyReludense_26/BiasAdd:output:0*(
_output_shapes
:??????????*
alpha%???>2"
 dense_26/leaky_re_lu_4/LeakyRelu?
#dense_26/ActivityRegularizer/SquareSquare.dense_26/leaky_re_lu_4/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2%
#dense_26/ActivityRegularizer/Square?
"dense_26/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_26/ActivityRegularizer/Const?
 dense_26/ActivityRegularizer/SumSum'dense_26/ActivityRegularizer/Square:y:0+dense_26/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_26/ActivityRegularizer/Sum?
"dense_26/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_26/ActivityRegularizer/mul/x?
 dense_26/ActivityRegularizer/mulMul+dense_26/ActivityRegularizer/mul/x:output:0)dense_26/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_26/ActivityRegularizer/mul?
"dense_26/ActivityRegularizer/ShapeShape.dense_26/leaky_re_lu_4/LeakyRelu:activations:0*
T0*
_output_shapes
:2$
"dense_26/ActivityRegularizer/Shape?
0dense_26/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_26/ActivityRegularizer/strided_slice/stack?
2dense_26/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_26/ActivityRegularizer/strided_slice/stack_1?
2dense_26/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_26/ActivityRegularizer/strided_slice/stack_2?
*dense_26/ActivityRegularizer/strided_sliceStridedSlice+dense_26/ActivityRegularizer/Shape:output:09dense_26/ActivityRegularizer/strided_slice/stack:output:0;dense_26/ActivityRegularizer/strided_slice/stack_1:output:0;dense_26/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_26/ActivityRegularizer/strided_slice?
!dense_26/ActivityRegularizer/CastCast3dense_26/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_26/ActivityRegularizer/Cast?
$dense_26/ActivityRegularizer/truedivRealDiv$dense_26/ActivityRegularizer/mul:z:0%dense_26/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_26/ActivityRegularizer/truediv?
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02 
dense_27/MatMul/ReadVariableOp?
dense_27/MatMulMatMul.dense_26/leaky_re_lu_4/LeakyRelu:activations:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_27/MatMul?
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_27/BiasAdd/ReadVariableOp?
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_27/BiasAdd?
 dense_27/leaky_re_lu_4/LeakyRelu	LeakyReludense_27/BiasAdd:output:0*'
_output_shapes
:?????????d*
alpha%???>2"
 dense_27/leaky_re_lu_4/LeakyRelu?
#dense_27/ActivityRegularizer/SquareSquare.dense_27/leaky_re_lu_4/LeakyRelu:activations:0*
T0*'
_output_shapes
:?????????d2%
#dense_27/ActivityRegularizer/Square?
"dense_27/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_27/ActivityRegularizer/Const?
 dense_27/ActivityRegularizer/SumSum'dense_27/ActivityRegularizer/Square:y:0+dense_27/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_27/ActivityRegularizer/Sum?
"dense_27/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_27/ActivityRegularizer/mul/x?
 dense_27/ActivityRegularizer/mulMul+dense_27/ActivityRegularizer/mul/x:output:0)dense_27/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_27/ActivityRegularizer/mul?
"dense_27/ActivityRegularizer/ShapeShape.dense_27/leaky_re_lu_4/LeakyRelu:activations:0*
T0*
_output_shapes
:2$
"dense_27/ActivityRegularizer/Shape?
0dense_27/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_27/ActivityRegularizer/strided_slice/stack?
2dense_27/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_27/ActivityRegularizer/strided_slice/stack_1?
2dense_27/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_27/ActivityRegularizer/strided_slice/stack_2?
*dense_27/ActivityRegularizer/strided_sliceStridedSlice+dense_27/ActivityRegularizer/Shape:output:09dense_27/ActivityRegularizer/strided_slice/stack:output:0;dense_27/ActivityRegularizer/strided_slice/stack_1:output:0;dense_27/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_27/ActivityRegularizer/strided_slice?
!dense_27/ActivityRegularizer/CastCast3dense_27/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_27/ActivityRegularizer/Cast?
$dense_27/ActivityRegularizer/truedivRealDiv$dense_27/ActivityRegularizer/mul:z:0%dense_27/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_27/ActivityRegularizer/truediv?
dense_28/MatMul/ReadVariableOpReadVariableOp'dense_28_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype02 
dense_28/MatMul/ReadVariableOp?
dense_28/MatMulMatMul.dense_27/leaky_re_lu_4/LeakyRelu:activations:0&dense_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_28/MatMul?
dense_28/BiasAdd/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_28/BiasAdd/ReadVariableOp?
dense_28/BiasAddBiasAdddense_28/MatMul:product:0'dense_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_28/BiasAdd?
 dense_28/leaky_re_lu_4/LeakyRelu	LeakyReludense_28/BiasAdd:output:0*'
_output_shapes
:?????????2*
alpha%???>2"
 dense_28/leaky_re_lu_4/LeakyRelu?
#dense_28/ActivityRegularizer/SquareSquare.dense_28/leaky_re_lu_4/LeakyRelu:activations:0*
T0*'
_output_shapes
:?????????22%
#dense_28/ActivityRegularizer/Square?
"dense_28/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_28/ActivityRegularizer/Const?
 dense_28/ActivityRegularizer/SumSum'dense_28/ActivityRegularizer/Square:y:0+dense_28/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_28/ActivityRegularizer/Sum?
"dense_28/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"dense_28/ActivityRegularizer/mul/x?
 dense_28/ActivityRegularizer/mulMul+dense_28/ActivityRegularizer/mul/x:output:0)dense_28/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_28/ActivityRegularizer/mul?
"dense_28/ActivityRegularizer/ShapeShape.dense_28/leaky_re_lu_4/LeakyRelu:activations:0*
T0*
_output_shapes
:2$
"dense_28/ActivityRegularizer/Shape?
0dense_28/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_28/ActivityRegularizer/strided_slice/stack?
2dense_28/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_28/ActivityRegularizer/strided_slice/stack_1?
2dense_28/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_28/ActivityRegularizer/strided_slice/stack_2?
*dense_28/ActivityRegularizer/strided_sliceStridedSlice+dense_28/ActivityRegularizer/Shape:output:09dense_28/ActivityRegularizer/strided_slice/stack:output:0;dense_28/ActivityRegularizer/strided_slice/stack_1:output:0;dense_28/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_28/ActivityRegularizer/strided_slice?
!dense_28/ActivityRegularizer/CastCast3dense_28/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_28/ActivityRegularizer/Cast?
$dense_28/ActivityRegularizer/truedivRealDiv$dense_28/ActivityRegularizer/mul:z:0%dense_28/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_28/ActivityRegularizer/truediv?
dense_29/MatMul/ReadVariableOpReadVariableOp'dense_29_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02 
dense_29/MatMul/ReadVariableOp?
dense_29/MatMulMatMul.dense_28/leaky_re_lu_4/LeakyRelu:activations:0&dense_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_29/MatMul?
dense_29/BiasAdd/ReadVariableOpReadVariableOp(dense_29_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_29/BiasAdd/ReadVariableOp?
dense_29/BiasAddBiasAdddense_29/MatMul:product:0'dense_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_29/BiasAdd?
 dense_29/leaky_re_lu_4/LeakyRelu	LeakyReludense_29/BiasAdd:output:0*'
_output_shapes
:?????????*
alpha%???>2"
 dense_29/leaky_re_lu_4/LeakyRelu?
!dense_24/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_24/kernel/Regularizer/Const?
.dense_24/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource*
_output_shapes

:2*
dtype020
.dense_24/kernel/Regularizer/Abs/ReadVariableOp?
dense_24/kernel/Regularizer/AbsAbs6dense_24/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:22!
dense_24/kernel/Regularizer/Abs?
#dense_24/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_24/kernel/Regularizer/Const_1?
dense_24/kernel/Regularizer/SumSum#dense_24/kernel/Regularizer/Abs:y:0,dense_24/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_24/kernel/Regularizer/Sum?
!dense_24/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_24/kernel/Regularizer/mul/x?
dense_24/kernel/Regularizer/mulMul*dense_24/kernel/Regularizer/mul/x:output:0(dense_24/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_24/kernel/Regularizer/mul?
dense_24/kernel/Regularizer/addAddV2*dense_24/kernel/Regularizer/Const:output:0#dense_24/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_24/kernel/Regularizer/add?
1dense_24/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource*
_output_shapes

:2*
dtype023
1dense_24/kernel/Regularizer/Square/ReadVariableOp?
"dense_24/kernel/Regularizer/SquareSquare9dense_24/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:22$
"dense_24/kernel/Regularizer/Square?
#dense_24/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_24/kernel/Regularizer/Const_2?
!dense_24/kernel/Regularizer/Sum_1Sum&dense_24/kernel/Regularizer/Square:y:0,dense_24/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_24/kernel/Regularizer/Sum_1?
#dense_24/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_24/kernel/Regularizer/mul_1/x?
!dense_24/kernel/Regularizer/mul_1Mul,dense_24/kernel/Regularizer/mul_1/x:output:0*dense_24/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_24/kernel/Regularizer/mul_1?
!dense_24/kernel/Regularizer/add_1AddV2#dense_24/kernel/Regularizer/add:z:0%dense_24/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_24/kernel/Regularizer/add_1?
/dense_24/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype021
/dense_24/bias/Regularizer/Square/ReadVariableOp?
 dense_24/bias/Regularizer/SquareSquare7dense_24/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22"
 dense_24/bias/Regularizer/Square?
dense_24/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_24/bias/Regularizer/Const?
dense_24/bias/Regularizer/SumSum$dense_24/bias/Regularizer/Square:y:0(dense_24/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_24/bias/Regularizer/Sum?
dense_24/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_24/bias/Regularizer/mul/x?
dense_24/bias/Regularizer/mulMul(dense_24/bias/Regularizer/mul/x:output:0&dense_24/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_24/bias/Regularizer/mul?
!dense_25/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_25/kernel/Regularizer/Const?
.dense_25/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes

:2d*
dtype020
.dense_25/kernel/Regularizer/Abs/ReadVariableOp?
dense_25/kernel/Regularizer/AbsAbs6dense_25/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:2d2!
dense_25/kernel/Regularizer/Abs?
#dense_25/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_25/kernel/Regularizer/Const_1?
dense_25/kernel/Regularizer/SumSum#dense_25/kernel/Regularizer/Abs:y:0,dense_25/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_25/kernel/Regularizer/Sum?
!dense_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_25/kernel/Regularizer/mul/x?
dense_25/kernel/Regularizer/mulMul*dense_25/kernel/Regularizer/mul/x:output:0(dense_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_25/kernel/Regularizer/mul?
dense_25/kernel/Regularizer/addAddV2*dense_25/kernel/Regularizer/Const:output:0#dense_25/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_25/kernel/Regularizer/add?
1dense_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes

:2d*
dtype023
1dense_25/kernel/Regularizer/Square/ReadVariableOp?
"dense_25/kernel/Regularizer/SquareSquare9dense_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2d2$
"dense_25/kernel/Regularizer/Square?
#dense_25/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_25/kernel/Regularizer/Const_2?
!dense_25/kernel/Regularizer/Sum_1Sum&dense_25/kernel/Regularizer/Square:y:0,dense_25/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_25/kernel/Regularizer/Sum_1?
#dense_25/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_25/kernel/Regularizer/mul_1/x?
!dense_25/kernel/Regularizer/mul_1Mul,dense_25/kernel/Regularizer/mul_1/x:output:0*dense_25/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_25/kernel/Regularizer/mul_1?
!dense_25/kernel/Regularizer/add_1AddV2#dense_25/kernel/Regularizer/add:z:0%dense_25/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_25/kernel/Regularizer/add_1?
/dense_25/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_25/bias/Regularizer/Square/ReadVariableOp?
 dense_25/bias/Regularizer/SquareSquare7dense_25/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_25/bias/Regularizer/Square?
dense_25/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_25/bias/Regularizer/Const?
dense_25/bias/Regularizer/SumSum$dense_25/bias/Regularizer/Square:y:0(dense_25/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_25/bias/Regularizer/Sum?
dense_25/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_25/bias/Regularizer/mul/x?
dense_25/bias/Regularizer/mulMul(dense_25/bias/Regularizer/mul/x:output:0&dense_25/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_25/bias/Regularizer/mul?
!dense_26/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_26/kernel/Regularizer/Const?
.dense_26/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype020
.dense_26/kernel/Regularizer/Abs/ReadVariableOp?
dense_26/kernel/Regularizer/AbsAbs6dense_26/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	d?2!
dense_26/kernel/Regularizer/Abs?
#dense_26/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_26/kernel/Regularizer/Const_1?
dense_26/kernel/Regularizer/SumSum#dense_26/kernel/Regularizer/Abs:y:0,dense_26/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_26/kernel/Regularizer/Sum?
!dense_26/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_26/kernel/Regularizer/mul/x?
dense_26/kernel/Regularizer/mulMul*dense_26/kernel/Regularizer/mul/x:output:0(dense_26/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_26/kernel/Regularizer/mul?
dense_26/kernel/Regularizer/addAddV2*dense_26/kernel/Regularizer/Const:output:0#dense_26/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_26/kernel/Regularizer/add?
1dense_26/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype023
1dense_26/kernel/Regularizer/Square/ReadVariableOp?
"dense_26/kernel/Regularizer/SquareSquare9dense_26/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	d?2$
"dense_26/kernel/Regularizer/Square?
#dense_26/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_26/kernel/Regularizer/Const_2?
!dense_26/kernel/Regularizer/Sum_1Sum&dense_26/kernel/Regularizer/Square:y:0,dense_26/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_26/kernel/Regularizer/Sum_1?
#dense_26/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_26/kernel/Regularizer/mul_1/x?
!dense_26/kernel/Regularizer/mul_1Mul,dense_26/kernel/Regularizer/mul_1/x:output:0*dense_26/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_26/kernel/Regularizer/mul_1?
!dense_26/kernel/Regularizer/add_1AddV2#dense_26/kernel/Regularizer/add:z:0%dense_26/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_26/kernel/Regularizer/add_1?
/dense_26/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype021
/dense_26/bias/Regularizer/Square/ReadVariableOp?
 dense_26/bias/Regularizer/SquareSquare7dense_26/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2"
 dense_26/bias/Regularizer/Square?
dense_26/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_26/bias/Regularizer/Const?
dense_26/bias/Regularizer/SumSum$dense_26/bias/Regularizer/Square:y:0(dense_26/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_26/bias/Regularizer/Sum?
dense_26/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_26/bias/Regularizer/mul/x?
dense_26/bias/Regularizer/mulMul(dense_26/bias/Regularizer/mul/x:output:0&dense_26/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_26/bias/Regularizer/mul?
!dense_27/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_27/kernel/Regularizer/Const?
.dense_27/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype020
.dense_27/kernel/Regularizer/Abs/ReadVariableOp?
dense_27/kernel/Regularizer/AbsAbs6dense_27/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?d2!
dense_27/kernel/Regularizer/Abs?
#dense_27/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_27/kernel/Regularizer/Const_1?
dense_27/kernel/Regularizer/SumSum#dense_27/kernel/Regularizer/Abs:y:0,dense_27/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_27/kernel/Regularizer/Sum?
!dense_27/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_27/kernel/Regularizer/mul/x?
dense_27/kernel/Regularizer/mulMul*dense_27/kernel/Regularizer/mul/x:output:0(dense_27/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_27/kernel/Regularizer/mul?
dense_27/kernel/Regularizer/addAddV2*dense_27/kernel/Regularizer/Const:output:0#dense_27/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_27/kernel/Regularizer/add?
1dense_27/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype023
1dense_27/kernel/Regularizer/Square/ReadVariableOp?
"dense_27/kernel/Regularizer/SquareSquare9dense_27/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?d2$
"dense_27/kernel/Regularizer/Square?
#dense_27/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_27/kernel/Regularizer/Const_2?
!dense_27/kernel/Regularizer/Sum_1Sum&dense_27/kernel/Regularizer/Square:y:0,dense_27/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_27/kernel/Regularizer/Sum_1?
#dense_27/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_27/kernel/Regularizer/mul_1/x?
!dense_27/kernel/Regularizer/mul_1Mul,dense_27/kernel/Regularizer/mul_1/x:output:0*dense_27/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_27/kernel/Regularizer/mul_1?
!dense_27/kernel/Regularizer/add_1AddV2#dense_27/kernel/Regularizer/add:z:0%dense_27/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_27/kernel/Regularizer/add_1?
/dense_27/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_27/bias/Regularizer/Square/ReadVariableOp?
 dense_27/bias/Regularizer/SquareSquare7dense_27/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_27/bias/Regularizer/Square?
dense_27/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_27/bias/Regularizer/Const?
dense_27/bias/Regularizer/SumSum$dense_27/bias/Regularizer/Square:y:0(dense_27/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_27/bias/Regularizer/Sum?
dense_27/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_27/bias/Regularizer/mul/x?
dense_27/bias/Regularizer/mulMul(dense_27/bias/Regularizer/mul/x:output:0&dense_27/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_27/bias/Regularizer/mul?
!dense_28/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_28/kernel/Regularizer/Const?
.dense_28/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'dense_28_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype020
.dense_28/kernel/Regularizer/Abs/ReadVariableOp?
dense_28/kernel/Regularizer/AbsAbs6dense_28/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:d22!
dense_28/kernel/Regularizer/Abs?
#dense_28/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_28/kernel/Regularizer/Const_1?
dense_28/kernel/Regularizer/SumSum#dense_28/kernel/Regularizer/Abs:y:0,dense_28/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: 2!
dense_28/kernel/Regularizer/Sum?
!dense_28/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_28/kernel/Regularizer/mul/x?
dense_28/kernel/Regularizer/mulMul*dense_28/kernel/Regularizer/mul/x:output:0(dense_28/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_28/kernel/Regularizer/mul?
dense_28/kernel/Regularizer/addAddV2*dense_28/kernel/Regularizer/Const:output:0#dense_28/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2!
dense_28/kernel/Regularizer/add?
1dense_28/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_28_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype023
1dense_28/kernel/Regularizer/Square/ReadVariableOp?
"dense_28/kernel/Regularizer/SquareSquare9dense_28/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d22$
"dense_28/kernel/Regularizer/Square?
#dense_28/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_28/kernel/Regularizer/Const_2?
!dense_28/kernel/Regularizer/Sum_1Sum&dense_28/kernel/Regularizer/Square:y:0,dense_28/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: 2#
!dense_28/kernel/Regularizer/Sum_1?
#dense_28/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#dense_28/kernel/Regularizer/mul_1/x?
!dense_28/kernel/Regularizer/mul_1Mul,dense_28/kernel/Regularizer/mul_1/x:output:0*dense_28/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: 2#
!dense_28/kernel/Regularizer/mul_1?
!dense_28/kernel/Regularizer/add_1AddV2#dense_28/kernel/Regularizer/add:z:0%dense_28/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: 2#
!dense_28/kernel/Regularizer/add_1?
/dense_28/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype021
/dense_28/bias/Regularizer/Square/ReadVariableOp?
 dense_28/bias/Regularizer/SquareSquare7dense_28/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22"
 dense_28/bias/Regularizer/Square?
dense_28/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_28/bias/Regularizer/Const?
dense_28/bias/Regularizer/SumSum$dense_28/bias/Regularizer/Square:y:0(dense_28/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/Sum?
dense_28/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_28/bias/Regularizer/mul/x?
dense_28/bias/Regularizer/mulMul(dense_28/bias/Regularizer/mul/x:output:0&dense_28/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/mul?
IdentityIdentity.dense_29/leaky_re_lu_4/LeakyRelu:activations:0&^batch_normalization_4/AssignMovingAvg5^batch_normalization_4/AssignMovingAvg/ReadVariableOp(^batch_normalization_4/AssignMovingAvg_17^batch_normalization_4/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_4/batchnorm/ReadVariableOp3^batch_normalization_4/batchnorm/mul/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity(dense_24/ActivityRegularizer/truediv:z:0&^batch_normalization_4/AssignMovingAvg5^batch_normalization_4/AssignMovingAvg/ReadVariableOp(^batch_normalization_4/AssignMovingAvg_17^batch_normalization_4/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_4/batchnorm/ReadVariableOp3^batch_normalization_4/batchnorm/mul/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity(dense_25/ActivityRegularizer/truediv:z:0&^batch_normalization_4/AssignMovingAvg5^batch_normalization_4/AssignMovingAvg/ReadVariableOp(^batch_normalization_4/AssignMovingAvg_17^batch_normalization_4/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_4/batchnorm/ReadVariableOp3^batch_normalization_4/batchnorm/mul/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity(dense_26/ActivityRegularizer/truediv:z:0&^batch_normalization_4/AssignMovingAvg5^batch_normalization_4/AssignMovingAvg/ReadVariableOp(^batch_normalization_4/AssignMovingAvg_17^batch_normalization_4/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_4/batchnorm/ReadVariableOp3^batch_normalization_4/batchnorm/mul/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3?

Identity_4Identity(dense_27/ActivityRegularizer/truediv:z:0&^batch_normalization_4/AssignMovingAvg5^batch_normalization_4/AssignMovingAvg/ReadVariableOp(^batch_normalization_4/AssignMovingAvg_17^batch_normalization_4/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_4/batchnorm/ReadVariableOp3^batch_normalization_4/batchnorm/mul/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_4?

Identity_5Identity(dense_28/ActivityRegularizer/truediv:z:0&^batch_normalization_4/AssignMovingAvg5^batch_normalization_4/AssignMovingAvg/ReadVariableOp(^batch_normalization_4/AssignMovingAvg_17^batch_normalization_4/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_4/batchnorm/ReadVariableOp3^batch_normalization_4/batchnorm/mul/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp0^dense_24/bias/Regularizer/Square/ReadVariableOp/^dense_24/kernel/Regularizer/Abs/ReadVariableOp2^dense_24/kernel/Regularizer/Square/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp0^dense_25/bias/Regularizer/Square/ReadVariableOp/^dense_25/kernel/Regularizer/Abs/ReadVariableOp2^dense_25/kernel/Regularizer/Square/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp0^dense_26/bias/Regularizer/Square/ReadVariableOp/^dense_26/kernel/Regularizer/Abs/ReadVariableOp2^dense_26/kernel/Regularizer/Square/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp0^dense_27/bias/Regularizer/Square/ReadVariableOp/^dense_27/kernel/Regularizer/Abs/ReadVariableOp2^dense_27/kernel/Regularizer/Square/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp0^dense_28/bias/Regularizer/Square/ReadVariableOp/^dense_28/kernel/Regularizer/Abs/ReadVariableOp2^dense_28/kernel/Regularizer/Square/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : : : : : : : 2N
%batch_normalization_4/AssignMovingAvg%batch_normalization_4/AssignMovingAvg2l
4batch_normalization_4/AssignMovingAvg/ReadVariableOp4batch_normalization_4/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_4/AssignMovingAvg_1'batch_normalization_4/AssignMovingAvg_12p
6batch_normalization_4/AssignMovingAvg_1/ReadVariableOp6batch_normalization_4/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_4/batchnorm/ReadVariableOp.batch_normalization_4/batchnorm/ReadVariableOp2h
2batch_normalization_4/batchnorm/mul/ReadVariableOp2batch_normalization_4/batchnorm/mul/ReadVariableOp2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp2b
/dense_24/bias/Regularizer/Square/ReadVariableOp/dense_24/bias/Regularizer/Square/ReadVariableOp2`
.dense_24/kernel/Regularizer/Abs/ReadVariableOp.dense_24/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_24/kernel/Regularizer/Square/ReadVariableOp1dense_24/kernel/Regularizer/Square/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp2b
/dense_25/bias/Regularizer/Square/ReadVariableOp/dense_25/bias/Regularizer/Square/ReadVariableOp2`
.dense_25/kernel/Regularizer/Abs/ReadVariableOp.dense_25/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_25/kernel/Regularizer/Square/ReadVariableOp1dense_25/kernel/Regularizer/Square/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2b
/dense_26/bias/Regularizer/Square/ReadVariableOp/dense_26/bias/Regularizer/Square/ReadVariableOp2`
.dense_26/kernel/Regularizer/Abs/ReadVariableOp.dense_26/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_26/kernel/Regularizer/Square/ReadVariableOp1dense_26/kernel/Regularizer/Square/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp2b
/dense_27/bias/Regularizer/Square/ReadVariableOp/dense_27/bias/Regularizer/Square/ReadVariableOp2`
.dense_27/kernel/Regularizer/Abs/ReadVariableOp.dense_27/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_27/kernel/Regularizer/Square/ReadVariableOp1dense_27/kernel/Regularizer/Square/ReadVariableOp2B
dense_28/BiasAdd/ReadVariableOpdense_28/BiasAdd/ReadVariableOp2@
dense_28/MatMul/ReadVariableOpdense_28/MatMul/ReadVariableOp2b
/dense_28/bias/Regularizer/Square/ReadVariableOp/dense_28/bias/Regularizer/Square/ReadVariableOp2`
.dense_28/kernel/Regularizer/Abs/ReadVariableOp.dense_28/kernel/Regularizer/Abs/ReadVariableOp2f
1dense_28/kernel/Regularizer/Square/ReadVariableOp1dense_28/kernel/Regularizer/Square/ReadVariableOp2B
dense_29/BiasAdd/ReadVariableOpdense_29/BiasAdd/ReadVariableOp2@
dense_29/MatMul/ReadVariableOpdense_29/MatMul/ReadVariableOp2P
&normalization_4/Reshape/ReadVariableOp&normalization_4/Reshape/ReadVariableOp2T
(normalization_4/Reshape_1/ReadVariableOp(normalization_4/Reshape_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_3_1012558F
8dense_25_bias_regularizer_square_readvariableop_resource:d
identity??/dense_25/bias/Regularizer/Square/ReadVariableOp?
/dense_25/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_25_bias_regularizer_square_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_25/bias/Regularizer/Square/ReadVariableOp?
 dense_25/bias/Regularizer/SquareSquare7dense_25/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_25/bias/Regularizer/Square?
dense_25/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_25/bias/Regularizer/Const?
dense_25/bias/Regularizer/SumSum$dense_25/bias/Regularizer/Square:y:0(dense_25/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_25/bias/Regularizer/Sum?
dense_25/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_25/bias/Regularizer/mul/x?
dense_25/bias/Regularizer/mulMul(dense_25/bias/Regularizer/mul/x:output:0&dense_25/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_25/bias/Regularizer/mul?
IdentityIdentity!dense_25/bias/Regularizer/mul:z:00^dense_25/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_25/bias/Regularizer/Square/ReadVariableOp/dense_25/bias/Regularizer/Square/ReadVariableOp
?
H
1__inference_dense_27_activity_regularizer_1010127
x
identity@
SquareSquarex*
T0*
_output_shapes
:2
SquareA
RankRank
Square:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:?????????2
rangeN
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
?
?
%__inference_signature_wrapper_1011595
input_5
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:2
	unknown_6:2
	unknown_7:2d
	unknown_8:d
	unknown_9:	d?

unknown_10:	?

unknown_11:	?d

unknown_12:d

unknown_13:d2

unknown_14:2

unknown_15:2

unknown_16:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_10099132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_5
?
?
__inference_loss_fn_9_1012651F
8dense_28_bias_regularizer_square_readvariableop_resource:2
identity??/dense_28/bias/Regularizer/Square/ReadVariableOp?
/dense_28/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_28_bias_regularizer_square_readvariableop_resource*
_output_shapes
:2*
dtype021
/dense_28/bias/Regularizer/Square/ReadVariableOp?
 dense_28/bias/Regularizer/SquareSquare7dense_28/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22"
 dense_28/bias/Regularizer/Square?
dense_28/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_28/bias/Regularizer/Const?
dense_28/bias/Regularizer/SumSum$dense_28/bias/Regularizer/Square:y:0(dense_28/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/Sum?
dense_28/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_28/bias/Regularizer/mul/x?
dense_28/bias/Regularizer/mulMul(dense_28/bias/Regularizer/mul/x:output:0&dense_28/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/mul?
IdentityIdentity!dense_28/bias/Regularizer/mul:z:00^dense_28/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_28/bias/Regularizer/Square/ReadVariableOp/dense_28/bias/Regularizer/Square/ReadVariableOp"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_50
serving_default_input_5:0?????????<
dense_290
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?v
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
	layer_with_weights-7
	layer-8

	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"?q
_tf_keras_network?q{"name": "mapDNN", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "mapDNN", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 11]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_5"}, "name": "input_5", "inbound_nodes": []}, {"class_name": "Normalization", "config": {"name": "normalization_4", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "name": "normalization_4", "inbound_nodes": [[["input_5", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_4", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_4", "inbound_nodes": [[["normalization_4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_24", "trainable": true, "dtype": "float32", "units": 50, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_4", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 7}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0010000000474974513, "l2": 0.009999999776482582}}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_24", "inbound_nodes": [[["batch_normalization_4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_25", "trainable": true, "dtype": "float32", "units": 100, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_4", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 7}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0010000000474974513, "l2": 0.009999999776482582}}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_25", "inbound_nodes": [[["dense_24", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 200, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_4", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 7}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0010000000474974513, "l2": 0.009999999776482582}}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_26", "inbound_nodes": [[["dense_25", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_27", "trainable": true, "dtype": "float32", "units": 100, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_4", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 7}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0010000000474974513, "l2": 0.009999999776482582}}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_27", "inbound_nodes": [[["dense_26", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_28", "trainable": true, "dtype": "float32", "units": 50, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_4", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 7}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0010000000474974513, "l2": 0.009999999776482582}}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_28", "inbound_nodes": [[["dense_27", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_29", "trainable": true, "dtype": "float32", "units": 31, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_4", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 7}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_29", "inbound_nodes": [[["dense_28", 0, 0, {}]]]}], "input_layers": [["input_5", 0, 0]], "output_layers": [["dense_29", 0, 0]]}, "shared_object_id": 41, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 11]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 11]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 11]}, "float32", "input_5"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "mapDNN", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 11]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_5"}, "name": "input_5", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Normalization", "config": {"name": "normalization_4", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "name": "normalization_4", "inbound_nodes": [[["input_5", 0, 0, {}]]], "shared_object_id": 1}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_4", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 3}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_4", "inbound_nodes": [[["normalization_4", 0, 0, {}]]], "shared_object_id": 6}, {"class_name": "Dense", "config": {"name": "dense_24", "trainable": true, "dtype": "float32", "units": 50, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_4", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 7}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0010000000474974513, "l2": 0.009999999776482582}, "shared_object_id": 10}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 11}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 12}, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_24", "inbound_nodes": [[["batch_normalization_4", 0, 0, {}]]], "shared_object_id": 13}, {"class_name": "Dense", "config": {"name": "dense_25", "trainable": true, "dtype": "float32", "units": 100, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_4", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 7}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0010000000474974513, "l2": 0.009999999776482582}, "shared_object_id": 16}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 17}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 18}, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_25", "inbound_nodes": [[["dense_24", 0, 0, {}]]], "shared_object_id": 19}, {"class_name": "Dense", "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 200, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_4", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 7}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0010000000474974513, "l2": 0.009999999776482582}, "shared_object_id": 22}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 23}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 24}, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_26", "inbound_nodes": [[["dense_25", 0, 0, {}]]], "shared_object_id": 25}, {"class_name": "Dense", "config": {"name": "dense_27", "trainable": true, "dtype": "float32", "units": 100, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_4", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 7}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 26}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0010000000474974513, "l2": 0.009999999776482582}, "shared_object_id": 28}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 29}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 30}, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_27", "inbound_nodes": [[["dense_26", 0, 0, {}]]], "shared_object_id": 31}, {"class_name": "Dense", "config": {"name": "dense_28", "trainable": true, "dtype": "float32", "units": 50, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_4", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 7}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 32}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 33}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0010000000474974513, "l2": 0.009999999776482582}, "shared_object_id": 34}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 35}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 36}, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_28", "inbound_nodes": [[["dense_27", 0, 0, {}]]], "shared_object_id": 37}, {"class_name": "Dense", "config": {"name": "dense_29", "trainable": true, "dtype": "float32", "units": 31, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_4", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 7}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 38}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 39}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_29", "inbound_nodes": [[["dense_28", 0, 0, {}]]], "shared_object_id": 40}], "input_layers": [["input_5", 0, 0]], "output_layers": [["dense_29", 0, 0]]}}, "training_config": {"loss": "mae", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "mae", "dtype": "float32", "fn": "mean_absolute_error"}, "shared_object_id": 43}, {"class_name": "MeanMetricWrapper", "config": {"name": "mse", "dtype": "float32", "fn": "mean_squared_error"}, "shared_object_id": 44}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.001, "decay": 0.0, "beta_1": 0.9, "beta_2": 0.999, "epsilon": 1e-07, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_5", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 11]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 11]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_5"}}
?

_keep_axis
_reduce_axis
_reduce_axis_mask
_broadcast_shape
mean
variance
	count
	keras_api
?_adapt_function"?
_tf_keras_layer?{"name": "normalization_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": true, "must_restore_from_config": true, "class_name": "Normalization", "config": {"name": "normalization_4", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "inbound_nodes": [[["input_5", 0, 0, {}]]], "shared_object_id": 1, "build_input_shape": [null, 11]}
?

axis
	gamma
beta
moving_mean
moving_variance
trainable_variables
regularization_losses
	variables
 	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "batch_normalization_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_4", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 3}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["normalization_4", 0, 0, {}]]], "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 11}}, "shared_object_id": 45}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 11]}}
?
!
activation

"kernel
#bias
$trainable_variables
%regularization_losses
&	variables
'	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_24", "trainable": true, "dtype": "float32", "units": 50, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_4", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 7}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0010000000474974513, "l2": 0.009999999776482582}, "shared_object_id": 10}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 11}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 12}, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["batch_normalization_4", 0, 0, {}]]], "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 11}}, "shared_object_id": 46}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 12}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 11]}}
?
!
activation

(kernel
)bias
*trainable_variables
+regularization_losses
,	variables
-	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_25", "trainable": true, "dtype": "float32", "units": 100, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_4", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 7}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0010000000474974513, "l2": 0.009999999776482582}, "shared_object_id": 16}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 17}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 18}, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_24", 0, 0, {}]]], "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 50}}, "shared_object_id": 47}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 18}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50]}}
?
!
activation

.kernel
/bias
0trainable_variables
1regularization_losses
2	variables
3	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 200, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_4", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 7}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0010000000474974513, "l2": 0.009999999776482582}, "shared_object_id": 22}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 23}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 24}, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_25", 0, 0, {}]]], "shared_object_id": 25, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 48}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 24}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
?
!
activation

4kernel
5bias
6trainable_variables
7regularization_losses
8	variables
9	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_27", "trainable": true, "dtype": "float32", "units": 100, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_4", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 7}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 26}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0010000000474974513, "l2": 0.009999999776482582}, "shared_object_id": 28}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 29}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 30}, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_26", 0, 0, {}]]], "shared_object_id": 31, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}, "shared_object_id": 49}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 30}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
?
!
activation

:kernel
;bias
<trainable_variables
=regularization_losses
>	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_28", "trainable": true, "dtype": "float32", "units": 50, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_4", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 7}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 32}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 33}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0010000000474974513, "l2": 0.009999999776482582}, "shared_object_id": 34}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 35}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 36}, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_27", 0, 0, {}]]], "shared_object_id": 37, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 50}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 36}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
?

!
activation

@kernel
Abias
Btrainable_variables
Cregularization_losses
D	variables
E	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_29", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_29", "trainable": true, "dtype": "float32", "units": 31, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_4", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 7}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 38}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 39}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_28", 0, 0, {}]]], "shared_object_id": 40, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 50}}, "shared_object_id": 51}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50]}}
"
	optimizer
?
0
1
"2
#3
(4
)5
.6
/7
48
59
:10
;11
@12
A13"
trackable_list_wrapper
p
?0
?1
?2
?3
?4
?5
?6
?7
?8
?9"
trackable_list_wrapper
?
0
1
2
3
4
5
6
"7
#8
(9
)10
.11
/12
413
514
:15
;16
@17
A18"
trackable_list_wrapper
?
Fnon_trainable_variables
Glayer_regularization_losses
Hmetrics

Ilayers
trainable_variables
regularization_losses
	variables
Jlayer_metrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:2mean
:2variance
:	 2count
"
_generic_user_object
 "
trackable_list_wrapper
):'2batch_normalization_4/gamma
(:&2batch_normalization_4/beta
1:/ (2!batch_normalization_4/moving_mean
5:3 (2%batch_normalization_4/moving_variance
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
?
Knon_trainable_variables
Llayer_regularization_losses
Mmetrics

Nlayers
trainable_variables
regularization_losses
	variables
Olayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
Ptrainable_variables
Qregularization_losses
R	variables
S	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "leaky_re_lu_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_4", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 7}
!:22dense_24/kernel
:22dense_24/bias
.
"0
#1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
?
Tnon_trainable_variables
Ulayer_regularization_losses
Vmetrics

Wlayers
$trainable_variables
%regularization_losses
&	variables
Xlayer_metrics
?__call__
?activity_regularizer_fn
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:2d2dense_25/kernel
:d2dense_25/bias
.
(0
)1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
?
Ynon_trainable_variables
Zlayer_regularization_losses
[metrics

\layers
*trainable_variables
+regularization_losses
,	variables
]layer_metrics
?__call__
?activity_regularizer_fn
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 	d?2dense_26/kernel
:?2dense_26/bias
.
.0
/1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
?
^non_trainable_variables
_layer_regularization_losses
`metrics

alayers
0trainable_variables
1regularization_losses
2	variables
blayer_metrics
?__call__
?activity_regularizer_fn
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 	?d2dense_27/kernel
:d2dense_27/bias
.
40
51"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
?
cnon_trainable_variables
dlayer_regularization_losses
emetrics

flayers
6trainable_variables
7regularization_losses
8	variables
glayer_metrics
?__call__
?activity_regularizer_fn
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:d22dense_28/kernel
:22dense_28/bias
.
:0
;1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
?
hnon_trainable_variables
ilayer_regularization_losses
jmetrics

klayers
<trainable_variables
=regularization_losses
>	variables
llayer_metrics
?__call__
?activity_regularizer_fn
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:22dense_29/kernel
:2dense_29/bias
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
?
mnon_trainable_variables
nlayer_regularization_losses
ometrics

players
Btrainable_variables
Cregularization_losses
D	variables
qlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
5
r0
s1
t2"
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
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
?
unon_trainable_variables
vlayer_regularization_losses
wmetrics

xlayers
Ptrainable_variables
Qregularization_losses
R	variables
ylayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
'
!0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
'
!0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
'
!0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
'
!0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
'
!0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
!0"
trackable_list_wrapper
 "
trackable_dict_wrapper
?
	ztotal
	{count
|	variables
}	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 52}
?
	~total
	count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "mae", "dtype": "float32", "config": {"name": "mae", "dtype": "float32", "fn": "mean_absolute_error"}, "shared_object_id": 43}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "mse", "dtype": "float32", "config": {"name": "mse", "dtype": "float32", "fn": "mean_squared_error"}, "shared_object_id": 44}
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
:  (2total
:  (2count
.
z0
{1"
trackable_list_wrapper
-
|	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
~0
1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
?2?
"__inference__wrapped_model_1009913?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *&?#
!?
input_5?????????
?2?
(__inference_mapDNN_layer_call_fn_1010571
(__inference_mapDNN_layer_call_fn_1011641
(__inference_mapDNN_layer_call_fn_1011687
(__inference_mapDNN_layer_call_fn_1011035?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_mapDNN_layer_call_and_return_conditional_losses_1011932
C__inference_mapDNN_layer_call_and_return_conditional_losses_1012191
C__inference_mapDNN_layer_call_and_return_conditional_losses_1011241
C__inference_mapDNN_layer_call_and_return_conditional_losses_1011447?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
__inference_adapt_step_929186?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
7__inference_batch_normalization_4_layer_call_fn_1012204
7__inference_batch_normalization_4_layer_call_fn_1012217?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1012237
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1012271?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_dense_24_layer_call_fn_1012301?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_dense_24_layer_call_and_return_all_conditional_losses_1012312?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_25_layer_call_fn_1012342?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_dense_25_layer_call_and_return_all_conditional_losses_1012353?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_26_layer_call_fn_1012383?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_dense_26_layer_call_and_return_all_conditional_losses_1012394?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_27_layer_call_fn_1012424?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_dense_27_layer_call_and_return_all_conditional_losses_1012435?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_28_layer_call_fn_1012465?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_dense_28_layer_call_and_return_all_conditional_losses_1012476?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_29_layer_call_fn_1012485?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_29_layer_call_and_return_conditional_losses_1012496?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_loss_fn_0_1012516?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_1_1012527?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_2_1012547?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_3_1012558?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_4_1012578?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_5_1012589?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_6_1012609?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_7_1012620?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_8_1012640?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_9_1012651?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
%__inference_signature_wrapper_1011595input_5"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_dense_24_activity_regularizer_1010088?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
?2?
E__inference_dense_24_layer_call_and_return_conditional_losses_1012683?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_dense_25_activity_regularizer_1010101?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
?2?
E__inference_dense_25_layer_call_and_return_conditional_losses_1012715?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_dense_26_activity_regularizer_1010114?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
?2?
E__inference_dense_26_layer_call_and_return_conditional_losses_1012747?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_dense_27_activity_regularizer_1010127?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
?2?
E__inference_dense_27_layer_call_and_return_conditional_losses_1012779?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_dense_28_activity_regularizer_1010140?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
?2?
E__inference_dense_28_layer_call_and_return_conditional_losses_1012811?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
"__inference__wrapped_model_1009913{"#()./45:;@A0?-
&?#
!?
input_5?????????
? "3?0
.
dense_29"?
dense_29?????????m
__inference_adapt_step_929186LA?>
7?4
2?/?
??????????IteratorSpec
? "
 ?
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1012237b3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ?
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1012271b3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? ?
7__inference_batch_normalization_4_layer_call_fn_1012204U3?0
)?&
 ?
inputs?????????
p 
? "???????????
7__inference_batch_normalization_4_layer_call_fn_1012217U3?0
)?&
 ?
inputs?????????
p
? "??????????[
1__inference_dense_24_activity_regularizer_1010088&?
?
?	
x
? "? ?
I__inference_dense_24_layer_call_and_return_all_conditional_losses_1012312j"#/?,
%?"
 ?
inputs?????????
? "3?0
?
0?????????2
?
?	
1/0 ?
E__inference_dense_24_layer_call_and_return_conditional_losses_1012683\"#/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????2
? }
*__inference_dense_24_layer_call_fn_1012301O"#/?,
%?"
 ?
inputs?????????
? "??????????2[
1__inference_dense_25_activity_regularizer_1010101&?
?
?	
x
? "? ?
I__inference_dense_25_layer_call_and_return_all_conditional_losses_1012353j()/?,
%?"
 ?
inputs?????????2
? "3?0
?
0?????????d
?
?	
1/0 ?
E__inference_dense_25_layer_call_and_return_conditional_losses_1012715\()/?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????d
? }
*__inference_dense_25_layer_call_fn_1012342O()/?,
%?"
 ?
inputs?????????2
? "??????????d[
1__inference_dense_26_activity_regularizer_1010114&?
?
?	
x
? "? ?
I__inference_dense_26_layer_call_and_return_all_conditional_losses_1012394k.//?,
%?"
 ?
inputs?????????d
? "4?1
?
0??????????
?
?	
1/0 ?
E__inference_dense_26_layer_call_and_return_conditional_losses_1012747].//?,
%?"
 ?
inputs?????????d
? "&?#
?
0??????????
? ~
*__inference_dense_26_layer_call_fn_1012383P.//?,
%?"
 ?
inputs?????????d
? "???????????[
1__inference_dense_27_activity_regularizer_1010127&?
?
?	
x
? "? ?
I__inference_dense_27_layer_call_and_return_all_conditional_losses_1012435k450?-
&?#
!?
inputs??????????
? "3?0
?
0?????????d
?
?	
1/0 ?
E__inference_dense_27_layer_call_and_return_conditional_losses_1012779]450?-
&?#
!?
inputs??????????
? "%?"
?
0?????????d
? ~
*__inference_dense_27_layer_call_fn_1012424P450?-
&?#
!?
inputs??????????
? "??????????d[
1__inference_dense_28_activity_regularizer_1010140&?
?
?	
x
? "? ?
I__inference_dense_28_layer_call_and_return_all_conditional_losses_1012476j:;/?,
%?"
 ?
inputs?????????d
? "3?0
?
0?????????2
?
?	
1/0 ?
E__inference_dense_28_layer_call_and_return_conditional_losses_1012811\:;/?,
%?"
 ?
inputs?????????d
? "%?"
?
0?????????2
? }
*__inference_dense_28_layer_call_fn_1012465O:;/?,
%?"
 ?
inputs?????????d
? "??????????2?
E__inference_dense_29_layer_call_and_return_conditional_losses_1012496\@A/?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????
? }
*__inference_dense_29_layer_call_fn_1012485O@A/?,
%?"
 ?
inputs?????????2
? "??????????<
__inference_loss_fn_0_1012516"?

? 
? "? <
__inference_loss_fn_1_1012527#?

? 
? "? <
__inference_loss_fn_2_1012547(?

? 
? "? <
__inference_loss_fn_3_1012558)?

? 
? "? <
__inference_loss_fn_4_1012578.?

? 
? "? <
__inference_loss_fn_5_1012589/?

? 
? "? <
__inference_loss_fn_6_10126094?

? 
? "? <
__inference_loss_fn_7_10126205?

? 
? "? <
__inference_loss_fn_8_1012640:?

? 
? "? <
__inference_loss_fn_9_1012651;?

? 
? "? ?
C__inference_mapDNN_layer_call_and_return_conditional_losses_1011241?"#()./45:;@A8?5
.?+
!?
input_5?????????
p 

 
? "k?h
?
0?????????
I?F
?	
1/0 
?	
1/1 
?	
1/2 
?	
1/3 
?	
1/4 ?
C__inference_mapDNN_layer_call_and_return_conditional_losses_1011447?"#()./45:;@A8?5
.?+
!?
input_5?????????
p

 
? "k?h
?
0?????????
I?F
?	
1/0 
?	
1/1 
?	
1/2 
?	
1/3 
?	
1/4 ?
C__inference_mapDNN_layer_call_and_return_conditional_losses_1011932?"#()./45:;@A7?4
-?*
 ?
inputs?????????
p 

 
? "k?h
?
0?????????
I?F
?	
1/0 
?	
1/1 
?	
1/2 
?	
1/3 
?	
1/4 ?
C__inference_mapDNN_layer_call_and_return_conditional_losses_1012191?"#()./45:;@A7?4
-?*
 ?
inputs?????????
p

 
? "k?h
?
0?????????
I?F
?	
1/0 
?	
1/1 
?	
1/2 
?	
1/3 
?	
1/4 ?
(__inference_mapDNN_layer_call_fn_1010571h"#()./45:;@A8?5
.?+
!?
input_5?????????
p 

 
? "???????????
(__inference_mapDNN_layer_call_fn_1011035h"#()./45:;@A8?5
.?+
!?
input_5?????????
p

 
? "???????????
(__inference_mapDNN_layer_call_fn_1011641g"#()./45:;@A7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
(__inference_mapDNN_layer_call_fn_1011687g"#()./45:;@A7?4
-?*
 ?
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1011595?"#()./45:;@A;?8
? 
1?.
,
input_5!?
input_5?????????"3?0
.
dense_29"?
dense_29?????????