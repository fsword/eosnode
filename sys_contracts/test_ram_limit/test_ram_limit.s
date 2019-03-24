	.text
	.file	"test_ram_limit.bc"
	.hidden	_ZeqRK11checksum256S1_
	.globl	_ZeqRK11checksum256S1_
	.type	_ZeqRK11checksum256S1_,@function
_ZeqRK11checksum256S1_:
	.param  	i32, i32
	.result 	i32
	i32.const	$push0=, 32
	i32.call	$push1=, memcmp@FUNCTION, $0, $1, $pop0
	i32.eqz 	$push2=, $pop1
	.endfunc
.Lfunc_end0:
	.size	_ZeqRK11checksum256S1_, .Lfunc_end0-_ZeqRK11checksum256S1_

	.hidden	_ZeqRK11checksum160S1_
	.globl	_ZeqRK11checksum160S1_
	.type	_ZeqRK11checksum160S1_,@function
_ZeqRK11checksum160S1_:
	.param  	i32, i32
	.result 	i32
	i32.const	$push0=, 32
	i32.call	$push1=, memcmp@FUNCTION, $0, $1, $pop0
	i32.eqz 	$push2=, $pop1
	.endfunc
.Lfunc_end1:
	.size	_ZeqRK11checksum160S1_, .Lfunc_end1-_ZeqRK11checksum160S1_

	.hidden	_ZneRK11checksum160S1_
	.globl	_ZneRK11checksum160S1_
	.type	_ZneRK11checksum160S1_,@function
_ZneRK11checksum160S1_:
	.param  	i32, i32
	.result 	i32
	i32.const	$push0=, 32
	i32.call	$push1=, memcmp@FUNCTION, $0, $1, $pop0
	i32.const	$push2=, 0
	i32.ne  	$push3=, $pop1, $pop2
	.endfunc
.Lfunc_end2:
	.size	_ZneRK11checksum160S1_, .Lfunc_end2-_ZneRK11checksum160S1_

	.hidden	now
	.globl	now
	.type	now,@function
now:
	.result 	i32
	i64.call	$push1=, current_time@FUNCTION
	i64.const	$push0=, 1000000
	i64.div_u	$push2=, $pop1, $pop0
	i32.wrap/i64	$push3=, $pop2
	.endfunc
.Lfunc_end3:
	.size	now, .Lfunc_end3-now

	.hidden	_ZN5eosio12require_authERKNS_16permission_levelE
	.globl	_ZN5eosio12require_authERKNS_16permission_levelE
	.type	_ZN5eosio12require_authERKNS_16permission_levelE,@function
_ZN5eosio12require_authERKNS_16permission_levelE:
	.param  	i32
	i64.load	$push1=, 0($0)
	i64.load	$push0=, 8($0)
	call    	require_auth2@FUNCTION, $pop1, $pop0
	.endfunc
.Lfunc_end4:
	.size	_ZN5eosio12require_authERKNS_16permission_levelE, .Lfunc_end4-_ZN5eosio12require_authERKNS_16permission_levelE

	.hidden	apply
	.globl	apply
	.type	apply,@function
apply:
	.param  	i64, i64, i64
	.local  	i32, i32, i64, i64, i64, i64, i32
	i32.const	$push66=, 0
	i32.const	$push63=, 0
	i32.load	$push64=, __stack_pointer($pop63)
	i32.const	$push65=, 64
	i32.sub 	$push81=, $pop64, $pop65
	tee_local	$push80=, $9=, $pop81
	i32.store	__stack_pointer($pop66), $pop80
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str
	i64.const	$7=, 0
.LBB5_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push82=, 6
	i64.gt_u	$push0=, $6, $pop82
	br_if   	0, $pop0
	i32.load8_s	$push87=, 0($4)
	tee_local	$push86=, $3=, $pop87
	i32.const	$push85=, -97
	i32.add 	$push2=, $pop86, $pop85
	i32.const	$push84=, 255
	i32.and 	$push3=, $pop2, $pop84
	i32.const	$push83=, 25
	i32.gt_u	$push4=, $pop3, $pop83
	br_if   	1, $pop4
	i32.const	$push88=, 165
	i32.add 	$3=, $3, $pop88
	br      	2
.LBB5_4:
	end_block
	i64.const	$8=, 0
	i64.const	$push89=, 11
	i64.le_u	$push1=, $6, $pop89
	br_if   	2, $pop1
	br      	3
.LBB5_5:
	end_block
	i32.const	$push94=, 208
	i32.add 	$push5=, $3, $pop94
	i32.const	$push93=, 0
	i32.const	$push92=, -49
	i32.add 	$push6=, $3, $pop92
	i32.const	$push91=, 255
	i32.and 	$push7=, $pop6, $pop91
	i32.const	$push90=, 5
	i32.lt_u	$push8=, $pop7, $pop90
	i32.select	$3=, $pop5, $pop93, $pop8
.LBB5_6:
	end_block
	i64.extend_u/i32	$push9=, $3
	i64.const	$push96=, 56
	i64.shl 	$push10=, $pop9, $pop96
	i64.const	$push95=, 56
	i64.shr_s	$8=, $pop10, $pop95
.LBB5_7:
	end_block
	i64.const	$push98=, 31
	i64.and 	$push12=, $8, $pop98
	i64.const	$push97=, 4294967295
	i64.and 	$push11=, $5, $pop97
	i64.shl 	$8=, $pop12, $pop11
.LBB5_8:
	end_block
	i32.const	$push104=, 1
	i32.add 	$4=, $4, $pop104
	i64.const	$push103=, 1
	i64.add 	$6=, $6, $pop103
	i64.or  	$7=, $8, $7
	i64.const	$push102=, -5
	i64.add 	$push101=, $5, $pop102
	tee_local	$push100=, $5=, $pop101
	i64.const	$push99=, -6
	i64.ne  	$push13=, $pop100, $pop99
	br_if   	0, $pop13
	end_loop
	block   	
	i64.ne  	$push14=, $7, $2
	br_if   	0, $pop14
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.1
	i64.const	$7=, 0
.LBB5_11:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push105=, 4
	i64.gt_u	$push15=, $6, $pop105
	br_if   	0, $pop15
	i32.load8_s	$push110=, 0($4)
	tee_local	$push109=, $3=, $pop110
	i32.const	$push108=, -97
	i32.add 	$push17=, $pop109, $pop108
	i32.const	$push107=, 255
	i32.and 	$push18=, $pop17, $pop107
	i32.const	$push106=, 25
	i32.gt_u	$push19=, $pop18, $pop106
	br_if   	1, $pop19
	i32.const	$push111=, 165
	i32.add 	$3=, $3, $pop111
	br      	2
.LBB5_14:
	end_block
	i64.const	$8=, 0
	i64.const	$push112=, 11
	i64.le_u	$push16=, $6, $pop112
	br_if   	2, $pop16
	br      	3
.LBB5_15:
	end_block
	i32.const	$push117=, 208
	i32.add 	$push20=, $3, $pop117
	i32.const	$push116=, 0
	i32.const	$push115=, -49
	i32.add 	$push21=, $3, $pop115
	i32.const	$push114=, 255
	i32.and 	$push22=, $pop21, $pop114
	i32.const	$push113=, 5
	i32.lt_u	$push23=, $pop22, $pop113
	i32.select	$3=, $pop20, $pop116, $pop23
.LBB5_16:
	end_block
	i64.extend_u/i32	$push24=, $3
	i64.const	$push119=, 56
	i64.shl 	$push25=, $pop24, $pop119
	i64.const	$push118=, 56
	i64.shr_s	$8=, $pop25, $pop118
.LBB5_17:
	end_block
	i64.const	$push121=, 31
	i64.and 	$push27=, $8, $pop121
	i64.const	$push120=, 4294967295
	i64.and 	$push26=, $5, $pop120
	i64.shl 	$8=, $pop27, $pop26
.LBB5_18:
	end_block
	i32.const	$push127=, 1
	i32.add 	$4=, $4, $pop127
	i64.const	$push126=, 1
	i64.add 	$6=, $6, $pop126
	i64.or  	$7=, $8, $7
	i64.const	$push125=, -5
	i64.add 	$push124=, $5, $pop125
	tee_local	$push123=, $5=, $pop124
	i64.const	$push122=, -6
	i64.ne  	$push28=, $pop123, $pop122
	br_if   	0, $pop28
	end_loop
	i64.eq  	$push29=, $7, $1
	i32.const	$push30=, .L.str.2
	call    	eosio_assert@FUNCTION, $pop29, $pop30
.LBB5_20:
	end_block
	block   	
	block   	
	i64.eq  	$push31=, $1, $0
	br_if   	0, $pop31
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str
	i64.const	$7=, 0
.LBB5_22:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push128=, 6
	i64.gt_u	$push32=, $6, $pop128
	br_if   	0, $pop32
	i32.load8_s	$push133=, 0($4)
	tee_local	$push132=, $3=, $pop133
	i32.const	$push131=, -97
	i32.add 	$push34=, $pop132, $pop131
	i32.const	$push130=, 255
	i32.and 	$push35=, $pop34, $pop130
	i32.const	$push129=, 25
	i32.gt_u	$push36=, $pop35, $pop129
	br_if   	1, $pop36
	i32.const	$push134=, 165
	i32.add 	$3=, $3, $pop134
	br      	2
.LBB5_25:
	end_block
	i64.const	$8=, 0
	i64.const	$push135=, 11
	i64.le_u	$push33=, $6, $pop135
	br_if   	2, $pop33
	br      	3
.LBB5_26:
	end_block
	i32.const	$push140=, 208
	i32.add 	$push37=, $3, $pop140
	i32.const	$push139=, 0
	i32.const	$push138=, -49
	i32.add 	$push38=, $3, $pop138
	i32.const	$push137=, 255
	i32.and 	$push39=, $pop38, $pop137
	i32.const	$push136=, 5
	i32.lt_u	$push40=, $pop39, $pop136
	i32.select	$3=, $pop37, $pop139, $pop40
.LBB5_27:
	end_block
	i64.extend_u/i32	$push41=, $3
	i64.const	$push142=, 56
	i64.shl 	$push42=, $pop41, $pop142
	i64.const	$push141=, 56
	i64.shr_s	$8=, $pop42, $pop141
.LBB5_28:
	end_block
	i64.const	$push144=, 31
	i64.and 	$push44=, $8, $pop144
	i64.const	$push143=, 4294967295
	i64.and 	$push43=, $5, $pop143
	i64.shl 	$8=, $pop44, $pop43
.LBB5_29:
	end_block
	i32.const	$push150=, 1
	i32.add 	$4=, $4, $pop150
	i64.const	$push149=, 1
	i64.add 	$6=, $6, $pop149
	i64.or  	$7=, $8, $7
	i64.const	$push148=, -5
	i64.add 	$push147=, $5, $pop148
	tee_local	$push146=, $5=, $pop147
	i64.const	$push145=, -6
	i64.ne  	$push45=, $pop146, $pop145
	br_if   	0, $pop45
	end_loop
	i64.ne  	$push46=, $7, $2
	br_if   	1, $pop46
.LBB5_31:
	end_block
	i32.const	$push47=, 300
	i32.store	56($9), $pop47
	i64.store	48($9), $0
	block   	
	block   	
	i64.const	$push48=, -5918507632410263552
	i64.eq  	$push49=, $2, $pop48
	br_if   	0, $pop49
	i64.const	$push50=, -4857909691352612864
	i64.eq  	$push51=, $2, $pop50
	br_if   	1, $pop51
	i64.const	$push52=, -4417281474928050176
	i64.ne  	$push53=, $2, $pop52
	br_if   	2, $pop53
	i32.const	$push60=, 0
	i32.store	44($9), $pop60
	i32.const	$push61=, _ZN14test_ram_limit8setentryEyyyy@FUNCTION
	i32.store	40($9), $pop61
	i64.load	$push62=, 40($9)
	i64.store	0($9):p2align=2, $pop62
	i32.const	$push78=, 48
	i32.add 	$push79=, $9, $pop78
	i32.call	$drop=, _ZN5eosio14execute_actionI14test_ram_limitS1_JyyyyEEEbPT_MT0_FvDpT1_E@FUNCTION, $pop79, $9
	br      	2
.LBB5_35:
	end_block
	i32.const	$push54=, 0
	i32.store	28($9), $pop54
	i32.const	$push55=, _ZN14test_ram_limit10printentryEyy@FUNCTION
	i32.store	24($9), $pop55
	i64.load	$push56=, 24($9)
	i64.store	16($9):p2align=2, $pop56
	i32.const	$push70=, 48
	i32.add 	$push71=, $9, $pop70
	i32.const	$push72=, 16
	i32.add 	$push73=, $9, $pop72
	i32.call	$drop=, _ZN5eosio14execute_actionI14test_ram_limitS1_JyyEEEbPT_MT0_FvDpT1_E@FUNCTION, $pop71, $pop73
	br      	1
.LBB5_36:
	end_block
	i32.const	$push57=, 0
	i32.store	36($9), $pop57
	i32.const	$push58=, _ZN14test_ram_limit7rmentryEyy@FUNCTION
	i32.store	32($9), $pop58
	i64.load	$push59=, 32($9)
	i64.store	8($9):p2align=2, $pop59
	i32.const	$push74=, 48
	i32.add 	$push75=, $9, $pop74
	i32.const	$push76=, 8
	i32.add 	$push77=, $9, $pop76
	i32.call	$drop=, _ZN5eosio14execute_actionI14test_ram_limitS1_JyyEEEbPT_MT0_FvDpT1_E@FUNCTION, $pop75, $pop77
.LBB5_37:
	end_block
	i32.const	$push69=, 0
	i32.const	$push67=, 64
	i32.add 	$push68=, $9, $pop67
	i32.store	__stack_pointer($pop69), $pop68
	.endfunc
.Lfunc_end5:
	.size	apply, .Lfunc_end5-apply

	.section	.text._ZN14test_ram_limit8setentryEyyyy,"axG",@progbits,_ZN14test_ram_limit8setentryEyyyy,comdat
	.hidden	_ZN14test_ram_limit8setentryEyyyy
	.weak	_ZN14test_ram_limit8setentryEyyyy
	.type	_ZN14test_ram_limit8setentryEyyyy,@function
_ZN14test_ram_limit8setentryEyyyy:
	.param  	i32, i64, i64, i64, i64
	.local  	i32, i32, i32, i32, i32, i32, i64, i32, i32, i32
	i32.const	$push38=, 0
	i32.const	$push35=, 0
	i32.load	$push36=, __stack_pointer($pop35)
	i32.const	$push37=, 64
	i32.sub 	$push65=, $pop36, $pop37
	tee_local	$push64=, $13=, $pop65
	i32.store	__stack_pointer($pop38), $pop64
	i64.load	$11=, 0($0)
	i32.const	$push0=, .L.str.3
	call    	prints@FUNCTION, $pop0
	call    	printn@FUNCTION, $11
	i32.const	$push1=, .L.str.4
	call    	prints@FUNCTION, $pop1
	i32.const	$push2=, 56
	i32.add 	$push3=, $13, $pop2
	i32.const	$push63=, 0
	i32.store	0($pop3), $pop63
	i64.store	32($13), $11
	i64.store	24($13), $11
	i64.const	$push4=, -1
	i64.store	40($13), $pop4
	i64.const	$push5=, 0
	i64.store	48($13), $pop5
	block   	
	block   	
	i64.const	$push6=, 32
	i64.shl 	$push7=, $2, $pop6
	i64.const	$push62=, 32
	i64.shr_s	$push61=, $pop7, $pop62
	tee_local	$push60=, $11=, $pop61
	i64.gt_u	$push8=, $pop60, $3
	br_if   	0, $pop8
	i32.const	$push42=, 24
	i32.add 	$push43=, $13, $pop42
	i32.const	$push68=, 8
	i32.add 	$7=, $pop43, $pop68
	i32.const	$push27=, 48
	i32.add 	$8=, $13, $pop27
	i32.const	$push28=, 52
	i32.add 	$9=, $13, $pop28
	i32.const	$10=, 0
	i32.const	$12=, 0
	block   	
	i32.const	$push67=, 0
	i32.const	$push66=, 0
	i32.ne  	$push9=, $pop67, $pop66
	br_if   	0, $pop9
	i32.const	$14=, 2
	br      	2
.LBB6_3:
	end_block
	i32.const	$14=, 7
	br      	1
.LBB6_4:
	end_block
	i32.const	$14=, 18
.LBB6_5:
	end_block
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	br_table 	$14, 9, 10, 0, 1, 4, 6, 7, 8, 11, 12, 13, 14, 15, 16, 17, 18, 19, 21, 22, 20, 5, 2, 3, 3
.LBB6_6:
	end_block
	i32.eq  	$push16=, $12, $10
	br_if   	26, $pop16
	i32.const	$14=, 3
	br      	38
.LBB6_8:
	end_block
	i32.const	$push72=, -24
	i32.add 	$push17=, $12, $pop72
	i32.load	$push71=, 0($pop17)
	tee_local	$push70=, $0=, $pop71
	i32.load	$push18=, 20($pop70)
	i32.const	$push58=, 24
	i32.add 	$push59=, $13, $pop58
	i32.eq  	$push19=, $pop18, $pop59
	i32.const	$push69=, .L.str.5
	call    	eosio_assert@FUNCTION, $pop19, $pop69
	br_if   	27, $0
	br      	26
.LBB6_9:
	end_block
	i64.load	$push21=, 24($13)
	i64.load	$push20=, 0($7)
	i64.const	$push76=, -3841130244651450368
	i32.call	$push75=, db_find_i64@FUNCTION, $pop21, $pop20, $pop76, $11
	tee_local	$push74=, $0=, $pop75
	i32.const	$push73=, 0
	i32.lt_s	$push22=, $pop74, $pop73
	br_if   	35, $pop22
	i32.const	$14=, 22
	br      	36
.LBB6_11:
	end_block
	i32.const	$push50=, 24
	i32.add 	$push51=, $13, $pop50
	i32.call	$push79=, _ZNK5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE31load_object_by_primary_iteratorEl@FUNCTION, $pop51, $0
	tee_local	$push78=, $0=, $pop79
	i32.load	$push23=, 20($pop78)
	i32.const	$push52=, 24
	i32.add 	$push53=, $13, $pop52
	i32.eq  	$push24=, $pop23, $pop53
	i32.const	$push77=, .L.str.5
	call    	eosio_assert@FUNCTION, $pop24, $pop77
	i32.const	$14=, 4
	br      	35
.LBB6_13:
	end_block
	i64.store	8($13), $4
	i32.const	$push81=, 1
	i32.const	$push80=, .L.str.10
	call    	eosio_assert@FUNCTION, $pop81, $pop80
	i32.const	$push54=, 24
	i32.add 	$push55=, $13, $pop54
	i32.const	$push56=, 8
	i32.add 	$push57=, $13, $pop56
	call    	_ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE6modifyIZNS1_8setentryEyyyyEUlRS2_E_EEvRKS2_yOT_@FUNCTION, $pop55, $0, $1, $pop57
	br      	25
.LBB6_14:
	end_block
	i32.const	$push44=, 8
	i32.add 	$push45=, $13, $pop44
	i32.const	$push82=, 8
	i32.add 	$push25=, $pop45, $pop82
	i64.store	0($pop25), $4
	i64.store32	8($13), $11
	i32.const	$push46=, 24
	i32.add 	$push47=, $13, $pop46
	i32.const	$push48=, 8
	i32.add 	$push49=, $13, $pop48
	call    	_ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE7emplaceIZNS1_8setentryEyyyyEUlRS2_E0_EENS3_14const_iteratorEyOT_@FUNCTION, $13, $pop47, $1, $pop49
	i32.const	$14=, 5
	br      	33
.LBB6_16:
	end_block
	i64.const	$push85=, 1
	i64.add 	$push84=, $11, $pop85
	tee_local	$push83=, $11=, $pop84
	i64.gt_u	$push26=, $pop83, $3
	br_if   	24, $pop26
	i32.const	$14=, 6
	br      	32
.LBB6_18:
	end_block
	i32.load	$push89=, 0($9)
	tee_local	$push88=, $12=, $pop89
	i32.load	$push87=, 0($8)
	tee_local	$push86=, $10=, $pop87
	i32.eq  	$push10=, $pop88, $pop86
	br_if   	18, $pop10
	i32.const	$14=, 7
	br      	31
.LBB6_20:
	end_block
	i32.const	$push91=, -24
	i32.add 	$0=, $12, $pop91
	i32.const	$push90=, 0
	i32.sub 	$5=, $pop90, $10
	i32.const	$14=, 0
	br      	30
.LBB6_22:
	end_block
	i32.load	$push11=, 0($0)
	i64.load	$push12=, 0($pop11)
	i64.eq  	$push13=, $pop12, $11
	br_if   	13, $pop13
	i32.const	$14=, 1
	br      	29
.LBB6_24:
	end_block
	copy_local	$12=, $0
	i32.const	$push95=, -24
	i32.add 	$push94=, $0, $pop95
	tee_local	$push93=, $6=, $pop94
	copy_local	$0=, $pop93
	i32.add 	$push14=, $6, $5
	i32.const	$push92=, -24
	i32.ne  	$push15=, $pop14, $pop92
	br_if   	14, $pop15
	br      	13
.LBB6_25:
	end_block
	i32.load	$push97=, 48($13)
	tee_local	$push96=, $5=, $pop97
	i32.eqz 	$push109=, $pop96
	br_if   	20, $pop109
	i32.const	$14=, 9
	br      	27
.LBB6_27:
	end_block
	i32.const	$push29=, 52
	i32.add 	$push101=, $13, $pop29
	tee_local	$push100=, $10=, $pop101
	i32.load	$push99=, 0($pop100)
	tee_local	$push98=, $0=, $pop99
	i32.eq  	$push30=, $pop98, $5
	br_if   	20, $pop30
	i32.const	$14=, 10
	br      	26
.LBB6_29:
	end_block
	i32.const	$14=, 11
	br      	25
.LBB6_31:
	end_block
	i32.const	$push105=, -24
	i32.add 	$push104=, $0, $pop105
	tee_local	$push103=, $0=, $pop104
	i32.load	$6=, 0($pop103)
	i32.const	$push102=, 0
	i32.store	0($0), $pop102
	i32.eqz 	$push110=, $6
	br_if   	20, $pop110
	i32.const	$14=, 12
	br      	24
.LBB6_33:
	end_block
	i32.load	$push107=, 8($6)
	tee_local	$push106=, $12=, $pop107
	i32.eqz 	$push111=, $pop106
	br_if   	20, $pop111
	i32.const	$14=, 13
	br      	23
.LBB6_35:
	end_block
	i32.const	$push108=, 12
	i32.add 	$push31=, $6, $pop108
	i32.store	0($pop31), $12
	call    	_ZdlPv@FUNCTION, $12
	i32.const	$14=, 14
	br      	22
.LBB6_37:
	end_block
	call    	_ZdlPv@FUNCTION, $6
	i32.const	$14=, 15
	br      	21
.LBB6_39:
	end_block
	i32.ne  	$push32=, $5, $0
	br_if   	15, $pop32
	i32.const	$14=, 16
	br      	20
.LBB6_41:
	end_block
	i32.const	$push33=, 48
	i32.add 	$push34=, $13, $pop33
	i32.load	$0=, 0($pop34)
	br      	17
.LBB6_42:
	end_block
	copy_local	$0=, $5
	i32.const	$14=, 17
	br      	18
.LBB6_44:
	end_block
	i32.store	0($10), $5
	call    	_ZdlPv@FUNCTION, $0
	i32.const	$14=, 18
	br      	17
.LBB6_46:
	end_block
	i32.const	$push41=, 0
	i32.const	$push39=, 64
	i32.add 	$push40=, $13, $pop39
	i32.store	__stack_pointer($pop41), $pop40
	return
.LBB6_47:
	end_block
	i32.const	$14=, 2
	br      	15
.LBB6_48:
	end_block
	i32.const	$14=, 2
	br      	14
.LBB6_49:
	end_block
	i32.const	$14=, 0
	br      	13
.LBB6_50:
	end_block
	i32.const	$14=, 2
	br      	12
.LBB6_51:
	end_block
	i32.const	$14=, 21
	br      	11
.LBB6_52:
	end_block
	i32.const	$14=, 20
	br      	10
.LBB6_53:
	end_block
	i32.const	$14=, 4
	br      	9
.LBB6_54:
	end_block
	i32.const	$14=, 5
	br      	8
.LBB6_55:
	end_block
	i32.const	$14=, 8
	br      	7
.LBB6_56:
	end_block
	i32.const	$14=, 18
	br      	6
.LBB6_57:
	end_block
	i32.const	$14=, 19
	br      	5
.LBB6_58:
	end_block
	i32.const	$14=, 11
	br      	4
.LBB6_59:
	end_block
	i32.const	$14=, 15
	br      	3
.LBB6_60:
	end_block
	i32.const	$14=, 14
	br      	2
.LBB6_61:
	end_block
	i32.const	$14=, 17
	br      	1
.LBB6_62:
	end_block
	i32.const	$14=, 20
	br      	0
.LBB6_63:
	end_loop
	.endfunc
.Lfunc_end6:
	.size	_ZN14test_ram_limit8setentryEyyyy, .Lfunc_end6-_ZN14test_ram_limit8setentryEyyyy

	.section	.text._ZN5eosio14execute_actionI14test_ram_limitS1_JyyyyEEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN5eosio14execute_actionI14test_ram_limitS1_JyyyyEEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN5eosio14execute_actionI14test_ram_limitS1_JyyyyEEEbPT_MT0_FvDpT1_E
	.weak	_ZN5eosio14execute_actionI14test_ram_limitS1_JyyyyEEEbPT_MT0_FvDpT1_E
	.type	_ZN5eosio14execute_actionI14test_ram_limitS1_JyyyyEEEbPT_MT0_FvDpT1_E,@function
_ZN5eosio14execute_actionI14test_ram_limitS1_JyyyyEEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i64, i64, i64, i64, i32, i32, i32
	i32.const	$push23=, 0
	i32.load	$push24=, __stack_pointer($pop23)
	i32.const	$push25=, 64
	i32.sub 	$push40=, $pop24, $pop25
	tee_local	$push39=, $10=, $pop40
	copy_local	$9=, $pop39
	i32.const	$push26=, 0
	i32.store	__stack_pointer($pop26), $10
	i32.load	$2=, 4($1)
	i32.load	$8=, 0($1)
	block   	
	block   	
	block   	
	block   	
	i32.call	$push38=, action_data_size@FUNCTION
	tee_local	$push37=, $3=, $pop38
	i32.eqz 	$push47=, $pop37
	br_if   	0, $pop47
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $3, $pop0
	br_if   	1, $pop1
	i32.call	$1=, malloc@FUNCTION, $3
	br      	2
.LBB7_3:
	end_block
	i32.const	$1=, 0
	br      	2
.LBB7_4:
	end_block
	i32.const	$push22=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $3, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push42=, $10, $pop5
	tee_local	$push41=, $1=, $pop42
	copy_local	$push36=, $pop41
	i32.store	__stack_pointer($pop22), $pop36
.LBB7_5:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $1, $3
.LBB7_6:
	end_block
	i64.const	$push6=, 0
	i64.store	8($9), $pop6
	i64.const	$push45=, 0
	i64.store	0($9), $pop45
	i64.const	$push44=, 0
	i64.store	16($9), $pop44
	i64.const	$push43=, 0
	i64.store	24($9), $pop43
	i32.store	36($9), $1
	i32.store	32($9), $1
	i32.add 	$push7=, $1, $3
	i32.store	40($9), $pop7
	i32.const	$push30=, 32
	i32.add 	$push31=, $9, $pop30
	i32.store	48($9), $pop31
	i32.store	56($9), $9
	i32.const	$push32=, 56
	i32.add 	$push33=, $9, $pop32
	i32.const	$push34=, 48
	i32.add 	$push35=, $9, $pop34
	call    	_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyyyEEELi0EEEZN5eosiorsINSA_10datastreamIPKcEEJyyyyEEERT_SH_RNS7_IJDpT0_EEEEUlSH_E_EEvRKSG_RKT0_@FUNCTION, $pop33, $pop35
	block   	
	i32.const	$push8=, 513
	i32.lt_u	$push9=, $3, $pop8
	br_if   	0, $pop9
	call    	free@FUNCTION, $1
.LBB7_8:
	end_block
	i32.const	$push10=, 1
	i32.shr_s	$push11=, $2, $pop10
	i32.add 	$1=, $0, $pop11
	i32.const	$push13=, 24
	i32.add 	$push14=, $9, $pop13
	i64.load	$7=, 0($pop14)
	i32.const	$push15=, 16
	i32.add 	$push16=, $9, $pop15
	i64.load	$6=, 0($pop16)
	i32.const	$push17=, 8
	i32.add 	$push18=, $9, $pop17
	i64.load	$5=, 0($pop18)
	i64.load	$4=, 0($9)
	block   	
	i32.const	$push46=, 1
	i32.and 	$push12=, $2, $pop46
	i32.eqz 	$push48=, $pop12
	br_if   	0, $pop48
	i32.load	$push19=, 0($1)
	i32.add 	$push20=, $pop19, $8
	i32.load	$8=, 0($pop20)
.LBB7_10:
	end_block
	call_indirect	$1, $4, $5, $6, $7, $8
	i32.const	$push29=, 0
	i32.const	$push27=, 64
	i32.add 	$push28=, $9, $pop27
	i32.store	__stack_pointer($pop29), $pop28
	i32.const	$push21=, 1
	.endfunc
.Lfunc_end7:
	.size	_ZN5eosio14execute_actionI14test_ram_limitS1_JyyyyEEEbPT_MT0_FvDpT1_E, .Lfunc_end7-_ZN5eosio14execute_actionI14test_ram_limitS1_JyyyyEEEbPT_MT0_FvDpT1_E

	.section	.text._ZN14test_ram_limit7rmentryEyy,"axG",@progbits,_ZN14test_ram_limit7rmentryEyy,comdat
	.hidden	_ZN14test_ram_limit7rmentryEyy
	.weak	_ZN14test_ram_limit7rmentryEyy
	.type	_ZN14test_ram_limit7rmentryEyy,@function
_ZN14test_ram_limit7rmentryEyy:
	.param  	i32, i64, i64
	.local  	i32, i32, i32, i32, i32, i32, i64, i32, i32, i32
	i32.const	$push40=, 0
	i32.const	$push37=, 0
	i32.load	$push38=, __stack_pointer($pop37)
	i32.const	$push39=, 48
	i32.sub 	$push51=, $pop38, $pop39
	tee_local	$push50=, $11=, $pop51
	i32.store	__stack_pointer($pop40), $pop50
	i64.load	$9=, 0($0)
	i32.const	$push0=, .L.str.16
	call    	prints@FUNCTION, $pop0
	call    	printn@FUNCTION, $9
	i32.const	$push1=, .L.str.4
	call    	prints@FUNCTION, $pop1
	i32.const	$push2=, 32
	i32.add 	$push3=, $11, $pop2
	i32.const	$push49=, 0
	i32.store	0($pop3), $pop49
	i64.store	8($11), $9
	i64.store	0($11), $9
	i64.const	$push4=, -1
	i64.store	16($11), $pop4
	i64.const	$push5=, 0
	i64.store	24($11), $pop5
	block   	
	block   	
	i64.const	$push6=, 32
	i64.shl 	$push7=, $1, $pop6
	i64.const	$push48=, 32
	i64.shr_s	$push47=, $pop7, $pop48
	tee_local	$push46=, $9=, $pop47
	i64.gt_u	$push8=, $pop46, $2
	br_if   	0, $pop8
	i32.const	$push20=, 8
	i32.add 	$5=, $11, $pop20
	i32.const	$push29=, 24
	i32.add 	$6=, $11, $pop29
	i32.const	$push30=, 28
	i32.add 	$7=, $11, $pop30
	i32.const	$8=, 0
	i32.const	$10=, 0
	block   	
	i32.const	$push53=, 0
	i32.const	$push52=, 0
	i32.ne  	$push9=, $pop53, $pop52
	br_if   	0, $pop9
	i32.const	$12=, 2
	br      	2
.LBB8_3:
	end_block
	i32.const	$12=, 8
	br      	1
.LBB8_4:
	end_block
	i32.const	$12=, 19
.LBB8_5:
	end_block
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	br_table 	$12, 9, 10, 0, 1, 4, 5, 6, 7, 8, 11, 12, 13, 14, 15, 16, 17, 18, 19, 21, 22, 20, 2, 3, 3
.LBB8_6:
	end_block
	i32.eq  	$push16=, $10, $8
	br_if   	26, $pop16
	i32.const	$12=, 3
	br      	37
.LBB8_8:
	end_block
	i32.const	$push57=, -24
	i32.add 	$push17=, $10, $pop57
	i32.load	$push56=, 0($pop17)
	tee_local	$push55=, $0=, $pop56
	i32.load	$push18=, 20($pop55)
	i32.eq  	$push19=, $pop18, $11
	i32.const	$push54=, .L.str.5
	call    	eosio_assert@FUNCTION, $pop19, $pop54
	br      	26
.LBB8_9:
	end_block
	i32.const	$0=, 0
	i64.load	$push22=, 0($11)
	i64.load	$push21=, 0($5)
	i64.const	$push61=, -3841130244651450368
	i32.call	$push60=, db_find_i64@FUNCTION, $pop22, $pop21, $pop61, $9
	tee_local	$push59=, $4=, $pop60
	i32.const	$push58=, 0
	i32.lt_s	$push23=, $pop59, $pop58
	br_if   	26, $pop23
	i32.const	$12=, 22
	br      	35
.LBB8_11:
	end_block
	i32.call	$push64=, _ZNK5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE31load_object_by_primary_iteratorEl@FUNCTION, $11, $4
	tee_local	$push63=, $0=, $pop64
	i32.load	$push24=, 20($pop63)
	i32.eq  	$push25=, $pop24, $11
	i32.const	$push62=, .L.str.5
	call    	eosio_assert@FUNCTION, $pop25, $pop62
	i32.const	$12=, 4
	br      	34
.LBB8_13:
	end_block
	i32.const	$push73=, 0
	i32.ne  	$push72=, $0, $pop73
	tee_local	$push71=, $4=, $pop72
	i32.const	$push70=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop71, $pop70
	i32.const	$push69=, .L.str.18
	call    	eosio_assert@FUNCTION, $4, $pop69
	i32.const	$push68=, .L.str.19
	call    	eosio_assert@FUNCTION, $4, $pop68
	i32.load	$push26=, 24($0)
	i32.const	$push44=, 40
	i32.add 	$push45=, $11, $pop44
	i32.call	$push67=, db_next_i64@FUNCTION, $pop26, $pop45
	tee_local	$push66=, $4=, $pop67
	i32.const	$push65=, 0
	i32.lt_s	$push27=, $pop66, $pop65
	br_if   	25, $pop27
	i32.const	$12=, 5
	br      	33
.LBB8_15:
	end_block
	i32.call	$drop=, _ZNK5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE31load_object_by_primary_iteratorEl@FUNCTION, $11, $4
	i32.const	$12=, 6
	br      	32
.LBB8_17:
	end_block
	call    	_ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE5eraseERKS2_@FUNCTION, $11, $0
	i64.const	$push76=, 1
	i64.add 	$push75=, $9, $pop76
	tee_local	$push74=, $9=, $pop75
	i64.gt_u	$push28=, $pop74, $2
	br_if   	24, $pop28
	i32.const	$12=, 7
	br      	31
.LBB8_19:
	end_block
	i32.load	$push80=, 0($7)
	tee_local	$push79=, $10=, $pop80
	i32.load	$push78=, 0($6)
	tee_local	$push77=, $8=, $pop78
	i32.eq  	$push10=, $pop79, $pop77
	br_if   	18, $pop10
	i32.const	$12=, 8
	br      	30
.LBB8_21:
	end_block
	i32.const	$push82=, -24
	i32.add 	$0=, $10, $pop82
	i32.const	$push81=, 0
	i32.sub 	$3=, $pop81, $8
	i32.const	$12=, 0
	br      	29
.LBB8_23:
	end_block
	i32.load	$push11=, 0($0)
	i64.load	$push12=, 0($pop11)
	i64.eq  	$push13=, $pop12, $9
	br_if   	13, $pop13
	i32.const	$12=, 1
	br      	28
.LBB8_25:
	end_block
	copy_local	$10=, $0
	i32.const	$push86=, -24
	i32.add 	$push85=, $0, $pop86
	tee_local	$push84=, $4=, $pop85
	copy_local	$0=, $pop84
	i32.add 	$push14=, $4, $3
	i32.const	$push83=, -24
	i32.ne  	$push15=, $pop14, $pop83
	br_if   	14, $pop15
	br      	13
.LBB8_26:
	end_block
	i32.load	$push88=, 24($11)
	tee_local	$push87=, $3=, $pop88
	i32.eqz 	$push100=, $pop87
	br_if   	20, $pop100
	i32.const	$12=, 10
	br      	26
.LBB8_28:
	end_block
	i32.const	$push31=, 28
	i32.add 	$push92=, $11, $pop31
	tee_local	$push91=, $8=, $pop92
	i32.load	$push90=, 0($pop91)
	tee_local	$push89=, $0=, $pop90
	i32.eq  	$push32=, $pop89, $3
	br_if   	20, $pop32
	i32.const	$12=, 11
	br      	25
.LBB8_30:
	end_block
	i32.const	$12=, 12
	br      	24
.LBB8_32:
	end_block
	i32.const	$push96=, -24
	i32.add 	$push95=, $0, $pop96
	tee_local	$push94=, $0=, $pop95
	i32.load	$4=, 0($pop94)
	i32.const	$push93=, 0
	i32.store	0($0), $pop93
	i32.eqz 	$push101=, $4
	br_if   	20, $pop101
	i32.const	$12=, 13
	br      	23
.LBB8_34:
	end_block
	i32.load	$push98=, 8($4)
	tee_local	$push97=, $10=, $pop98
	i32.eqz 	$push102=, $pop97
	br_if   	20, $pop102
	i32.const	$12=, 14
	br      	22
.LBB8_36:
	end_block
	i32.const	$push99=, 12
	i32.add 	$push33=, $4, $pop99
	i32.store	0($pop33), $10
	call    	_ZdlPv@FUNCTION, $10
	i32.const	$12=, 15
	br      	21
.LBB8_38:
	end_block
	call    	_ZdlPv@FUNCTION, $4
	i32.const	$12=, 16
	br      	20
.LBB8_40:
	end_block
	i32.ne  	$push34=, $3, $0
	br_if   	15, $pop34
	i32.const	$12=, 17
	br      	19
.LBB8_42:
	end_block
	i32.const	$push35=, 24
	i32.add 	$push36=, $11, $pop35
	i32.load	$0=, 0($pop36)
	br      	17
.LBB8_43:
	end_block
	copy_local	$0=, $3
	i32.const	$12=, 18
	br      	17
.LBB8_45:
	end_block
	i32.store	0($8), $3
	call    	_ZdlPv@FUNCTION, $0
	i32.const	$12=, 19
	br      	16
.LBB8_47:
	end_block
	i32.const	$push43=, 0
	i32.const	$push41=, 48
	i32.add 	$push42=, $11, $pop41
	i32.store	__stack_pointer($pop43), $pop42
	return
.LBB8_48:
	end_block
	i32.const	$12=, 2
	br      	14
.LBB8_49:
	end_block
	i32.const	$12=, 2
	br      	13
.LBB8_50:
	end_block
	i32.const	$12=, 0
	br      	12
.LBB8_51:
	end_block
	i32.const	$12=, 2
	br      	11
.LBB8_52:
	end_block
	i32.const	$12=, 21
	br      	10
.LBB8_53:
	end_block
	i32.const	$12=, 4
	br      	9
.LBB8_54:
	end_block
	i32.const	$12=, 4
	br      	8
.LBB8_55:
	end_block
	i32.const	$12=, 6
	br      	7
.LBB8_56:
	end_block
	i32.const	$12=, 9
	br      	6
.LBB8_57:
	end_block
	i32.const	$12=, 19
	br      	5
.LBB8_58:
	end_block
	i32.const	$12=, 20
	br      	4
.LBB8_59:
	end_block
	i32.const	$12=, 12
	br      	3
.LBB8_60:
	end_block
	i32.const	$12=, 16
	br      	2
.LBB8_61:
	end_block
	i32.const	$12=, 15
	br      	1
.LBB8_62:
	end_block
	i32.const	$12=, 18
	br      	0
.LBB8_63:
	end_loop
	.endfunc
.Lfunc_end8:
	.size	_ZN14test_ram_limit7rmentryEyy, .Lfunc_end8-_ZN14test_ram_limit7rmentryEyy

	.section	.text._ZN5eosio14execute_actionI14test_ram_limitS1_JyyEEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN5eosio14execute_actionI14test_ram_limitS1_JyyEEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN5eosio14execute_actionI14test_ram_limitS1_JyyEEEbPT_MT0_FvDpT1_E
	.weak	_ZN5eosio14execute_actionI14test_ram_limitS1_JyyEEEbPT_MT0_FvDpT1_E
	.type	_ZN5eosio14execute_actionI14test_ram_limitS1_JyyEEEbPT_MT0_FvDpT1_E,@function
_ZN5eosio14execute_actionI14test_ram_limitS1_JyyEEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i64, i64, i32, i32, i32, i32
	i32.const	$push24=, 0
	i32.load	$push25=, __stack_pointer($pop24)
	i32.const	$push26=, 16
	i32.sub 	$push35=, $pop25, $pop26
	tee_local	$push34=, $6=, $pop35
	copy_local	$8=, $pop34
	i32.const	$push27=, 0
	i32.store	__stack_pointer($pop27), $6
	i32.load	$2=, 4($1)
	i32.load	$7=, 0($1)
	block   	
	block   	
	block   	
	block   	
	i32.call	$push33=, action_data_size@FUNCTION
	tee_local	$push32=, $1=, $pop33
	i32.eqz 	$push47=, $pop32
	br_if   	0, $pop47
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $1, $pop0
	br_if   	1, $pop1
	i32.call	$6=, malloc@FUNCTION, $1
	br      	2
.LBB9_3:
	end_block
	i32.const	$6=, 0
	br      	2
.LBB9_4:
	end_block
	i32.const	$push23=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $1, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push37=, $6, $pop5
	tee_local	$push36=, $6=, $pop37
	copy_local	$push31=, $pop36
	i32.store	__stack_pointer($pop23), $pop31
.LBB9_5:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $6, $1
.LBB9_6:
	end_block
	i64.const	$push6=, 0
	i64.store	8($8), $pop6
	i64.const	$push45=, 0
	i64.store	0($8), $pop45
	i32.const	$push7=, 7
	i32.gt_u	$push8=, $1, $pop7
	i32.const	$push9=, .L.str.9
	call    	eosio_assert@FUNCTION, $pop8, $pop9
	i32.const	$push10=, 8
	i32.call	$drop=, memcpy@FUNCTION, $8, $6, $pop10
	i32.const	$push11=, -8
	i32.and 	$push12=, $1, $pop11
	i32.const	$push44=, 8
	i32.ne  	$push13=, $pop12, $pop44
	i32.const	$push43=, .L.str.9
	call    	eosio_assert@FUNCTION, $pop13, $pop43
	i32.const	$push42=, 8
	i32.add 	$push41=, $8, $pop42
	tee_local	$push40=, $5=, $pop41
	i32.const	$push39=, 8
	i32.add 	$push14=, $6, $pop39
	i32.const	$push38=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop40, $pop14, $pop38
	block   	
	i32.const	$push15=, 513
	i32.lt_u	$push16=, $1, $pop15
	br_if   	0, $pop16
	call    	free@FUNCTION, $6
.LBB9_8:
	end_block
	i32.const	$push17=, 1
	i32.shr_s	$push18=, $2, $pop17
	i32.add 	$1=, $0, $pop18
	i64.load	$4=, 0($5)
	i64.load	$3=, 0($8)
	block   	
	i32.const	$push46=, 1
	i32.and 	$push19=, $2, $pop46
	i32.eqz 	$push48=, $pop19
	br_if   	0, $pop48
	i32.load	$push20=, 0($1)
	i32.add 	$push21=, $pop20, $7
	i32.load	$7=, 0($pop21)
.LBB9_10:
	end_block
	call_indirect	$1, $3, $4, $7
	i32.const	$push30=, 0
	i32.const	$push28=, 16
	i32.add 	$push29=, $8, $pop28
	i32.store	__stack_pointer($pop30), $pop29
	i32.const	$push22=, 1
	.endfunc
.Lfunc_end9:
	.size	_ZN5eosio14execute_actionI14test_ram_limitS1_JyyEEEbPT_MT0_FvDpT1_E, .Lfunc_end9-_ZN5eosio14execute_actionI14test_ram_limitS1_JyyEEEbPT_MT0_FvDpT1_E

	.section	.text._ZN14test_ram_limit10printentryEyy,"axG",@progbits,_ZN14test_ram_limit10printentryEyy,comdat
	.hidden	_ZN14test_ram_limit10printentryEyy
	.weak	_ZN14test_ram_limit10printentryEyy
	.type	_ZN14test_ram_limit10printentryEyy,@function
_ZN14test_ram_limit10printentryEyy:
	.param  	i32, i64, i64
	.local  	i32, i32, i32, i32, i32, i32, i64, i32, i32, i32
	i32.const	$push42=, 0
	i32.const	$push39=, 0
	i32.load	$push40=, __stack_pointer($pop39)
	i32.const	$push41=, 48
	i32.sub 	$push57=, $pop40, $pop41
	tee_local	$push56=, $11=, $pop57
	i32.store	__stack_pointer($pop42), $pop56
	i64.load	$9=, 0($0)
	i32.const	$push0=, .L.str.23
	call    	prints@FUNCTION, $pop0
	call    	printn@FUNCTION, $9
	i32.const	$push1=, .L.str.24
	call    	prints@FUNCTION, $pop1
	i32.const	$push2=, 40
	i32.add 	$push3=, $11, $pop2
	i32.const	$push55=, 0
	i32.store	0($pop3), $pop55
	i64.store	16($11), $9
	i64.store	8($11), $9
	i64.const	$push4=, -1
	i64.store	24($11), $pop4
	i64.const	$push5=, 0
	i64.store	32($11), $pop5
	block   	
	block   	
	i64.const	$push6=, 32
	i64.shl 	$push7=, $1, $pop6
	i64.const	$push54=, 32
	i64.shr_s	$push53=, $pop7, $pop54
	tee_local	$push52=, $9=, $pop53
	i64.gt_u	$push8=, $pop52, $2
	br_if   	0, $pop8
	i32.const	$push20=, 16
	i32.add 	$5=, $11, $pop20
	i32.const	$push31=, 32
	i32.add 	$6=, $11, $pop31
	i32.const	$push32=, 36
	i32.add 	$7=, $11, $pop32
	i32.const	$8=, 0
	i32.const	$10=, 0
	block   	
	i32.const	$push59=, 0
	i32.const	$push58=, 0
	i32.ne  	$push9=, $pop59, $pop58
	br_if   	0, $pop9
	i32.const	$12=, 2
	br      	2
.LBB10_3:
	end_block
	i32.const	$12=, 6
	br      	1
.LBB10_4:
	end_block
	i32.const	$12=, 17
.LBB10_5:
	end_block
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	br_table 	$12, 7, 8, 0, 1, 4, 5, 6, 9, 10, 11, 12, 13, 14, 15, 16, 17, 19, 20, 18, 2, 3, 3
.LBB10_6:
	end_block
	i32.eq  	$push16=, $10, $8
	br_if   	24, $pop16
	i32.const	$12=, 3
	br      	34
.LBB10_8:
	end_block
	i32.const	$push63=, -24
	i32.add 	$push17=, $10, $pop63
	i32.load	$push62=, 0($pop17)
	tee_local	$push61=, $0=, $pop62
	i32.load	$push18=, 20($pop61)
	i32.const	$push50=, 8
	i32.add 	$push51=, $11, $pop50
	i32.eq  	$push19=, $pop18, $pop51
	i32.const	$push60=, .L.str.5
	call    	eosio_assert@FUNCTION, $pop19, $pop60
	br      	24
.LBB10_9:
	end_block
	i32.const	$0=, 0
	i64.load	$push22=, 8($11)
	i64.load	$push21=, 0($5)
	i64.const	$push67=, -3841130244651450368
	i32.call	$push66=, db_find_i64@FUNCTION, $pop22, $pop21, $pop67, $9
	tee_local	$push65=, $4=, $pop66
	i32.const	$push64=, 0
	i32.lt_s	$push23=, $pop65, $pop64
	br_if   	24, $pop23
	i32.const	$12=, 20
	br      	32
.LBB10_11:
	end_block
	i32.const	$push46=, 8
	i32.add 	$push47=, $11, $pop46
	i32.call	$push70=, _ZNK5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE31load_object_by_primary_iteratorEl@FUNCTION, $pop47, $4
	tee_local	$push69=, $0=, $pop70
	i32.load	$push24=, 20($pop69)
	i32.const	$push48=, 8
	i32.add 	$push49=, $11, $pop48
	i32.eq  	$push25=, $pop24, $pop49
	i32.const	$push68=, .L.str.5
	call    	eosio_assert@FUNCTION, $pop25, $pop68
	i32.const	$12=, 4
	br      	31
.LBB10_13:
	end_block
	i32.const	$push78=, .L.str.25
	call    	prints@FUNCTION, $pop78
	call    	printi@FUNCTION, $9
	i32.const	$push77=, 0
	i32.ne  	$push26=, $0, $pop77
	i32.const	$push76=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop26, $pop76
	i32.const	$push75=, 12
	i32.add 	$push27=, $0, $pop75
	i32.load	$4=, 0($pop27)
	i32.load	$0=, 8($0)
	i32.const	$push74=, .L.str.26
	call    	prints@FUNCTION, $pop74
	i32.sub 	$push28=, $4, $0
	i64.extend_u/i32	$push29=, $pop28
	call    	printui@FUNCTION, $pop29
	i64.const	$push73=, 1
	i64.add 	$push72=, $9, $pop73
	tee_local	$push71=, $9=, $pop72
	i64.gt_u	$push30=, $pop71, $2
	br_if   	23, $pop30
	i32.const	$12=, 5
	br      	30
.LBB10_15:
	end_block
	i32.load	$push82=, 0($7)
	tee_local	$push81=, $10=, $pop82
	i32.load	$push80=, 0($6)
	tee_local	$push79=, $8=, $pop80
	i32.eq  	$push10=, $pop81, $pop79
	br_if   	18, $pop10
	i32.const	$12=, 6
	br      	29
.LBB10_17:
	end_block
	i32.const	$push84=, -24
	i32.add 	$0=, $10, $pop84
	i32.const	$push83=, 0
	i32.sub 	$3=, $pop83, $8
	i32.const	$12=, 0
	br      	28
.LBB10_19:
	end_block
	i32.load	$push11=, 0($0)
	i64.load	$push12=, 0($pop11)
	i64.eq  	$push13=, $pop12, $9
	br_if   	13, $pop13
	i32.const	$12=, 1
	br      	27
.LBB10_21:
	end_block
	copy_local	$10=, $0
	i32.const	$push88=, -24
	i32.add 	$push87=, $0, $pop88
	tee_local	$push86=, $4=, $pop87
	copy_local	$0=, $pop86
	i32.add 	$push14=, $4, $3
	i32.const	$push85=, -24
	i32.ne  	$push15=, $pop14, $pop85
	br_if   	14, $pop15
	br      	13
.LBB10_22:
	end_block
	i32.load	$push90=, 32($11)
	tee_local	$push89=, $3=, $pop90
	i32.eqz 	$push102=, $pop89
	br_if   	19, $pop102
	i32.const	$12=, 8
	br      	25
.LBB10_24:
	end_block
	i32.const	$push33=, 36
	i32.add 	$push94=, $11, $pop33
	tee_local	$push93=, $8=, $pop94
	i32.load	$push92=, 0($pop93)
	tee_local	$push91=, $0=, $pop92
	i32.eq  	$push34=, $pop91, $3
	br_if   	19, $pop34
	i32.const	$12=, 9
	br      	24
.LBB10_26:
	end_block
	i32.const	$12=, 10
	br      	23
.LBB10_28:
	end_block
	i32.const	$push98=, -24
	i32.add 	$push97=, $0, $pop98
	tee_local	$push96=, $0=, $pop97
	i32.load	$4=, 0($pop96)
	i32.const	$push95=, 0
	i32.store	0($0), $pop95
	i32.eqz 	$push103=, $4
	br_if   	19, $pop103
	i32.const	$12=, 11
	br      	22
.LBB10_30:
	end_block
	i32.load	$push100=, 8($4)
	tee_local	$push99=, $10=, $pop100
	i32.eqz 	$push104=, $pop99
	br_if   	19, $pop104
	i32.const	$12=, 12
	br      	21
.LBB10_32:
	end_block
	i32.const	$push101=, 12
	i32.add 	$push35=, $4, $pop101
	i32.store	0($pop35), $10
	call    	_ZdlPv@FUNCTION, $10
	i32.const	$12=, 13
	br      	20
.LBB10_34:
	end_block
	call    	_ZdlPv@FUNCTION, $4
	i32.const	$12=, 14
	br      	19
.LBB10_36:
	end_block
	i32.ne  	$push36=, $3, $0
	br_if   	14, $pop36
	i32.const	$12=, 15
	br      	18
.LBB10_38:
	end_block
	i32.const	$push37=, 32
	i32.add 	$push38=, $11, $pop37
	i32.load	$0=, 0($pop38)
	br      	16
.LBB10_39:
	end_block
	copy_local	$0=, $3
	i32.const	$12=, 16
	br      	16
.LBB10_41:
	end_block
	i32.store	0($8), $3
	call    	_ZdlPv@FUNCTION, $0
	i32.const	$12=, 17
	br      	15
.LBB10_43:
	end_block
	i32.const	$push45=, 0
	i32.const	$push43=, 48
	i32.add 	$push44=, $11, $pop43
	i32.store	__stack_pointer($pop45), $pop44
	return
.LBB10_44:
	end_block
	i32.const	$12=, 2
	br      	13
.LBB10_45:
	end_block
	i32.const	$12=, 2
	br      	12
.LBB10_46:
	end_block
	i32.const	$12=, 0
	br      	11
.LBB10_47:
	end_block
	i32.const	$12=, 2
	br      	10
.LBB10_48:
	end_block
	i32.const	$12=, 19
	br      	9
.LBB10_49:
	end_block
	i32.const	$12=, 4
	br      	8
.LBB10_50:
	end_block
	i32.const	$12=, 4
	br      	7
.LBB10_51:
	end_block
	i32.const	$12=, 7
	br      	6
.LBB10_52:
	end_block
	i32.const	$12=, 17
	br      	5
.LBB10_53:
	end_block
	i32.const	$12=, 18
	br      	4
.LBB10_54:
	end_block
	i32.const	$12=, 10
	br      	3
.LBB10_55:
	end_block
	i32.const	$12=, 14
	br      	2
.LBB10_56:
	end_block
	i32.const	$12=, 13
	br      	1
.LBB10_57:
	end_block
	i32.const	$12=, 16
	br      	0
.LBB10_58:
	end_loop
	.endfunc
.Lfunc_end10:
	.size	_ZN14test_ram_limit10printentryEyy, .Lfunc_end10-_ZN14test_ram_limit10printentryEyy

	.section	.text._ZNK5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE31load_object_by_primary_iteratorEl,"axG",@progbits,_ZNK5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE31load_object_by_primary_iteratorEl,comdat
	.hidden	_ZNK5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE31load_object_by_primary_iteratorEl
	.weak	_ZNK5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE31load_object_by_primary_iteratorEl
	.type	_ZNK5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE31load_object_by_primary_iteratorEl,@function
_ZNK5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE31load_object_by_primary_iteratorEl:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32, i32, i32
	i32.const	$push49=, 0
	i32.load	$push50=, __stack_pointer($pop49)
	i32.const	$push51=, 48
	i32.sub 	$push70=, $pop50, $pop51
	tee_local	$push69=, $9=, $pop70
	copy_local	$8=, $pop69
	i32.const	$push52=, 0
	i32.store	__stack_pointer($pop52), $9
	block   	
	i32.const	$push2=, 28
	i32.add 	$push3=, $0, $pop2
	i32.load	$push68=, 0($pop3)
	tee_local	$push67=, $7=, $pop68
	i32.load	$push66=, 24($0)
	tee_local	$push65=, $2=, $pop66
	i32.eq  	$push4=, $pop67, $pop65
	br_if   	0, $pop4
	i32.const	$push5=, 0
	i32.sub 	$3=, $pop5, $2
	i32.const	$push71=, -24
	i32.add 	$6=, $7, $pop71
.LBB11_2:
	loop    	
	i32.const	$push72=, 16
	i32.add 	$push6=, $6, $pop72
	i32.load	$push7=, 0($pop6)
	i32.eq  	$push8=, $pop7, $1
	br_if   	1, $pop8
	copy_local	$7=, $6
	i32.const	$push76=, -24
	i32.add 	$push75=, $6, $pop76
	tee_local	$push74=, $4=, $pop75
	copy_local	$6=, $pop74
	i32.add 	$push9=, $4, $3
	i32.const	$push73=, -24
	i32.ne  	$push10=, $pop9, $pop73
	br_if   	0, $pop10
.LBB11_4:
	end_loop
	end_block
	block   	
	block   	
	i32.eq  	$push11=, $7, $2
	br_if   	0, $pop11
	i32.const	$push12=, -24
	i32.add 	$push13=, $7, $pop12
	i32.load	$6=, 0($pop13)
	br      	1
.LBB11_6:
	end_block
	i32.const	$push14=, 0
	i32.const	$push79=, 0
	i32.call	$push78=, db_get_i64@FUNCTION, $1, $pop14, $pop79
	tee_local	$push77=, $6=, $pop78
	i32.const	$push15=, 31
	i32.shr_u	$push16=, $pop77, $pop15
	i32.const	$push17=, 1
	i32.xor 	$push18=, $pop16, $pop17
	i32.const	$push19=, .L.str.6
	call    	eosio_assert@FUNCTION, $pop18, $pop19
	block   	
	block   	
	i32.const	$push20=, 513
	i32.lt_u	$push21=, $6, $pop20
	br_if   	0, $pop21
	i32.call	$4=, malloc@FUNCTION, $6
	br      	1
.LBB11_8:
	end_block
	i32.const	$push48=, 0
	i32.const	$push22=, 15
	i32.add 	$push23=, $6, $pop22
	i32.const	$push24=, -16
	i32.and 	$push25=, $pop23, $pop24
	i32.sub 	$push81=, $9, $pop25
	tee_local	$push80=, $4=, $pop81
	copy_local	$push64=, $pop80
	i32.store	__stack_pointer($pop48), $pop64
.LBB11_9:
	end_block
	i32.call	$drop=, db_get_i64@FUNCTION, $1, $4, $6
	i32.store	36($8), $4
	i32.store	32($8), $4
	i32.add 	$push83=, $4, $6
	tee_local	$push82=, $7=, $pop83
	i32.store	40($8), $pop82
	block   	
	i32.const	$push26=, 512
	i32.le_u	$push27=, $6, $pop26
	br_if   	0, $pop27
	call    	free@FUNCTION, $4
	i32.const	$push28=, 40
	i32.add 	$push29=, $8, $pop28
	i32.load	$7=, 0($pop29)
	i32.load	$4=, 36($8)
.LBB11_11:
	end_block
	i32.const	$push30=, 32
	i32.call	$push97=, _Znwj@FUNCTION, $pop30
	tee_local	$push96=, $6=, $pop97
	i32.const	$push95=, 0
	i32.store	16($pop96), $pop95
	i64.const	$push31=, 0
	i64.store	8($6):p2align=2, $pop31
	i32.store	20($6), $0
	i32.sub 	$push32=, $7, $4
	i32.const	$push33=, 7
	i32.gt_u	$push34=, $pop32, $pop33
	i32.const	$push35=, .L.str.9
	call    	eosio_assert@FUNCTION, $pop34, $pop35
	i32.const	$push36=, 8
	i32.call	$drop=, memcpy@FUNCTION, $6, $4, $pop36
	i32.const	$push94=, 8
	i32.add 	$push37=, $4, $pop94
	i32.store	36($8), $pop37
	i32.const	$push56=, 32
	i32.add 	$push57=, $8, $pop56
	i32.const	$push93=, 8
	i32.add 	$push38=, $6, $pop93
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE@FUNCTION, $pop57, $pop38
	i32.store	24($6), $1
	i32.store	24($8), $6
	i64.load	$push92=, 0($6)
	tee_local	$push91=, $5=, $pop92
	i64.store	16($8), $pop91
	i32.load	$push90=, 24($6)
	tee_local	$push89=, $7=, $pop90
	i32.store	12($8), $pop89
	block   	
	block   	
	i32.const	$push41=, 28
	i32.add 	$push88=, $0, $pop41
	tee_local	$push87=, $1=, $pop88
	i32.load	$push86=, 0($pop87)
	tee_local	$push85=, $4=, $pop86
	i32.const	$push84=, 32
	i32.add 	$push39=, $0, $pop84
	i32.load	$push40=, 0($pop39)
	i32.ge_u	$push42=, $pop85, $pop40
	br_if   	0, $pop42
	i64.store	8($4), $5
	i32.store	16($4), $7
	i32.const	$push98=, 0
	i32.store	24($8), $pop98
	i32.store	0($4), $6
	i32.const	$push43=, 24
	i32.add 	$push44=, $4, $pop43
	i32.store	0($1), $pop44
	br      	1
.LBB11_13:
	end_block
	i32.const	$push1=, 24
	i32.add 	$push0=, $0, $pop1
	i32.const	$push58=, 24
	i32.add 	$push59=, $8, $pop58
	i32.const	$push60=, 16
	i32.add 	$push61=, $8, $pop60
	i32.const	$push62=, 12
	i32.add 	$push63=, $8, $pop62
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $pop0, $pop59, $pop61, $pop63
.LBB11_14:
	end_block
	i32.load	$4=, 24($8)
	i32.const	$push45=, 0
	i32.store	24($8), $pop45
	i32.eqz 	$push101=, $4
	br_if   	0, $pop101
	block   	
	i32.load	$push100=, 8($4)
	tee_local	$push99=, $7=, $pop100
	i32.eqz 	$push102=, $pop99
	br_if   	0, $pop102
	i32.const	$push46=, 12
	i32.add 	$push47=, $4, $pop46
	i32.store	0($pop47), $7
	call    	_ZdlPv@FUNCTION, $7
.LBB11_17:
	end_block
	call    	_ZdlPv@FUNCTION, $4
.LBB11_18:
	end_block
	i32.const	$push55=, 0
	i32.const	$push53=, 48
	i32.add 	$push54=, $8, $pop53
	i32.store	__stack_pointer($pop55), $pop54
	copy_local	$push103=, $6
	.endfunc
.Lfunc_end11:
	.size	_ZNK5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE31load_object_by_primary_iteratorEl, .Lfunc_end11-_ZNK5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE31load_object_by_primary_iteratorEl

	.section	.text._ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE
	.weak	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE
	.type	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE,@function
_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i64, i32
	i32.load	$5=, 4($0)
	i32.const	$7=, 0
	i64.const	$6=, 0
	i32.const	$push0=, 8
	i32.add 	$2=, $0, $pop0
	i32.const	$push3=, 4
	i32.add 	$3=, $0, $pop3
.LBB12_1:
	loop    	
	i32.load	$push1=, 0($2)
	i32.lt_u	$push2=, $5, $pop1
	i32.const	$push37=, .L.str.7
	call    	eosio_assert@FUNCTION, $pop2, $pop37
	i32.load	$push36=, 0($3)
	tee_local	$push35=, $5=, $pop36
	i32.load8_u	$4=, 0($pop35)
	i32.const	$push34=, 1
	i32.add 	$push33=, $5, $pop34
	tee_local	$push32=, $5=, $pop33
	i32.store	0($3), $pop32
	i32.const	$push31=, 127
	i32.and 	$push4=, $4, $pop31
	i32.const	$push30=, 255
	i32.and 	$push29=, $7, $pop30
	tee_local	$push28=, $7=, $pop29
	i32.shl 	$push5=, $pop4, $pop28
	i64.extend_u/i32	$push6=, $pop5
	i64.or  	$6=, $pop6, $6
	i32.const	$push27=, 7
	i32.add 	$7=, $7, $pop27
	i32.const	$push26=, 7
	i32.shr_u	$push7=, $4, $pop26
	br_if   	0, $pop7
	end_loop
	block   	
	block   	
	i32.wrap/i64	$push45=, $6
	tee_local	$push44=, $3=, $pop45
	i32.load	$push43=, 4($1)
	tee_local	$push42=, $7=, $pop43
	i32.load	$push41=, 0($1)
	tee_local	$push40=, $4=, $pop41
	i32.sub 	$push39=, $pop42, $pop40
	tee_local	$push38=, $2=, $pop39
	i32.le_u	$push8=, $pop44, $pop38
	br_if   	0, $pop8
	i32.sub 	$push12=, $3, $2
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj@FUNCTION, $1, $pop12
	i32.const	$push13=, 4
	i32.add 	$push14=, $0, $pop13
	i32.load	$5=, 0($pop14)
	i32.const	$push46=, 4
	i32.add 	$push15=, $1, $pop46
	i32.load	$7=, 0($pop15)
	i32.load	$4=, 0($1)
	br      	1
.LBB12_4:
	end_block
	i32.ge_u	$push9=, $3, $2
	br_if   	0, $pop9
	i32.const	$push10=, 4
	i32.add 	$push11=, $1, $pop10
	i32.add 	$push48=, $4, $3
	tee_local	$push47=, $7=, $pop48
	i32.store	0($pop11), $pop47
.LBB12_6:
	end_block
	i32.const	$push16=, 8
	i32.add 	$push17=, $0, $pop16
	i32.load	$push18=, 0($pop17)
	i32.sub 	$push19=, $pop18, $5
	i32.sub 	$push52=, $7, $4
	tee_local	$push51=, $5=, $pop52
	i32.ge_u	$push20=, $pop19, $pop51
	i32.const	$push21=, .L.str.9
	call    	eosio_assert@FUNCTION, $pop20, $pop21
	i32.const	$push22=, 4
	i32.add 	$push50=, $0, $pop22
	tee_local	$push49=, $7=, $pop50
	i32.load	$push23=, 0($pop49)
	i32.call	$drop=, memcpy@FUNCTION, $4, $pop23, $5
	i32.load	$push24=, 0($7)
	i32.add 	$push25=, $pop24, $5
	i32.store	0($7), $pop25
	copy_local	$push53=, $0
	.endfunc
.Lfunc_end12:
	.size	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE, .Lfunc_end12-_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE

	.section	.text._ZNSt3__16vectorIN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,"axG",@progbits,_ZNSt3__16vectorIN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,comdat
	.hidden	_ZNSt3__16vectorIN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.weak	_ZNSt3__16vectorIN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.type	_ZNSt3__16vectorIN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,@function
_ZNSt3__16vectorIN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_:
	.param  	i32, i32, i32, i32
	.local  	i32, i32, i32, i32
	block   	
	block   	
	i32.load	$push0=, 4($0)
	i32.load	$push47=, 0($0)
	tee_local	$push46=, $6=, $pop47
	i32.sub 	$push1=, $pop0, $pop46
	i32.const	$push45=, 24
	i32.div_s	$push44=, $pop1, $pop45
	tee_local	$push43=, $4=, $pop44
	i32.const	$push2=, 1
	i32.add 	$push42=, $pop43, $pop2
	tee_local	$push41=, $5=, $pop42
	i32.const	$push3=, 178956971
	i32.ge_u	$push4=, $pop41, $pop3
	br_if   	0, $pop4
	i32.const	$7=, 178956970
	block   	
	block   	
	i32.load	$push5=, 8($0)
	i32.sub 	$push6=, $pop5, $6
	i32.const	$push50=, 24
	i32.div_s	$push49=, $pop6, $pop50
	tee_local	$push48=, $6=, $pop49
	i32.const	$push7=, 89478484
	i32.gt_u	$push8=, $pop48, $pop7
	br_if   	0, $pop8
	i32.const	$push9=, 1
	i32.shl 	$push54=, $6, $pop9
	tee_local	$push53=, $7=, $pop54
	i32.lt_u	$push10=, $7, $5
	i32.select	$push52=, $5, $pop53, $pop10
	tee_local	$push51=, $7=, $pop52
	i32.eqz 	$push83=, $pop51
	br_if   	1, $pop83
.LBB13_3:
	end_block
	i32.const	$push11=, 24
	i32.mul 	$push12=, $7, $pop11
	i32.call	$6=, _Znwj@FUNCTION, $pop12
	br      	2
.LBB13_4:
	end_block
	i32.const	$7=, 0
	i32.const	$6=, 0
	br      	1
.LBB13_5:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB13_6:
	end_block
	i32.load	$5=, 0($1)
	i32.const	$push63=, 0
	i32.store	0($1), $pop63
	i32.const	$push13=, 24
	i32.mul 	$push14=, $4, $pop13
	i32.add 	$push62=, $6, $pop14
	tee_local	$push61=, $1=, $pop62
	i32.store	0($pop61), $5
	i64.load	$push15=, 0($2)
	i64.store	8($1), $pop15
	i32.load	$push16=, 0($3)
	i32.store	16($1), $pop16
	i32.const	$push60=, 24
	i32.mul 	$push17=, $7, $pop60
	i32.add 	$4=, $6, $pop17
	i32.const	$push59=, 24
	i32.add 	$5=, $1, $pop59
	block   	
	block   	
	i32.const	$push18=, 4
	i32.add 	$push19=, $0, $pop18
	i32.load	$push58=, 0($pop19)
	tee_local	$push57=, $6=, $pop58
	i32.load	$push56=, 0($0)
	tee_local	$push55=, $7=, $pop56
	i32.eq  	$push20=, $pop57, $pop55
	br_if   	0, $pop20
.LBB13_8:
	loop    	
	i32.const	$push75=, -24
	i32.add 	$push74=, $6, $pop75
	tee_local	$push73=, $2=, $pop74
	i32.load	$3=, 0($pop73)
	i32.const	$push72=, 0
	i32.store	0($2), $pop72
	i32.const	$push71=, -24
	i32.add 	$push21=, $1, $pop71
	i32.store	0($pop21), $3
	i32.const	$push70=, -8
	i32.add 	$push22=, $1, $pop70
	i32.const	$push69=, -8
	i32.add 	$push23=, $6, $pop69
	i32.load	$push24=, 0($pop23)
	i32.store	0($pop22), $pop24
	i32.const	$push68=, -12
	i32.add 	$push25=, $1, $pop68
	i32.const	$push67=, -12
	i32.add 	$push26=, $6, $pop67
	i32.load	$push27=, 0($pop26)
	i32.store	0($pop25), $pop27
	i32.const	$push66=, -16
	i32.add 	$push28=, $1, $pop66
	i32.const	$push65=, -16
	i32.add 	$push29=, $6, $pop65
	i32.load	$push30=, 0($pop29)
	i32.store	0($pop28), $pop30
	i32.const	$push64=, -24
	i32.add 	$1=, $1, $pop64
	copy_local	$6=, $2
	i32.ne  	$push31=, $7, $2
	br_if   	0, $pop31
	end_loop
	i32.const	$push32=, 4
	i32.add 	$push33=, $0, $pop32
	i32.load	$7=, 0($pop33)
	i32.load	$2=, 0($0)
	br      	1
.LBB13_10:
	end_block
	copy_local	$2=, $7
.LBB13_11:
	end_block
	i32.store	0($0), $1
	i32.const	$push34=, 4
	i32.add 	$push35=, $0, $pop34
	i32.store	0($pop35), $5
	i32.const	$push36=, 8
	i32.add 	$push37=, $0, $pop36
	i32.store	0($pop37), $4
	block   	
	i32.eq  	$push38=, $7, $2
	br_if   	0, $pop38
.LBB13_13:
	loop    	
	i32.const	$push79=, -24
	i32.add 	$push78=, $7, $pop79
	tee_local	$push77=, $7=, $pop78
	i32.load	$1=, 0($pop77)
	i32.const	$push76=, 0
	i32.store	0($7), $pop76
	block   	
	i32.eqz 	$push84=, $1
	br_if   	0, $pop84
	block   	
	i32.load	$push81=, 8($1)
	tee_local	$push80=, $6=, $pop81
	i32.eqz 	$push85=, $pop80
	br_if   	0, $pop85
	i32.const	$push82=, 12
	i32.add 	$push39=, $1, $pop82
	i32.store	0($pop39), $6
	call    	_ZdlPv@FUNCTION, $6
.LBB13_16:
	end_block
	call    	_ZdlPv@FUNCTION, $1
.LBB13_17:
	end_block
	i32.ne  	$push40=, $2, $7
	br_if   	0, $pop40
.LBB13_18:
	end_loop
	end_block
	block   	
	i32.eqz 	$push86=, $2
	br_if   	0, $pop86
	call    	_ZdlPv@FUNCTION, $2
.LBB13_20:
	end_block
	.endfunc
.Lfunc_end13:
	.size	_ZNSt3__16vectorIN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_, .Lfunc_end13-_ZNSt3__16vectorIN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_

	.section	.text._ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj,"axG",@progbits,_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj,comdat
	.hidden	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
	.weak	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
	.type	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj,@function
_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.load	$push19=, 8($0)
	tee_local	$push18=, $2=, $pop19
	i32.load	$push17=, 4($0)
	tee_local	$push16=, $6=, $pop17
	i32.sub 	$push0=, $pop18, $pop16
	i32.ge_u	$push1=, $pop0, $1
	br_if   	0, $pop1
	i32.load	$push25=, 0($0)
	tee_local	$push24=, $5=, $pop25
	i32.sub 	$push23=, $6, $pop24
	tee_local	$push22=, $3=, $pop23
	i32.add 	$push21=, $pop22, $1
	tee_local	$push20=, $4=, $pop21
	i32.const	$push4=, -1
	i32.le_s	$push5=, $pop20, $pop4
	br_if   	2, $pop5
	i32.const	$6=, 2147483647
	block   	
	i32.sub 	$push27=, $2, $5
	tee_local	$push26=, $2=, $pop27
	i32.const	$push6=, 1073741822
	i32.gt_u	$push7=, $pop26, $pop6
	br_if   	0, $pop7
	i32.const	$push8=, 1
	i32.shl 	$push31=, $2, $pop8
	tee_local	$push30=, $6=, $pop31
	i32.lt_u	$push9=, $6, $4
	i32.select	$push29=, $4, $pop30, $pop9
	tee_local	$push28=, $6=, $pop29
	i32.eqz 	$push52=, $pop28
	br_if   	2, $pop52
.LBB14_4:
	end_block
	i32.call	$2=, _Znwj@FUNCTION, $6
	br      	3
.LBB14_5:
	end_block
	i32.const	$push2=, 4
	i32.add 	$0=, $0, $pop2
.LBB14_6:
	loop    	
	i32.const	$push51=, 0
	i32.store8	0($6), $pop51
	i32.load	$push3=, 0($0)
	i32.const	$push50=, 1
	i32.add 	$push49=, $pop3, $pop50
	tee_local	$push48=, $6=, $pop49
	i32.store	0($0), $pop48
	i32.const	$push47=, -1
	i32.add 	$push46=, $1, $pop47
	tee_local	$push45=, $1=, $pop46
	br_if   	0, $pop45
	br      	4
.LBB14_7:
	end_loop
	end_block
	i32.const	$6=, 0
	i32.const	$2=, 0
	br      	1
.LBB14_8:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB14_9:
	end_block
	i32.add 	$4=, $2, $6
	i32.add 	$push33=, $2, $3
	tee_local	$push32=, $5=, $pop33
	copy_local	$6=, $pop32
.LBB14_10:
	loop    	
	i32.const	$push38=, 0
	i32.store8	0($6), $pop38
	i32.const	$push37=, 1
	i32.add 	$6=, $6, $pop37
	i32.const	$push36=, -1
	i32.add 	$push35=, $1, $pop36
	tee_local	$push34=, $1=, $pop35
	br_if   	0, $pop34
	end_loop
	i32.const	$push10=, 4
	i32.add 	$push44=, $0, $pop10
	tee_local	$push43=, $3=, $pop44
	i32.load	$push11=, 0($pop43)
	i32.load	$push42=, 0($0)
	tee_local	$push41=, $1=, $pop42
	i32.sub 	$push40=, $pop11, $pop41
	tee_local	$push39=, $2=, $pop40
	i32.sub 	$5=, $5, $pop39
	block   	
	i32.const	$push12=, 1
	i32.lt_s	$push13=, $2, $pop12
	br_if   	0, $pop13
	i32.call	$drop=, memcpy@FUNCTION, $5, $1, $2
	i32.load	$1=, 0($0)
.LBB14_13:
	end_block
	i32.store	0($0), $5
	i32.store	0($3), $6
	i32.const	$push14=, 8
	i32.add 	$push15=, $0, $pop14
	i32.store	0($pop15), $4
	i32.eqz 	$push53=, $1
	br_if   	0, $pop53
	call    	_ZdlPv@FUNCTION, $1
	return
.LBB14_15:
	end_block
	.endfunc
.Lfunc_end14:
	.size	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj, .Lfunc_end14-_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj

	.section	.text._ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE5eraseERKS2_,"axG",@progbits,_ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE5eraseERKS2_,comdat
	.hidden	_ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE5eraseERKS2_
	.weak	_ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE5eraseERKS2_
	.type	_ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE5eraseERKS2_,@function
_ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE5eraseERKS2_:
	.param  	i32, i32
	.local  	i64, i32, i32, i32, i32, i32, i32
	i32.load	$push0=, 20($1)
	i32.eq  	$push1=, $pop0, $0
	i32.const	$push2=, .L.str.20
	call    	eosio_assert@FUNCTION, $pop1, $pop2
	i64.load	$push3=, 0($0)
	i64.call	$push4=, current_receiver@FUNCTION
	i64.eq  	$push5=, $pop3, $pop4
	i32.const	$push6=, .L.str.21
	call    	eosio_assert@FUNCTION, $pop5, $pop6
	block   	
	i32.const	$push7=, 28
	i32.add 	$push40=, $0, $pop7
	tee_local	$push39=, $5=, $pop40
	i32.load	$push38=, 0($pop39)
	tee_local	$push37=, $7=, $pop38
	i32.load	$push36=, 24($0)
	tee_local	$push35=, $3=, $pop36
	i32.eq  	$push8=, $pop37, $pop35
	br_if   	0, $pop8
	i64.load	$2=, 0($1)
	i32.const	$push9=, 0
	i32.sub 	$6=, $pop9, $3
	i32.const	$push41=, -24
	i32.add 	$8=, $7, $pop41
.LBB15_2:
	loop    	
	i32.load	$push10=, 0($8)
	i64.load	$push11=, 0($pop10)
	i64.eq  	$push12=, $pop11, $2
	br_if   	1, $pop12
	copy_local	$7=, $8
	i32.const	$push45=, -24
	i32.add 	$push44=, $8, $pop45
	tee_local	$push43=, $4=, $pop44
	copy_local	$8=, $pop43
	i32.add 	$push13=, $4, $6
	i32.const	$push42=, -24
	i32.ne  	$push14=, $pop13, $pop42
	br_if   	0, $pop14
.LBB15_4:
	end_loop
	end_block
	i32.ne  	$push15=, $7, $3
	i32.const	$push16=, .L.str.22
	call    	eosio_assert@FUNCTION, $pop15, $pop16
	i32.const	$push48=, -24
	i32.add 	$8=, $7, $pop48
	block   	
	block   	
	i32.load	$push47=, 0($5)
	tee_local	$push46=, $4=, $pop47
	i32.eq  	$push17=, $7, $pop46
	br_if   	0, $pop17
	i32.const	$push49=, 0
	i32.sub 	$3=, $pop49, $4
	copy_local	$7=, $8
.LBB15_6:
	loop    	
	i32.const	$push53=, 24
	i32.add 	$push52=, $7, $pop53
	tee_local	$push51=, $8=, $pop52
	i32.load	$6=, 0($pop51)
	i32.const	$push50=, 0
	i32.store	0($8), $pop50
	i32.load	$4=, 0($7)
	i32.store	0($7), $6
	block   	
	i32.eqz 	$push71=, $4
	br_if   	0, $pop71
	block   	
	i32.load	$push55=, 8($4)
	tee_local	$push54=, $6=, $pop55
	i32.eqz 	$push72=, $pop54
	br_if   	0, $pop72
	i32.const	$push56=, 12
	i32.add 	$push18=, $4, $pop56
	i32.store	0($pop18), $6
	call    	_ZdlPv@FUNCTION, $6
.LBB15_9:
	end_block
	call    	_ZdlPv@FUNCTION, $4
.LBB15_10:
	end_block
	i32.const	$push61=, 16
	i32.add 	$push19=, $7, $pop61
	i32.const	$push60=, 40
	i32.add 	$push20=, $7, $pop60
	i32.load	$push21=, 0($pop20)
	i32.store	0($pop19), $pop21
	i32.const	$push59=, 8
	i32.add 	$push22=, $7, $pop59
	i32.const	$push58=, 32
	i32.add 	$push23=, $7, $pop58
	i64.load	$push24=, 0($pop23)
	i64.store	0($pop22), $pop24
	copy_local	$7=, $8
	i32.add 	$push25=, $8, $3
	i32.const	$push57=, -24
	i32.ne  	$push26=, $pop25, $pop57
	br_if   	0, $pop26
	end_loop
	i32.const	$push27=, 28
	i32.add 	$push28=, $0, $pop27
	i32.load	$push63=, 0($pop28)
	tee_local	$push62=, $7=, $pop63
	i32.eq  	$push29=, $pop62, $8
	br_if   	1, $pop29
.LBB15_12:
	end_block
.LBB15_13:
	loop    	
	i32.const	$push67=, -24
	i32.add 	$push66=, $7, $pop67
	tee_local	$push65=, $7=, $pop66
	i32.load	$4=, 0($pop65)
	i32.const	$push64=, 0
	i32.store	0($7), $pop64
	block   	
	i32.eqz 	$push73=, $4
	br_if   	0, $pop73
	block   	
	i32.load	$push69=, 8($4)
	tee_local	$push68=, $6=, $pop69
	i32.eqz 	$push74=, $pop68
	br_if   	0, $pop74
	i32.const	$push70=, 12
	i32.add 	$push30=, $4, $pop70
	i32.store	0($pop30), $6
	call    	_ZdlPv@FUNCTION, $6
.LBB15_16:
	end_block
	call    	_ZdlPv@FUNCTION, $4
.LBB15_17:
	end_block
	i32.ne  	$push31=, $8, $7
	br_if   	0, $pop31
.LBB15_18:
	end_loop
	end_block
	i32.const	$push32=, 28
	i32.add 	$push33=, $0, $pop32
	i32.store	0($pop33), $8
	i32.load	$push34=, 24($1)
	call    	db_remove_i64@FUNCTION, $pop34
	.endfunc
.Lfunc_end15:
	.size	_ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE5eraseERKS2_, .Lfunc_end15-_ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE5eraseERKS2_

	.section	.text._ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyyyEEELi0EEEZN5eosiorsINSA_10datastreamIPKcEEJyyyyEEERT_SH_RNS7_IJDpT0_EEEEUlSH_E_EEvRKSG_RKT0_,"axG",@progbits,_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyyyEEELi0EEEZN5eosiorsINSA_10datastreamIPKcEEJyyyyEEERT_SH_RNS7_IJDpT0_EEEEUlSH_E_EEvRKSG_RKT0_,comdat
	.hidden	_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyyyEEELi0EEEZN5eosiorsINSA_10datastreamIPKcEEJyyyyEEERT_SH_RNS7_IJDpT0_EEEEUlSH_E_EEvRKSG_RKT0_
	.weak	_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyyyEEELi0EEEZN5eosiorsINSA_10datastreamIPKcEEJyyyyEEERT_SH_RNS7_IJDpT0_EEEEUlSH_E_EEvRKSG_RKT0_
	.type	_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyyyEEELi0EEEZN5eosiorsINSA_10datastreamIPKcEEJyyyyEEERT_SH_RNS7_IJDpT0_EEEEUlSH_E_EEvRKSG_RKT0_,@function
_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyyyEEELi0EEEZN5eosiorsINSA_10datastreamIPKcEEJyyyyEEERT_SH_RNS7_IJDpT0_EEEEUlSH_E_EEvRKSG_RKT0_:
	.param  	i32, i32
	.local  	i32, i32
	i32.load	$3=, 0($0)
	i32.load	$push57=, 0($1)
	tee_local	$push56=, $2=, $pop57
	i32.load	$push1=, 8($pop56)
	i32.load	$push0=, 4($2)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.9
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($2)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $3, $pop6, $pop7
	i32.load	$push8=, 4($2)
	i32.const	$push55=, 8
	i32.add 	$push9=, $pop8, $pop55
	i32.store	4($2), $pop9
	i32.load	$0=, 0($0)
	i32.load	$push54=, 0($1)
	tee_local	$push53=, $2=, $pop54
	i32.load	$push11=, 8($pop53)
	i32.load	$push10=, 4($2)
	i32.sub 	$push12=, $pop11, $pop10
	i32.const	$push52=, 7
	i32.gt_u	$push13=, $pop12, $pop52
	i32.const	$push51=, .L.str.9
	call    	eosio_assert@FUNCTION, $pop13, $pop51
	i32.const	$push50=, 8
	i32.add 	$push14=, $0, $pop50
	i32.load	$push15=, 4($2)
	i32.const	$push49=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop14, $pop15, $pop49
	i32.load	$push16=, 4($2)
	i32.const	$push48=, 8
	i32.add 	$push17=, $pop16, $pop48
	i32.store	4($2), $pop17
	i32.load	$push47=, 0($1)
	tee_local	$push46=, $2=, $pop47
	i32.load	$push19=, 8($pop46)
	i32.load	$push18=, 4($2)
	i32.sub 	$push20=, $pop19, $pop18
	i32.const	$push45=, 7
	i32.gt_u	$push21=, $pop20, $pop45
	i32.const	$push44=, .L.str.9
	call    	eosio_assert@FUNCTION, $pop21, $pop44
	i32.const	$push22=, 16
	i32.add 	$push23=, $0, $pop22
	i32.load	$push24=, 4($2)
	i32.const	$push43=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop23, $pop24, $pop43
	i32.load	$push25=, 4($2)
	i32.const	$push42=, 8
	i32.add 	$push26=, $pop25, $pop42
	i32.store	4($2), $pop26
	i32.load	$push41=, 0($1)
	tee_local	$push40=, $1=, $pop41
	i32.load	$push28=, 8($pop40)
	i32.load	$push27=, 4($1)
	i32.sub 	$push29=, $pop28, $pop27
	i32.const	$push39=, 7
	i32.gt_u	$push30=, $pop29, $pop39
	i32.const	$push38=, .L.str.9
	call    	eosio_assert@FUNCTION, $pop30, $pop38
	i32.const	$push31=, 24
	i32.add 	$push32=, $0, $pop31
	i32.load	$push33=, 4($1)
	i32.const	$push37=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop32, $pop33, $pop37
	i32.load	$push34=, 4($1)
	i32.const	$push36=, 8
	i32.add 	$push35=, $pop34, $pop36
	i32.store	4($1), $pop35
	.endfunc
.Lfunc_end16:
	.size	_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyyyEEELi0EEEZN5eosiorsINSA_10datastreamIPKcEEJyyyyEEERT_SH_RNS7_IJDpT0_EEEEUlSH_E_EEvRKSG_RKT0_, .Lfunc_end16-_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyyyEEELi0EEEZN5eosiorsINSA_10datastreamIPKcEEJyyyyEEERT_SH_RNS7_IJDpT0_EEEEUlSH_E_EEvRKSG_RKT0_

	.section	.text._ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE6modifyIZNS1_8setentryEyyyyEUlRS2_E_EEvRKS2_yOT_,"axG",@progbits,_ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE6modifyIZNS1_8setentryEyyyyEUlRS2_E_EEvRKS2_yOT_,comdat
	.hidden	_ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE6modifyIZNS1_8setentryEyyyyEUlRS2_E_EEvRKS2_yOT_
	.weak	_ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE6modifyIZNS1_8setentryEyyyyEUlRS2_E_EEvRKS2_yOT_
	.type	_ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE6modifyIZNS1_8setentryEyyyyEUlRS2_E_EEvRKS2_yOT_,@function
_ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE6modifyIZNS1_8setentryEyyyyEUlRS2_E_EEvRKS2_yOT_:
	.param  	i32, i32, i64, i32
	.local  	i64, i32, i32, i32, i32, i32, i64, i32
	i32.const	$push62=, 0
	i32.const	$push59=, 0
	i32.load	$push60=, __stack_pointer($pop59)
	i32.const	$push61=, 16
	i32.sub 	$push81=, $pop60, $pop61
	tee_local	$push80=, $9=, $pop81
	i32.store	__stack_pointer($pop62), $pop80
	i32.load	$push0=, 20($1)
	i32.eq  	$push1=, $pop0, $0
	i32.const	$push2=, .L.str.11
	call    	eosio_assert@FUNCTION, $pop1, $pop2
	i64.load	$push3=, 0($0)
	i64.call	$push4=, current_receiver@FUNCTION
	i64.eq  	$push5=, $pop3, $pop4
	i32.const	$push6=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop5, $pop6
	i64.load	$4=, 0($1)
	copy_local	$push79=, $9
	tee_local	$push78=, $11=, $pop79
	i64.load	$push77=, 0($3)
	tee_local	$push76=, $10=, $pop77
	i64.store8	15($pop78), $pop76
	i32.const	$push7=, 8
	i32.add 	$push8=, $1, $pop7
	i32.wrap/i64	$push9=, $10
	i32.const	$push66=, 15
	i32.add 	$push67=, $11, $pop66
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE6assignEjRKc@FUNCTION, $pop8, $pop9, $pop67
	i64.load	$push10=, 0($1)
	i64.eq  	$push11=, $4, $pop10
	i32.const	$push12=, .L.str.13
	call    	eosio_assert@FUNCTION, $pop11, $pop12
	i32.const	$push13=, 12
	i32.add 	$push14=, $1, $pop13
	i32.load	$push75=, 0($pop14)
	tee_local	$push74=, $6=, $pop75
	i32.const	$push73=, 8
	i32.add 	$push15=, $pop74, $pop73
	i32.load	$push72=, 8($1)
	tee_local	$push71=, $7=, $pop72
	i32.sub 	$3=, $pop15, $pop71
	i32.sub 	$push16=, $6, $7
	i64.extend_u/i32	$10=, $pop16
.LBB17_1:
	loop    	
	i32.const	$push86=, 1
	i32.add 	$3=, $3, $pop86
	i64.const	$push85=, 7
	i64.shr_u	$push84=, $10, $pop85
	tee_local	$push83=, $10=, $pop84
	i64.const	$push82=, 0
	i64.ne  	$push17=, $pop83, $pop82
	br_if   	0, $pop17
	end_loop
	block   	
	block   	
	i32.const	$push18=, 513
	i32.lt_u	$push19=, $3, $pop18
	br_if   	0, $pop19
	i32.call	$8=, malloc@FUNCTION, $3
	br      	1
.LBB17_4:
	end_block
	i32.const	$push58=, 0
	i32.const	$push20=, 15
	i32.add 	$push21=, $3, $pop20
	i32.const	$push22=, -16
	i32.and 	$push23=, $pop21, $pop22
	i32.sub 	$push88=, $9, $pop23
	tee_local	$push87=, $8=, $pop88
	copy_local	$push70=, $pop87
	i32.store	__stack_pointer($pop58), $pop70
.LBB17_5:
	end_block
	i32.const	$push92=, 7
	i32.gt_s	$push24=, $3, $pop92
	i32.const	$push91=, .L.str.14
	call    	eosio_assert@FUNCTION, $pop24, $pop91
	i32.const	$push25=, 8
	i32.call	$drop=, memcpy@FUNCTION, $8, $1, $pop25
	i32.const	$push28=, 12
	i32.add 	$push29=, $1, $pop28
	i32.load	$push30=, 0($pop29)
	i32.const	$push90=, 8
	i32.add 	$push26=, $1, $pop90
	i32.load	$push27=, 0($pop26)
	i32.sub 	$push31=, $pop30, $pop27
	i64.extend_u/i32	$10=, $pop31
	i32.const	$push89=, 8
	i32.add 	$9=, $8, $pop89
	i32.add 	$5=, $8, $3
.LBB17_6:
	loop    	
	i32.wrap/i64	$6=, $10
	i64.const	$push104=, 7
	i64.shr_u	$push103=, $10, $pop104
	tee_local	$push102=, $10=, $pop103
	i64.const	$push101=, 0
	i64.ne  	$push100=, $pop102, $pop101
	tee_local	$push99=, $7=, $pop100
	i32.const	$push98=, 7
	i32.shl 	$push33=, $pop99, $pop98
	i32.const	$push97=, 127
	i32.and 	$push32=, $6, $pop97
	i32.or  	$push34=, $pop33, $pop32
	i32.store8	14($11), $pop34
	i32.sub 	$push35=, $5, $9
	i32.const	$push96=, 0
	i32.gt_s	$push36=, $pop35, $pop96
	i32.const	$push95=, .L.str.14
	call    	eosio_assert@FUNCTION, $pop36, $pop95
	i32.const	$push68=, 14
	i32.add 	$push69=, $11, $pop68
	i32.const	$push94=, 1
	i32.call	$drop=, memcpy@FUNCTION, $9, $pop69, $pop94
	i32.const	$push93=, 1
	i32.add 	$9=, $9, $pop93
	br_if   	0, $7
	end_loop
	i32.sub 	$push42=, $5, $9
	i32.const	$push39=, 12
	i32.add 	$push40=, $1, $pop39
	i32.load	$push41=, 0($pop40)
	i32.const	$push37=, 8
	i32.add 	$push38=, $1, $pop37
	i32.load	$push108=, 0($pop38)
	tee_local	$push107=, $6=, $pop108
	i32.sub 	$push106=, $pop41, $pop107
	tee_local	$push105=, $7=, $pop106
	i32.ge_s	$push43=, $pop42, $pop105
	i32.const	$push44=, .L.str.14
	call    	eosio_assert@FUNCTION, $pop43, $pop44
	i32.call	$drop=, memcpy@FUNCTION, $9, $6, $7
	i32.load	$push45=, 24($1)
	call    	db_update_i64@FUNCTION, $pop45, $2, $8, $3
	block   	
	i32.const	$push46=, 513
	i32.lt_u	$push47=, $3, $pop46
	br_if   	0, $pop47
	call    	free@FUNCTION, $8
.LBB17_9:
	end_block
	block   	
	i64.load	$push48=, 16($0)
	i64.lt_u	$push49=, $4, $pop48
	br_if   	0, $pop49
	i32.const	$push56=, 16
	i32.add 	$push57=, $0, $pop56
	i64.const	$push54=, -2
	i64.const	$push52=, 1
	i64.add 	$push53=, $4, $pop52
	i64.const	$push50=, -3
	i64.gt_u	$push51=, $4, $pop50
	i64.select	$push55=, $pop54, $pop53, $pop51
	i64.store	0($pop57), $pop55
.LBB17_11:
	end_block
	i32.const	$push65=, 0
	i32.const	$push63=, 16
	i32.add 	$push64=, $11, $pop63
	i32.store	__stack_pointer($pop65), $pop64
	.endfunc
.Lfunc_end17:
	.size	_ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE6modifyIZNS1_8setentryEyyyyEUlRS2_E_EEvRKS2_yOT_, .Lfunc_end17-_ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE6modifyIZNS1_8setentryEyyyyEUlRS2_E_EEvRKS2_yOT_

	.section	.text._ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE7emplaceIZNS1_8setentryEyyyyEUlRS2_E0_EENS3_14const_iteratorEyOT_,"axG",@progbits,_ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE7emplaceIZNS1_8setentryEyyyyEUlRS2_E0_EENS3_14const_iteratorEyOT_,comdat
	.hidden	_ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE7emplaceIZNS1_8setentryEyyyyEUlRS2_E0_EENS3_14const_iteratorEyOT_
	.weak	_ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE7emplaceIZNS1_8setentryEyyyyEUlRS2_E0_EENS3_14const_iteratorEyOT_
	.type	_ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE7emplaceIZNS1_8setentryEyyyyEUlRS2_E0_EENS3_14const_iteratorEyOT_,@function
_ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE7emplaceIZNS1_8setentryEyyyyEUlRS2_E0_EENS3_14const_iteratorEyOT_:
	.param  	i32, i32, i64, i32
	.local  	i32, i32, i32, i32
	i32.const	$push20=, 0
	i32.const	$push17=, 0
	i32.load	$push18=, __stack_pointer($pop17)
	i32.const	$push19=, 48
	i32.sub 	$push47=, $pop18, $pop19
	tee_local	$push46=, $7=, $pop47
	i32.store	__stack_pointer($pop20), $pop46
	i64.store	40($7), $2
	i64.load	$push0=, 0($1)
	i64.call	$push1=, current_receiver@FUNCTION
	i64.eq  	$push2=, $pop0, $pop1
	i32.const	$push3=, .L.str.15
	call    	eosio_assert@FUNCTION, $pop2, $pop3
	i32.store	20($7), $3
	i32.store	16($7), $1
	i32.const	$push24=, 40
	i32.add 	$push25=, $7, $pop24
	i32.store	24($7), $pop25
	i32.const	$push4=, 32
	i32.call	$push45=, _Znwj@FUNCTION, $pop4
	tee_local	$push44=, $3=, $pop45
	i32.const	$push43=, 0
	i32.store	16($pop44), $pop43
	i64.const	$push5=, 0
	i64.store	8($3):p2align=2, $pop5
	i32.store	20($3), $1
	i32.const	$push26=, 16
	i32.add 	$push27=, $7, $pop26
	call    	_ZZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE7emplaceIZNS1_8setentryEyyyyEUlRS2_E0_EENS3_14const_iteratorEyOT_ENKUlRS8_E_clINS3_4itemEEEDaSA_@FUNCTION, $pop27, $3
	i32.store	32($7), $3
	i64.load	$push42=, 0($3)
	tee_local	$push41=, $2=, $pop42
	i64.store	16($7), $pop41
	i32.load	$push40=, 24($3)
	tee_local	$push39=, $4=, $pop40
	i32.store	12($7), $pop39
	block   	
	block   	
	i32.const	$push8=, 28
	i32.add 	$push38=, $1, $pop8
	tee_local	$push37=, $6=, $pop38
	i32.load	$push36=, 0($pop37)
	tee_local	$push35=, $5=, $pop36
	i32.const	$push34=, 32
	i32.add 	$push6=, $1, $pop34
	i32.load	$push7=, 0($pop6)
	i32.ge_u	$push9=, $pop35, $pop7
	br_if   	0, $pop9
	i64.store	8($5), $2
	i32.store	16($5), $4
	i32.const	$push48=, 0
	i32.store	32($7), $pop48
	i32.store	0($5), $3
	i32.const	$push12=, 24
	i32.add 	$push13=, $5, $pop12
	i32.store	0($6), $pop13
	br      	1
.LBB18_2:
	end_block
	i32.const	$push10=, 24
	i32.add 	$push11=, $1, $pop10
	i32.const	$push28=, 32
	i32.add 	$push29=, $7, $pop28
	i32.const	$push30=, 16
	i32.add 	$push31=, $7, $pop30
	i32.const	$push32=, 12
	i32.add 	$push33=, $7, $pop32
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $pop11, $pop29, $pop31, $pop33
.LBB18_3:
	end_block
	i32.store	4($0), $3
	i32.store	0($0), $1
	i32.load	$3=, 32($7)
	i32.const	$push14=, 0
	i32.store	32($7), $pop14
	block   	
	i32.eqz 	$push51=, $3
	br_if   	0, $pop51
	block   	
	i32.load	$push50=, 8($3)
	tee_local	$push49=, $1=, $pop50
	i32.eqz 	$push52=, $pop49
	br_if   	0, $pop52
	i32.const	$push15=, 12
	i32.add 	$push16=, $3, $pop15
	i32.store	0($pop16), $1
	call    	_ZdlPv@FUNCTION, $1
.LBB18_6:
	end_block
	call    	_ZdlPv@FUNCTION, $3
.LBB18_7:
	end_block
	i32.const	$push23=, 0
	i32.const	$push21=, 48
	i32.add 	$push22=, $7, $pop21
	i32.store	__stack_pointer($pop23), $pop22
	.endfunc
.Lfunc_end18:
	.size	_ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE7emplaceIZNS1_8setentryEyyyyEUlRS2_E0_EENS3_14const_iteratorEyOT_, .Lfunc_end18-_ZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE7emplaceIZNS1_8setentryEyyyyEUlRS2_E0_EENS3_14const_iteratorEyOT_

	.section	.text._ZZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE7emplaceIZNS1_8setentryEyyyyEUlRS2_E0_EENS3_14const_iteratorEyOT_ENKUlRS8_E_clINS3_4itemEEEDaSA_,"axG",@progbits,_ZZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE7emplaceIZNS1_8setentryEyyyyEUlRS2_E0_EENS3_14const_iteratorEyOT_ENKUlRS8_E_clINS3_4itemEEEDaSA_,comdat
	.hidden	_ZZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE7emplaceIZNS1_8setentryEyyyyEUlRS2_E0_EENS3_14const_iteratorEyOT_ENKUlRS8_E_clINS3_4itemEEEDaSA_
	.weak	_ZZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE7emplaceIZNS1_8setentryEyyyyEUlRS2_E0_EENS3_14const_iteratorEyOT_ENKUlRS8_E_clINS3_4itemEEEDaSA_
	.type	_ZZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE7emplaceIZNS1_8setentryEyyyyEUlRS2_E0_EENS3_14const_iteratorEyOT_ENKUlRS8_E_clINS3_4itemEEEDaSA_,@function
_ZZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE7emplaceIZNS1_8setentryEyyyyEUlRS2_E0_EENS3_14const_iteratorEyOT_ENKUlRS8_E_clINS3_4itemEEEDaSA_:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i64, i32
	i32.const	$push57=, 0
	i32.const	$push54=, 0
	i32.load	$push55=, __stack_pointer($pop54)
	i32.const	$push56=, 16
	i32.sub 	$push78=, $pop55, $pop56
	tee_local	$push77=, $8=, $pop78
	i32.store	__stack_pointer($pop57), $pop77
	i32.load	$push76=, 4($0)
	tee_local	$push75=, $6=, $pop76
	i64.load32_s	$push0=, 0($pop75)
	i64.store	0($1), $pop0
	i32.load	$2=, 0($0)
	copy_local	$push74=, $8
	tee_local	$push73=, $10=, $pop74
	i64.load	$push72=, 8($6)
	tee_local	$push71=, $9=, $pop72
	i64.store8	14($pop73), $pop71
	i32.const	$push1=, 8
	i32.add 	$push2=, $1, $pop1
	i32.wrap/i64	$push3=, $9
	i32.const	$push61=, 14
	i32.add 	$push62=, $10, $pop61
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE6assignEjRKc@FUNCTION, $pop2, $pop3, $pop62
	i32.const	$push4=, 12
	i32.add 	$push5=, $1, $pop4
	i32.load	$push70=, 0($pop5)
	tee_local	$push69=, $4=, $pop70
	i32.const	$push68=, 8
	i32.add 	$push6=, $pop69, $pop68
	i32.load	$push67=, 8($1)
	tee_local	$push66=, $5=, $pop67
	i32.sub 	$6=, $pop6, $pop66
	i32.sub 	$push7=, $4, $5
	i64.extend_u/i32	$9=, $pop7
.LBB19_1:
	loop    	
	i32.const	$push83=, 1
	i32.add 	$6=, $6, $pop83
	i64.const	$push82=, 7
	i64.shr_u	$push81=, $9, $pop82
	tee_local	$push80=, $9=, $pop81
	i64.const	$push79=, 0
	i64.ne  	$push8=, $pop80, $pop79
	br_if   	0, $pop8
	end_loop
	block   	
	block   	
	i32.const	$push9=, 513
	i32.lt_u	$push10=, $6, $pop9
	br_if   	0, $pop10
	i32.call	$7=, malloc@FUNCTION, $6
	br      	1
.LBB19_4:
	end_block
	i32.const	$push53=, 0
	i32.const	$push11=, 15
	i32.add 	$push12=, $6, $pop11
	i32.const	$push13=, -16
	i32.and 	$push14=, $pop12, $pop13
	i32.sub 	$push85=, $8, $pop14
	tee_local	$push84=, $7=, $pop85
	copy_local	$push65=, $pop84
	i32.store	__stack_pointer($pop53), $pop65
.LBB19_5:
	end_block
	i32.const	$push89=, 7
	i32.gt_s	$push15=, $6, $pop89
	i32.const	$push88=, .L.str.14
	call    	eosio_assert@FUNCTION, $pop15, $pop88
	i32.const	$push16=, 8
	i32.call	$drop=, memcpy@FUNCTION, $7, $1, $pop16
	i32.const	$push19=, 12
	i32.add 	$push20=, $1, $pop19
	i32.load	$push21=, 0($pop20)
	i32.const	$push87=, 8
	i32.add 	$push17=, $1, $pop87
	i32.load	$push18=, 0($pop17)
	i32.sub 	$push22=, $pop21, $pop18
	i64.extend_u/i32	$9=, $pop22
	i32.const	$push86=, 8
	i32.add 	$8=, $7, $pop86
	i32.add 	$3=, $7, $6
.LBB19_6:
	loop    	
	i32.wrap/i64	$4=, $9
	i64.const	$push101=, 7
	i64.shr_u	$push100=, $9, $pop101
	tee_local	$push99=, $9=, $pop100
	i64.const	$push98=, 0
	i64.ne  	$push97=, $pop99, $pop98
	tee_local	$push96=, $5=, $pop97
	i32.const	$push95=, 7
	i32.shl 	$push24=, $pop96, $pop95
	i32.const	$push94=, 127
	i32.and 	$push23=, $4, $pop94
	i32.or  	$push25=, $pop24, $pop23
	i32.store8	15($10), $pop25
	i32.sub 	$push26=, $3, $8
	i32.const	$push93=, 0
	i32.gt_s	$push27=, $pop26, $pop93
	i32.const	$push92=, .L.str.14
	call    	eosio_assert@FUNCTION, $pop27, $pop92
	i32.const	$push63=, 15
	i32.add 	$push64=, $10, $pop63
	i32.const	$push91=, 1
	i32.call	$drop=, memcpy@FUNCTION, $8, $pop64, $pop91
	i32.const	$push90=, 1
	i32.add 	$8=, $8, $pop90
	br_if   	0, $5
	end_loop
	i32.sub 	$push33=, $3, $8
	i32.const	$push30=, 12
	i32.add 	$push31=, $1, $pop30
	i32.load	$push32=, 0($pop31)
	i32.const	$push28=, 8
	i32.add 	$push29=, $1, $pop28
	i32.load	$push107=, 0($pop29)
	tee_local	$push106=, $4=, $pop107
	i32.sub 	$push105=, $pop32, $pop106
	tee_local	$push104=, $5=, $pop105
	i32.ge_s	$push34=, $pop33, $pop104
	i32.const	$push35=, .L.str.14
	call    	eosio_assert@FUNCTION, $pop34, $pop35
	i32.call	$drop=, memcpy@FUNCTION, $8, $4, $5
	i64.load	$push36=, 8($2)
	i64.const	$push39=, -3841130244651450368
	i32.load	$push37=, 8($0)
	i64.load	$push38=, 0($pop37)
	i64.load	$push103=, 0($1)
	tee_local	$push102=, $9=, $pop103
	i32.call	$push40=, db_store_i64@FUNCTION, $pop36, $pop39, $pop38, $pop102, $7, $6
	i32.store	24($1), $pop40
	block   	
	i32.const	$push41=, 513
	i32.lt_u	$push42=, $6, $pop41
	br_if   	0, $pop42
	call    	free@FUNCTION, $7
.LBB19_9:
	end_block
	block   	
	i64.load	$push43=, 16($2)
	i64.lt_u	$push44=, $9, $pop43
	br_if   	0, $pop44
	i32.const	$push51=, 16
	i32.add 	$push52=, $2, $pop51
	i64.const	$push49=, -2
	i64.const	$push47=, 1
	i64.add 	$push48=, $9, $pop47
	i64.const	$push45=, -3
	i64.gt_u	$push46=, $9, $pop45
	i64.select	$push50=, $pop49, $pop48, $pop46
	i64.store	0($pop52), $pop50
.LBB19_11:
	end_block
	i32.const	$push60=, 0
	i32.const	$push58=, 16
	i32.add 	$push59=, $10, $pop58
	i32.store	__stack_pointer($pop60), $pop59
	.endfunc
.Lfunc_end19:
	.size	_ZZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE7emplaceIZNS1_8setentryEyyyyEUlRS2_E0_EENS3_14const_iteratorEyOT_ENKUlRS8_E_clINS3_4itemEEEDaSA_, .Lfunc_end19-_ZZN5eosio11multi_indexILy14605613829058101248EN14test_ram_limit4testEJEE7emplaceIZNS1_8setentryEyyyyEUlRS2_E0_EENS3_14const_iteratorEyOT_ENKUlRS8_E_clINS3_4itemEEEDaSA_

	.section	.text._ZNSt3__16vectorIcNS_9allocatorIcEEE6assignEjRKc,"axG",@progbits,_ZNSt3__16vectorIcNS_9allocatorIcEEE6assignEjRKc,comdat
	.hidden	_ZNSt3__16vectorIcNS_9allocatorIcEEE6assignEjRKc
	.weak	_ZNSt3__16vectorIcNS_9allocatorIcEEE6assignEjRKc
	.type	_ZNSt3__16vectorIcNS_9allocatorIcEEE6assignEjRKc,@function
_ZNSt3__16vectorIcNS_9allocatorIcEEE6assignEjRKc:
	.param  	i32, i32, i32
	.local  	i32, i32, i32
	block   	
	block   	
	block   	
	block   	
	i32.load	$push31=, 8($0)
	tee_local	$push30=, $3=, $pop31
	i32.load	$push29=, 0($0)
	tee_local	$push28=, $5=, $pop29
	i32.sub 	$push1=, $pop30, $pop28
	i32.ge_u	$push2=, $pop1, $1
	br_if   	0, $pop2
	block   	
	i32.eqz 	$push55=, $5
	br_if   	0, $pop55
	i32.store	4($0), $5
	call    	_ZdlPv@FUNCTION, $5
	i32.const	$3=, 0
	i32.const	$push13=, 8
	i32.add 	$push14=, $0, $pop13
	i32.const	$push32=, 0
	i32.store	0($pop14), $pop32
	i64.const	$push15=, 0
	i64.store	0($0):p2align=2, $pop15
.LBB20_3:
	end_block
	i32.const	$push16=, -1
	i32.le_s	$push17=, $1, $pop16
	br_if   	3, $pop17
	i32.const	$4=, 2147483647
	block   	
	i32.const	$push18=, 1073741822
	i32.gt_u	$push19=, $3, $pop18
	br_if   	0, $pop19
	i32.const	$push20=, 1
	i32.shl 	$push34=, $3, $pop20
	tee_local	$push33=, $5=, $pop34
	i32.lt_u	$push21=, $5, $1
	i32.select	$4=, $1, $pop33, $pop21
.LBB20_6:
	end_block
	i32.call	$push36=, _Znwj@FUNCTION, $4
	tee_local	$push35=, $5=, $pop36
	i32.store	0($0), $pop35
	i32.store	4($0), $5
	i32.const	$push22=, 8
	i32.add 	$push23=, $0, $pop22
	i32.add 	$push24=, $5, $4
	i32.store	0($pop23), $pop24
	i32.const	$push26=, 4
	i32.add 	$0=, $0, $pop26
.LBB20_7:
	loop    	
	i32.load8_u	$push25=, 0($2)
	i32.store8	0($5), $pop25
	i32.load	$push27=, 0($0)
	i32.const	$push42=, 1
	i32.add 	$push41=, $pop27, $pop42
	tee_local	$push40=, $5=, $pop41
	i32.store	0($0), $pop40
	i32.const	$push39=, -1
	i32.add 	$push38=, $1, $pop39
	tee_local	$push37=, $1=, $pop38
	br_if   	0, $pop37
	br      	2
.LBB20_8:
	end_loop
	end_block
	block   	
	i32.load	$push0=, 4($0)
	i32.sub 	$push46=, $pop0, $5
	tee_local	$push45=, $3=, $pop46
	i32.lt_u	$push3=, $3, $1
	i32.select	$push44=, $pop45, $1, $pop3
	tee_local	$push43=, $4=, $pop44
	i32.eqz 	$push56=, $pop43
	br_if   	0, $pop56
	i32.load8_u	$push4=, 0($2)
	i32.call	$drop=, memset@FUNCTION, $5, $pop4, $4
.LBB20_10:
	end_block
	i32.ge_u	$push5=, $3, $1
	br_if   	1, $pop5
	i32.sub 	$1=, $3, $1
	i32.const	$push10=, 4
	i32.add 	$push48=, $0, $pop10
	tee_local	$push47=, $5=, $pop48
	i32.load	$0=, 0($pop47)
.LBB20_12:
	loop    	
	i32.load8_u	$push11=, 0($2)
	i32.store8	0($0), $pop11
	i32.load	$push12=, 0($5)
	i32.const	$push54=, 1
	i32.add 	$push53=, $pop12, $pop54
	tee_local	$push52=, $0=, $pop53
	i32.store	0($5), $pop52
	i32.const	$push51=, 1
	i32.add 	$push50=, $1, $pop51
	tee_local	$push49=, $1=, $pop50
	br_if   	0, $pop49
.LBB20_13:
	end_loop
	end_block
	return
.LBB20_14:
	end_block
	i32.const	$push6=, 4
	i32.add 	$push7=, $0, $pop6
	i32.load	$push8=, 0($0)
	i32.add 	$push9=, $pop8, $1
	i32.store	0($pop7), $pop9
	return
.LBB20_15:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
	.endfunc
.Lfunc_end20:
	.size	_ZNSt3__16vectorIcNS_9allocatorIcEEE6assignEjRKc, .Lfunc_end20-_ZNSt3__16vectorIcNS_9allocatorIcEEE6assignEjRKc

	.text
	.weak	_Znwj
	.type	_Znwj,@function
_Znwj:
	.param  	i32
	.result 	i32
	.local  	i32, i32
	block   	
	i32.const	$push0=, 1
	i32.select	$push4=, $0, $pop0, $0
	tee_local	$push3=, $1=, $pop4
	i32.call	$push2=, malloc@FUNCTION, $pop3
	tee_local	$push1=, $0=, $pop2
	br_if   	0, $pop1
.LBB21_1:
	loop    	
	i32.const	$0=, 0
	i32.const	$push9=, 0
	i32.load	$push8=, _ZStL13__new_handler($pop9)
	tee_local	$push7=, $2=, $pop8
	i32.eqz 	$push10=, $pop7
	br_if   	1, $pop10
	call_indirect	$2
	i32.call	$push6=, malloc@FUNCTION, $1
	tee_local	$push5=, $0=, $pop6
	i32.eqz 	$push11=, $pop5
	br_if   	0, $pop11
.LBB21_3:
	end_loop
	end_block
	copy_local	$push12=, $0
	.endfunc
.Lfunc_end21:
	.size	_Znwj, .Lfunc_end21-_Znwj

	.weak	_ZdlPv
	.type	_ZdlPv,@function
_ZdlPv:
	.param  	i32
	block   	
	i32.eqz 	$push0=, $0
	br_if   	0, $pop0
	call    	free@FUNCTION, $0
.LBB22_2:
	end_block
	.endfunc
.Lfunc_end22:
	.size	_ZdlPv, .Lfunc_end22-_ZdlPv

	.section	.text._ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,"axG",@progbits,_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,comdat
	.hidden	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.weak	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.type	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,@function
_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv:
	.param  	i32
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end23:
	.size	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv, .Lfunc_end23-_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv

	.text
	.hidden	memcmp
	.globl	memcmp
	.type	memcmp,@function
memcmp:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32, i32, i32
	i32.const	$5=, 0
	block   	
	i32.eqz 	$push10=, $2
	br_if   	0, $pop10
.LBB24_2:
	block   	
	loop    	
	i32.load8_u	$push4=, 0($0)
	tee_local	$push3=, $3=, $pop4
	i32.load8_u	$push2=, 0($1)
	tee_local	$push1=, $4=, $pop2
	i32.ne  	$push0=, $pop3, $pop1
	br_if   	1, $pop0
	i32.const	$push9=, 1
	i32.add 	$1=, $1, $pop9
	i32.const	$push8=, 1
	i32.add 	$0=, $0, $pop8
	i32.const	$push7=, -1
	i32.add 	$push6=, $2, $pop7
	tee_local	$push5=, $2=, $pop6
	br_if   	0, $pop5
	br      	2
.LBB24_4:
	end_loop
	end_block
	i32.sub 	$5=, $3, $4
.LBB24_5:
	end_block
	copy_local	$push11=, $5
	.endfunc
.Lfunc_end24:
	.size	memcmp, .Lfunc_end24-memcmp

	.hidden	malloc
	.globl	malloc
	.type	malloc,@function
malloc:
	.param  	i32
	.result 	i32
	i32.const	$push0=, _ZN5eosio11memory_heapE
	i32.call	$push1=, _ZN5eosio14memory_manager6mallocEm@FUNCTION, $pop0, $0
	.endfunc
.Lfunc_end25:
	.size	malloc, .Lfunc_end25-malloc

	.section	.text._ZN5eosio14memory_manager6mallocEm,"axG",@progbits,_ZN5eosio14memory_manager6mallocEm,comdat
	.hidden	_ZN5eosio14memory_manager6mallocEm
	.weak	_ZN5eosio14memory_manager6mallocEm
	.type	_ZN5eosio14memory_manager6mallocEm,@function
_ZN5eosio14memory_manager6mallocEm:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
	block   	
	i32.eqz 	$push128=, $1
	br_if   	0, $pop128
	block   	
	i32.load	$push63=, 8384($0)
	tee_local	$push62=, $13=, $pop63
	br_if   	0, $pop62
	i32.const	$13=, 16
	i32.const	$push0=, 8384
	i32.add 	$push1=, $0, $pop0
	i32.const	$push64=, 16
	i32.store	0($pop1), $pop64
.LBB26_3:
	end_block
	i32.const	$push2=, 8
	i32.add 	$push3=, $1, $pop2
	i32.const	$push69=, 4
	i32.add 	$push4=, $1, $pop69
	i32.const	$push5=, 7
	i32.and 	$push68=, $pop4, $pop5
	tee_local	$push67=, $2=, $pop68
	i32.sub 	$push6=, $pop3, $pop67
	i32.select	$2=, $pop6, $1, $2
	block   	
	block   	
	block   	
	i32.load	$push66=, 8388($0)
	tee_local	$push65=, $10=, $pop66
	i32.ge_u	$push7=, $pop65, $13
	br_if   	0, $pop7
	i32.const	$push8=, 12
	i32.mul 	$push9=, $10, $pop8
	i32.add 	$push10=, $0, $pop9
	i32.const	$push11=, 8192
	i32.add 	$1=, $pop10, $pop11
	block   	
	br_if   	0, $10
	i32.const	$push12=, 8196
	i32.add 	$push71=, $0, $pop12
	tee_local	$push70=, $13=, $pop71
	i32.load	$push13=, 0($pop70)
	br_if   	0, $pop13
	i32.const	$push14=, 8192
	i32.store	0($1), $pop14
	i32.store	0($13), $0
.LBB26_7:
	end_block
	i32.const	$push72=, 4
	i32.add 	$10=, $2, $pop72
.LBB26_8:
	loop    	
	block   	
	i32.load	$push74=, 8($1)
	tee_local	$push73=, $13=, $pop74
	i32.add 	$push15=, $pop73, $10
	i32.load	$push16=, 0($1)
	i32.gt_u	$push17=, $pop15, $pop16
	br_if   	0, $pop17
	i32.load	$push18=, 4($1)
	i32.add 	$push84=, $pop18, $13
	tee_local	$push83=, $13=, $pop84
	i32.load	$push19=, 0($13)
	i32.const	$push82=, -2147483648
	i32.and 	$push20=, $pop19, $pop82
	i32.or  	$push21=, $pop20, $2
	i32.store	0($pop83), $pop21
	i32.const	$push81=, 8
	i32.add 	$push80=, $1, $pop81
	tee_local	$push79=, $1=, $pop80
	i32.load	$push22=, 0($1)
	i32.add 	$push23=, $pop22, $10
	i32.store	0($pop79), $pop23
	i32.load	$push24=, 0($13)
	i32.const	$push78=, -2147483648
	i32.or  	$push25=, $pop24, $pop78
	i32.store	0($13), $pop25
	i32.const	$push77=, 4
	i32.add 	$push76=, $13, $pop77
	tee_local	$push75=, $1=, $pop76
	br_if   	3, $pop75
.LBB26_10:
	end_block
	i32.call	$push86=, _ZN5eosio14memory_manager16next_active_heapEv@FUNCTION, $0
	tee_local	$push85=, $1=, $pop86
	br_if   	0, $pop85
.LBB26_11:
	end_loop
	end_block
	i32.const	$push26=, 2147483644
	i32.sub 	$4=, $pop26, $2
	i32.const	$push55=, 8392
	i32.add 	$11=, $0, $pop55
	i32.const	$push57=, 8384
	i32.add 	$12=, $0, $pop57
	i32.load	$push88=, 8392($0)
	tee_local	$push87=, $3=, $pop88
	copy_local	$13=, $pop87
.LBB26_12:
	loop    	
	i32.const	$push100=, 12
	i32.mul 	$push27=, $13, $pop100
	i32.add 	$push99=, $0, $pop27
	tee_local	$push98=, $1=, $pop99
	i32.const	$push97=, 8200
	i32.add 	$push29=, $pop98, $pop97
	i32.load	$push30=, 0($pop29)
	i32.const	$push96=, 8192
	i32.add 	$push95=, $1, $pop96
	tee_local	$push94=, $5=, $pop95
	i32.load	$push28=, 0($pop94)
	i32.eq  	$push31=, $pop30, $pop28
	i32.const	$push93=, .L.str.1.11
	call    	eosio_assert@FUNCTION, $pop31, $pop93
	i32.const	$push92=, 8196
	i32.add 	$push32=, $1, $pop92
	i32.load	$push91=, 0($pop32)
	tee_local	$push90=, $6=, $pop91
	i32.const	$push89=, 4
	i32.add 	$13=, $pop90, $pop89
.LBB26_13:
	loop    	
	i32.load	$push33=, 0($5)
	i32.add 	$7=, $6, $pop33
	i32.const	$push107=, -4
	i32.add 	$push106=, $13, $pop107
	tee_local	$push105=, $8=, $pop106
	i32.load	$push104=, 0($pop105)
	tee_local	$push103=, $9=, $pop104
	i32.const	$push102=, 2147483647
	i32.and 	$1=, $pop103, $pop102
	block   	
	i32.const	$push101=, 0
	i32.lt_s	$push34=, $9, $pop101
	br_if   	0, $pop34
	block   	
	i32.ge_u	$push35=, $1, $2
	br_if   	0, $pop35
.LBB26_15:
	loop    	
	i32.add 	$push109=, $13, $1
	tee_local	$push108=, $10=, $pop109
	i32.ge_u	$push36=, $pop108, $7
	br_if   	1, $pop36
	i32.load	$push112=, 0($10)
	tee_local	$push111=, $10=, $pop112
	i32.const	$push110=, 0
	i32.lt_s	$push37=, $pop111, $pop110
	br_if   	1, $pop37
	i32.const	$push116=, 2147483647
	i32.and 	$push38=, $10, $pop116
	i32.add 	$push39=, $1, $pop38
	i32.const	$push115=, 4
	i32.add 	$push114=, $pop39, $pop115
	tee_local	$push113=, $1=, $pop114
	i32.lt_u	$push40=, $pop113, $2
	br_if   	0, $pop40
.LBB26_18:
	end_loop
	end_block
	i32.lt_u	$push41=, $1, $2
	i32.select	$push42=, $1, $2, $pop41
	i32.const	$push117=, -2147483648
	i32.and 	$push43=, $9, $pop117
	i32.or  	$push44=, $pop42, $pop43
	i32.store	0($8), $pop44
	block   	
	i32.le_u	$push45=, $1, $2
	br_if   	0, $pop45
	i32.add 	$push46=, $13, $2
	i32.add 	$push47=, $4, $1
	i32.const	$push118=, 2147483647
	i32.and 	$push48=, $pop47, $pop118
	i32.store	0($pop46), $pop48
.LBB26_20:
	end_block
	i32.ge_u	$push49=, $1, $2
	br_if   	4, $pop49
.LBB26_21:
	end_block
	i32.add 	$push53=, $13, $1
	i32.const	$push121=, 4
	i32.add 	$push120=, $pop53, $pop121
	tee_local	$push119=, $13=, $pop120
	i32.lt_u	$push54=, $pop119, $7
	br_if   	0, $pop54
	end_loop
	i32.const	$1=, 0
	i32.const	$push127=, 0
	i32.load	$push56=, 0($11)
	i32.const	$push126=, 1
	i32.add 	$push125=, $pop56, $pop126
	tee_local	$push124=, $13=, $pop125
	i32.load	$push58=, 0($12)
	i32.eq  	$push59=, $13, $pop58
	i32.select	$push123=, $pop127, $pop124, $pop59
	tee_local	$push122=, $13=, $pop123
	i32.store	0($11), $pop122
	i32.ne  	$push60=, $13, $3
	br_if   	0, $pop60
.LBB26_23:
	end_loop
	end_block
	return  	$1
.LBB26_24:
	end_block
	i32.load	$push50=, 0($8)
	i32.const	$push51=, -2147483648
	i32.or  	$push52=, $pop50, $pop51
	i32.store	0($8), $pop52
	return  	$13
.LBB26_25:
	end_block
	i32.const	$push61=, 0
	.endfunc
.Lfunc_end26:
	.size	_ZN5eosio14memory_manager6mallocEm, .Lfunc_end26-_ZN5eosio14memory_manager6mallocEm

	.section	.text._ZN5eosio14memory_manager16next_active_heapEv,"axG",@progbits,_ZN5eosio14memory_manager16next_active_heapEv,comdat
	.hidden	_ZN5eosio14memory_manager16next_active_heapEv
	.weak	_ZN5eosio14memory_manager16next_active_heapEv
	.type	_ZN5eosio14memory_manager16next_active_heapEv,@function
_ZN5eosio14memory_manager16next_active_heapEv:
	.param  	i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32
	i32.load	$1=, 8388($0)
	block   	
	block   	
	i32.const	$push94=, 0
	i32.load8_u	$push2=, _ZZ4sbrkjE11initialized($pop94)
	i32.eqz 	$push157=, $pop2
	br_if   	0, $pop157
	i32.const	$push95=, 0
	i32.load	$7=, _ZZ4sbrkjE10sbrk_bytes($pop95)
	br      	1
.LBB27_2:
	end_block
	current_memory	$7=
	i32.const	$push99=, 0
	i32.const	$push3=, 1
	i32.store8	_ZZ4sbrkjE11initialized($pop99), $pop3
	i32.const	$push98=, 0
	i32.const	$push4=, 16
	i32.shl 	$push97=, $7, $pop4
	tee_local	$push96=, $7=, $pop97
	i32.store	_ZZ4sbrkjE10sbrk_bytes($pop98), $pop96
.LBB27_3:
	end_block
	copy_local	$3=, $7
	block   	
	block   	
	block   	
	block   	
	i32.const	$push5=, 65535
	i32.add 	$push6=, $7, $pop5
	i32.const	$push7=, 16
	i32.shr_u	$push103=, $pop6, $pop7
	tee_local	$push102=, $2=, $pop103
	current_memory	$push101=
	tee_local	$push100=, $8=, $pop101
	i32.le_u	$push8=, $pop102, $pop100
	br_if   	0, $pop8
	i32.sub 	$push9=, $2, $8
	grow_memory	$pop9
	i32.const	$8=, 0
	current_memory	$push10=
	i32.ne  	$push11=, $2, $pop10
	br_if   	1, $pop11
	i32.const	$push12=, 0
	i32.load	$3=, _ZZ4sbrkjE10sbrk_bytes($pop12)
.LBB27_6:
	end_block
	i32.const	$8=, 0
	i32.const	$push105=, 0
	i32.store	_ZZ4sbrkjE10sbrk_bytes($pop105), $3
	i32.const	$push104=, 0
	i32.lt_s	$push13=, $7, $pop104
	br_if   	0, $pop13
	i32.const	$push0=, 12
	i32.mul 	$push1=, $1, $pop0
	i32.add 	$2=, $0, $pop1
	i32.const	$push20=, 65536
	i32.const	$push19=, 131072
	i32.const	$push16=, 65535
	i32.and 	$push110=, $7, $pop16
	tee_local	$push109=, $8=, $pop110
	i32.const	$push17=, 64513
	i32.lt_u	$push108=, $pop109, $pop17
	tee_local	$push107=, $6=, $pop108
	i32.select	$push21=, $pop20, $pop19, $pop107
	i32.add 	$push22=, $7, $pop21
	i32.const	$push14=, 131071
	i32.and 	$push15=, $7, $pop14
	i32.select	$push18=, $8, $pop15, $6
	i32.sub 	$push23=, $pop22, $pop18
	i32.sub 	$7=, $pop23, $7
	block   	
	i32.const	$push106=, 0
	i32.load8_u	$push24=, _ZZ4sbrkjE11initialized($pop106)
	br_if   	0, $pop24
	current_memory	$3=
	i32.const	$push114=, 0
	i32.const	$push25=, 1
	i32.store8	_ZZ4sbrkjE11initialized($pop114), $pop25
	i32.const	$push113=, 0
	i32.const	$push26=, 16
	i32.shl 	$push112=, $3, $pop26
	tee_local	$push111=, $3=, $pop112
	i32.store	_ZZ4sbrkjE10sbrk_bytes($pop113), $pop111
.LBB27_9:
	end_block
	i32.const	$push116=, 8192
	i32.add 	$2=, $2, $pop116
	i32.const	$push115=, 0
	i32.lt_s	$push27=, $7, $pop115
	br_if   	1, $pop27
	copy_local	$6=, $3
	block   	
	i32.const	$push28=, 7
	i32.add 	$push29=, $7, $pop28
	i32.const	$push30=, -8
	i32.and 	$push122=, $pop29, $pop30
	tee_local	$push121=, $5=, $pop122
	i32.add 	$push31=, $pop121, $3
	i32.const	$push32=, 65535
	i32.add 	$push33=, $pop31, $pop32
	i32.const	$push34=, 16
	i32.shr_u	$push120=, $pop33, $pop34
	tee_local	$push119=, $8=, $pop120
	current_memory	$push118=
	tee_local	$push117=, $4=, $pop118
	i32.le_u	$push35=, $pop119, $pop117
	br_if   	0, $pop35
	i32.sub 	$push36=, $8, $4
	grow_memory	$pop36
	current_memory	$push37=
	i32.ne  	$push38=, $8, $pop37
	br_if   	2, $pop38
	i32.const	$push39=, 0
	i32.load	$6=, _ZZ4sbrkjE10sbrk_bytes($pop39)
.LBB27_13:
	end_block
	i32.const	$push41=, 0
	i32.add 	$push40=, $6, $5
	i32.store	_ZZ4sbrkjE10sbrk_bytes($pop41), $pop40
	i32.const	$push42=, -1
	i32.eq  	$push43=, $3, $pop42
	br_if   	1, $pop43
	i32.const	$push44=, 12
	i32.mul 	$push45=, $1, $pop44
	i32.add 	$push128=, $0, $pop45
	tee_local	$push127=, $1=, $pop128
	i32.const	$push46=, 8196
	i32.add 	$push47=, $pop127, $pop46
	i32.load	$push126=, 0($pop47)
	tee_local	$push125=, $6=, $pop126
	i32.load	$push124=, 0($2)
	tee_local	$push123=, $8=, $pop124
	i32.add 	$push48=, $pop125, $pop123
	i32.eq  	$push49=, $pop48, $3
	br_if   	2, $pop49
	block   	
	i32.const	$push50=, 8200
	i32.add 	$push132=, $1, $pop50
	tee_local	$push131=, $5=, $pop132
	i32.load	$push130=, 0($pop131)
	tee_local	$push129=, $1=, $pop130
	i32.eq  	$push51=, $8, $pop129
	br_if   	0, $pop51
	i32.add 	$push134=, $6, $1
	tee_local	$push133=, $6=, $pop134
	i32.load	$push55=, 0($6)
	i32.const	$push56=, -2147483648
	i32.and 	$push57=, $pop55, $pop56
	i32.const	$push52=, -4
	i32.sub 	$push53=, $pop52, $1
	i32.add 	$push54=, $pop53, $8
	i32.or  	$push58=, $pop57, $pop54
	i32.store	0($pop133), $pop58
	i32.load	$push59=, 0($2)
	i32.store	0($5), $pop59
	i32.load	$push60=, 0($6)
	i32.const	$push61=, 2147483647
	i32.and 	$push62=, $pop60, $pop61
	i32.store	0($6), $pop62
.LBB27_17:
	end_block
	i32.const	$push63=, 8388
	i32.add 	$push142=, $0, $pop63
	tee_local	$push141=, $2=, $pop142
	i32.load	$push64=, 0($2)
	i32.const	$push65=, 1
	i32.add 	$push140=, $pop64, $pop65
	tee_local	$push139=, $2=, $pop140
	i32.store	0($pop141), $pop139
	i32.const	$push66=, 12
	i32.mul 	$push67=, $2, $pop66
	i32.add 	$push138=, $0, $pop67
	tee_local	$push137=, $0=, $pop138
	i32.const	$push68=, 8196
	i32.add 	$push69=, $pop137, $pop68
	i32.store	0($pop69), $3
	i32.const	$push70=, 8192
	i32.add 	$push136=, $0, $pop70
	tee_local	$push135=, $8=, $pop136
	i32.store	0($pop135), $7
.LBB27_18:
	end_block
	return  	$8
.LBB27_19:
	end_block
	block   	
	i32.load	$push150=, 0($2)
	tee_local	$push149=, $8=, $pop150
	i32.const	$push72=, 12
	i32.mul 	$push73=, $1, $pop72
	i32.add 	$push148=, $0, $pop73
	tee_local	$push147=, $3=, $pop148
	i32.const	$push74=, 8200
	i32.add 	$push146=, $pop147, $pop74
	tee_local	$push145=, $1=, $pop146
	i32.load	$push144=, 0($pop145)
	tee_local	$push143=, $7=, $pop144
	i32.eq  	$push75=, $pop149, $pop143
	br_if   	0, $pop75
	i32.const	$push79=, 8196
	i32.add 	$push80=, $3, $pop79
	i32.load	$push81=, 0($pop80)
	i32.add 	$push152=, $pop81, $7
	tee_local	$push151=, $3=, $pop152
	i32.load	$push82=, 0($3)
	i32.const	$push83=, -2147483648
	i32.and 	$push84=, $pop82, $pop83
	i32.const	$push76=, -4
	i32.sub 	$push77=, $pop76, $7
	i32.add 	$push78=, $pop77, $8
	i32.or  	$push85=, $pop84, $pop78
	i32.store	0($pop151), $pop85
	i32.load	$push86=, 0($2)
	i32.store	0($1), $pop86
	i32.load	$push87=, 0($3)
	i32.const	$push88=, 2147483647
	i32.and 	$push89=, $pop87, $pop88
	i32.store	0($3), $pop89
.LBB27_21:
	end_block
	i32.const	$push90=, 8388
	i32.add 	$push156=, $0, $pop90
	tee_local	$push155=, $7=, $pop156
	i32.load	$push91=, 0($pop155)
	i32.const	$push92=, 1
	i32.add 	$push154=, $pop91, $pop92
	tee_local	$push153=, $3=, $pop154
	i32.store	8384($0), $pop153
	i32.store	0($7), $3
	i32.const	$push93=, 0
	return  	$pop93
.LBB27_22:
	end_block
	i32.add 	$push71=, $8, $7
	i32.store	0($2), $pop71
	copy_local	$push158=, $2
	.endfunc
.Lfunc_end27:
	.size	_ZN5eosio14memory_manager16next_active_heapEv, .Lfunc_end27-_ZN5eosio14memory_manager16next_active_heapEv

	.text
	.hidden	free
	.globl	free
	.type	free,@function
free:
	.param  	i32
	.local  	i32, i32, i32
	block   	
	block   	
	i32.eqz 	$push28=, $0
	br_if   	0, $pop28
	i32.const	$push0=, 0
	i32.load	$push16=, _ZN5eosio11memory_heapE+8384($pop0)
	tee_local	$push15=, $2=, $pop16
	i32.const	$push1=, 1
	i32.lt_s	$push2=, $pop15, $pop1
	br_if   	0, $pop2
	i32.const	$3=, _ZN5eosio11memory_heapE+8192
	i32.const	$push18=, 12
	i32.mul 	$push3=, $2, $pop18
	i32.const	$push17=, _ZN5eosio11memory_heapE+8192
	i32.add 	$1=, $pop3, $pop17
.LBB28_3:
	loop    	
	i32.const	$push21=, 4
	i32.add 	$push4=, $3, $pop21
	i32.load	$push20=, 0($pop4)
	tee_local	$push19=, $2=, $pop20
	i32.eqz 	$push29=, $pop19
	br_if   	1, $pop29
	block   	
	i32.const	$push22=, 4
	i32.add 	$push5=, $2, $pop22
	i32.gt_u	$push6=, $pop5, $0
	br_if   	0, $pop6
	i32.load	$push7=, 0($3)
	i32.add 	$push8=, $2, $pop7
	i32.gt_u	$push9=, $pop8, $0
	br_if   	3, $pop9
.LBB28_6:
	end_block
	i32.const	$push25=, 12
	i32.add 	$push24=, $3, $pop25
	tee_local	$push23=, $3=, $pop24
	i32.lt_u	$push14=, $pop23, $1
	br_if   	0, $pop14
.LBB28_7:
	end_loop
	end_block
	return
.LBB28_8:
	end_block
	i32.const	$push10=, -4
	i32.add 	$push27=, $0, $pop10
	tee_local	$push26=, $3=, $pop27
	i32.load	$push11=, 0($3)
	i32.const	$push12=, 2147483647
	i32.and 	$push13=, $pop11, $pop12
	i32.store	0($pop26), $pop13
	.endfunc
.Lfunc_end28:
	.size	free, .Lfunc_end28-free

	.type	.L.str,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"onerror"
	.size	.L.str, 8

	.type	.L.str.1,@object
.L.str.1:
	.asciz	"eosio"
	.size	.L.str.1, 6

	.type	.L.str.2,@object
.L.str.2:
	.asciz	"onerror action's are only valid from the \"eosio\" system account"
	.size	.L.str.2, 64

	.type	.L.str.23,@object
.L.str.23:
	.asciz	"test_ram_limit::printout "
	.size	.L.str.23, 26

	.type	.L.str.24,@object
.L.str.24:
	.asciz	":"
	.size	.L.str.24, 2

	.type	.L.str.5,@object
.L.str.5:
	.asciz	"object passed to iterator_to is not in multi_index"
	.size	.L.str.5, 51

	.type	.L.str.25,@object
.L.str.25:
	.asciz	"\nkey="
	.size	.L.str.25, 6

	.type	.L.str.17,@object
.L.str.17:
	.asciz	"could not find test_table entry"
	.size	.L.str.17, 32

	.type	.L.str.26,@object
.L.str.26:
	.asciz	" size="
	.size	.L.str.26, 7

	.type	.L.str.6,@object
.L.str.6:
	.asciz	"error reading iterator"
	.size	.L.str.6, 23

	.type	.L.str.9,@object
.L.str.9:
	.asciz	"read"
	.size	.L.str.9, 5

	.type	.L.str.7,@object
.L.str.7:
	.asciz	"get"
	.size	.L.str.7, 4

	.type	.L.str.16,@object
.L.str.16:
	.asciz	"test_ram_limit::rmentry "
	.size	.L.str.16, 25

	.type	.L.str.4,@object
.L.str.4:
	.asciz	"\n"
	.size	.L.str.4, 2

	.type	.L.str.18,@object
.L.str.18:
	.asciz	"cannot pass end iterator to erase"
	.size	.L.str.18, 34

	.type	.L.str.19,@object
.L.str.19:
	.asciz	"cannot increment end iterator"
	.size	.L.str.19, 30

	.type	.L.str.20,@object
.L.str.20:
	.asciz	"object passed to erase is not in multi_index"
	.size	.L.str.20, 45

	.type	.L.str.21,@object
.L.str.21:
	.asciz	"cannot erase objects in table of another contract"
	.size	.L.str.21, 50

	.type	.L.str.22,@object
.L.str.22:
	.asciz	"attempt to remove object that was not in multi_index"
	.size	.L.str.22, 53

	.type	.L.str.3,@object
.L.str.3:
	.asciz	"test_ram_limit::setentry "
	.size	.L.str.3, 26

	.type	.L.str.10,@object
.L.str.10:
	.asciz	"cannot pass end iterator to modify"
	.size	.L.str.10, 35

	.type	.L.str.15,@object
.L.str.15:
	.asciz	"cannot create objects in table of another contract"
	.size	.L.str.15, 51

	.type	.L.str.14,@object
.L.str.14:
	.asciz	"write"
	.size	.L.str.14, 6

	.type	.L.str.11,@object
.L.str.11:
	.asciz	"object passed to modify is not in multi_index"
	.size	.L.str.11, 46

	.type	.L.str.12,@object
.L.str.12:
	.asciz	"cannot modify objects in table of another contract"
	.size	.L.str.12, 51

	.type	.L.str.13,@object
.L.str.13:
	.asciz	"updater cannot change primary key when modifying an object"
	.size	.L.str.13, 59

	.type	_ZStL13__new_handler,@object
	.lcomm	_ZStL13__new_handler,4,2
	.hidden	_ZN5eosio11memory_heapE
	.type	_ZN5eosio11memory_heapE,@object
	.bss
	.globl	_ZN5eosio11memory_heapE
	.p2align	2
_ZN5eosio11memory_heapE:
	.skip	8396
	.size	_ZN5eosio11memory_heapE, 8396

	.type	.L.str.1.11,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1.11:
	.asciz	"malloc_from_freed was designed to only be called after _heap was completely allocated"
	.size	.L.str.1.11, 86

	.type	_ZZ4sbrkjE11initialized,@object
	.lcomm	_ZZ4sbrkjE11initialized,1
	.type	_ZZ4sbrkjE10sbrk_bytes,@object
	.lcomm	_ZZ4sbrkjE10sbrk_bytes,4,2

	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.functype	current_time, i64
	.functype	require_auth2, void, i64, i64
	.functype	eosio_assert, void, i32, i32
	.functype	prints, void, i32
	.functype	printn, void, i64
	.functype	db_find_i64, i32, i64, i64, i64, i64
	.functype	printi, void, i64
	.functype	printui, void, i64
	.functype	db_get_i64, i32, i32, i32, i32
	.functype	memcpy, i32, i32, i32, i32
	.functype	action_data_size, i32
	.functype	read_action_data, i32, i32, i32
	.functype	db_next_i64, i32, i32, i32
	.functype	current_receiver, i64
	.functype	db_remove_i64, void, i32
	.functype	db_store_i64, i32, i64, i64, i64, i64, i32, i32
	.functype	memset, i32, i32, i32, i32
	.functype	db_update_i64, void, i32, i64, i32, i32
	.functype	abort, void
