	.text
	.file	"tic_tac_toe.bc"
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

	.hidden	_Z13is_empty_cellRKh
	.globl	_Z13is_empty_cellRKh
	.type	_Z13is_empty_cellRKh,@function
_Z13is_empty_cellRKh:
	.param  	i32
	.result 	i32
	i32.load8_u	$push0=, 0($0)
	i32.eqz 	$push1=, $pop0
	.endfunc
.Lfunc_end5:
	.size	_Z13is_empty_cellRKh, .Lfunc_end5-_Z13is_empty_cellRKh

	.hidden	_Z17is_valid_movementRKtS0_RKNSt3__16vectorIhNS1_9allocatorIhEEEE
	.globl	_Z17is_valid_movementRKtS0_RKNSt3__16vectorIhNS1_9allocatorIhEEEE
	.type	_Z17is_valid_movementRKtS0_RKNSt3__16vectorIhNS1_9allocatorIhEEEE,@function
_Z17is_valid_movementRKtS0_RKNSt3__16vectorIhNS1_9allocatorIhEEEE:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32
	i32.const	$3=, 0
	block   	
	i32.load16_u	$push10=, 0($0)
	tee_local	$push9=, $0=, $pop10
	i32.const	$push8=, 2
	i32.gt_u	$push0=, $pop9, $pop8
	br_if   	0, $pop0
	i32.load16_u	$push13=, 0($1)
	tee_local	$push12=, $1=, $pop13
	i32.const	$push11=, 2
	i32.gt_u	$push1=, $pop12, $pop11
	br_if   	0, $pop1
	i32.load	$push5=, 0($2)
	i32.const	$push2=, 3
	i32.mul 	$push3=, $0, $pop2
	i32.add 	$push4=, $pop3, $1
	i32.add 	$push6=, $pop5, $pop4
	i32.load8_u	$push7=, 0($pop6)
	i32.eqz 	$3=, $pop7
.LBB6_3:
	end_block
	copy_local	$push14=, $3
	.endfunc
.Lfunc_end6:
	.size	_Z17is_valid_movementRKtS0_RKNSt3__16vectorIhNS1_9allocatorIhEEEE, .Lfunc_end6-_Z17is_valid_movementRKtS0_RKNSt3__16vectorIhNS1_9allocatorIhEEEE

	.hidden	_Z10get_winnerRKN11tic_tac_toe4gameE
	.globl	_Z10get_winnerRKN11tic_tac_toe4gameE
	.type	_Z10get_winnerRKN11tic_tac_toe4gameE,@function
_Z10get_winnerRKN11tic_tac_toe4gameE:
	.param  	i32
	.result 	i64
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32
	i32.const	$push58=, 0
	i32.const	$push55=, 0
	i32.load	$push56=, __stack_pointer($pop55)
	i32.const	$push57=, 16
	i32.sub 	$push77=, $pop56, $pop57
	tee_local	$push76=, $21=, $pop77
	i32.store	__stack_pointer($pop58), $pop76
	i32.const	$12=, 3
	i32.const	$push1=, 12
	i32.call	$push75=, _Znwj@FUNCTION, $pop1
	tee_local	$push74=, $1=, $pop75
	i32.const	$push73=, 3
	i32.store	8($pop74), $pop73
	i64.const	$push2=, 12884901891
	i64.store	0($1):p2align=2, $pop2
	i32.const	$push72=, 12
	i32.call	$push71=, _Znwj@FUNCTION, $pop72
	tee_local	$push70=, $3=, $pop71
	i32.const	$push69=, 3
	i32.store	8($pop70), $pop69
	i64.const	$push68=, 12884901891
	i64.store	0($3):p2align=2, $pop68
	i32.const	$push67=, 12
	i32.add 	$2=, $1, $pop67
	i32.const	$push66=, 12
	i32.add 	$4=, $3, $pop66
	i32.const	$14=, 1
	i32.const	$13=, 3
	block   	
	i32.const	$push3=, 36
	i32.add 	$push4=, $0, $pop3
	i32.load	$push65=, 0($pop4)
	tee_local	$push64=, $15=, $pop65
	i32.load	$push63=, 32($0)
	tee_local	$push62=, $5=, $pop63
	i32.eq  	$push5=, $pop64, $pop62
	br_if   	0, $pop5
	i32.sub 	$6=, $15, $5
	i32.const	$14=, 1
	i32.const	$13=, 3
	i32.const	$12=, 3
	i32.const	$15=, 0
.LBB7_2:
	loop    	
	i32.const	$push94=, 3
	i32.rem_u	$push93=, $15, $pop94
	tee_local	$push92=, $8=, $pop93
	i32.const	$push91=, 2
	i32.shl 	$push6=, $pop92, $pop91
	i32.add 	$push90=, $3, $pop6
	tee_local	$push89=, $9=, $pop90
	i32.load	$push7=, 0($9)
	i32.add 	$push88=, $5, $15
	tee_local	$push87=, $7=, $pop88
	i32.load8_u	$push86=, 0($pop87)
	tee_local	$push85=, $10=, $pop86
	i32.and 	$push8=, $pop7, $pop85
	i32.store	0($pop89), $pop8
	i32.const	$push84=, 3
	i32.div_u	$push9=, $15, $pop84
	i32.const	$push83=, 65535
	i32.and 	$push82=, $pop9, $pop83
	tee_local	$push81=, $9=, $pop82
	i32.const	$push80=, 2
	i32.shl 	$push10=, $pop81, $pop80
	i32.add 	$push79=, $1, $pop10
	tee_local	$push78=, $11=, $pop79
	i32.load8_u	$push12=, 0($7)
	i32.load	$push11=, 0($11)
	i32.and 	$push13=, $pop12, $pop11
	i32.store	0($pop78), $pop13
	block   	
	i32.ne  	$push14=, $9, $8
	br_if   	0, $pop14
	i32.load8_u	$push15=, 0($7)
	i32.and 	$13=, $pop15, $13
.LBB7_4:
	end_block
	i32.const	$push96=, 0
	i32.ne  	$10=, $10, $pop96
	block   	
	i32.add 	$push16=, $9, $8
	i32.const	$push95=, 2
	i32.ne  	$push17=, $pop16, $pop95
	br_if   	0, $pop17
	i32.load8_u	$push18=, 0($7)
	i32.and 	$12=, $pop18, $12
.LBB7_6:
	end_block
	i32.and 	$14=, $14, $10
	i32.const	$push99=, 1
	i32.add 	$push98=, $15, $pop99
	tee_local	$push97=, $15=, $pop98
	i32.lt_u	$push19=, $pop97, $6
	br_if   	0, $pop19
.LBB7_7:
	end_loop
	end_block
	i32.const	$push20=, 8
	i32.call	$push108=, _Znwj@FUNCTION, $pop20
	tee_local	$push107=, $15=, $pop108
	i32.store	0($pop107), $13
	i32.store	4($15), $12
	i32.store	0($21), $15
	i32.const	$push106=, 8
	i32.add 	$push105=, $15, $pop106
	tee_local	$push104=, $15=, $pop105
	i32.store	8($21), $pop104
	i32.store	4($21), $15
	i32.call	$drop=, _ZNSt3__16vectorImNS_9allocatorImEEE6insertINS_11__wrap_iterIPmEEEENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleImNS_15iterator_traitsIS9_E9referenceEEE5valueES7_E4typeENS5_IPKmEES9_S9_@FUNCTION, $21, $15, $1, $2
	i32.load	$push21=, 4($21)
	i32.call	$drop=, _ZNSt3__16vectorImNS_9allocatorImEEE6insertINS_11__wrap_iterIPmEEEENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleImNS_15iterator_traitsIS9_E9referenceEEE5valueES7_E4typeENS5_IPKmEES9_S9_@FUNCTION, $21, $pop21, $3, $4
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.load	$push103=, 0($21)
	tee_local	$push102=, $7=, $pop103
	i32.load	$push101=, 4($21)
	tee_local	$push100=, $9=, $pop101
	i32.eq  	$push22=, $pop102, $pop100
	br_if   	0, $pop22
	copy_local	$15=, $7
.LBB7_9:
	loop    	
	i32.load	$push111=, 0($15)
	tee_local	$push110=, $8=, $pop111
	i32.const	$push109=, 2
	i32.eq  	$push23=, $pop110, $pop109
	br_if   	2, $pop23
	i32.const	$push112=, 1
	i32.eq  	$push24=, $8, $pop112
	br_if   	3, $pop24
	i32.const	$push115=, 4
	i32.add 	$push114=, $15, $pop115
	tee_local	$push113=, $15=, $pop114
	i32.ne  	$push26=, $9, $pop113
	br_if   	0, $pop26
.LBB7_12:
	end_loop
	end_block
	i64.const	$17=, 0
	i64.const	$16=, 59
	i32.const	$15=, .L.str
	i64.const	$18=, 0
.LBB7_13:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push116=, 3
	i64.gt_u	$push27=, $17, $pop116
	br_if   	0, $pop27
	i32.load8_s	$push121=, 0($15)
	tee_local	$push120=, $8=, $pop121
	i32.const	$push119=, -97
	i32.add 	$push29=, $pop120, $pop119
	i32.const	$push118=, 255
	i32.and 	$push30=, $pop29, $pop118
	i32.const	$push117=, 25
	i32.gt_u	$push31=, $pop30, $pop117
	br_if   	1, $pop31
	i32.const	$push122=, 165
	i32.add 	$8=, $8, $pop122
	br      	2
.LBB7_16:
	end_block
	i64.const	$19=, 0
	i64.const	$push123=, 11
	i64.le_u	$push28=, $17, $pop123
	br_if   	2, $pop28
	br      	3
.LBB7_17:
	end_block
	i32.const	$push128=, 208
	i32.add 	$push32=, $8, $pop128
	i32.const	$push127=, 0
	i32.const	$push126=, -49
	i32.add 	$push33=, $8, $pop126
	i32.const	$push125=, 255
	i32.and 	$push34=, $pop33, $pop125
	i32.const	$push124=, 5
	i32.lt_u	$push35=, $pop34, $pop124
	i32.select	$8=, $pop32, $pop127, $pop35
.LBB7_18:
	end_block
	i64.extend_u/i32	$push36=, $8
	i64.const	$push130=, 56
	i64.shl 	$push37=, $pop36, $pop130
	i64.const	$push129=, 56
	i64.shr_s	$19=, $pop37, $pop129
.LBB7_19:
	end_block
	i64.const	$push132=, 31
	i64.and 	$push39=, $19, $pop132
	i64.const	$push131=, 4294967295
	i64.and 	$push38=, $16, $pop131
	i64.shl 	$19=, $pop39, $pop38
.LBB7_20:
	end_block
	i32.const	$push138=, 1
	i32.add 	$15=, $15, $pop138
	i64.const	$push137=, 1
	i64.add 	$17=, $17, $pop137
	i64.or  	$18=, $19, $18
	i64.const	$push136=, -5
	i64.add 	$push135=, $16, $pop136
	tee_local	$push134=, $16=, $pop135
	i64.const	$push133=, -6
	i64.ne  	$push40=, $pop134, $pop133
	br_if   	0, $pop40
	end_loop
	i64.const	$17=, 0
	i64.const	$16=, 59
	i32.const	$15=, .L.str.1
	i64.const	$20=, 0
.LBB7_22:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push139=, 3
	i64.gt_u	$push41=, $17, $pop139
	br_if   	0, $pop41
	i32.load8_s	$push144=, 0($15)
	tee_local	$push143=, $8=, $pop144
	i32.const	$push142=, -97
	i32.add 	$push43=, $pop143, $pop142
	i32.const	$push141=, 255
	i32.and 	$push44=, $pop43, $pop141
	i32.const	$push140=, 25
	i32.gt_u	$push45=, $pop44, $pop140
	br_if   	1, $pop45
	i32.const	$push145=, 165
	i32.add 	$8=, $8, $pop145
	br      	2
.LBB7_25:
	end_block
	i64.const	$19=, 0
	i64.const	$push146=, 11
	i64.le_u	$push42=, $17, $pop146
	br_if   	2, $pop42
	br      	3
.LBB7_26:
	end_block
	i32.const	$push151=, 208
	i32.add 	$push46=, $8, $pop151
	i32.const	$push150=, 0
	i32.const	$push149=, -49
	i32.add 	$push47=, $8, $pop149
	i32.const	$push148=, 255
	i32.and 	$push48=, $pop47, $pop148
	i32.const	$push147=, 5
	i32.lt_u	$push49=, $pop48, $pop147
	i32.select	$8=, $pop46, $pop150, $pop49
.LBB7_27:
	end_block
	i64.extend_u/i32	$push50=, $8
	i64.const	$push153=, 56
	i64.shl 	$push51=, $pop50, $pop153
	i64.const	$push152=, 56
	i64.shr_s	$19=, $pop51, $pop152
.LBB7_28:
	end_block
	i64.const	$push155=, 31
	i64.and 	$push53=, $19, $pop155
	i64.const	$push154=, 4294967295
	i64.and 	$push52=, $16, $pop154
	i64.shl 	$19=, $pop53, $pop52
.LBB7_29:
	end_block
	i32.const	$push161=, 1
	i32.add 	$15=, $15, $pop161
	i64.const	$push160=, 1
	i64.add 	$17=, $17, $pop160
	i64.or  	$20=, $19, $20
	i64.const	$push159=, -5
	i64.add 	$push158=, $16, $pop159
	tee_local	$push157=, $16=, $pop158
	i64.const	$push156=, -6
	i64.ne  	$push54=, $pop157, $pop156
	br_if   	0, $pop54
	end_loop
	i64.select	$17=, $18, $20, $14
	br_if   	2, $7
	br      	3
.LBB7_31:
	end_block
	i64.load	$17=, 0($0)
	br_if   	1, $7
	br      	2
.LBB7_32:
	end_block
	i32.const	$push25=, 8
	i32.add 	$push0=, $0, $pop25
	i64.load	$17=, 0($pop0)
	i32.eqz 	$push162=, $7
	br_if   	1, $pop162
.LBB7_33:
	end_block
	i32.store	4($21), $7
	call    	_ZdlPv@FUNCTION, $7
.LBB7_34:
	end_block
	block   	
	i32.eqz 	$push163=, $3
	br_if   	0, $pop163
	call    	_ZdlPv@FUNCTION, $3
.LBB7_36:
	end_block
	block   	
	i32.eqz 	$push164=, $1
	br_if   	0, $pop164
	call    	_ZdlPv@FUNCTION, $1
.LBB7_38:
	end_block
	i32.const	$push61=, 0
	i32.const	$push59=, 16
	i32.add 	$push60=, $21, $pop59
	i32.store	__stack_pointer($pop61), $pop60
	copy_local	$push165=, $17
	.endfunc
.Lfunc_end7:
	.size	_Z10get_winnerRKN11tic_tac_toe4gameE, .Lfunc_end7-_Z10get_winnerRKN11tic_tac_toe4gameE

	.section	.text._ZNSt3__16vectorImNS_9allocatorImEEE6insertINS_11__wrap_iterIPmEEEENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleImNS_15iterator_traitsIS9_E9referenceEEE5valueES7_E4typeENS5_IPKmEES9_S9_,"axG",@progbits,_ZNSt3__16vectorImNS_9allocatorImEEE6insertINS_11__wrap_iterIPmEEEENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleImNS_15iterator_traitsIS9_E9referenceEEE5valueES7_E4typeENS5_IPKmEES9_S9_,comdat
	.hidden	_ZNSt3__16vectorImNS_9allocatorImEEE6insertINS_11__wrap_iterIPmEEEENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleImNS_15iterator_traitsIS9_E9referenceEEE5valueES7_E4typeENS5_IPKmEES9_S9_
	.weak	_ZNSt3__16vectorImNS_9allocatorImEEE6insertINS_11__wrap_iterIPmEEEENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleImNS_15iterator_traitsIS9_E9referenceEEE5valueES7_E4typeENS5_IPKmEES9_S9_
	.type	_ZNSt3__16vectorImNS_9allocatorImEEE6insertINS_11__wrap_iterIPmEEEENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleImNS_15iterator_traitsIS9_E9referenceEEE5valueES7_E4typeENS5_IPKmEES9_S9_,@function
_ZNSt3__16vectorImNS_9allocatorImEEE6insertINS_11__wrap_iterIPmEEEENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleImNS_15iterator_traitsIS9_E9referenceEEE5valueES7_E4typeENS5_IPKmEES9_S9_:
	.param  	i32, i32, i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i32
	block   	
	i32.sub 	$push74=, $3, $2
	tee_local	$push73=, $10=, $pop74
	i32.const	$push1=, 1
	i32.lt_s	$push2=, $pop73, $pop1
	br_if   	0, $pop2
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.const	$push0=, 2
	i32.shr_s	$push81=, $10, $pop0
	tee_local	$push80=, $4=, $pop81
	i32.load	$push79=, 8($0)
	tee_local	$push78=, $10=, $pop79
	i32.load	$push77=, 4($0)
	tee_local	$push76=, $5=, $pop77
	i32.sub 	$push3=, $pop78, $pop76
	i32.const	$push75=, 2
	i32.shr_s	$push4=, $pop3, $pop75
	i32.le_s	$push5=, $pop80, $pop4
	br_if   	0, $pop5
	i32.load	$push86=, 0($0)
	tee_local	$push85=, $8=, $pop86
	i32.sub 	$push39=, $5, $pop85
	i32.const	$push84=, 2
	i32.shr_s	$push40=, $pop39, $pop84
	i32.add 	$push83=, $pop40, $4
	tee_local	$push82=, $5=, $pop83
	i32.const	$push41=, 1073741824
	i32.ge_u	$push42=, $pop82, $pop41
	br_if   	4, $pop42
	i32.sub 	$push89=, $10, $8
	tee_local	$push88=, $4=, $pop89
	i32.const	$push87=, 2
	i32.shr_s	$push43=, $pop88, $pop87
	i32.const	$push44=, 536870911
	i32.ge_u	$push45=, $pop43, $pop44
	br_if   	1, $pop45
	i32.sub 	$push50=, $1, $8
	i32.const	$push51=, 2
	i32.shr_s	$10=, $pop50, $pop51
	i32.const	$push48=, 1
	i32.shr_s	$push93=, $4, $pop48
	tee_local	$push92=, $8=, $pop93
	i32.lt_u	$push49=, $8, $5
	i32.select	$push91=, $5, $pop92, $pop49
	tee_local	$push90=, $5=, $pop91
	i32.eqz 	$push144=, $pop90
	br_if   	3, $pop144
	i32.const	$push52=, 1073741824
	i32.lt_u	$push53=, $5, $pop52
	br_if   	2, $pop53
	call    	abort@FUNCTION
	unreachable
.LBB8_7:
	end_block
	block   	
	block   	
	i32.sub 	$push98=, $5, $1
	tee_local	$push97=, $6=, $pop98
	i32.const	$push96=, 2
	i32.shr_s	$push95=, $pop97, $pop96
	tee_local	$push94=, $10=, $pop95
	i32.le_s	$push6=, $4, $pop94
	br_if   	0, $pop6
	copy_local	$8=, $5
	block   	
	i32.const	$push101=, 2
	i32.shl 	$push7=, $10, $pop101
	i32.add 	$push100=, $2, $pop7
	tee_local	$push99=, $9=, $pop100
	i32.eq  	$push8=, $pop99, $3
	br_if   	0, $pop8
	i32.const	$push9=, -4
	i32.add 	$push10=, $3, $pop9
	i32.sub 	$7=, $pop10, $9
	copy_local	$10=, $5
	copy_local	$8=, $9
.LBB8_10:
	loop    	
	i32.load	$push11=, 0($8)
	i32.store	0($10), $pop11
	i32.const	$push105=, 4
	i32.add 	$10=, $10, $pop105
	i32.const	$push104=, 4
	i32.add 	$push103=, $8, $pop104
	tee_local	$push102=, $8=, $pop103
	i32.ne  	$push12=, $3, $pop102
	br_if   	0, $pop12
	end_loop
	i32.const	$push13=, 4
	i32.add 	$push14=, $0, $pop13
	i32.const	$push15=, -4
	i32.and 	$push16=, $7, $pop15
	i32.add 	$push17=, $5, $pop16
	i32.const	$push108=, 4
	i32.add 	$push107=, $pop17, $pop108
	tee_local	$push106=, $8=, $pop107
	i32.store	0($pop14), $pop106
.LBB8_12:
	end_block
	i32.const	$push18=, 1
	i32.ge_s	$push19=, $6, $pop18
	br_if   	1, $pop19
	br      	7
.LBB8_13:
	end_block
	copy_local	$8=, $5
	copy_local	$9=, $3
.LBB8_14:
	end_block
	i32.const	$push116=, 2
	i32.shl 	$push115=, $4, $pop116
	tee_local	$push114=, $10=, $pop115
	i32.add 	$push20=, $1, $pop114
	i32.sub 	$push113=, $8, $pop20
	tee_local	$push112=, $6=, $pop113
	i32.const	$push111=, 2
	i32.shr_s	$4=, $pop112, $pop111
	block   	
	i32.sub 	$push110=, $8, $10
	tee_local	$push109=, $10=, $pop110
	i32.ge_u	$push21=, $pop109, $5
	br_if   	0, $pop21
	i32.const	$push24=, 2
	i32.shl 	$push25=, $4, $pop24
	i32.sub 	$push26=, $5, $pop25
	i32.const	$push22=, -1
	i32.xor 	$push23=, $1, $pop22
	i32.add 	$push27=, $pop26, $pop23
	i32.const	$push117=, 2
	i32.shr_u	$7=, $pop27, $pop117
	copy_local	$3=, $8
.LBB8_16:
	loop    	
	i32.load	$push28=, 0($10)
	i32.store	0($3), $pop28
	i32.const	$push121=, 4
	i32.add 	$3=, $3, $pop121
	i32.const	$push120=, 4
	i32.add 	$push119=, $10, $pop120
	tee_local	$push118=, $10=, $pop119
	i32.lt_u	$push29=, $pop118, $5
	br_if   	0, $pop29
	end_loop
	i32.const	$push30=, 4
	i32.add 	$push31=, $0, $pop30
	i32.const	$push32=, 2
	i32.shl 	$push33=, $7, $pop32
	i32.add 	$push34=, $8, $pop33
	i32.const	$push122=, 4
	i32.add 	$push35=, $pop34, $pop122
	i32.store	0($pop31), $pop35
.LBB8_18:
	end_block
	block   	
	i32.eqz 	$push145=, $4
	br_if   	0, $pop145
	i32.const	$push36=, 2
	i32.shl 	$push37=, $4, $pop36
	i32.sub 	$push38=, $8, $pop37
	i32.call	$drop=, memmove@FUNCTION, $pop38, $1, $6
.LBB8_20:
	end_block
	i32.sub 	$push124=, $9, $2
	tee_local	$push123=, $10=, $pop124
	i32.eqz 	$push146=, $pop123
	br_if   	5, $pop146
	i32.call	$drop=, memmove@FUNCTION, $1, $2, $10
	return  	$1
.LBB8_22:
	end_block
	i32.sub 	$push46=, $1, $8
	i32.const	$push47=, 2
	i32.shr_s	$10=, $pop46, $pop47
	i32.const	$5=, 1073741823
.LBB8_23:
	end_block
	i32.const	$push54=, 2
	i32.shl 	$push55=, $5, $pop54
	i32.call	$4=, _Znwj@FUNCTION, $pop55
	br      	2
.LBB8_24:
	end_block
	i32.const	$5=, 0
	i32.const	$4=, 0
	br      	1
.LBB8_25:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB8_26:
	end_block
	i32.const	$push127=, 2
	i32.shl 	$push56=, $10, $pop127
	i32.add 	$push126=, $4, $pop56
	tee_local	$push125=, $8=, $pop126
	copy_local	$10=, $pop125
	block   	
	i32.eq  	$push57=, $2, $3
	br_if   	0, $pop57
	i32.const	$push58=, -4
	i32.add 	$push59=, $3, $pop58
	i32.sub 	$push60=, $pop59, $2
	i32.const	$push128=, 2
	i32.shr_u	$9=, $pop60, $pop128
	copy_local	$10=, $8
.LBB8_28:
	loop    	
	i32.load	$push61=, 0($2)
	i32.store	0($10), $pop61
	i32.const	$push132=, 4
	i32.add 	$10=, $10, $pop132
	i32.const	$push131=, 4
	i32.add 	$push130=, $2, $pop131
	tee_local	$push129=, $2=, $pop130
	i32.ne  	$push62=, $3, $pop129
	br_if   	0, $pop62
	end_loop
	i32.const	$push63=, 2
	i32.shl 	$push64=, $9, $pop63
	i32.add 	$push65=, $8, $pop64
	i32.const	$push66=, 4
	i32.add 	$10=, $pop65, $pop66
.LBB8_30:
	end_block
	i32.const	$push138=, 2
	i32.shl 	$5=, $5, $pop138
	i32.load	$push137=, 0($0)
	tee_local	$push136=, $9=, $pop137
	i32.sub 	$push135=, $1, $pop136
	tee_local	$push134=, $2=, $pop135
	i32.sub 	$3=, $8, $pop134
	block   	
	i32.const	$push133=, 1
	i32.lt_s	$push67=, $2, $pop133
	br_if   	0, $pop67
	i32.call	$drop=, memcpy@FUNCTION, $3, $9, $2
.LBB8_32:
	end_block
	i32.add 	$5=, $4, $5
	block   	
	i32.const	$push68=, 4
	i32.add 	$push143=, $0, $pop68
	tee_local	$push142=, $4=, $pop143
	i32.load	$push69=, 0($pop142)
	i32.sub 	$push141=, $pop69, $1
	tee_local	$push140=, $2=, $pop141
	i32.const	$push139=, 1
	i32.lt_s	$push70=, $pop140, $pop139
	br_if   	0, $pop70
	i32.call	$drop=, memcpy@FUNCTION, $10, $1, $2
	i32.add 	$10=, $10, $2
.LBB8_34:
	end_block
	i32.store	0($4), $10
	i32.load	$2=, 0($0)
	i32.store	0($0), $3
	i32.const	$push71=, 8
	i32.add 	$push72=, $0, $pop71
	i32.store	0($pop72), $5
	block   	
	i32.eqz 	$push147=, $2
	br_if   	0, $pop147
	call    	_ZdlPv@FUNCTION, $2
.LBB8_36:
	end_block
	copy_local	$1=, $8
.LBB8_37:
	end_block
	copy_local	$push148=, $1
	.endfunc
.Lfunc_end8:
	.size	_ZNSt3__16vectorImNS_9allocatorImEEE6insertINS_11__wrap_iterIPmEEEENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleImNS_15iterator_traitsIS9_E9referenceEEE5valueES7_E4typeENS5_IPKmEES9_S9_, .Lfunc_end8-_ZNSt3__16vectorImNS_9allocatorImEEE6insertINS_11__wrap_iterIPmEEEENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleImNS_15iterator_traitsIS9_E9referenceEEE5valueES7_E4typeENS5_IPKmEES9_S9_

	.text
	.hidden	_ZN11tic_tac_toe6createERKyS1_
	.globl	_ZN11tic_tac_toe6createERKyS1_
	.type	_ZN11tic_tac_toe6createERKyS1_,@function
_ZN11tic_tac_toe6createERKyS1_:
	.param  	i32, i32, i32
	.local  	i32, i32, i64, i64, i32, i32
	i32.const	$push42=, 0
	i32.const	$push39=, 0
	i32.load	$push40=, __stack_pointer($pop39)
	i32.const	$push41=, 96
	i32.sub 	$push81=, $pop40, $pop41
	tee_local	$push80=, $8=, $pop81
	i32.store	__stack_pointer($pop42), $pop80
	i64.load	$push0=, 0($2)
	call    	require_auth@FUNCTION, $pop0
	i64.load	$push2=, 0($1)
	i64.load	$push1=, 0($2)
	i64.ne  	$push3=, $pop2, $pop1
	i32.const	$push4=, .L.str.2
	call    	eosio_assert@FUNCTION, $pop3, $pop4
	i64.const	$push5=, -1
	i64.store	32($8), $pop5
	i32.const	$4=, 0
	i32.const	$push79=, 0
	i32.store	40($8), $pop79
	i64.load	$push78=, 0($0)
	tee_local	$push77=, $5=, $pop78
	i64.store	16($8), $pop77
	i64.load	$push76=, 0($2)
	tee_local	$push75=, $6=, $pop76
	i64.store	24($8), $pop75
	i32.const	$push6=, 44
	i32.add 	$push74=, $8, $pop6
	tee_local	$push73=, $0=, $pop74
	i32.const	$push72=, 0
	i32.store	0($pop73), $pop72
	i32.const	$push7=, 48
	i32.add 	$push71=, $8, $pop7
	tee_local	$push70=, $7=, $pop71
	i32.const	$push69=, 0
	i32.store	0($pop70), $pop69
	block   	
	block   	
	i64.const	$push9=, 7035937633859534848
	i64.load	$push8=, 0($1)
	i32.call	$push68=, db_find_i64@FUNCTION, $5, $6, $pop9, $pop8
	tee_local	$push67=, $3=, $pop68
	i32.const	$push66=, 0
	i32.lt_s	$push10=, $pop67, $pop66
	br_if   	0, $pop10
	i32.const	$push62=, 16
	i32.add 	$push63=, $8, $pop62
	i32.call	$push11=, _ZNK5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE31load_object_by_primary_iteratorEl@FUNCTION, $pop63, $3
	i32.load	$push12=, 44($pop11)
	i32.const	$push64=, 16
	i32.add 	$push65=, $8, $pop64
	i32.eq  	$push13=, $pop12, $pop65
	i32.const	$push14=, .L.str.13
	call    	eosio_assert@FUNCTION, $pop13, $pop14
	br      	1
.LBB9_2:
	end_block
	i32.const	$4=, 1
.LBB9_3:
	end_block
	i32.const	$push15=, .L.str.3
	call    	eosio_assert@FUNCTION, $4, $pop15
	i64.load	$5=, 0($2)
	i32.store	12($8), $2
	i32.store	8($8), $1
	i64.store	88($8), $5
	i64.load	$push16=, 16($8)
	i64.call	$push17=, current_receiver@FUNCTION
	i64.eq  	$push18=, $pop16, $pop17
	i32.const	$push19=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop18, $pop19
	i32.const	$push46=, 8
	i32.add 	$push47=, $8, $pop46
	i32.store	68($8), $pop47
	i32.const	$push48=, 16
	i32.add 	$push49=, $8, $pop48
	i32.store	64($8), $pop49
	i32.const	$push50=, 88
	i32.add 	$push51=, $8, $pop50
	i32.store	72($8), $pop51
	i32.const	$push20=, 56
	i32.call	$push89=, _Znwj@FUNCTION, $pop20
	tee_local	$push88=, $2=, $pop89
	i32.call	$drop=, _ZN11tic_tac_toe4gameC2Ev@FUNCTION, $pop88
	i32.const	$push52=, 16
	i32.add 	$push53=, $8, $pop52
	i32.store	44($2), $pop53
	i32.const	$push54=, 64
	i32.add 	$push55=, $8, $pop54
	call    	_ZZN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE7emplaceIZNS1_6createERKyS6_E3$_0EENS3_14const_iteratorEyOT_ENKUlRS9_E_clINS3_4itemEEEDaSB_@FUNCTION, $pop55, $2
	i32.store	80($8), $2
	i64.load	$push87=, 0($2)
	tee_local	$push86=, $5=, $pop87
	i64.store	64($8), $pop86
	i32.load	$push85=, 48($2)
	tee_local	$push84=, $4=, $pop85
	i32.store	60($8), $pop84
	block   	
	block   	
	i32.load	$push83=, 0($0)
	tee_local	$push82=, $1=, $pop83
	i32.load	$push21=, 0($7)
	i32.ge_u	$push22=, $pop82, $pop21
	br_if   	0, $pop22
	i64.store	8($1), $5
	i32.store	16($1), $4
	i32.const	$push25=, 0
	i32.store	80($8), $pop25
	i32.store	0($1), $2
	i32.const	$push28=, 44
	i32.add 	$push29=, $8, $pop28
	i32.const	$push26=, 24
	i32.add 	$push27=, $1, $pop26
	i32.store	0($pop29), $pop27
	br      	1
.LBB9_5:
	end_block
	i32.const	$push23=, 40
	i32.add 	$push24=, $8, $pop23
	i32.const	$push56=, 80
	i32.add 	$push57=, $8, $pop56
	i32.const	$push58=, 64
	i32.add 	$push59=, $8, $pop58
	i32.const	$push60=, 60
	i32.add 	$push61=, $8, $pop60
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $pop24, $pop57, $pop59, $pop61
.LBB9_6:
	end_block
	i32.load	$2=, 80($8)
	i32.const	$push30=, 0
	i32.store	80($8), $pop30
	block   	
	i32.eqz 	$push105=, $2
	br_if   	0, $pop105
	block   	
	i32.load	$push91=, 32($2)
	tee_local	$push90=, $1=, $pop91
	i32.eqz 	$push106=, $pop90
	br_if   	0, $pop106
	i32.const	$push31=, 36
	i32.add 	$push32=, $2, $pop31
	i32.store	0($pop32), $1
	call    	_ZdlPv@FUNCTION, $1
.LBB9_9:
	end_block
	call    	_ZdlPv@FUNCTION, $2
.LBB9_10:
	end_block
	block   	
	i32.load	$push93=, 40($8)
	tee_local	$push92=, $0=, $pop93
	i32.eqz 	$push107=, $pop92
	br_if   	0, $pop107
	block   	
	block   	
	i32.const	$push33=, 44
	i32.add 	$push97=, $8, $pop33
	tee_local	$push96=, $7=, $pop97
	i32.load	$push95=, 0($pop96)
	tee_local	$push94=, $2=, $pop95
	i32.eq  	$push34=, $pop94, $0
	br_if   	0, $pop34
.LBB9_13:
	loop    	
	i32.const	$push101=, -24
	i32.add 	$push100=, $2, $pop101
	tee_local	$push99=, $2=, $pop100
	i32.load	$1=, 0($pop99)
	i32.const	$push98=, 0
	i32.store	0($2), $pop98
	block   	
	i32.eqz 	$push108=, $1
	br_if   	0, $pop108
	block   	
	i32.load	$push103=, 32($1)
	tee_local	$push102=, $4=, $pop103
	i32.eqz 	$push109=, $pop102
	br_if   	0, $pop109
	i32.const	$push104=, 36
	i32.add 	$push35=, $1, $pop104
	i32.store	0($pop35), $4
	call    	_ZdlPv@FUNCTION, $4
.LBB9_16:
	end_block
	call    	_ZdlPv@FUNCTION, $1
.LBB9_17:
	end_block
	i32.ne  	$push36=, $0, $2
	br_if   	0, $pop36
	end_loop
	i32.const	$push37=, 40
	i32.add 	$push38=, $8, $pop37
	i32.load	$2=, 0($pop38)
	br      	1
.LBB9_19:
	end_block
	copy_local	$2=, $0
.LBB9_20:
	end_block
	i32.store	0($7), $0
	call    	_ZdlPv@FUNCTION, $2
.LBB9_21:
	end_block
	i32.const	$push45=, 0
	i32.const	$push43=, 96
	i32.add 	$push44=, $8, $pop43
	i32.store	__stack_pointer($pop45), $pop44
	.endfunc
.Lfunc_end9:
	.size	_ZN11tic_tac_toe6createERKyS1_, .Lfunc_end9-_ZN11tic_tac_toe6createERKyS1_

	.section	.text._ZNK5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE31load_object_by_primary_iteratorEl,"axG",@progbits,_ZNK5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE31load_object_by_primary_iteratorEl,comdat
	.hidden	_ZNK5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE31load_object_by_primary_iteratorEl
	.weak	_ZNK5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE31load_object_by_primary_iteratorEl
	.type	_ZNK5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE31load_object_by_primary_iteratorEl,@function
_ZNK5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE31load_object_by_primary_iteratorEl:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32, i32, i32
	i32.const	$push42=, 0
	i32.load	$push43=, __stack_pointer($pop42)
	i32.const	$push44=, 48
	i32.sub 	$push63=, $pop43, $pop44
	tee_local	$push62=, $9=, $pop63
	copy_local	$8=, $pop62
	i32.const	$push45=, 0
	i32.store	__stack_pointer($pop45), $9
	block   	
	i32.const	$push2=, 28
	i32.add 	$push3=, $0, $pop2
	i32.load	$push61=, 0($pop3)
	tee_local	$push60=, $7=, $pop61
	i32.load	$push59=, 24($0)
	tee_local	$push58=, $2=, $pop59
	i32.eq  	$push4=, $pop60, $pop58
	br_if   	0, $pop4
	i32.const	$push5=, 0
	i32.sub 	$3=, $pop5, $2
	i32.const	$push64=, -24
	i32.add 	$6=, $7, $pop64
.LBB10_2:
	loop    	
	i32.const	$push65=, 16
	i32.add 	$push6=, $6, $pop65
	i32.load	$push7=, 0($pop6)
	i32.eq  	$push8=, $pop7, $1
	br_if   	1, $pop8
	copy_local	$7=, $6
	i32.const	$push69=, -24
	i32.add 	$push68=, $6, $pop69
	tee_local	$push67=, $4=, $pop68
	copy_local	$6=, $pop67
	i32.add 	$push9=, $4, $3
	i32.const	$push66=, -24
	i32.ne  	$push10=, $pop9, $pop66
	br_if   	0, $pop10
.LBB10_4:
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
.LBB10_6:
	end_block
	i32.const	$push14=, 0
	i32.const	$push72=, 0
	i32.call	$push71=, db_get_i64@FUNCTION, $1, $pop14, $pop72
	tee_local	$push70=, $6=, $pop71
	i32.const	$push15=, 31
	i32.shr_u	$push16=, $pop70, $pop15
	i32.const	$push17=, 1
	i32.xor 	$push18=, $pop16, $pop17
	i32.const	$push19=, .L.str.14
	call    	eosio_assert@FUNCTION, $pop18, $pop19
	block   	
	block   	
	i32.const	$push20=, 513
	i32.lt_u	$push21=, $6, $pop20
	br_if   	0, $pop21
	i32.call	$4=, malloc@FUNCTION, $6
	br      	1
.LBB10_8:
	end_block
	i32.const	$push41=, 0
	i32.const	$push22=, 15
	i32.add 	$push23=, $6, $pop22
	i32.const	$push24=, -16
	i32.and 	$push25=, $pop23, $pop24
	i32.sub 	$push74=, $9, $pop25
	tee_local	$push73=, $4=, $pop74
	copy_local	$push57=, $pop73
	i32.store	__stack_pointer($pop41), $pop57
.LBB10_9:
	end_block
	i32.call	$drop=, db_get_i64@FUNCTION, $1, $4, $6
	i32.store	36($8), $4
	i32.store	32($8), $4
	i32.add 	$push26=, $4, $6
	i32.store	40($8), $pop26
	block   	
	i32.const	$push27=, 513
	i32.lt_u	$push28=, $6, $pop27
	br_if   	0, $pop28
	call    	free@FUNCTION, $4
.LBB10_11:
	end_block
	i32.const	$push29=, 56
	i32.call	$push84=, _Znwj@FUNCTION, $pop29
	tee_local	$push83=, $6=, $pop84
	i32.call	$4=, _ZN11tic_tac_toe4gameC2Ev@FUNCTION, $pop83
	i32.store	44($6), $0
	i32.const	$push49=, 32
	i32.add 	$push50=, $8, $pop49
	i32.call	$drop=, _ZrsIN5eosio10datastreamIPKcEEERT_S6_RN11tic_tac_toe4gameE@FUNCTION, $pop50, $4
	i32.store	48($6), $1
	i32.store	24($8), $6
	i64.load	$push82=, 0($6)
	tee_local	$push81=, $5=, $pop82
	i64.store	16($8), $pop81
	i32.load	$push80=, 48($6)
	tee_local	$push79=, $7=, $pop80
	i32.store	12($8), $pop79
	block   	
	block   	
	i32.const	$push33=, 28
	i32.add 	$push78=, $0, $pop33
	tee_local	$push77=, $1=, $pop78
	i32.load	$push76=, 0($pop77)
	tee_local	$push75=, $4=, $pop76
	i32.const	$push30=, 32
	i32.add 	$push31=, $0, $pop30
	i32.load	$push32=, 0($pop31)
	i32.ge_u	$push34=, $pop75, $pop32
	br_if   	0, $pop34
	i64.store	8($4), $5
	i32.store	16($4), $7
	i32.const	$push35=, 0
	i32.store	24($8), $pop35
	i32.store	0($4), $6
	i32.const	$push36=, 24
	i32.add 	$push37=, $4, $pop36
	i32.store	0($1), $pop37
	br      	1
.LBB10_13:
	end_block
	i32.const	$push1=, 24
	i32.add 	$push0=, $0, $pop1
	i32.const	$push51=, 24
	i32.add 	$push52=, $8, $pop51
	i32.const	$push53=, 16
	i32.add 	$push54=, $8, $pop53
	i32.const	$push55=, 12
	i32.add 	$push56=, $8, $pop55
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $pop0, $pop52, $pop54, $pop56
.LBB10_14:
	end_block
	i32.load	$4=, 24($8)
	i32.const	$push38=, 0
	i32.store	24($8), $pop38
	i32.eqz 	$push87=, $4
	br_if   	0, $pop87
	block   	
	i32.load	$push86=, 32($4)
	tee_local	$push85=, $7=, $pop86
	i32.eqz 	$push88=, $pop85
	br_if   	0, $pop88
	i32.const	$push39=, 36
	i32.add 	$push40=, $4, $pop39
	i32.store	0($pop40), $7
	call    	_ZdlPv@FUNCTION, $7
.LBB10_17:
	end_block
	call    	_ZdlPv@FUNCTION, $4
.LBB10_18:
	end_block
	i32.const	$push48=, 0
	i32.const	$push46=, 48
	i32.add 	$push47=, $8, $pop46
	i32.store	__stack_pointer($pop48), $pop47
	copy_local	$push89=, $6
	.endfunc
.Lfunc_end10:
	.size	_ZNK5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE31load_object_by_primary_iteratorEl, .Lfunc_end10-_ZNK5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE31load_object_by_primary_iteratorEl

	.section	.text._ZN11tic_tac_toe4gameC2Ev,"axG",@progbits,_ZN11tic_tac_toe4gameC2Ev,comdat
	.hidden	_ZN11tic_tac_toe4gameC2Ev
	.weak	_ZN11tic_tac_toe4gameC2Ev
	.type	_ZN11tic_tac_toe4gameC2Ev,@function
_ZN11tic_tac_toe4gameC2Ev:
	.param  	i32
	.result 	i32
	.local  	i32, i32, i32, i32, i64, i64, i64, i64
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.1
	i64.const	$7=, 0
.LBB11_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push26=, 3
	i64.gt_u	$push0=, $6, $pop26
	br_if   	0, $pop0
	i32.load8_s	$push31=, 0($4)
	tee_local	$push30=, $1=, $pop31
	i32.const	$push29=, -97
	i32.add 	$push2=, $pop30, $pop29
	i32.const	$push28=, 255
	i32.and 	$push3=, $pop2, $pop28
	i32.const	$push27=, 25
	i32.gt_u	$push4=, $pop3, $pop27
	br_if   	1, $pop4
	i32.const	$push32=, 165
	i32.add 	$1=, $1, $pop32
	br      	2
.LBB11_4:
	end_block
	i64.const	$8=, 0
	i64.const	$push33=, 11
	i64.le_u	$push1=, $6, $pop33
	br_if   	2, $pop1
	br      	3
.LBB11_5:
	end_block
	i32.const	$push38=, 208
	i32.add 	$push5=, $1, $pop38
	i32.const	$push37=, 0
	i32.const	$push36=, -49
	i32.add 	$push6=, $1, $pop36
	i32.const	$push35=, 255
	i32.and 	$push7=, $pop6, $pop35
	i32.const	$push34=, 5
	i32.lt_u	$push8=, $pop7, $pop34
	i32.select	$1=, $pop5, $pop37, $pop8
.LBB11_6:
	end_block
	i64.extend_u/i32	$push9=, $1
	i64.const	$push40=, 56
	i64.shl 	$push10=, $pop9, $pop40
	i64.const	$push39=, 56
	i64.shr_s	$8=, $pop10, $pop39
.LBB11_7:
	end_block
	i64.const	$push42=, 31
	i64.and 	$push12=, $8, $pop42
	i64.const	$push41=, 4294967295
	i64.and 	$push11=, $5, $pop41
	i64.shl 	$8=, $pop12, $pop11
.LBB11_8:
	end_block
	i32.const	$push48=, 1
	i32.add 	$4=, $4, $pop48
	i64.const	$push47=, 1
	i64.add 	$6=, $6, $pop47
	i64.or  	$7=, $8, $7
	i64.const	$push46=, -5
	i64.add 	$push45=, $5, $pop46
	tee_local	$push44=, $5=, $pop45
	i64.const	$push43=, -6
	i64.ne  	$push13=, $pop44, $pop43
	br_if   	0, $pop13
	end_loop
	i64.const	$push59=, 0
	i64.store	32($0):p2align=2, $pop59
	i32.const	$push14=, 24
	i32.add 	$push15=, $0, $pop14
	i64.store	0($pop15), $7
	i32.const	$push16=, 40
	i32.add 	$push58=, $0, $pop16
	tee_local	$push57=, $3=, $pop58
	i32.const	$push56=, 0
	i32.store	0($pop57), $pop56
	i32.const	$push17=, 9
	i32.call	$push55=, _Znwj@FUNCTION, $pop17
	tee_local	$push54=, $4=, $pop55
	i64.const	$push53=, 0
	i64.store	0($pop54):p2align=0, $pop53
	i32.const	$push52=, 0
	i32.store8	8($4), $pop52
	i32.const	$push51=, 9
	i32.add 	$1=, $4, $pop51
	block   	
	i32.load	$push50=, 32($0)
	tee_local	$push49=, $2=, $pop50
	i32.eqz 	$push62=, $pop49
	br_if   	0, $pop62
	i32.const	$push18=, 36
	i32.add 	$push19=, $0, $pop18
	i32.store	0($pop19), $2
	call    	_ZdlPv@FUNCTION, $2
	i32.const	$push61=, 0
	i32.store	0($3), $pop61
	i32.const	$push20=, 32
	i32.add 	$push21=, $0, $pop20
	i64.const	$push60=, 0
	i64.store	0($pop21):p2align=2, $pop60
.LBB11_11:
	end_block
	i32.const	$push22=, 36
	i32.add 	$push23=, $0, $pop22
	i32.store	0($pop23), $1
	i32.const	$push24=, 32
	i32.add 	$push25=, $0, $pop24
	i32.store	0($pop25), $4
	i32.store	0($3), $1
	copy_local	$push63=, $0
	.endfunc
.Lfunc_end11:
	.size	_ZN11tic_tac_toe4gameC2Ev, .Lfunc_end11-_ZN11tic_tac_toe4gameC2Ev

	.text
	.type	_ZZN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE7emplaceIZNS1_6createERKyS6_E3$_0EENS3_14const_iteratorEyOT_ENKUlRS9_E_clINS3_4itemEEEDaSB_,@function
_ZZN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE7emplaceIZNS1_6createERKyS6_E3$_0EENS3_14const_iteratorEyOT_ENKUlRS9_E_clINS3_4itemEEEDaSB_:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32, i64, i32, i32
	i32.const	$push36=, 0
	i32.load	$push37=, __stack_pointer($pop36)
	i32.const	$push38=, 16
	i32.sub 	$push53=, $pop37, $pop38
	tee_local	$push52=, $9=, $pop53
	copy_local	$8=, $pop52
	i32.const	$push39=, 0
	i32.store	__stack_pointer($pop39), $9
	i32.load	$push51=, 4($0)
	tee_local	$push50=, $6=, $pop51
	i32.load	$push0=, 0($pop50)
	i64.load	$push1=, 0($pop0)
	i64.store	0($1), $pop1
	i32.load	$push2=, 4($6)
	i64.load	$push3=, 0($pop2)
	i64.store	8($1), $pop3
	i32.load	$2=, 0($0)
	i32.load	$push4=, 4($6)
	i64.load	$push5=, 0($pop4)
	i64.store	16($1), $pop5
	i32.const	$push6=, 36
	i32.add 	$push7=, $1, $pop6
	i32.load	$push49=, 0($pop7)
	tee_local	$push48=, $4=, $pop49
	i32.load	$push47=, 32($1)
	tee_local	$push46=, $3=, $pop47
	i32.sub 	$push45=, $pop48, $pop46
	tee_local	$push44=, $5=, $pop45
	i64.extend_u/i32	$7=, $pop44
	i32.const	$6=, 32
.LBB12_1:
	loop    	
	i32.const	$push58=, 1
	i32.add 	$6=, $6, $pop58
	i64.const	$push57=, 7
	i64.shr_u	$push56=, $7, $pop57
	tee_local	$push55=, $7=, $pop56
	i64.const	$push54=, 0
	i64.ne  	$push8=, $pop55, $pop54
	br_if   	0, $pop8
	end_loop
	block   	
	block   	
	i32.add 	$push10=, $5, $6
	i32.eq  	$push9=, $3, $4
	i32.select	$push60=, $6, $pop10, $pop9
	tee_local	$push59=, $4=, $pop60
	i32.const	$push11=, 513
	i32.lt_u	$push12=, $pop59, $pop11
	br_if   	0, $pop12
	i32.call	$6=, malloc@FUNCTION, $4
	br      	1
.LBB12_4:
	end_block
	i32.const	$push35=, 0
	i32.const	$push13=, 15
	i32.add 	$push14=, $4, $pop13
	i32.const	$push15=, -16
	i32.and 	$push16=, $pop14, $pop15
	i32.sub 	$push62=, $9, $pop16
	tee_local	$push61=, $6=, $pop62
	copy_local	$push43=, $pop61
	i32.store	__stack_pointer($pop35), $pop43
.LBB12_5:
	end_block
	i32.store	4($8), $6
	i32.store	0($8), $6
	i32.add 	$push17=, $6, $4
	i32.store	8($8), $pop17
	i32.call	$drop=, _ZlsIN5eosio10datastreamIPcEEERT_S5_RKN11tic_tac_toe4gameE@FUNCTION, $8, $1
	i64.load	$push18=, 8($2)
	i64.const	$push21=, 7035937633859534848
	i32.load	$push19=, 8($0)
	i64.load	$push20=, 0($pop19)
	i64.load	$push64=, 0($1)
	tee_local	$push63=, $7=, $pop64
	i32.call	$push22=, db_store_i64@FUNCTION, $pop18, $pop21, $pop20, $pop63, $6, $4
	i32.store	48($1), $pop22
	block   	
	i32.const	$push23=, 513
	i32.lt_u	$push24=, $4, $pop23
	br_if   	0, $pop24
	call    	free@FUNCTION, $6
.LBB12_7:
	end_block
	block   	
	i64.load	$push25=, 16($2)
	i64.lt_u	$push26=, $7, $pop25
	br_if   	0, $pop26
	i32.const	$push33=, 16
	i32.add 	$push34=, $2, $pop33
	i64.const	$push31=, -2
	i64.const	$push29=, 1
	i64.add 	$push30=, $7, $pop29
	i64.const	$push27=, -3
	i64.gt_u	$push28=, $7, $pop27
	i64.select	$push32=, $pop31, $pop30, $pop28
	i64.store	0($pop34), $pop32
.LBB12_9:
	end_block
	i32.const	$push42=, 0
	i32.const	$push40=, 16
	i32.add 	$push41=, $8, $pop40
	i32.store	__stack_pointer($pop42), $pop41
	.endfunc
.Lfunc_end12:
	.size	_ZZN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE7emplaceIZNS1_6createERKyS6_E3$_0EENS3_14const_iteratorEyOT_ENKUlRS9_E_clINS3_4itemEEEDaSB_, .Lfunc_end12-_ZZN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE7emplaceIZNS1_6createERKyS6_E3$_0EENS3_14const_iteratorEyOT_ENKUlRS9_E_clINS3_4itemEEEDaSB_

	.section	.text._ZNSt3__16vectorIN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,"axG",@progbits,_ZNSt3__16vectorIN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,comdat
	.hidden	_ZNSt3__16vectorIN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.weak	_ZNSt3__16vectorIN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.type	_ZNSt3__16vectorIN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,@function
_ZNSt3__16vectorIN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_:
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
	i32.load	$push81=, 32($1)
	tee_local	$push80=, $6=, $pop81
	i32.eqz 	$push85=, $pop80
	br_if   	0, $pop85
	i32.const	$push82=, 36
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
	.size	_ZNSt3__16vectorIN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_, .Lfunc_end13-_ZNSt3__16vectorIN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_

	.section	.text._ZlsIN5eosio10datastreamIPcEEERT_S5_RKN11tic_tac_toe4gameE,"axG",@progbits,_ZlsIN5eosio10datastreamIPcEEERT_S5_RKN11tic_tac_toe4gameE,comdat
	.hidden	_ZlsIN5eosio10datastreamIPcEEERT_S5_RKN11tic_tac_toe4gameE
	.weak	_ZlsIN5eosio10datastreamIPcEEERT_S5_RKN11tic_tac_toe4gameE
	.type	_ZlsIN5eosio10datastreamIPcEEERT_S5_RKN11tic_tac_toe4gameE,@function
_ZlsIN5eosio10datastreamIPcEEERT_S5_RKN11tic_tac_toe4gameE:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_s	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.18
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop6, $1, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push52=, 8
	i32.add 	$push51=, $pop8, $pop52
	tee_local	$push50=, $2=, $pop51
	i32.store	4($0), $pop50
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push49=, 7
	i32.gt_s	$push11=, $pop10, $pop49
	i32.const	$push48=, .L.str.18
	call    	eosio_assert@FUNCTION, $pop11, $pop48
	i32.load	$push13=, 4($0)
	i32.const	$push47=, 8
	i32.add 	$push12=, $1, $pop47
	i32.const	$push46=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop13, $pop12, $pop46
	i32.load	$push14=, 4($0)
	i32.const	$push45=, 8
	i32.add 	$push44=, $pop14, $pop45
	tee_local	$push43=, $2=, $pop44
	i32.store	4($0), $pop43
	i32.load	$push15=, 8($0)
	i32.sub 	$push16=, $pop15, $2
	i32.const	$push42=, 7
	i32.gt_s	$push17=, $pop16, $pop42
	i32.const	$push41=, .L.str.18
	call    	eosio_assert@FUNCTION, $pop17, $pop41
	i32.load	$push20=, 4($0)
	i32.const	$push18=, 16
	i32.add 	$push19=, $1, $pop18
	i32.const	$push40=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop20, $pop19, $pop40
	i32.load	$push21=, 4($0)
	i32.const	$push39=, 8
	i32.add 	$push38=, $pop21, $pop39
	tee_local	$push37=, $2=, $pop38
	i32.store	4($0), $pop37
	i32.load	$push22=, 8($0)
	i32.sub 	$push23=, $pop22, $2
	i32.const	$push36=, 7
	i32.gt_s	$push24=, $pop23, $pop36
	i32.const	$push35=, .L.str.18
	call    	eosio_assert@FUNCTION, $pop24, $pop35
	i32.load	$push27=, 4($0)
	i32.const	$push25=, 24
	i32.add 	$push26=, $1, $pop25
	i32.const	$push34=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop27, $pop26, $pop34
	i32.load	$push28=, 4($0)
	i32.const	$push33=, 8
	i32.add 	$push29=, $pop28, $pop33
	i32.store	4($0), $pop29
	i32.const	$push30=, 32
	i32.add 	$push31=, $1, $pop30
	i32.call	$push32=, _ZN5eosiolsINS_10datastreamIPcEEhEERT_S5_RKNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE@FUNCTION, $0, $pop31
	.endfunc
.Lfunc_end14:
	.size	_ZlsIN5eosio10datastreamIPcEEERT_S5_RKN11tic_tac_toe4gameE, .Lfunc_end14-_ZlsIN5eosio10datastreamIPcEEERT_S5_RKN11tic_tac_toe4gameE

	.section	.text._ZN5eosiolsINS_10datastreamIPcEEhEERT_S5_RKNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIPcEEhEERT_S5_RKNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIPcEEhEERT_S5_RKNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE
	.weak	_ZN5eosiolsINS_10datastreamIPcEEhEERT_S5_RKNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE
	.type	_ZN5eosiolsINS_10datastreamIPcEEhEERT_S5_RKNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE,@function
_ZN5eosiolsINS_10datastreamIPcEEhEERT_S5_RKNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i64, i32, i32
	i32.const	$push25=, 0
	i32.const	$push22=, 0
	i32.load	$push23=, __stack_pointer($pop22)
	i32.const	$push24=, 16
	i32.sub 	$push32=, $pop23, $pop24
	tee_local	$push31=, $8=, $pop32
	i32.store	__stack_pointer($pop25), $pop31
	i32.load	$push1=, 4($1)
	i32.load	$push0=, 0($1)
	i32.sub 	$push2=, $pop1, $pop0
	i64.extend_u/i32	$6=, $pop2
	i32.load	$7=, 4($0)
	i32.const	$push6=, 8
	i32.add 	$4=, $0, $pop6
	i32.const	$push10=, 4
	i32.add 	$5=, $0, $pop10
.LBB15_1:
	loop    	
	i32.wrap/i64	$2=, $6
	i64.const	$push46=, 7
	i64.shr_u	$push45=, $6, $pop46
	tee_local	$push44=, $6=, $pop45
	i64.const	$push43=, 0
	i64.ne  	$push42=, $pop44, $pop43
	tee_local	$push41=, $3=, $pop42
	i32.const	$push40=, 7
	i32.shl 	$push4=, $pop41, $pop40
	i32.const	$push39=, 127
	i32.and 	$push3=, $2, $pop39
	i32.or  	$push5=, $pop4, $pop3
	i32.store8	15($8), $pop5
	i32.load	$push7=, 0($4)
	i32.sub 	$push8=, $pop7, $7
	i32.const	$push38=, 0
	i32.gt_s	$push9=, $pop8, $pop38
	i32.const	$push37=, .L.str.18
	call    	eosio_assert@FUNCTION, $pop9, $pop37
	i32.load	$push11=, 0($5)
	i32.const	$push29=, 15
	i32.add 	$push30=, $8, $pop29
	i32.const	$push36=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop11, $pop30, $pop36
	i32.load	$push12=, 0($5)
	i32.const	$push35=, 1
	i32.add 	$push34=, $pop12, $pop35
	tee_local	$push33=, $7=, $pop34
	i32.store	0($5), $pop33
	br_if   	0, $3
	end_loop
	block   	
	i32.load	$push51=, 0($1)
	tee_local	$push50=, $5=, $pop51
	i32.const	$push49=, 4
	i32.add 	$push13=, $1, $pop49
	i32.load	$push48=, 0($pop13)
	tee_local	$push47=, $3=, $pop48
	i32.eq  	$push14=, $pop50, $pop47
	br_if   	0, $pop14
	i32.const	$push15=, 8
	i32.add 	$4=, $0, $pop15
	i32.const	$push52=, 4
	i32.add 	$2=, $0, $pop52
.LBB15_4:
	loop    	
	i32.load	$push16=, 0($4)
	i32.sub 	$push17=, $pop16, $7
	i32.const	$push61=, 0
	i32.gt_s	$push18=, $pop17, $pop61
	i32.const	$push60=, .L.str.18
	call    	eosio_assert@FUNCTION, $pop18, $pop60
	i32.load	$push19=, 0($2)
	i32.const	$push59=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop19, $5, $pop59
	i32.load	$push20=, 0($2)
	i32.const	$push58=, 1
	i32.add 	$push57=, $pop20, $pop58
	tee_local	$push56=, $7=, $pop57
	i32.store	0($2), $pop56
	i32.const	$push55=, 1
	i32.add 	$push54=, $5, $pop55
	tee_local	$push53=, $5=, $pop54
	i32.ne  	$push21=, $3, $pop53
	br_if   	0, $pop21
.LBB15_5:
	end_loop
	end_block
	i32.const	$push28=, 0
	i32.const	$push26=, 16
	i32.add 	$push27=, $8, $pop26
	i32.store	__stack_pointer($pop28), $pop27
	copy_local	$push62=, $0
	.endfunc
.Lfunc_end15:
	.size	_ZN5eosiolsINS_10datastreamIPcEEhEERT_S5_RKNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE, .Lfunc_end15-_ZN5eosiolsINS_10datastreamIPcEEhEERT_S5_RKNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE

	.section	.text._ZrsIN5eosio10datastreamIPKcEEERT_S6_RN11tic_tac_toe4gameE,"axG",@progbits,_ZrsIN5eosio10datastreamIPKcEEERT_S6_RN11tic_tac_toe4gameE,comdat
	.hidden	_ZrsIN5eosio10datastreamIPKcEEERT_S6_RN11tic_tac_toe4gameE
	.weak	_ZrsIN5eosio10datastreamIPKcEEERT_S6_RN11tic_tac_toe4gameE
	.type	_ZrsIN5eosio10datastreamIPKcEEERT_S6_RN11tic_tac_toe4gameE,@function
_ZrsIN5eosio10datastreamIPKcEEERT_S6_RN11tic_tac_toe4gameE:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.16
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $1, $pop6, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push52=, 8
	i32.add 	$push51=, $pop8, $pop52
	tee_local	$push50=, $2=, $pop51
	i32.store	4($0), $pop50
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push49=, 7
	i32.gt_u	$push11=, $pop10, $pop49
	i32.const	$push48=, .L.str.16
	call    	eosio_assert@FUNCTION, $pop11, $pop48
	i32.const	$push47=, 8
	i32.add 	$push12=, $1, $pop47
	i32.load	$push13=, 4($0)
	i32.const	$push46=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop12, $pop13, $pop46
	i32.load	$push14=, 4($0)
	i32.const	$push45=, 8
	i32.add 	$push44=, $pop14, $pop45
	tee_local	$push43=, $2=, $pop44
	i32.store	4($0), $pop43
	i32.load	$push15=, 8($0)
	i32.sub 	$push16=, $pop15, $2
	i32.const	$push42=, 7
	i32.gt_u	$push17=, $pop16, $pop42
	i32.const	$push41=, .L.str.16
	call    	eosio_assert@FUNCTION, $pop17, $pop41
	i32.const	$push18=, 16
	i32.add 	$push19=, $1, $pop18
	i32.load	$push20=, 4($0)
	i32.const	$push40=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop19, $pop20, $pop40
	i32.load	$push21=, 4($0)
	i32.const	$push39=, 8
	i32.add 	$push38=, $pop21, $pop39
	tee_local	$push37=, $2=, $pop38
	i32.store	4($0), $pop37
	i32.load	$push22=, 8($0)
	i32.sub 	$push23=, $pop22, $2
	i32.const	$push36=, 7
	i32.gt_u	$push24=, $pop23, $pop36
	i32.const	$push35=, .L.str.16
	call    	eosio_assert@FUNCTION, $pop24, $pop35
	i32.const	$push25=, 24
	i32.add 	$push26=, $1, $pop25
	i32.load	$push27=, 4($0)
	i32.const	$push34=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop26, $pop27, $pop34
	i32.load	$push28=, 4($0)
	i32.const	$push33=, 8
	i32.add 	$push29=, $pop28, $pop33
	i32.store	4($0), $pop29
	i32.const	$push30=, 32
	i32.add 	$push31=, $1, $pop30
	i32.call	$push32=, _ZN5eosiorsINS_10datastreamIPKcEEhEERT_S6_RNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE@FUNCTION, $0, $pop31
	.endfunc
.Lfunc_end16:
	.size	_ZrsIN5eosio10datastreamIPKcEEERT_S6_RN11tic_tac_toe4gameE, .Lfunc_end16-_ZrsIN5eosio10datastreamIPKcEEERT_S6_RN11tic_tac_toe4gameE

	.section	.text._ZN5eosiorsINS_10datastreamIPKcEEhEERT_S6_RNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPKcEEhEERT_S6_RNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPKcEEhEERT_S6_RNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE
	.weak	_ZN5eosiorsINS_10datastreamIPKcEEhEERT_S6_RNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE
	.type	_ZN5eosiorsINS_10datastreamIPKcEEhEERT_S6_RNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE,@function
_ZN5eosiorsINS_10datastreamIPKcEEhEERT_S6_RNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE:
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
.LBB17_1:
	loop    	
	i32.load	$push1=, 0($2)
	i32.lt_u	$push2=, $5, $pop1
	i32.const	$push35=, .L.str.15
	call    	eosio_assert@FUNCTION, $pop2, $pop35
	i32.load	$push34=, 0($3)
	tee_local	$push33=, $5=, $pop34
	i32.load8_u	$4=, 0($pop33)
	i32.const	$push32=, 1
	i32.add 	$push31=, $5, $pop32
	tee_local	$push30=, $5=, $pop31
	i32.store	0($3), $pop30
	i32.const	$push29=, 127
	i32.and 	$push4=, $4, $pop29
	i32.const	$push28=, 255
	i32.and 	$push27=, $7, $pop28
	tee_local	$push26=, $7=, $pop27
	i32.shl 	$push5=, $pop4, $pop26
	i64.extend_u/i32	$push6=, $pop5
	i64.or  	$6=, $pop6, $6
	i32.const	$push25=, 7
	i32.add 	$7=, $7, $pop25
	i32.const	$push24=, 7
	i32.shr_u	$push7=, $4, $pop24
	br_if   	0, $pop7
	end_loop
	block   	
	block   	
	block   	
	i32.wrap/i64	$push43=, $6
	tee_local	$push42=, $5=, $pop43
	i32.load	$push41=, 4($1)
	tee_local	$push40=, $3=, $pop41
	i32.load	$push39=, 0($1)
	tee_local	$push38=, $4=, $pop39
	i32.sub 	$push37=, $pop40, $pop38
	tee_local	$push36=, $7=, $pop37
	i32.le_u	$push8=, $pop42, $pop36
	br_if   	0, $pop8
	i32.sub 	$push12=, $5, $7
	call    	_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEj@FUNCTION, $1, $pop12
	i32.load	$push47=, 0($1)
	tee_local	$push46=, $4=, $pop47
	i32.const	$push13=, 4
	i32.add 	$push14=, $1, $pop13
	i32.load	$push45=, 0($pop14)
	tee_local	$push44=, $3=, $pop45
	i32.ne  	$push15=, $pop46, $pop44
	br_if   	1, $pop15
	br      	2
.LBB17_4:
	end_block
	block   	
	i32.ge_u	$push9=, $5, $7
	br_if   	0, $pop9
	i32.const	$push10=, 4
	i32.add 	$push11=, $1, $pop10
	i32.add 	$push49=, $4, $5
	tee_local	$push48=, $3=, $pop49
	i32.store	0($pop11), $pop48
.LBB17_6:
	end_block
	i32.eq  	$push16=, $4, $3
	br_if   	1, $pop16
.LBB17_7:
	end_block
	i32.const	$push17=, 4
	i32.add 	$push51=, $0, $pop17
	tee_local	$push50=, $5=, $pop51
	i32.load	$7=, 0($pop50)
	i32.const	$push18=, 8
	i32.add 	$2=, $0, $pop18
.LBB17_8:
	loop    	
	i32.load	$push19=, 0($2)
	i32.ne  	$push20=, $pop19, $7
	i32.const	$push59=, .L.str.16
	call    	eosio_assert@FUNCTION, $pop20, $pop59
	i32.load	$push21=, 0($5)
	i32.const	$push58=, 1
	i32.call	$drop=, memcpy@FUNCTION, $4, $pop21, $pop58
	i32.load	$push22=, 0($5)
	i32.const	$push57=, 1
	i32.add 	$push56=, $pop22, $pop57
	tee_local	$push55=, $7=, $pop56
	i32.store	0($5), $pop55
	i32.const	$push54=, 1
	i32.add 	$push53=, $4, $pop54
	tee_local	$push52=, $4=, $pop53
	i32.ne  	$push23=, $3, $pop52
	br_if   	0, $pop23
.LBB17_9:
	end_loop
	end_block
	copy_local	$push60=, $0
	.endfunc
.Lfunc_end17:
	.size	_ZN5eosiorsINS_10datastreamIPKcEEhEERT_S6_RNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE, .Lfunc_end17-_ZN5eosiorsINS_10datastreamIPKcEEhEERT_S6_RNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE

	.section	.text._ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEj,"axG",@progbits,_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEj,comdat
	.hidden	_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEj
	.weak	_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEj
	.type	_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEj,@function
_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEj:
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
.LBB18_4:
	end_block
	i32.call	$2=, _Znwj@FUNCTION, $6
	br      	3
.LBB18_5:
	end_block
	i32.const	$push2=, 4
	i32.add 	$0=, $0, $pop2
.LBB18_6:
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
.LBB18_7:
	end_loop
	end_block
	i32.const	$6=, 0
	i32.const	$2=, 0
	br      	1
.LBB18_8:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB18_9:
	end_block
	i32.add 	$4=, $2, $6
	i32.add 	$push33=, $2, $3
	tee_local	$push32=, $5=, $pop33
	copy_local	$6=, $pop32
.LBB18_10:
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
.LBB18_13:
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
.LBB18_15:
	end_block
	.endfunc
.Lfunc_end18:
	.size	_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEj, .Lfunc_end18-_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEj

	.text
	.hidden	_ZN11tic_tac_toe7restartERKyS1_S1_
	.globl	_ZN11tic_tac_toe7restartERKyS1_S1_
	.type	_ZN11tic_tac_toe7restartERKyS1_S1_,@function
_ZN11tic_tac_toe7restartERKyS1_S1_:
	.param  	i32, i32, i32, i32
	.local  	i64, i64, i32, i32
	i32.const	$push29=, 0
	i32.const	$push26=, 0
	i32.load	$push27=, __stack_pointer($pop26)
	i32.const	$push28=, 48
	i32.sub 	$push50=, $pop27, $pop28
	tee_local	$push49=, $7=, $pop50
	i32.store	__stack_pointer($pop29), $pop49
	i64.load	$push0=, 0($3)
	call    	require_auth@FUNCTION, $pop0
	i64.const	$push1=, -1
	i64.store	24($7), $pop1
	i32.const	$push48=, 0
	i32.store	32($7), $pop48
	i64.load	$push47=, 0($0)
	tee_local	$push46=, $4=, $pop47
	i64.store	8($7), $pop46
	i64.load	$push45=, 0($2)
	tee_local	$push44=, $5=, $pop45
	i64.store	16($7), $pop44
	i32.const	$push2=, 36
	i32.add 	$push3=, $7, $pop2
	i32.const	$push43=, 0
	i32.store	0($pop3), $pop43
	i32.const	$push4=, 40
	i32.add 	$push5=, $7, $pop4
	i32.const	$push42=, 0
	i32.store	0($pop5), $pop42
	i32.const	$2=, 0
	block   	
	i64.const	$push7=, 7035937633859534848
	i64.load	$push6=, 0($1)
	i32.call	$push41=, db_find_i64@FUNCTION, $4, $5, $pop7, $pop6
	tee_local	$push40=, $1=, $pop41
	i32.const	$push39=, 0
	i32.lt_s	$push8=, $pop40, $pop39
	br_if   	0, $pop8
	i32.const	$push35=, 8
	i32.add 	$push36=, $7, $pop35
	i32.call	$push52=, _ZNK5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE31load_object_by_primary_iteratorEl@FUNCTION, $pop36, $1
	tee_local	$push51=, $2=, $pop52
	i32.load	$push9=, 44($pop51)
	i32.const	$push37=, 8
	i32.add 	$push38=, $7, $pop37
	i32.eq  	$push10=, $pop9, $pop38
	i32.const	$push11=, .L.str.13
	call    	eosio_assert@FUNCTION, $pop10, $pop11
.LBB19_2:
	end_block
	i32.const	$push57=, 0
	i32.ne  	$push56=, $2, $pop57
	tee_local	$push55=, $0=, $pop56
	i32.const	$push12=, .L.str.4
	call    	eosio_assert@FUNCTION, $pop55, $pop12
	i32.const	$1=, 1
	block   	
	i64.load	$push54=, 0($3)
	tee_local	$push53=, $4=, $pop54
	i64.load	$push13=, 8($2)
	i64.eq  	$push14=, $pop53, $pop13
	br_if   	0, $pop14
	i64.load	$push15=, 0($2)
	i64.eq  	$1=, $4, $pop15
.LBB19_4:
	end_block
	i32.const	$push16=, .L.str.5
	call    	eosio_assert@FUNCTION, $1, $pop16
	i32.const	$push17=, 8
	i32.add 	$push18=, $2, $pop17
	i64.load	$4=, 0($pop18)
	i32.const	$push19=, .L.str.19
	call    	eosio_assert@FUNCTION, $0, $pop19
	i32.const	$push33=, 8
	i32.add 	$push34=, $7, $pop33
	call    	_ZN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE6modifyIZNS1_7restartERKyS6_S6_E3$_1EEvRKS2_yOT_@FUNCTION, $pop34, $2, $4
	block   	
	i32.load	$push59=, 32($7)
	tee_local	$push58=, $0=, $pop59
	i32.eqz 	$push71=, $pop58
	br_if   	0, $pop71
	block   	
	block   	
	i32.const	$push20=, 36
	i32.add 	$push63=, $7, $pop20
	tee_local	$push62=, $6=, $pop63
	i32.load	$push61=, 0($pop62)
	tee_local	$push60=, $2=, $pop61
	i32.eq  	$push21=, $pop60, $0
	br_if   	0, $pop21
.LBB19_7:
	loop    	
	i32.const	$push67=, -24
	i32.add 	$push66=, $2, $pop67
	tee_local	$push65=, $2=, $pop66
	i32.load	$3=, 0($pop65)
	i32.const	$push64=, 0
	i32.store	0($2), $pop64
	block   	
	i32.eqz 	$push72=, $3
	br_if   	0, $pop72
	block   	
	i32.load	$push69=, 32($3)
	tee_local	$push68=, $1=, $pop69
	i32.eqz 	$push73=, $pop68
	br_if   	0, $pop73
	i32.const	$push70=, 36
	i32.add 	$push22=, $3, $pop70
	i32.store	0($pop22), $1
	call    	_ZdlPv@FUNCTION, $1
.LBB19_10:
	end_block
	call    	_ZdlPv@FUNCTION, $3
.LBB19_11:
	end_block
	i32.ne  	$push23=, $0, $2
	br_if   	0, $pop23
	end_loop
	i32.const	$push24=, 32
	i32.add 	$push25=, $7, $pop24
	i32.load	$2=, 0($pop25)
	br      	1
.LBB19_13:
	end_block
	copy_local	$2=, $0
.LBB19_14:
	end_block
	i32.store	0($6), $0
	call    	_ZdlPv@FUNCTION, $2
.LBB19_15:
	end_block
	i32.const	$push32=, 0
	i32.const	$push30=, 48
	i32.add 	$push31=, $7, $pop30
	i32.store	__stack_pointer($pop32), $pop31
	.endfunc
.Lfunc_end19:
	.size	_ZN11tic_tac_toe7restartERKyS1_S1_, .Lfunc_end19-_ZN11tic_tac_toe7restartERKyS1_S1_

	.type	_ZN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE6modifyIZNS1_7restartERKyS6_S6_E3$_1EEvRKS2_yOT_,@function
_ZN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE6modifyIZNS1_7restartERKyS6_S6_E3$_1EEvRKS2_yOT_:
	.param  	i32, i32, i64
	.local  	i64, i32, i32, i32, i32, i64, i32, i32
	i32.const	$push36=, 0
	i32.load	$push37=, __stack_pointer($pop36)
	i32.const	$push38=, 16
	i32.sub 	$push51=, $pop37, $pop38
	tee_local	$push50=, $10=, $pop51
	copy_local	$9=, $pop50
	i32.const	$push39=, 0
	i32.store	__stack_pointer($pop39), $10
	i32.load	$push0=, 44($1)
	i32.eq  	$push1=, $pop0, $0
	i32.const	$push2=, .L.str.20
	call    	eosio_assert@FUNCTION, $pop1, $pop2
	i64.load	$push3=, 0($0)
	i64.call	$push4=, current_receiver@FUNCTION
	i64.eq  	$push5=, $pop3, $pop4
	i32.const	$push6=, .L.str.21
	call    	eosio_assert@FUNCTION, $pop5, $pop6
	i64.load	$3=, 0($1)
	call    	_ZN11tic_tac_toe4game10reset_gameEv@FUNCTION, $1
	i64.load	$push7=, 0($1)
	i64.eq  	$push8=, $3, $pop7
	i32.const	$push9=, .L.str.22
	call    	eosio_assert@FUNCTION, $pop8, $pop9
	i32.const	$push10=, 36
	i32.add 	$push11=, $1, $pop10
	i32.load	$push49=, 0($pop11)
	tee_local	$push48=, $5=, $pop49
	i32.load	$push47=, 32($1)
	tee_local	$push46=, $4=, $pop47
	i32.sub 	$push45=, $pop48, $pop46
	tee_local	$push44=, $6=, $pop45
	i64.extend_u/i32	$8=, $pop44
	i32.const	$7=, 32
.LBB20_1:
	loop    	
	i32.const	$push56=, 1
	i32.add 	$7=, $7, $pop56
	i64.const	$push55=, 7
	i64.shr_u	$push54=, $8, $pop55
	tee_local	$push53=, $8=, $pop54
	i64.const	$push52=, 0
	i64.ne  	$push12=, $pop53, $pop52
	br_if   	0, $pop12
	end_loop
	block   	
	block   	
	i32.add 	$push14=, $6, $7
	i32.eq  	$push13=, $4, $5
	i32.select	$push58=, $7, $pop14, $pop13
	tee_local	$push57=, $5=, $pop58
	i32.const	$push15=, 513
	i32.lt_u	$push16=, $pop57, $pop15
	br_if   	0, $pop16
	i32.call	$7=, malloc@FUNCTION, $5
	br      	1
.LBB20_4:
	end_block
	i32.const	$push35=, 0
	i32.const	$push17=, 15
	i32.add 	$push18=, $5, $pop17
	i32.const	$push19=, -16
	i32.and 	$push20=, $pop18, $pop19
	i32.sub 	$push60=, $10, $pop20
	tee_local	$push59=, $7=, $pop60
	copy_local	$push43=, $pop59
	i32.store	__stack_pointer($pop35), $pop43
.LBB20_5:
	end_block
	i32.store	4($9), $7
	i32.store	0($9), $7
	i32.add 	$push21=, $7, $5
	i32.store	8($9), $pop21
	i32.call	$drop=, _ZlsIN5eosio10datastreamIPcEEERT_S5_RKN11tic_tac_toe4gameE@FUNCTION, $9, $1
	i32.load	$push22=, 48($1)
	call    	db_update_i64@FUNCTION, $pop22, $2, $7, $5
	block   	
	i32.const	$push23=, 513
	i32.lt_u	$push24=, $5, $pop23
	br_if   	0, $pop24
	call    	free@FUNCTION, $7
.LBB20_7:
	end_block
	block   	
	i64.load	$push25=, 16($0)
	i64.lt_u	$push26=, $3, $pop25
	br_if   	0, $pop26
	i32.const	$push33=, 16
	i32.add 	$push34=, $0, $pop33
	i64.const	$push31=, -2
	i64.const	$push29=, 1
	i64.add 	$push30=, $3, $pop29
	i64.const	$push27=, -3
	i64.gt_u	$push28=, $3, $pop27
	i64.select	$push32=, $pop31, $pop30, $pop28
	i64.store	0($pop34), $pop32
.LBB20_9:
	end_block
	i32.const	$push42=, 0
	i32.const	$push40=, 16
	i32.add 	$push41=, $9, $pop40
	i32.store	__stack_pointer($pop42), $pop41
	.endfunc
.Lfunc_end20:
	.size	_ZN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE6modifyIZNS1_7restartERKyS6_S6_E3$_1EEvRKS2_yOT_, .Lfunc_end20-_ZN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE6modifyIZNS1_7restartERKyS6_S6_E3$_1EEvRKS2_yOT_

	.section	.text._ZN11tic_tac_toe4game10reset_gameEv,"axG",@progbits,_ZN11tic_tac_toe4game10reset_gameEv,comdat
	.hidden	_ZN11tic_tac_toe4game10reset_gameEv
	.weak	_ZN11tic_tac_toe4game10reset_gameEv
	.type	_ZN11tic_tac_toe4game10reset_gameEv,@function
_ZN11tic_tac_toe4game10reset_gameEv:
	.param  	i32
	.local  	i32, i32, i32, i64, i64, i64, i64
	i32.const	$push0=, 9
	i32.call	$push32=, _Znwj@FUNCTION, $pop0
	tee_local	$push31=, $3=, $pop32
	i64.const	$push30=, 0
	i64.store	0($pop31):p2align=0, $pop30
	i32.const	$push29=, 0
	i32.store8	8($3), $pop29
	i32.const	$push28=, 9
	i32.add 	$2=, $3, $pop28
	block   	
	block   	
	i32.load	$push27=, 32($0)
	tee_local	$push26=, $1=, $pop27
	i32.eqz 	$push60=, $pop26
	br_if   	0, $pop60
	i32.const	$push1=, 36
	i32.add 	$push2=, $0, $pop1
	i32.store	0($pop2), $1
	call    	_ZdlPv@FUNCTION, $1
	i32.const	$push3=, 40
	i32.add 	$push36=, $0, $pop3
	tee_local	$push35=, $1=, $pop36
	i32.const	$push34=, 0
	i32.store	0($pop35), $pop34
	i32.const	$push4=, 32
	i32.add 	$push5=, $0, $pop4
	i64.const	$push33=, 0
	i64.store	0($pop5):p2align=2, $pop33
	br      	1
.LBB21_2:
	end_block
	i32.const	$push6=, 40
	i32.add 	$1=, $0, $pop6
.LBB21_3:
	end_block
	i32.store	0($1), $2
	i32.const	$push7=, 36
	i32.add 	$push8=, $0, $pop7
	i32.store	0($pop8), $2
	i32.const	$push9=, 32
	i32.add 	$push10=, $0, $pop9
	i32.store	0($pop10), $3
	i64.load	$push11=, 8($0)
	i64.store	16($0), $pop11
	i64.const	$5=, 0
	i64.const	$4=, 59
	i32.const	$3=, .L.str.1
	i64.const	$6=, 0
.LBB21_4:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push37=, 3
	i64.gt_u	$push12=, $5, $pop37
	br_if   	0, $pop12
	i32.load8_s	$push42=, 0($3)
	tee_local	$push41=, $2=, $pop42
	i32.const	$push40=, -97
	i32.add 	$push14=, $pop41, $pop40
	i32.const	$push39=, 255
	i32.and 	$push15=, $pop14, $pop39
	i32.const	$push38=, 25
	i32.gt_u	$push16=, $pop15, $pop38
	br_if   	1, $pop16
	i32.const	$push43=, 165
	i32.add 	$2=, $2, $pop43
	br      	2
.LBB21_7:
	end_block
	i64.const	$7=, 0
	i64.const	$push44=, 11
	i64.le_u	$push13=, $5, $pop44
	br_if   	2, $pop13
	br      	3
.LBB21_8:
	end_block
	i32.const	$push49=, 208
	i32.add 	$push17=, $2, $pop49
	i32.const	$push48=, 0
	i32.const	$push47=, -49
	i32.add 	$push18=, $2, $pop47
	i32.const	$push46=, 255
	i32.and 	$push19=, $pop18, $pop46
	i32.const	$push45=, 5
	i32.lt_u	$push20=, $pop19, $pop45
	i32.select	$2=, $pop17, $pop48, $pop20
.LBB21_9:
	end_block
	i64.extend_u/i32	$push21=, $2
	i64.const	$push51=, 56
	i64.shl 	$push22=, $pop21, $pop51
	i64.const	$push50=, 56
	i64.shr_s	$7=, $pop22, $pop50
.LBB21_10:
	end_block
	i64.const	$push53=, 31
	i64.and 	$push24=, $7, $pop53
	i64.const	$push52=, 4294967295
	i64.and 	$push23=, $4, $pop52
	i64.shl 	$7=, $pop24, $pop23
.LBB21_11:
	end_block
	i32.const	$push59=, 1
	i32.add 	$3=, $3, $pop59
	i64.const	$push58=, 1
	i64.add 	$5=, $5, $pop58
	i64.or  	$6=, $7, $6
	i64.const	$push57=, -5
	i64.add 	$push56=, $4, $pop57
	tee_local	$push55=, $4=, $pop56
	i64.const	$push54=, -6
	i64.ne  	$push25=, $pop55, $pop54
	br_if   	0, $pop25
	end_loop
	i64.store	24($0), $6
	.endfunc
.Lfunc_end21:
	.size	_ZN11tic_tac_toe4game10reset_gameEv, .Lfunc_end21-_ZN11tic_tac_toe4game10reset_gameEv

	.text
	.hidden	_ZN11tic_tac_toe5closeERKyS1_
	.globl	_ZN11tic_tac_toe5closeERKyS1_
	.type	_ZN11tic_tac_toe5closeERKyS1_,@function
_ZN11tic_tac_toe5closeERKyS1_:
	.param  	i32, i32, i32
	.local  	i32, i64, i64, i32, i32
	i32.const	$push26=, 0
	i32.const	$push23=, 0
	i32.load	$push24=, __stack_pointer($pop23)
	i32.const	$push25=, 48
	i32.sub 	$push43=, $pop24, $pop25
	tee_local	$push42=, $7=, $pop43
	i32.store	__stack_pointer($pop26), $pop42
	i64.load	$push0=, 0($2)
	call    	require_auth@FUNCTION, $pop0
	i64.const	$push1=, -1
	i64.store	16($7), $pop1
	i32.const	$push41=, 0
	i32.store	24($7), $pop41
	i64.load	$push40=, 0($0)
	tee_local	$push39=, $4=, $pop40
	i64.store	0($7), $pop39
	i64.load	$push38=, 0($2)
	tee_local	$push37=, $5=, $pop38
	i64.store	8($7), $pop37
	i32.const	$push2=, 28
	i32.add 	$push3=, $7, $pop2
	i32.const	$push36=, 0
	i32.store	0($pop3), $pop36
	i32.const	$push4=, 32
	i32.add 	$push5=, $7, $pop4
	i32.const	$push35=, 0
	i32.store	0($pop5), $pop35
	i32.const	$2=, 0
	block   	
	i64.const	$push7=, 7035937633859534848
	i64.load	$push6=, 0($1)
	i32.call	$push34=, db_find_i64@FUNCTION, $4, $5, $pop7, $pop6
	tee_local	$push33=, $1=, $pop34
	i32.const	$push32=, 0
	i32.lt_s	$push8=, $pop33, $pop32
	br_if   	0, $pop8
	i32.call	$push45=, _ZNK5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE31load_object_by_primary_iteratorEl@FUNCTION, $7, $1
	tee_local	$push44=, $2=, $pop45
	i32.load	$push9=, 44($pop44)
	i32.eq  	$push10=, $pop9, $7
	i32.const	$push11=, .L.str.13
	call    	eosio_assert@FUNCTION, $pop10, $pop11
.LBB22_2:
	end_block
	i32.const	$push51=, 0
	i32.ne  	$push50=, $2, $pop51
	tee_local	$push49=, $1=, $pop50
	i32.const	$push12=, .L.str.4
	call    	eosio_assert@FUNCTION, $pop49, $pop12
	i32.const	$push13=, .L.str.23
	call    	eosio_assert@FUNCTION, $1, $pop13
	i32.const	$push14=, .L.str.24
	call    	eosio_assert@FUNCTION, $1, $pop14
	block   	
	i32.load	$push15=, 48($2)
	i32.const	$push30=, 40
	i32.add 	$push31=, $7, $pop30
	i32.call	$push48=, db_next_i64@FUNCTION, $pop15, $pop31
	tee_local	$push47=, $1=, $pop48
	i32.const	$push46=, 0
	i32.lt_s	$push16=, $pop47, $pop46
	br_if   	0, $pop16
	i32.call	$drop=, _ZNK5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE31load_object_by_primary_iteratorEl@FUNCTION, $7, $1
.LBB22_4:
	end_block
	call    	_ZN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE5eraseERKS2_@FUNCTION, $7, $2
	block   	
	i32.load	$push53=, 24($7)
	tee_local	$push52=, $3=, $pop53
	i32.eqz 	$push65=, $pop52
	br_if   	0, $pop65
	block   	
	block   	
	i32.const	$push17=, 28
	i32.add 	$push57=, $7, $pop17
	tee_local	$push56=, $6=, $pop57
	i32.load	$push55=, 0($pop56)
	tee_local	$push54=, $2=, $pop55
	i32.eq  	$push18=, $pop54, $3
	br_if   	0, $pop18
.LBB22_7:
	loop    	
	i32.const	$push61=, -24
	i32.add 	$push60=, $2, $pop61
	tee_local	$push59=, $2=, $pop60
	i32.load	$1=, 0($pop59)
	i32.const	$push58=, 0
	i32.store	0($2), $pop58
	block   	
	i32.eqz 	$push66=, $1
	br_if   	0, $pop66
	block   	
	i32.load	$push63=, 32($1)
	tee_local	$push62=, $0=, $pop63
	i32.eqz 	$push67=, $pop62
	br_if   	0, $pop67
	i32.const	$push64=, 36
	i32.add 	$push19=, $1, $pop64
	i32.store	0($pop19), $0
	call    	_ZdlPv@FUNCTION, $0
.LBB22_10:
	end_block
	call    	_ZdlPv@FUNCTION, $1
.LBB22_11:
	end_block
	i32.ne  	$push20=, $3, $2
	br_if   	0, $pop20
	end_loop
	i32.const	$push21=, 24
	i32.add 	$push22=, $7, $pop21
	i32.load	$2=, 0($pop22)
	br      	1
.LBB22_13:
	end_block
	copy_local	$2=, $3
.LBB22_14:
	end_block
	i32.store	0($6), $3
	call    	_ZdlPv@FUNCTION, $2
.LBB22_15:
	end_block
	i32.const	$push29=, 0
	i32.const	$push27=, 48
	i32.add 	$push28=, $7, $pop27
	i32.store	__stack_pointer($pop29), $pop28
	.endfunc
.Lfunc_end22:
	.size	_ZN11tic_tac_toe5closeERKyS1_, .Lfunc_end22-_ZN11tic_tac_toe5closeERKyS1_

	.section	.text._ZN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE5eraseERKS2_,"axG",@progbits,_ZN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE5eraseERKS2_,comdat
	.hidden	_ZN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE5eraseERKS2_
	.weak	_ZN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE5eraseERKS2_
	.type	_ZN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE5eraseERKS2_,@function
_ZN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE5eraseERKS2_:
	.param  	i32, i32
	.local  	i64, i32, i32, i32, i32, i32, i32
	i32.load	$push0=, 44($1)
	i32.eq  	$push1=, $pop0, $0
	i32.const	$push2=, .L.str.25
	call    	eosio_assert@FUNCTION, $pop1, $pop2
	i64.load	$push3=, 0($0)
	i64.call	$push4=, current_receiver@FUNCTION
	i64.eq  	$push5=, $pop3, $pop4
	i32.const	$push6=, .L.str.26
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
.LBB23_2:
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
.LBB23_4:
	end_loop
	end_block
	i32.ne  	$push15=, $7, $3
	i32.const	$push16=, .L.str.27
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
.LBB23_6:
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
	i32.load	$push55=, 32($4)
	tee_local	$push54=, $6=, $pop55
	i32.eqz 	$push72=, $pop54
	br_if   	0, $pop72
	i32.const	$push56=, 36
	i32.add 	$push18=, $4, $pop56
	i32.store	0($pop18), $6
	call    	_ZdlPv@FUNCTION, $6
.LBB23_9:
	end_block
	call    	_ZdlPv@FUNCTION, $4
.LBB23_10:
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
.LBB23_12:
	end_block
.LBB23_13:
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
	i32.load	$push69=, 32($4)
	tee_local	$push68=, $6=, $pop69
	i32.eqz 	$push74=, $pop68
	br_if   	0, $pop74
	i32.const	$push70=, 36
	i32.add 	$push30=, $4, $pop70
	i32.store	0($pop30), $6
	call    	_ZdlPv@FUNCTION, $6
.LBB23_16:
	end_block
	call    	_ZdlPv@FUNCTION, $4
.LBB23_17:
	end_block
	i32.ne  	$push31=, $8, $7
	br_if   	0, $pop31
.LBB23_18:
	end_loop
	end_block
	i32.const	$push32=, 28
	i32.add 	$push33=, $0, $pop32
	i32.store	0($pop33), $8
	i32.load	$push34=, 48($1)
	call    	db_remove_i64@FUNCTION, $pop34
	.endfunc
.Lfunc_end23:
	.size	_ZN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE5eraseERKS2_, .Lfunc_end23-_ZN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE5eraseERKS2_

	.text
	.hidden	_ZN11tic_tac_toe4moveERKyS1_S1_RKtS3_
	.globl	_ZN11tic_tac_toe4moveERKyS1_S1_RKtS3_
	.type	_ZN11tic_tac_toe4moveERKyS1_S1_RKtS3_,@function
_ZN11tic_tac_toe4moveERKyS1_S1_RKtS3_:
	.param  	i32, i32, i32, i32, i32, i32
	.local  	i32, i64, i32, i64, i64, i64, i64, i32
	i32.const	$push65=, 0
	i32.const	$push62=, 0
	i32.load	$push63=, __stack_pointer($pop62)
	i32.const	$push64=, 80
	i32.sub 	$push92=, $pop63, $pop64
	tee_local	$push91=, $13=, $pop92
	i32.store	__stack_pointer($pop65), $pop91
	i64.load	$push0=, 0($3)
	call    	require_auth@FUNCTION, $pop0
	i64.const	$push1=, -1
	i64.store	56($13), $pop1
	i32.const	$push90=, 0
	i32.store	64($13), $pop90
	i64.load	$push89=, 0($0)
	tee_local	$push88=, $10=, $pop89
	i64.store	40($13), $pop88
	i64.load	$push87=, 0($2)
	tee_local	$push86=, $12=, $pop87
	i64.store	48($13), $pop86
	i32.const	$push2=, 68
	i32.add 	$push3=, $13, $pop2
	i32.const	$push85=, 0
	i32.store	0($pop3), $pop85
	i32.const	$push4=, 72
	i32.add 	$push5=, $13, $pop4
	i32.const	$push84=, 0
	i32.store	0($pop5), $pop84
	i32.const	$0=, 0
	block   	
	i64.const	$push7=, 7035937633859534848
	i64.load	$push6=, 0($1)
	i32.call	$push83=, db_find_i64@FUNCTION, $10, $12, $pop7, $pop6
	tee_local	$push82=, $1=, $pop83
	i32.const	$push81=, 0
	i32.lt_s	$push8=, $pop82, $pop81
	br_if   	0, $pop8
	i32.const	$push77=, 40
	i32.add 	$push78=, $13, $pop77
	i32.call	$push94=, _ZNK5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE31load_object_by_primary_iteratorEl@FUNCTION, $pop78, $1
	tee_local	$push93=, $0=, $pop94
	i32.load	$push9=, 44($pop93)
	i32.const	$push79=, 40
	i32.add 	$push80=, $13, $pop79
	i32.eq  	$push10=, $pop9, $pop80
	i32.const	$push11=, .L.str.13
	call    	eosio_assert@FUNCTION, $pop10, $pop11
.LBB24_2:
	end_block
	i32.const	$push97=, 0
	i32.ne  	$push96=, $0, $pop97
	tee_local	$push95=, $6=, $pop96
	i32.const	$push12=, .L.str.4
	call    	eosio_assert@FUNCTION, $pop95, $pop12
	i64.load	$7=, 24($0)
	i64.const	$10=, 0
	i64.const	$9=, 59
	i32.const	$1=, .L.str.1
	i64.const	$11=, 0
.LBB24_3:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push98=, 3
	i64.gt_u	$push13=, $10, $pop98
	br_if   	0, $pop13
	i32.load8_s	$push103=, 0($1)
	tee_local	$push102=, $2=, $pop103
	i32.const	$push101=, -97
	i32.add 	$push15=, $pop102, $pop101
	i32.const	$push100=, 255
	i32.and 	$push16=, $pop15, $pop100
	i32.const	$push99=, 25
	i32.gt_u	$push17=, $pop16, $pop99
	br_if   	1, $pop17
	i32.const	$push104=, 165
	i32.add 	$2=, $2, $pop104
	br      	2
.LBB24_6:
	end_block
	i64.const	$12=, 0
	i64.const	$push105=, 11
	i64.le_u	$push14=, $10, $pop105
	br_if   	2, $pop14
	br      	3
.LBB24_7:
	end_block
	i32.const	$push110=, 208
	i32.add 	$push18=, $2, $pop110
	i32.const	$push109=, 0
	i32.const	$push108=, -49
	i32.add 	$push19=, $2, $pop108
	i32.const	$push107=, 255
	i32.and 	$push20=, $pop19, $pop107
	i32.const	$push106=, 5
	i32.lt_u	$push21=, $pop20, $pop106
	i32.select	$2=, $pop18, $pop109, $pop21
.LBB24_8:
	end_block
	i64.extend_u/i32	$push22=, $2
	i64.const	$push112=, 56
	i64.shl 	$push23=, $pop22, $pop112
	i64.const	$push111=, 56
	i64.shr_s	$12=, $pop23, $pop111
.LBB24_9:
	end_block
	i64.const	$push114=, 31
	i64.and 	$push25=, $12, $pop114
	i64.const	$push113=, 4294967295
	i64.and 	$push24=, $9, $pop113
	i64.shl 	$12=, $pop25, $pop24
.LBB24_10:
	end_block
	i32.const	$push120=, 1
	i32.add 	$1=, $1, $pop120
	i64.const	$push119=, 1
	i64.add 	$10=, $10, $pop119
	i64.or  	$11=, $12, $11
	i64.const	$push118=, -5
	i64.add 	$push117=, $9, $pop118
	tee_local	$push116=, $9=, $pop117
	i64.const	$push115=, -6
	i64.ne  	$push26=, $pop116, $pop115
	br_if   	0, $pop26
	end_loop
	i64.eq  	$push27=, $7, $11
	i32.const	$push28=, .L.str.6
	call    	eosio_assert@FUNCTION, $pop27, $pop28
	i32.const	$1=, 1
	block   	
	i64.load	$push122=, 0($3)
	tee_local	$push121=, $10=, $pop122
	i64.load	$push29=, 8($0)
	i64.eq  	$push30=, $pop121, $pop29
	br_if   	0, $pop30
	i64.load	$push31=, 0($0)
	i64.eq  	$1=, $10, $pop31
.LBB24_13:
	end_block
	i32.const	$push126=, 8
	i32.add 	$2=, $0, $pop126
	i32.const	$push32=, .L.str.5
	call    	eosio_assert@FUNCTION, $1, $pop32
	i64.load	$push34=, 0($3)
	i64.load	$push33=, 16($0)
	i64.eq  	$push35=, $pop34, $pop33
	i32.const	$push36=, .L.str.7
	call    	eosio_assert@FUNCTION, $pop35, $pop36
	i32.const	$1=, 0
	block   	
	i32.load16_u	$push125=, 0($4)
	tee_local	$push124=, $3=, $pop125
	i32.const	$push123=, 2
	i32.gt_u	$push37=, $pop124, $pop123
	br_if   	0, $pop37
	i32.load16_u	$push129=, 0($5)
	tee_local	$push128=, $8=, $pop129
	i32.const	$push127=, 2
	i32.gt_u	$push38=, $pop128, $pop127
	br_if   	0, $pop38
	i32.load	$push42=, 32($0)
	i32.const	$push39=, 3
	i32.mul 	$push40=, $3, $pop39
	i32.add 	$push41=, $pop40, $8
	i32.add 	$push43=, $pop42, $pop41
	i32.load8_u	$push44=, 0($pop43)
	i32.eqz 	$1=, $pop44
.LBB24_16:
	end_block
	i32.const	$push45=, .L.str.8
	call    	eosio_assert@FUNCTION, $1, $pop45
	i32.const	$push51=, 1
	i32.const	$push136=, 2
	i32.const	$push48=, 16
	i32.add 	$push49=, $0, $pop48
	i64.load	$push50=, 0($pop49)
	i32.const	$push46=, 8
	i32.add 	$push47=, $0, $pop46
	i64.load	$push135=, 0($pop47)
	tee_local	$push134=, $10=, $pop135
	i64.eq  	$push133=, $pop50, $pop134
	tee_local	$push132=, $1=, $pop133
	i32.select	$push52=, $pop51, $pop136, $pop132
	i32.store8	39($13), $pop52
	i32.select	$push53=, $0, $2, $1
	i64.load	$push54=, 0($pop53)
	i64.store	24($13), $pop54
	i32.store	12($13), $5
	i32.store	8($13), $4
	i32.const	$push69=, 39
	i32.add 	$push70=, $13, $pop69
	i32.store	16($13), $pop70
	i32.const	$push71=, 24
	i32.add 	$push72=, $13, $pop71
	i32.store	20($13), $pop72
	i32.const	$push55=, .L.str.19
	call    	eosio_assert@FUNCTION, $6, $pop55
	i32.const	$push73=, 40
	i32.add 	$push74=, $13, $pop73
	i32.const	$push75=, 8
	i32.add 	$push76=, $13, $pop75
	call    	_ZN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE6modifyIZNS1_4moveERKyS6_S6_RKtS8_E3$_2EEvRKS2_yOT_@FUNCTION, $pop74, $0, $10, $pop76
	block   	
	i32.load	$push131=, 64($13)
	tee_local	$push130=, $3=, $pop131
	i32.eqz 	$push148=, $pop130
	br_if   	0, $pop148
	block   	
	block   	
	i32.const	$push56=, 68
	i32.add 	$push140=, $13, $pop56
	tee_local	$push139=, $4=, $pop140
	i32.load	$push138=, 0($pop139)
	tee_local	$push137=, $1=, $pop138
	i32.eq  	$push57=, $pop137, $3
	br_if   	0, $pop57
.LBB24_19:
	loop    	
	i32.const	$push144=, -24
	i32.add 	$push143=, $1, $pop144
	tee_local	$push142=, $1=, $pop143
	i32.load	$2=, 0($pop142)
	i32.const	$push141=, 0
	i32.store	0($1), $pop141
	block   	
	i32.eqz 	$push149=, $2
	br_if   	0, $pop149
	block   	
	i32.load	$push146=, 32($2)
	tee_local	$push145=, $0=, $pop146
	i32.eqz 	$push150=, $pop145
	br_if   	0, $pop150
	i32.const	$push147=, 36
	i32.add 	$push58=, $2, $pop147
	i32.store	0($pop58), $0
	call    	_ZdlPv@FUNCTION, $0
.LBB24_22:
	end_block
	call    	_ZdlPv@FUNCTION, $2
.LBB24_23:
	end_block
	i32.ne  	$push59=, $3, $1
	br_if   	0, $pop59
	end_loop
	i32.const	$push60=, 64
	i32.add 	$push61=, $13, $pop60
	i32.load	$1=, 0($pop61)
	br      	1
.LBB24_25:
	end_block
	copy_local	$1=, $3
.LBB24_26:
	end_block
	i32.store	0($4), $3
	call    	_ZdlPv@FUNCTION, $1
.LBB24_27:
	end_block
	i32.const	$push68=, 0
	i32.const	$push66=, 80
	i32.add 	$push67=, $13, $pop66
	i32.store	__stack_pointer($pop68), $pop67
	.endfunc
.Lfunc_end24:
	.size	_ZN11tic_tac_toe4moveERKyS1_S1_RKtS3_, .Lfunc_end24-_ZN11tic_tac_toe4moveERKyS1_S1_RKtS3_

	.type	_ZN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE6modifyIZNS1_4moveERKyS6_S6_RKtS8_E3$_2EEvRKS2_yOT_,@function
_ZN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE6modifyIZNS1_4moveERKyS6_S6_RKtS8_E3$_2EEvRKS2_yOT_:
	.param  	i32, i32, i64, i32
	.local  	i64, i32, i32, i32, i64, i32, i32
	i32.const	$push50=, 0
	i32.load	$push51=, __stack_pointer($pop50)
	i32.const	$push52=, 16
	i32.sub 	$push65=, $pop51, $pop52
	tee_local	$push64=, $10=, $pop65
	copy_local	$9=, $pop64
	i32.const	$push53=, 0
	i32.store	__stack_pointer($pop53), $10
	i32.load	$push0=, 44($1)
	i32.eq  	$push1=, $pop0, $0
	i32.const	$push2=, .L.str.20
	call    	eosio_assert@FUNCTION, $pop1, $pop2
	i64.load	$push3=, 0($0)
	i64.call	$push4=, current_receiver@FUNCTION
	i64.eq  	$push5=, $pop3, $pop4
	i32.const	$push6=, .L.str.21
	call    	eosio_assert@FUNCTION, $pop5, $pop6
	i64.load	$4=, 0($1)
	i32.load	$push14=, 32($1)
	i32.load	$push11=, 4($3)
	i32.load16_u	$push12=, 0($pop11)
	i32.load	$push7=, 0($3)
	i32.load16_u	$push8=, 0($pop7)
	i32.const	$push9=, 3
	i32.mul 	$push10=, $pop8, $pop9
	i32.add 	$push13=, $pop12, $pop10
	i32.add 	$push15=, $pop14, $pop13
	i32.load	$push16=, 8($3)
	i32.load8_u	$push17=, 0($pop16)
	i32.store8	0($pop15), $pop17
	i32.load	$push18=, 12($3)
	i64.load	$push19=, 0($pop18)
	i64.store	16($1), $pop19
	i64.call	$push20=, _Z10get_winnerRKN11tic_tac_toe4gameE@FUNCTION, $1
	i64.store	24($1), $pop20
	i64.load	$push21=, 0($1)
	i64.eq  	$push22=, $4, $pop21
	i32.const	$push23=, .L.str.22
	call    	eosio_assert@FUNCTION, $pop22, $pop23
	i32.const	$push24=, 36
	i32.add 	$push25=, $1, $pop24
	i32.load	$push63=, 0($pop25)
	tee_local	$push62=, $6=, $pop63
	i32.load	$push61=, 32($1)
	tee_local	$push60=, $5=, $pop61
	i32.sub 	$push59=, $pop62, $pop60
	tee_local	$push58=, $7=, $pop59
	i64.extend_u/i32	$8=, $pop58
	i32.const	$3=, 32
.LBB25_1:
	loop    	
	i32.const	$push70=, 1
	i32.add 	$3=, $3, $pop70
	i64.const	$push69=, 7
	i64.shr_u	$push68=, $8, $pop69
	tee_local	$push67=, $8=, $pop68
	i64.const	$push66=, 0
	i64.ne  	$push26=, $pop67, $pop66
	br_if   	0, $pop26
	end_loop
	block   	
	block   	
	i32.add 	$push28=, $7, $3
	i32.eq  	$push27=, $5, $6
	i32.select	$push72=, $3, $pop28, $pop27
	tee_local	$push71=, $6=, $pop72
	i32.const	$push29=, 513
	i32.lt_u	$push30=, $pop71, $pop29
	br_if   	0, $pop30
	i32.call	$3=, malloc@FUNCTION, $6
	br      	1
.LBB25_4:
	end_block
	i32.const	$push49=, 0
	i32.const	$push31=, 15
	i32.add 	$push32=, $6, $pop31
	i32.const	$push33=, -16
	i32.and 	$push34=, $pop32, $pop33
	i32.sub 	$push74=, $10, $pop34
	tee_local	$push73=, $3=, $pop74
	copy_local	$push57=, $pop73
	i32.store	__stack_pointer($pop49), $pop57
.LBB25_5:
	end_block
	i32.store	4($9), $3
	i32.store	0($9), $3
	i32.add 	$push35=, $3, $6
	i32.store	8($9), $pop35
	i32.call	$drop=, _ZlsIN5eosio10datastreamIPcEEERT_S5_RKN11tic_tac_toe4gameE@FUNCTION, $9, $1
	i32.load	$push36=, 48($1)
	call    	db_update_i64@FUNCTION, $pop36, $2, $3, $6
	block   	
	i32.const	$push37=, 513
	i32.lt_u	$push38=, $6, $pop37
	br_if   	0, $pop38
	call    	free@FUNCTION, $3
.LBB25_7:
	end_block
	block   	
	i64.load	$push39=, 16($0)
	i64.lt_u	$push40=, $4, $pop39
	br_if   	0, $pop40
	i32.const	$push47=, 16
	i32.add 	$push48=, $0, $pop47
	i64.const	$push45=, -2
	i64.const	$push43=, 1
	i64.add 	$push44=, $4, $pop43
	i64.const	$push41=, -3
	i64.gt_u	$push42=, $4, $pop41
	i64.select	$push46=, $pop45, $pop44, $pop42
	i64.store	0($pop48), $pop46
.LBB25_9:
	end_block
	i32.const	$push56=, 0
	i32.const	$push54=, 16
	i32.add 	$push55=, $9, $pop54
	i32.store	__stack_pointer($pop56), $pop55
	.endfunc
.Lfunc_end25:
	.size	_ZN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE6modifyIZNS1_4moveERKyS6_S6_RKtS8_E3$_2EEvRKS2_yOT_, .Lfunc_end25-_ZN5eosio11multi_indexILy7035937633859534848EN11tic_tac_toe4gameEJEE6modifyIZNS1_4moveERKyS6_S6_RKtS8_E3$_2EEvRKS2_yOT_

	.hidden	apply
	.globl	apply
	.type	apply,@function
apply:
	.param  	i64, i64, i64
	.local  	i32, i32, i64, i64, i64, i64, i32
	i32.const	$push72=, 0
	i32.const	$push69=, 0
	i32.load	$push70=, __stack_pointer($pop69)
	i32.const	$push71=, 80
	i32.sub 	$push93=, $pop70, $pop71
	tee_local	$push92=, $9=, $pop93
	i32.store	__stack_pointer($pop72), $pop92
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.9
	i64.const	$7=, 0
.LBB26_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push94=, 6
	i64.gt_u	$push0=, $6, $pop94
	br_if   	0, $pop0
	i32.load8_s	$push99=, 0($4)
	tee_local	$push98=, $3=, $pop99
	i32.const	$push97=, -97
	i32.add 	$push2=, $pop98, $pop97
	i32.const	$push96=, 255
	i32.and 	$push3=, $pop2, $pop96
	i32.const	$push95=, 25
	i32.gt_u	$push4=, $pop3, $pop95
	br_if   	1, $pop4
	i32.const	$push100=, 165
	i32.add 	$3=, $3, $pop100
	br      	2
.LBB26_4:
	end_block
	i64.const	$8=, 0
	i64.const	$push101=, 11
	i64.le_u	$push1=, $6, $pop101
	br_if   	2, $pop1
	br      	3
.LBB26_5:
	end_block
	i32.const	$push106=, 208
	i32.add 	$push5=, $3, $pop106
	i32.const	$push105=, 0
	i32.const	$push104=, -49
	i32.add 	$push6=, $3, $pop104
	i32.const	$push103=, 255
	i32.and 	$push7=, $pop6, $pop103
	i32.const	$push102=, 5
	i32.lt_u	$push8=, $pop7, $pop102
	i32.select	$3=, $pop5, $pop105, $pop8
.LBB26_6:
	end_block
	i64.extend_u/i32	$push9=, $3
	i64.const	$push108=, 56
	i64.shl 	$push10=, $pop9, $pop108
	i64.const	$push107=, 56
	i64.shr_s	$8=, $pop10, $pop107
.LBB26_7:
	end_block
	i64.const	$push110=, 31
	i64.and 	$push12=, $8, $pop110
	i64.const	$push109=, 4294967295
	i64.and 	$push11=, $5, $pop109
	i64.shl 	$8=, $pop12, $pop11
.LBB26_8:
	end_block
	i32.const	$push116=, 1
	i32.add 	$4=, $4, $pop116
	i64.const	$push115=, 1
	i64.add 	$6=, $6, $pop115
	i64.or  	$7=, $8, $7
	i64.const	$push114=, -5
	i64.add 	$push113=, $5, $pop114
	tee_local	$push112=, $5=, $pop113
	i64.const	$push111=, -6
	i64.ne  	$push13=, $pop112, $pop111
	br_if   	0, $pop13
	end_loop
	block   	
	i64.ne  	$push14=, $7, $2
	br_if   	0, $pop14
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.10
	i64.const	$7=, 0
.LBB26_11:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push117=, 4
	i64.gt_u	$push15=, $6, $pop117
	br_if   	0, $pop15
	i32.load8_s	$push122=, 0($4)
	tee_local	$push121=, $3=, $pop122
	i32.const	$push120=, -97
	i32.add 	$push17=, $pop121, $pop120
	i32.const	$push119=, 255
	i32.and 	$push18=, $pop17, $pop119
	i32.const	$push118=, 25
	i32.gt_u	$push19=, $pop18, $pop118
	br_if   	1, $pop19
	i32.const	$push123=, 165
	i32.add 	$3=, $3, $pop123
	br      	2
.LBB26_14:
	end_block
	i64.const	$8=, 0
	i64.const	$push124=, 11
	i64.le_u	$push16=, $6, $pop124
	br_if   	2, $pop16
	br      	3
.LBB26_15:
	end_block
	i32.const	$push129=, 208
	i32.add 	$push20=, $3, $pop129
	i32.const	$push128=, 0
	i32.const	$push127=, -49
	i32.add 	$push21=, $3, $pop127
	i32.const	$push126=, 255
	i32.and 	$push22=, $pop21, $pop126
	i32.const	$push125=, 5
	i32.lt_u	$push23=, $pop22, $pop125
	i32.select	$3=, $pop20, $pop128, $pop23
.LBB26_16:
	end_block
	i64.extend_u/i32	$push24=, $3
	i64.const	$push131=, 56
	i64.shl 	$push25=, $pop24, $pop131
	i64.const	$push130=, 56
	i64.shr_s	$8=, $pop25, $pop130
.LBB26_17:
	end_block
	i64.const	$push133=, 31
	i64.and 	$push27=, $8, $pop133
	i64.const	$push132=, 4294967295
	i64.and 	$push26=, $5, $pop132
	i64.shl 	$8=, $pop27, $pop26
.LBB26_18:
	end_block
	i32.const	$push139=, 1
	i32.add 	$4=, $4, $pop139
	i64.const	$push138=, 1
	i64.add 	$6=, $6, $pop138
	i64.or  	$7=, $8, $7
	i64.const	$push137=, -5
	i64.add 	$push136=, $5, $pop137
	tee_local	$push135=, $5=, $pop136
	i64.const	$push134=, -6
	i64.ne  	$push28=, $pop135, $pop134
	br_if   	0, $pop28
	end_loop
	i64.eq  	$push29=, $7, $1
	i32.const	$push30=, .L.str.11
	call    	eosio_assert@FUNCTION, $pop29, $pop30
.LBB26_20:
	end_block
	block   	
	block   	
	i64.eq  	$push31=, $1, $0
	br_if   	0, $pop31
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.9
	i64.const	$7=, 0
.LBB26_22:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push140=, 6
	i64.gt_u	$push32=, $6, $pop140
	br_if   	0, $pop32
	i32.load8_s	$push145=, 0($4)
	tee_local	$push144=, $3=, $pop145
	i32.const	$push143=, -97
	i32.add 	$push34=, $pop144, $pop143
	i32.const	$push142=, 255
	i32.and 	$push35=, $pop34, $pop142
	i32.const	$push141=, 25
	i32.gt_u	$push36=, $pop35, $pop141
	br_if   	1, $pop36
	i32.const	$push146=, 165
	i32.add 	$3=, $3, $pop146
	br      	2
.LBB26_25:
	end_block
	i64.const	$8=, 0
	i64.const	$push147=, 11
	i64.le_u	$push33=, $6, $pop147
	br_if   	2, $pop33
	br      	3
.LBB26_26:
	end_block
	i32.const	$push152=, 208
	i32.add 	$push37=, $3, $pop152
	i32.const	$push151=, 0
	i32.const	$push150=, -49
	i32.add 	$push38=, $3, $pop150
	i32.const	$push149=, 255
	i32.and 	$push39=, $pop38, $pop149
	i32.const	$push148=, 5
	i32.lt_u	$push40=, $pop39, $pop148
	i32.select	$3=, $pop37, $pop151, $pop40
.LBB26_27:
	end_block
	i64.extend_u/i32	$push41=, $3
	i64.const	$push154=, 56
	i64.shl 	$push42=, $pop41, $pop154
	i64.const	$push153=, 56
	i64.shr_s	$8=, $pop42, $pop153
.LBB26_28:
	end_block
	i64.const	$push156=, 31
	i64.and 	$push44=, $8, $pop156
	i64.const	$push155=, 4294967295
	i64.and 	$push43=, $5, $pop155
	i64.shl 	$8=, $pop44, $pop43
.LBB26_29:
	end_block
	i32.const	$push162=, 1
	i32.add 	$4=, $4, $pop162
	i64.const	$push161=, 1
	i64.add 	$6=, $6, $pop161
	i64.or  	$7=, $8, $7
	i64.const	$push160=, -5
	i64.add 	$push159=, $5, $pop160
	tee_local	$push158=, $5=, $pop159
	i64.const	$push157=, -6
	i64.ne  	$push45=, $pop158, $pop157
	br_if   	0, $pop45
	end_loop
	i64.ne  	$push46=, $7, $2
	br_if   	1, $pop46
.LBB26_31:
	end_block
	i64.store	72($9), $0
	block   	
	block   	
	block   	
	i64.const	$push47=, 4929617502180212735
	i64.gt_s	$push48=, $2, $pop47
	br_if   	0, $pop48
	i64.const	$push53=, -7694786991455469568
	i64.eq  	$push54=, $2, $pop53
	br_if   	1, $pop54
	i64.const	$push55=, -4994048475009122304
	i64.ne  	$push56=, $2, $pop55
	br_if   	3, $pop56
	i32.const	$push63=, 0
	i32.store	60($9), $pop63
	i32.const	$push64=, _ZN11tic_tac_toe7restartERKyS1_S1_@FUNCTION
	i32.store	56($9), $pop64
	i64.load	$push65=, 56($9)
	i64.store	16($9):p2align=2, $pop65
	i32.const	$push80=, 72
	i32.add 	$push81=, $9, $pop80
	i32.const	$push82=, 16
	i32.add 	$push83=, $9, $pop82
	i32.call	$drop=, _ZN5eosio14execute_actionI11tic_tac_toeS1_JRKyS3_S3_EEEbPT_MT0_FvDpT1_E@FUNCTION, $pop81, $pop83
	br      	3
.LBB26_35:
	end_block
	i64.const	$push49=, 4929617502180212736
	i64.eq  	$push50=, $2, $pop49
	br_if   	1, $pop50
	i64.const	$push51=, 5031766152489992192
	i64.ne  	$push52=, $2, $pop51
	br_if   	2, $pop52
	i32.const	$push66=, 0
	i32.store	68($9), $pop66
	i32.const	$push67=, _ZN11tic_tac_toe6createERKyS1_@FUNCTION
	i32.store	64($9), $pop67
	i64.load	$push68=, 64($9)
	i64.store	8($9):p2align=2, $pop68
	i32.const	$push88=, 72
	i32.add 	$push89=, $9, $pop88
	i32.const	$push90=, 8
	i32.add 	$push91=, $9, $pop90
	i32.call	$drop=, _ZN5eosio14execute_actionI11tic_tac_toeS1_JRKyS3_EEEbPT_MT0_FvDpT1_E@FUNCTION, $pop89, $pop91
	br      	2
.LBB26_38:
	end_block
	i32.const	$push57=, 0
	i32.store	44($9), $pop57
	i32.const	$push58=, _ZN11tic_tac_toe4moveERKyS1_S1_RKtS3_@FUNCTION
	i32.store	40($9), $pop58
	i64.load	$push59=, 40($9)
	i64.store	32($9):p2align=2, $pop59
	i32.const	$push76=, 72
	i32.add 	$push77=, $9, $pop76
	i32.const	$push78=, 32
	i32.add 	$push79=, $9, $pop78
	i32.call	$drop=, _ZN5eosio14execute_actionI11tic_tac_toeS1_JRKyS3_S3_RKtS5_EEEbPT_MT0_FvDpT1_E@FUNCTION, $pop77, $pop79
	br      	1
.LBB26_39:
	end_block
	i32.const	$push60=, 0
	i32.store	52($9), $pop60
	i32.const	$push61=, _ZN11tic_tac_toe5closeERKyS1_@FUNCTION
	i32.store	48($9), $pop61
	i64.load	$push62=, 48($9)
	i64.store	24($9):p2align=2, $pop62
	i32.const	$push84=, 72
	i32.add 	$push85=, $9, $pop84
	i32.const	$push86=, 24
	i32.add 	$push87=, $9, $pop86
	i32.call	$drop=, _ZN5eosio14execute_actionI11tic_tac_toeS1_JRKyS3_EEEbPT_MT0_FvDpT1_E@FUNCTION, $pop85, $pop87
.LBB26_40:
	end_block
	i32.const	$push75=, 0
	i32.const	$push73=, 80
	i32.add 	$push74=, $9, $pop73
	i32.store	__stack_pointer($pop75), $pop74
	.endfunc
.Lfunc_end26:
	.size	apply, .Lfunc_end26-apply

	.section	.text._ZN5eosio14execute_actionI11tic_tac_toeS1_JRKyS3_EEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN5eosio14execute_actionI11tic_tac_toeS1_JRKyS3_EEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN5eosio14execute_actionI11tic_tac_toeS1_JRKyS3_EEEbPT_MT0_FvDpT1_E
	.weak	_ZN5eosio14execute_actionI11tic_tac_toeS1_JRKyS3_EEEbPT_MT0_FvDpT1_E
	.type	_ZN5eosio14execute_actionI11tic_tac_toeS1_JRKyS3_EEEbPT_MT0_FvDpT1_E,@function
_ZN5eosio14execute_actionI11tic_tac_toeS1_JRKyS3_EEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i64, i32, i32, i32
	i32.const	$push25=, 0
	i32.load	$push26=, __stack_pointer($pop25)
	i32.const	$push27=, 32
	i32.sub 	$push40=, $pop26, $pop27
	tee_local	$push39=, $5=, $pop40
	copy_local	$7=, $pop39
	i32.const	$push28=, 0
	i32.store	__stack_pointer($pop28), $5
	i32.load	$2=, 4($1)
	i32.load	$6=, 0($1)
	block   	
	block   	
	block   	
	block   	
	i32.call	$push38=, action_data_size@FUNCTION
	tee_local	$push37=, $1=, $pop38
	i32.eqz 	$push52=, $pop37
	br_if   	0, $pop52
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $1, $pop0
	br_if   	1, $pop1
	i32.call	$5=, malloc@FUNCTION, $1
	br      	2
.LBB27_3:
	end_block
	i32.const	$5=, 0
	br      	2
.LBB27_4:
	end_block
	i32.const	$push24=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $1, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push42=, $5, $pop5
	tee_local	$push41=, $5=, $pop42
	copy_local	$push36=, $pop41
	i32.store	__stack_pointer($pop24), $pop36
.LBB27_5:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $5, $1
.LBB27_6:
	end_block
	i64.const	$push6=, 0
	i64.store	8($7), $pop6
	i64.const	$push50=, 0
	i64.store	0($7), $pop50
	i32.const	$push7=, 7
	i32.gt_u	$push8=, $1, $pop7
	i32.const	$push9=, .L.str.16
	call    	eosio_assert@FUNCTION, $pop8, $pop9
	i32.const	$push10=, 8
	i32.call	$drop=, memcpy@FUNCTION, $7, $5, $pop10
	i32.const	$push11=, -8
	i32.and 	$push12=, $1, $pop11
	i32.const	$push49=, 8
	i32.ne  	$push13=, $pop12, $pop49
	i32.const	$push48=, .L.str.16
	call    	eosio_assert@FUNCTION, $pop13, $pop48
	i32.const	$push47=, 8
	i32.add 	$push46=, $7, $pop47
	tee_local	$push45=, $3=, $pop46
	i32.const	$push44=, 8
	i32.add 	$push14=, $5, $pop44
	i32.const	$push43=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop45, $pop14, $pop43
	block   	
	i32.const	$push15=, 513
	i32.lt_u	$push16=, $1, $pop15
	br_if   	0, $pop16
	call    	free@FUNCTION, $5
.LBB27_8:
	end_block
	i64.load	$4=, 0($3)
	i64.load	$push17=, 0($7)
	i64.store	24($7), $pop17
	i64.store	16($7), $4
	i32.const	$push18=, 1
	i32.shr_s	$push19=, $2, $pop18
	i32.add 	$1=, $0, $pop19
	block   	
	i32.const	$push51=, 1
	i32.and 	$push20=, $2, $pop51
	i32.eqz 	$push53=, $pop20
	br_if   	0, $pop53
	i32.load	$push21=, 0($1)
	i32.add 	$push22=, $pop21, $6
	i32.load	$6=, 0($pop22)
.LBB27_10:
	end_block
	i32.const	$push32=, 24
	i32.add 	$push33=, $7, $pop32
	i32.const	$push34=, 16
	i32.add 	$push35=, $7, $pop34
	call_indirect	$1, $pop33, $pop35, $6
	i32.const	$push31=, 0
	i32.const	$push29=, 32
	i32.add 	$push30=, $7, $pop29
	i32.store	__stack_pointer($pop31), $pop30
	i32.const	$push23=, 1
	.endfunc
.Lfunc_end27:
	.size	_ZN5eosio14execute_actionI11tic_tac_toeS1_JRKyS3_EEEbPT_MT0_FvDpT1_E, .Lfunc_end27-_ZN5eosio14execute_actionI11tic_tac_toeS1_JRKyS3_EEEbPT_MT0_FvDpT1_E

	.section	.text._ZN5eosio14execute_actionI11tic_tac_toeS1_JRKyS3_S3_EEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN5eosio14execute_actionI11tic_tac_toeS1_JRKyS3_S3_EEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN5eosio14execute_actionI11tic_tac_toeS1_JRKyS3_S3_EEEbPT_MT0_FvDpT1_E
	.weak	_ZN5eosio14execute_actionI11tic_tac_toeS1_JRKyS3_S3_EEEbPT_MT0_FvDpT1_E
	.type	_ZN5eosio14execute_actionI11tic_tac_toeS1_JRKyS3_S3_EEEbPT_MT0_FvDpT1_E,@function
_ZN5eosio14execute_actionI11tic_tac_toeS1_JRKyS3_S3_EEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i64, i32, i32, i32
	i32.const	$push27=, 0
	i32.load	$push28=, __stack_pointer($pop27)
	i32.const	$push29=, 48
	i32.sub 	$push44=, $pop28, $pop29
	tee_local	$push43=, $7=, $pop44
	copy_local	$9=, $pop43
	i32.const	$push30=, 0
	i32.store	__stack_pointer($pop30), $7
	i32.load	$2=, 4($1)
	i32.load	$8=, 0($1)
	block   	
	block   	
	block   	
	block   	
	i32.call	$push42=, action_data_size@FUNCTION
	tee_local	$push41=, $1=, $pop42
	i32.eqz 	$push65=, $pop41
	br_if   	0, $pop65
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $1, $pop0
	br_if   	1, $pop1
	i32.call	$7=, malloc@FUNCTION, $1
	br      	2
.LBB28_3:
	end_block
	i32.const	$7=, 0
	br      	2
.LBB28_4:
	end_block
	i32.const	$push26=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $1, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push46=, $7, $pop5
	tee_local	$push45=, $7=, $pop46
	copy_local	$push40=, $pop45
	i32.store	__stack_pointer($pop26), $pop40
.LBB28_5:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $7, $1
.LBB28_6:
	end_block
	i64.const	$push6=, 0
	i64.store	8($9), $pop6
	i64.const	$push63=, 0
	i64.store	0($9), $pop63
	i64.const	$push62=, 0
	i64.store	16($9), $pop62
	i32.const	$push7=, 7
	i32.gt_u	$push8=, $1, $pop7
	i32.const	$push9=, .L.str.16
	call    	eosio_assert@FUNCTION, $pop8, $pop9
	i32.const	$push10=, 8
	i32.call	$drop=, memcpy@FUNCTION, $9, $7, $pop10
	i32.const	$push11=, -8
	i32.and 	$push61=, $1, $pop11
	tee_local	$push60=, $3=, $pop61
	i32.const	$push59=, 8
	i32.ne  	$push12=, $pop60, $pop59
	i32.const	$push58=, .L.str.16
	call    	eosio_assert@FUNCTION, $pop12, $pop58
	i32.const	$push57=, 8
	i32.add 	$push56=, $9, $pop57
	tee_local	$push55=, $4=, $pop56
	i32.const	$push54=, 8
	i32.add 	$push13=, $7, $pop54
	i32.const	$push53=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop55, $pop13, $pop53
	i32.const	$push14=, 16
	i32.ne  	$push15=, $3, $pop14
	i32.const	$push52=, .L.str.16
	call    	eosio_assert@FUNCTION, $pop15, $pop52
	i32.const	$push51=, 16
	i32.add 	$push50=, $9, $pop51
	tee_local	$push49=, $3=, $pop50
	i32.const	$push48=, 16
	i32.add 	$push16=, $7, $pop48
	i32.const	$push47=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop49, $pop16, $pop47
	block   	
	i32.const	$push17=, 513
	i32.lt_u	$push18=, $1, $pop17
	br_if   	0, $pop18
	call    	free@FUNCTION, $7
.LBB28_8:
	end_block
	i64.load	$5=, 0($3)
	i64.load	$6=, 0($4)
	i64.load	$push19=, 0($9)
	i64.store	40($9), $pop19
	i64.store	32($9), $6
	i64.store	24($9), $5
	i32.const	$push20=, 1
	i32.shr_s	$push21=, $2, $pop20
	i32.add 	$1=, $0, $pop21
	block   	
	i32.const	$push64=, 1
	i32.and 	$push22=, $2, $pop64
	i32.eqz 	$push66=, $pop22
	br_if   	0, $pop66
	i32.load	$push23=, 0($1)
	i32.add 	$push24=, $pop23, $8
	i32.load	$8=, 0($pop24)
.LBB28_10:
	end_block
	i32.const	$push34=, 40
	i32.add 	$push35=, $9, $pop34
	i32.const	$push36=, 32
	i32.add 	$push37=, $9, $pop36
	i32.const	$push38=, 24
	i32.add 	$push39=, $9, $pop38
	call_indirect	$1, $pop35, $pop37, $pop39, $8
	i32.const	$push33=, 0
	i32.const	$push31=, 48
	i32.add 	$push32=, $9, $pop31
	i32.store	__stack_pointer($pop33), $pop32
	i32.const	$push25=, 1
	.endfunc
.Lfunc_end28:
	.size	_ZN5eosio14execute_actionI11tic_tac_toeS1_JRKyS3_S3_EEEbPT_MT0_FvDpT1_E, .Lfunc_end28-_ZN5eosio14execute_actionI11tic_tac_toeS1_JRKyS3_S3_EEEbPT_MT0_FvDpT1_E

	.section	.text._ZN5eosio14execute_actionI11tic_tac_toeS1_JRKyS3_S3_RKtS5_EEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN5eosio14execute_actionI11tic_tac_toeS1_JRKyS3_S3_RKtS5_EEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN5eosio14execute_actionI11tic_tac_toeS1_JRKyS3_S3_RKtS5_EEEbPT_MT0_FvDpT1_E
	.weak	_ZN5eosio14execute_actionI11tic_tac_toeS1_JRKyS3_S3_RKtS5_EEEbPT_MT0_FvDpT1_E
	.type	_ZN5eosio14execute_actionI11tic_tac_toeS1_JRKyS3_S3_RKtS5_EEEbPT_MT0_FvDpT1_E,@function
_ZN5eosio14execute_actionI11tic_tac_toeS1_JRKyS3_S3_RKtS5_EEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i64, i64, i32, i32, i32
	i32.const	$push26=, 0
	i32.load	$push27=, __stack_pointer($pop26)
	i32.const	$push28=, 64
	i32.sub 	$push53=, $pop27, $pop28
	tee_local	$push52=, $8=, $pop53
	copy_local	$7=, $pop52
	i32.const	$push29=, 0
	i32.store	__stack_pointer($pop29), $8
	i32.load	$2=, 4($1)
	i32.load	$6=, 0($1)
	i32.const	$1=, 0
	block   	
	i32.call	$push51=, action_data_size@FUNCTION
	tee_local	$push50=, $3=, $pop51
	i32.eqz 	$push60=, $pop50
	br_if   	0, $pop60
	block   	
	block   	
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $3, $pop0
	br_if   	0, $pop1
	i32.call	$1=, malloc@FUNCTION, $3
	br      	1
.LBB29_3:
	end_block
	i32.const	$push25=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $3, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push55=, $8, $pop5
	tee_local	$push54=, $1=, $pop55
	copy_local	$push49=, $pop54
	i32.store	__stack_pointer($pop25), $pop49
.LBB29_4:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $1, $3
.LBB29_5:
	end_block
	i64.const	$push6=, 0
	i64.store	8($7), $pop6
	i64.const	$push58=, 0
	i64.store	0($7), $pop58
	i64.const	$push57=, 0
	i64.store	16($7), $pop57
	i32.const	$push56=, 0
	i32.store	24($7), $pop56
	i32.store	36($7), $1
	i32.store	32($7), $1
	i32.add 	$push7=, $1, $3
	i32.store	40($7), $pop7
	i32.const	$push33=, 32
	i32.add 	$push34=, $7, $pop33
	i32.store	48($7), $pop34
	i32.store	56($7), $7
	i32.const	$push35=, 56
	i32.add 	$push36=, $7, $pop35
	i32.const	$push37=, 48
	i32.add 	$push38=, $7, $pop37
	call    	_ZN5boost6fusion6detail17for_each_unrolledILi5EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyyttEEELi0EEEZN5eosiorsINSA_10datastreamIPKcEEJyyyttEEERT_SH_RNS7_IJDpT0_EEEEUlSH_E_EEvRKSG_RKT0_@FUNCTION, $pop36, $pop38
	block   	
	i32.const	$push8=, 513
	i32.lt_u	$push9=, $3, $pop8
	br_if   	0, $pop9
	call    	free@FUNCTION, $1
.LBB29_7:
	end_block
	i32.const	$push10=, 26
	i32.add 	$push11=, $7, $pop10
	i32.load16_u	$1=, 0($pop11)
	i32.const	$push12=, 24
	i32.add 	$push13=, $7, $pop12
	i32.load16_u	$3=, 0($pop13)
	i32.const	$push14=, 16
	i32.add 	$push15=, $7, $pop14
	i64.load	$4=, 0($pop15)
	i32.const	$push16=, 8
	i32.add 	$push17=, $7, $pop16
	i64.load	$5=, 0($pop17)
	i64.load	$push18=, 0($7)
	i64.store	32($7), $pop18
	i64.store	56($7), $5
	i64.store	48($7), $4
	i32.store16	46($7), $3
	i32.store16	44($7), $1
	i32.const	$push19=, 1
	i32.shr_s	$push20=, $2, $pop19
	i32.add 	$1=, $0, $pop20
	block   	
	i32.const	$push59=, 1
	i32.and 	$push21=, $2, $pop59
	i32.eqz 	$push61=, $pop21
	br_if   	0, $pop61
	i32.load	$push22=, 0($1)
	i32.add 	$push23=, $pop22, $6
	i32.load	$6=, 0($pop23)
.LBB29_9:
	end_block
	i32.const	$push39=, 32
	i32.add 	$push40=, $7, $pop39
	i32.const	$push41=, 56
	i32.add 	$push42=, $7, $pop41
	i32.const	$push43=, 48
	i32.add 	$push44=, $7, $pop43
	i32.const	$push45=, 46
	i32.add 	$push46=, $7, $pop45
	i32.const	$push47=, 44
	i32.add 	$push48=, $7, $pop47
	call_indirect	$1, $pop40, $pop42, $pop44, $pop46, $pop48, $6
	i32.const	$push32=, 0
	i32.const	$push30=, 64
	i32.add 	$push31=, $7, $pop30
	i32.store	__stack_pointer($pop32), $pop31
	i32.const	$push24=, 1
	.endfunc
.Lfunc_end29:
	.size	_ZN5eosio14execute_actionI11tic_tac_toeS1_JRKyS3_S3_RKtS5_EEEbPT_MT0_FvDpT1_E, .Lfunc_end29-_ZN5eosio14execute_actionI11tic_tac_toeS1_JRKyS3_S3_RKtS5_EEEbPT_MT0_FvDpT1_E

	.section	.text._ZN5boost6fusion6detail17for_each_unrolledILi5EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyyttEEELi0EEEZN5eosiorsINSA_10datastreamIPKcEEJyyyttEEERT_SH_RNS7_IJDpT0_EEEEUlSH_E_EEvRKSG_RKT0_,"axG",@progbits,_ZN5boost6fusion6detail17for_each_unrolledILi5EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyyttEEELi0EEEZN5eosiorsINSA_10datastreamIPKcEEJyyyttEEERT_SH_RNS7_IJDpT0_EEEEUlSH_E_EEvRKSG_RKT0_,comdat
	.hidden	_ZN5boost6fusion6detail17for_each_unrolledILi5EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyyttEEELi0EEEZN5eosiorsINSA_10datastreamIPKcEEJyyyttEEERT_SH_RNS7_IJDpT0_EEEEUlSH_E_EEvRKSG_RKT0_
	.weak	_ZN5boost6fusion6detail17for_each_unrolledILi5EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyyttEEELi0EEEZN5eosiorsINSA_10datastreamIPKcEEJyyyttEEERT_SH_RNS7_IJDpT0_EEEEUlSH_E_EEvRKSG_RKT0_
	.type	_ZN5boost6fusion6detail17for_each_unrolledILi5EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyyttEEELi0EEEZN5eosiorsINSA_10datastreamIPKcEEJyyyttEEERT_SH_RNS7_IJDpT0_EEEEUlSH_E_EEvRKSG_RKT0_,@function
_ZN5boost6fusion6detail17for_each_unrolledILi5EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyyttEEELi0EEEZN5eosiorsINSA_10datastreamIPKcEEJyyyttEEERT_SH_RNS7_IJDpT0_EEEEUlSH_E_EEvRKSG_RKT0_:
	.param  	i32, i32
	.local  	i32, i32
	i32.load	$3=, 0($0)
	i32.load	$push72=, 0($1)
	tee_local	$push71=, $2=, $pop72
	i32.load	$push1=, 8($pop71)
	i32.load	$push0=, 4($2)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.16
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($2)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $3, $pop6, $pop7
	i32.load	$push8=, 4($2)
	i32.const	$push70=, 8
	i32.add 	$push9=, $pop8, $pop70
	i32.store	4($2), $pop9
	i32.load	$2=, 0($0)
	i32.load	$push69=, 0($1)
	tee_local	$push68=, $0=, $pop69
	i32.load	$push11=, 8($pop68)
	i32.load	$push10=, 4($0)
	i32.sub 	$push12=, $pop11, $pop10
	i32.const	$push67=, 7
	i32.gt_u	$push13=, $pop12, $pop67
	i32.const	$push66=, .L.str.16
	call    	eosio_assert@FUNCTION, $pop13, $pop66
	i32.const	$push65=, 8
	i32.add 	$push14=, $2, $pop65
	i32.load	$push15=, 4($0)
	i32.const	$push64=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop14, $pop15, $pop64
	i32.load	$push16=, 4($0)
	i32.const	$push63=, 8
	i32.add 	$push17=, $pop16, $pop63
	i32.store	4($0), $pop17
	i32.load	$push62=, 0($1)
	tee_local	$push61=, $0=, $pop62
	i32.load	$push19=, 8($pop61)
	i32.load	$push18=, 4($0)
	i32.sub 	$push20=, $pop19, $pop18
	i32.const	$push60=, 7
	i32.gt_u	$push21=, $pop20, $pop60
	i32.const	$push59=, .L.str.16
	call    	eosio_assert@FUNCTION, $pop21, $pop59
	i32.const	$push22=, 16
	i32.add 	$push23=, $2, $pop22
	i32.load	$push24=, 4($0)
	i32.const	$push58=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop23, $pop24, $pop58
	i32.load	$push25=, 4($0)
	i32.const	$push57=, 8
	i32.add 	$push26=, $pop25, $pop57
	i32.store	4($0), $pop26
	i32.load	$push56=, 0($1)
	tee_local	$push55=, $0=, $pop56
	i32.load	$push28=, 8($pop55)
	i32.load	$push27=, 4($0)
	i32.sub 	$push29=, $pop28, $pop27
	i32.const	$push30=, 1
	i32.gt_u	$push31=, $pop29, $pop30
	i32.const	$push54=, .L.str.16
	call    	eosio_assert@FUNCTION, $pop31, $pop54
	i32.const	$push32=, 24
	i32.add 	$push33=, $2, $pop32
	i32.load	$push34=, 4($0)
	i32.const	$push35=, 2
	i32.call	$drop=, memcpy@FUNCTION, $pop33, $pop34, $pop35
	i32.load	$push36=, 4($0)
	i32.const	$push53=, 2
	i32.add 	$push37=, $pop36, $pop53
	i32.store	4($0), $pop37
	i32.load	$push52=, 0($1)
	tee_local	$push51=, $1=, $pop52
	i32.load	$push39=, 8($pop51)
	i32.load	$push38=, 4($1)
	i32.sub 	$push40=, $pop39, $pop38
	i32.const	$push50=, 1
	i32.gt_u	$push41=, $pop40, $pop50
	i32.const	$push49=, .L.str.16
	call    	eosio_assert@FUNCTION, $pop41, $pop49
	i32.const	$push42=, 26
	i32.add 	$push43=, $2, $pop42
	i32.load	$push44=, 4($1)
	i32.const	$push48=, 2
	i32.call	$drop=, memcpy@FUNCTION, $pop43, $pop44, $pop48
	i32.load	$push45=, 4($1)
	i32.const	$push47=, 2
	i32.add 	$push46=, $pop45, $pop47
	i32.store	4($1), $pop46
	.endfunc
.Lfunc_end30:
	.size	_ZN5boost6fusion6detail17for_each_unrolledILi5EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyyttEEELi0EEEZN5eosiorsINSA_10datastreamIPKcEEJyyyttEEERT_SH_RNS7_IJDpT0_EEEEUlSH_E_EEvRKSG_RKT0_, .Lfunc_end30-_ZN5boost6fusion6detail17for_each_unrolledILi5EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyyttEEELi0EEEZN5eosiorsINSA_10datastreamIPKcEEJyyyttEEERT_SH_RNS7_IJDpT0_EEEEUlSH_E_EEvRKSG_RKT0_

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
.LBB31_1:
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
.LBB31_3:
	end_loop
	end_block
	copy_local	$push12=, $0
	.endfunc
.Lfunc_end31:
	.size	_Znwj, .Lfunc_end31-_Znwj

	.weak	_ZdlPv
	.type	_ZdlPv,@function
_ZdlPv:
	.param  	i32
	block   	
	i32.eqz 	$push0=, $0
	br_if   	0, $pop0
	call    	free@FUNCTION, $0
.LBB32_2:
	end_block
	.endfunc
.Lfunc_end32:
	.size	_ZdlPv, .Lfunc_end32-_ZdlPv

	.section	.text._ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,"axG",@progbits,_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,comdat
	.hidden	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.weak	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.type	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,@function
_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv:
	.param  	i32
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end33:
	.size	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv, .Lfunc_end33-_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv

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
.LBB34_2:
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
.LBB34_4:
	end_loop
	end_block
	i32.sub 	$5=, $3, $4
.LBB34_5:
	end_block
	copy_local	$push11=, $5
	.endfunc
.Lfunc_end34:
	.size	memcmp, .Lfunc_end34-memcmp

	.hidden	malloc
	.globl	malloc
	.type	malloc,@function
malloc:
	.param  	i32
	.result 	i32
	i32.const	$push0=, _ZN5eosio11memory_heapE
	i32.call	$push1=, _ZN5eosio14memory_manager6mallocEm@FUNCTION, $pop0, $0
	.endfunc
.Lfunc_end35:
	.size	malloc, .Lfunc_end35-malloc

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
.LBB36_3:
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
.LBB36_7:
	end_block
	i32.const	$push72=, 4
	i32.add 	$10=, $2, $pop72
.LBB36_8:
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
.LBB36_10:
	end_block
	i32.call	$push86=, _ZN5eosio14memory_manager16next_active_heapEv@FUNCTION, $0
	tee_local	$push85=, $1=, $pop86
	br_if   	0, $pop85
.LBB36_11:
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
.LBB36_12:
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
.LBB36_13:
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
.LBB36_15:
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
.LBB36_18:
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
.LBB36_20:
	end_block
	i32.ge_u	$push49=, $1, $2
	br_if   	4, $pop49
.LBB36_21:
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
.LBB36_23:
	end_loop
	end_block
	return  	$1
.LBB36_24:
	end_block
	i32.load	$push50=, 0($8)
	i32.const	$push51=, -2147483648
	i32.or  	$push52=, $pop50, $pop51
	i32.store	0($8), $pop52
	return  	$13
.LBB36_25:
	end_block
	i32.const	$push61=, 0
	.endfunc
.Lfunc_end36:
	.size	_ZN5eosio14memory_manager6mallocEm, .Lfunc_end36-_ZN5eosio14memory_manager6mallocEm

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
.LBB37_2:
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
.LBB37_3:
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
.LBB37_6:
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
.LBB37_9:
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
.LBB37_13:
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
.LBB37_17:
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
.LBB37_18:
	end_block
	return  	$8
.LBB37_19:
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
.LBB37_21:
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
.LBB37_22:
	end_block
	i32.add 	$push71=, $8, $7
	i32.store	0($2), $pop71
	copy_local	$push158=, $2
	.endfunc
.Lfunc_end37:
	.size	_ZN5eosio14memory_manager16next_active_heapEv, .Lfunc_end37-_ZN5eosio14memory_manager16next_active_heapEv

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
.LBB38_3:
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
.LBB38_6:
	end_block
	i32.const	$push25=, 12
	i32.add 	$push24=, $3, $pop25
	tee_local	$push23=, $3=, $pop24
	i32.lt_u	$push14=, $pop23, $1
	br_if   	0, $pop14
.LBB38_7:
	end_loop
	end_block
	return
.LBB38_8:
	end_block
	i32.const	$push10=, -4
	i32.add 	$push27=, $0, $pop10
	tee_local	$push26=, $3=, $pop27
	i32.load	$push11=, 0($3)
	i32.const	$push12=, 2147483647
	i32.and 	$push13=, $pop11, $pop12
	i32.store	0($pop26), $pop13
	.endfunc
.Lfunc_end38:
	.size	free, .Lfunc_end38-free

	.type	.L.str,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"draw"
	.size	.L.str, 5

	.type	.L.str.1,@object
.L.str.1:
	.asciz	"none"
	.size	.L.str.1, 5

	.type	.L.str.2,@object
.L.str.2:
	.asciz	"challenger shouldn't be the same as host"
	.size	.L.str.2, 41

	.type	.L.str.13,@object
.L.str.13:
	.asciz	"object passed to iterator_to is not in multi_index"
	.size	.L.str.13, 51

	.type	.L.str.3,@object
.L.str.3:
	.asciz	"game already exists"
	.size	.L.str.3, 20

	.type	.L.str.17,@object
.L.str.17:
	.asciz	"cannot create objects in table of another contract"
	.size	.L.str.17, 51

	.type	.L.str.18,@object
.L.str.18:
	.asciz	"write"
	.size	.L.str.18, 6

	.type	.L.str.14,@object
.L.str.14:
	.asciz	"error reading iterator"
	.size	.L.str.14, 23

	.type	.L.str.16,@object
.L.str.16:
	.asciz	"read"
	.size	.L.str.16, 5

	.type	.L.str.15,@object
.L.str.15:
	.asciz	"get"
	.size	.L.str.15, 4

	.type	.L.str.4,@object
.L.str.4:
	.asciz	"game doesn't exists"
	.size	.L.str.4, 20

	.type	.L.str.5,@object
.L.str.5:
	.asciz	"this is not your game!"
	.size	.L.str.5, 23

	.type	.L.str.19,@object
.L.str.19:
	.asciz	"cannot pass end iterator to modify"
	.size	.L.str.19, 35

	.type	.L.str.20,@object
.L.str.20:
	.asciz	"object passed to modify is not in multi_index"
	.size	.L.str.20, 46

	.type	.L.str.21,@object
.L.str.21:
	.asciz	"cannot modify objects in table of another contract"
	.size	.L.str.21, 51

	.type	.L.str.22,@object
.L.str.22:
	.asciz	"updater cannot change primary key when modifying an object"
	.size	.L.str.22, 59

	.type	.L.str.23,@object
.L.str.23:
	.asciz	"cannot pass end iterator to erase"
	.size	.L.str.23, 34

	.type	.L.str.24,@object
.L.str.24:
	.asciz	"cannot increment end iterator"
	.size	.L.str.24, 30

	.type	.L.str.25,@object
.L.str.25:
	.asciz	"object passed to erase is not in multi_index"
	.size	.L.str.25, 45

	.type	.L.str.26,@object
.L.str.26:
	.asciz	"cannot erase objects in table of another contract"
	.size	.L.str.26, 50

	.type	.L.str.27,@object
.L.str.27:
	.asciz	"attempt to remove object that was not in multi_index"
	.size	.L.str.27, 53

	.type	.L.str.6,@object
.L.str.6:
	.asciz	"the game has ended!"
	.size	.L.str.6, 20

	.type	.L.str.7,@object
.L.str.7:
	.asciz	"it's not your turn yet!"
	.size	.L.str.7, 24

	.type	.L.str.8,@object
.L.str.8:
	.asciz	"not a valid movement!"
	.size	.L.str.8, 22

	.type	.L.str.9,@object
.L.str.9:
	.asciz	"onerror"
	.size	.L.str.9, 8

	.type	.L.str.10,@object
.L.str.10:
	.asciz	"eosio"
	.size	.L.str.10, 6

	.type	.L.str.11,@object
.L.str.11:
	.asciz	"onerror action's are only valid from the \"eosio\" system account"
	.size	.L.str.11, 64

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
	.functype	memmove, i32, i32, i32, i32
	.functype	abort, void
	.functype	memcpy, i32, i32, i32, i32
	.functype	require_auth, void, i64
	.functype	eosio_assert, void, i32, i32
	.functype	db_find_i64, i32, i64, i64, i64, i64
	.functype	current_receiver, i64
	.functype	db_store_i64, i32, i64, i64, i64, i64, i32, i32
	.functype	db_get_i64, i32, i32, i32, i32
	.functype	db_update_i64, void, i32, i64, i32, i32
	.functype	db_next_i64, i32, i32, i32
	.functype	db_remove_i64, void, i32
	.functype	action_data_size, i32
	.functype	read_action_data, i32, i32, i32
