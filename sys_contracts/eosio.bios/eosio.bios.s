	.text
	.file	"eosio.bios.bc"
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
	i32.const	$push82=, 0
	i32.const	$push79=, 0
	i32.load	$push80=, __stack_pointer($pop79)
	i32.const	$push81=, 112
	i32.sub 	$push111=, $pop80, $pop81
	tee_local	$push110=, $9=, $pop111
	i32.store	__stack_pointer($pop82), $pop110
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
	i64.const	$push112=, 6
	i64.gt_u	$push0=, $6, $pop112
	br_if   	0, $pop0
	i32.load8_s	$push117=, 0($4)
	tee_local	$push116=, $3=, $pop117
	i32.const	$push115=, -97
	i32.add 	$push2=, $pop116, $pop115
	i32.const	$push114=, 255
	i32.and 	$push3=, $pop2, $pop114
	i32.const	$push113=, 25
	i32.gt_u	$push4=, $pop3, $pop113
	br_if   	1, $pop4
	i32.const	$push118=, 165
	i32.add 	$3=, $3, $pop118
	br      	2
.LBB5_4:
	end_block
	i64.const	$8=, 0
	i64.const	$push119=, 11
	i64.le_u	$push1=, $6, $pop119
	br_if   	2, $pop1
	br      	3
.LBB5_5:
	end_block
	i32.const	$push124=, 208
	i32.add 	$push5=, $3, $pop124
	i32.const	$push123=, 0
	i32.const	$push122=, -49
	i32.add 	$push6=, $3, $pop122
	i32.const	$push121=, 255
	i32.and 	$push7=, $pop6, $pop121
	i32.const	$push120=, 5
	i32.lt_u	$push8=, $pop7, $pop120
	i32.select	$3=, $pop5, $pop123, $pop8
.LBB5_6:
	end_block
	i64.extend_u/i32	$push9=, $3
	i64.const	$push126=, 56
	i64.shl 	$push10=, $pop9, $pop126
	i64.const	$push125=, 56
	i64.shr_s	$8=, $pop10, $pop125
.LBB5_7:
	end_block
	i64.const	$push128=, 31
	i64.and 	$push12=, $8, $pop128
	i64.const	$push127=, 4294967295
	i64.and 	$push11=, $5, $pop127
	i64.shl 	$8=, $pop12, $pop11
.LBB5_8:
	end_block
	i32.const	$push134=, 1
	i32.add 	$4=, $4, $pop134
	i64.const	$push133=, 1
	i64.add 	$6=, $6, $pop133
	i64.or  	$7=, $8, $7
	i64.const	$push132=, -5
	i64.add 	$push131=, $5, $pop132
	tee_local	$push130=, $5=, $pop131
	i64.const	$push129=, -6
	i64.ne  	$push13=, $pop130, $pop129
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
	i64.const	$push135=, 4
	i64.gt_u	$push15=, $6, $pop135
	br_if   	0, $pop15
	i32.load8_s	$push140=, 0($4)
	tee_local	$push139=, $3=, $pop140
	i32.const	$push138=, -97
	i32.add 	$push17=, $pop139, $pop138
	i32.const	$push137=, 255
	i32.and 	$push18=, $pop17, $pop137
	i32.const	$push136=, 25
	i32.gt_u	$push19=, $pop18, $pop136
	br_if   	1, $pop19
	i32.const	$push141=, 165
	i32.add 	$3=, $3, $pop141
	br      	2
.LBB5_14:
	end_block
	i64.const	$8=, 0
	i64.const	$push142=, 11
	i64.le_u	$push16=, $6, $pop142
	br_if   	2, $pop16
	br      	3
.LBB5_15:
	end_block
	i32.const	$push147=, 208
	i32.add 	$push20=, $3, $pop147
	i32.const	$push146=, 0
	i32.const	$push145=, -49
	i32.add 	$push21=, $3, $pop145
	i32.const	$push144=, 255
	i32.and 	$push22=, $pop21, $pop144
	i32.const	$push143=, 5
	i32.lt_u	$push23=, $pop22, $pop143
	i32.select	$3=, $pop20, $pop146, $pop23
.LBB5_16:
	end_block
	i64.extend_u/i32	$push24=, $3
	i64.const	$push149=, 56
	i64.shl 	$push25=, $pop24, $pop149
	i64.const	$push148=, 56
	i64.shr_s	$8=, $pop25, $pop148
.LBB5_17:
	end_block
	i64.const	$push151=, 31
	i64.and 	$push27=, $8, $pop151
	i64.const	$push150=, 4294967295
	i64.and 	$push26=, $5, $pop150
	i64.shl 	$8=, $pop27, $pop26
.LBB5_18:
	end_block
	i32.const	$push157=, 1
	i32.add 	$4=, $4, $pop157
	i64.const	$push156=, 1
	i64.add 	$6=, $6, $pop156
	i64.or  	$7=, $8, $7
	i64.const	$push155=, -5
	i64.add 	$push154=, $5, $pop155
	tee_local	$push153=, $5=, $pop154
	i64.const	$push152=, -6
	i64.ne  	$push28=, $pop153, $pop152
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
	i64.const	$push158=, 6
	i64.gt_u	$push32=, $6, $pop158
	br_if   	0, $pop32
	i32.load8_s	$push163=, 0($4)
	tee_local	$push162=, $3=, $pop163
	i32.const	$push161=, -97
	i32.add 	$push34=, $pop162, $pop161
	i32.const	$push160=, 255
	i32.and 	$push35=, $pop34, $pop160
	i32.const	$push159=, 25
	i32.gt_u	$push36=, $pop35, $pop159
	br_if   	1, $pop36
	i32.const	$push164=, 165
	i32.add 	$3=, $3, $pop164
	br      	2
.LBB5_25:
	end_block
	i64.const	$8=, 0
	i64.const	$push165=, 11
	i64.le_u	$push33=, $6, $pop165
	br_if   	2, $pop33
	br      	3
.LBB5_26:
	end_block
	i32.const	$push170=, 208
	i32.add 	$push37=, $3, $pop170
	i32.const	$push169=, 0
	i32.const	$push168=, -49
	i32.add 	$push38=, $3, $pop168
	i32.const	$push167=, 255
	i32.and 	$push39=, $pop38, $pop167
	i32.const	$push166=, 5
	i32.lt_u	$push40=, $pop39, $pop166
	i32.select	$3=, $pop37, $pop169, $pop40
.LBB5_27:
	end_block
	i64.extend_u/i32	$push41=, $3
	i64.const	$push172=, 56
	i64.shl 	$push42=, $pop41, $pop172
	i64.const	$push171=, 56
	i64.shr_s	$8=, $pop42, $pop171
.LBB5_28:
	end_block
	i64.const	$push174=, 31
	i64.and 	$push44=, $8, $pop174
	i64.const	$push173=, 4294967295
	i64.and 	$push43=, $5, $pop173
	i64.shl 	$8=, $pop44, $pop43
.LBB5_29:
	end_block
	i32.const	$push180=, 1
	i32.add 	$4=, $4, $pop180
	i64.const	$push179=, 1
	i64.add 	$6=, $6, $pop179
	i64.or  	$7=, $8, $7
	i64.const	$push178=, -5
	i64.add 	$push177=, $5, $pop178
	tee_local	$push176=, $5=, $pop177
	i64.const	$push175=, -6
	i64.ne  	$push45=, $pop176, $pop175
	br_if   	0, $pop45
	end_loop
	i64.ne  	$push46=, $7, $2
	br_if   	1, $pop46
.LBB5_31:
	end_block
	i64.store	104($9), $0
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push47=, -4417095151382429697
	i64.gt_s	$push48=, $2, $pop47
	br_if   	0, $pop48
	i64.const	$push55=, -4995497603417243648
	i64.eq  	$push56=, $2, $pop55
	br_if   	1, $pop56
	i64.const	$push57=, -4417353135101706240
	i64.eq  	$push58=, $2, $pop57
	br_if   	2, $pop58
	i64.const	$push59=, -4417247581985439744
	i64.ne  	$push60=, $2, $pop59
	br_if   	5, $pop60
	i32.const	$push70=, 0
	i32.store	84($9), $pop70
	i32.const	$push71=, _ZN5eosio4bios10setglimitsEyyy@FUNCTION
	i32.store	80($9), $pop71
	i64.load	$push72=, 80($9)
	i64.store	24($9):p2align=2, $pop72
	i32.const	$push94=, 104
	i32.add 	$push95=, $9, $pop94
	i32.const	$push96=, 24
	i32.add 	$push97=, $9, $pop96
	i32.call	$drop=, _ZN5eosio14execute_actionINS_4biosES1_JyyyEEEbPT_MT0_FvDpT1_E@FUNCTION, $pop95, $pop97
	br      	5
.LBB5_36:
	end_block
	i64.const	$push49=, -4417095151382429696
	i64.eq  	$push50=, $2, $pop49
	br_if   	2, $pop50
	i64.const	$push51=, -4417085855374508032
	i64.eq  	$push52=, $2, $pop51
	br_if   	3, $pop52
	i64.const	$push53=, -4417085949192699904
	i64.ne  	$push54=, $2, $pop53
	br_if   	4, $pop54
	i32.const	$push76=, 0
	i32.store	100($9), $pop76
	i32.const	$push77=, _ZN5eosio4bios7setprivEyh@FUNCTION
	i32.store	96($9), $pop77
	i64.load	$push78=, 96($9)
	i64.store	8($9):p2align=2, $pop78
	i32.const	$push106=, 104
	i32.add 	$push107=, $9, $pop106
	i32.const	$push108=, 8
	i32.add 	$push109=, $9, $pop108
	i32.call	$drop=, _ZN5eosio14execute_actionINS_4biosES1_JyhEEEbPT_MT0_FvDpT1_E@FUNCTION, $pop107, $pop109
	br      	4
.LBB5_40:
	end_block
	i32.const	$push61=, 0
	i32.store	60($9), $pop61
	i32.const	$push62=, _ZN5eosio4bios7reqauthEy@FUNCTION
	i32.store	56($9), $pop62
	i64.load	$push63=, 56($9)
	i64.store	48($9):p2align=2, $pop63
	i32.const	$push86=, 104
	i32.add 	$push87=, $9, $pop86
	i32.const	$push88=, 48
	i32.add 	$push89=, $9, $pop88
	i32.call	$drop=, _ZN5eosio14execute_actionINS_4biosES1_JyEEEbPT_MT0_FvDpT1_E@FUNCTION, $pop87, $pop89
	br      	3
.LBB5_41:
	end_block
	i32.const	$push73=, 0
	i32.store	92($9), $pop73
	i32.const	$push74=, _ZN5eosio4bios10setalimitsEyxxx@FUNCTION
	i32.store	88($9), $pop74
	i64.load	$push75=, 88($9)
	i64.store	16($9):p2align=2, $pop75
	i32.const	$push90=, 104
	i32.add 	$push91=, $9, $pop90
	i32.const	$push92=, 16
	i32.add 	$push93=, $9, $pop92
	i32.call	$drop=, _ZN5eosio14execute_actionINS_4biosES1_JyxxxEEEbPT_MT0_FvDpT1_E@FUNCTION, $pop91, $pop93
	br      	2
.LBB5_42:
	end_block
	i32.const	$push64=, 0
	i32.store	68($9), $pop64
	i32.const	$push65=, _ZN5eosio4bios9setparamsERKNS_21blockchain_parametersE@FUNCTION
	i32.store	64($9), $pop65
	i64.load	$push66=, 64($9)
	i64.store	40($9):p2align=2, $pop66
	i32.const	$push98=, 104
	i32.add 	$push99=, $9, $pop98
	i32.const	$push100=, 40
	i32.add 	$push101=, $9, $pop100
	i32.call	$drop=, _ZN5eosio14execute_actionINS_4biosES1_JRKNS_21blockchain_parametersEEEEbPT_MT0_FvDpT1_E@FUNCTION, $pop99, $pop101
	br      	1
.LBB5_43:
	end_block
	i32.const	$push67=, 0
	i32.store	76($9), $pop67
	i32.const	$push68=, _ZN5eosio4bios8setprodsENSt3__16vectorINS_12producer_keyENS1_9allocatorIS3_EEEE@FUNCTION
	i32.store	72($9), $pop68
	i64.load	$push69=, 72($9)
	i64.store	32($9):p2align=2, $pop69
	i32.const	$push102=, 104
	i32.add 	$push103=, $9, $pop102
	i32.const	$push104=, 32
	i32.add 	$push105=, $9, $pop104
	i32.call	$drop=, _ZN5eosio14execute_actionINS_4biosES1_JNSt3__16vectorINS_12producer_keyENS2_9allocatorIS4_EEEEEEEbPT_MT0_FvDpT1_E@FUNCTION, $pop103, $pop105
.LBB5_44:
	end_block
	i32.const	$push85=, 0
	i32.const	$push83=, 112
	i32.add 	$push84=, $9, $pop83
	i32.store	__stack_pointer($pop85), $pop84
	.endfunc
.Lfunc_end5:
	.size	apply, .Lfunc_end5-apply

	.section	.text._ZN5eosio4bios7setprivEyh,"axG",@progbits,_ZN5eosio4bios7setprivEyh,comdat
	.hidden	_ZN5eosio4bios7setprivEyh
	.weak	_ZN5eosio4bios7setprivEyh
	.type	_ZN5eosio4bios7setprivEyh,@function
_ZN5eosio4bios7setprivEyh:
	.param  	i32, i64, i32
	i64.load	$push0=, 0($0)
	call    	require_auth@FUNCTION, $pop0
	i32.const	$push1=, 0
	i32.ne  	$push2=, $2, $pop1
	call    	set_privileged@FUNCTION, $1, $pop2
	.endfunc
.Lfunc_end6:
	.size	_ZN5eosio4bios7setprivEyh, .Lfunc_end6-_ZN5eosio4bios7setprivEyh

	.section	.text._ZN5eosio14execute_actionINS_4biosES1_JyhEEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN5eosio14execute_actionINS_4biosES1_JyhEEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN5eosio14execute_actionINS_4biosES1_JyhEEEbPT_MT0_FvDpT1_E
	.weak	_ZN5eosio14execute_actionINS_4biosES1_JyhEEEbPT_MT0_FvDpT1_E
	.type	_ZN5eosio14execute_actionINS_4biosES1_JyhEEEbPT_MT0_FvDpT1_E,@function
_ZN5eosio14execute_actionINS_4biosES1_JyhEEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i64, i32, i32, i32, i32
	i32.const	$push23=, 0
	i32.load	$push24=, __stack_pointer($pop23)
	i32.const	$push25=, 16
	i32.sub 	$push34=, $pop24, $pop25
	tee_local	$push33=, $7=, $pop34
	copy_local	$6=, $pop33
	i32.const	$push26=, 0
	i32.store	__stack_pointer($pop26), $7
	i32.load	$2=, 4($1)
	i32.load	$5=, 0($1)
	i32.const	$4=, 0
	block   	
	i32.call	$push32=, action_data_size@FUNCTION
	tee_local	$push31=, $1=, $pop32
	i32.eqz 	$push47=, $pop31
	br_if   	0, $pop47
	block   	
	block   	
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $1, $pop0
	br_if   	0, $pop1
	i32.call	$4=, malloc@FUNCTION, $1
	br      	1
.LBB7_3:
	end_block
	i32.const	$push22=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $1, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push36=, $7, $pop5
	tee_local	$push35=, $4=, $pop36
	copy_local	$push30=, $pop35
	i32.store	__stack_pointer($pop22), $pop30
.LBB7_4:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $4, $1
.LBB7_5:
	end_block
	i32.const	$push44=, 0
	i32.store8	8($6), $pop44
	i64.const	$push6=, 0
	i64.store	0($6), $pop6
	i32.const	$push7=, 7
	i32.gt_u	$push8=, $1, $pop7
	i32.const	$push9=, .L.str.3
	call    	eosio_assert@FUNCTION, $pop8, $pop9
	i32.const	$push10=, 8
	i32.call	$drop=, memcpy@FUNCTION, $6, $4, $pop10
	i32.const	$push43=, 8
	i32.ne  	$push11=, $1, $pop43
	i32.const	$push42=, .L.str.3
	call    	eosio_assert@FUNCTION, $pop11, $pop42
	i32.const	$push41=, 8
	i32.add 	$push40=, $6, $pop41
	tee_local	$push39=, $7=, $pop40
	i32.const	$push38=, 8
	i32.add 	$push12=, $4, $pop38
	i32.const	$push37=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop39, $pop12, $pop37
	block   	
	i32.const	$push13=, 513
	i32.lt_u	$push14=, $1, $pop13
	br_if   	0, $pop14
	call    	free@FUNCTION, $4
.LBB7_7:
	end_block
	i32.const	$push46=, 1
	i32.shr_s	$push15=, $2, $pop46
	i32.add 	$1=, $0, $pop15
	i32.load8_u	$4=, 0($7)
	i64.load	$3=, 0($6)
	block   	
	i32.const	$push45=, 1
	i32.and 	$push16=, $2, $pop45
	i32.eqz 	$push48=, $pop16
	br_if   	0, $pop48
	i32.load	$push17=, 0($1)
	i32.add 	$push18=, $pop17, $5
	i32.load	$5=, 0($pop18)
.LBB7_9:
	end_block
	i32.const	$push19=, 255
	i32.and 	$push20=, $4, $pop19
	call_indirect	$1, $3, $pop20, $5
	i32.const	$push29=, 0
	i32.const	$push27=, 16
	i32.add 	$push28=, $6, $pop27
	i32.store	__stack_pointer($pop29), $pop28
	i32.const	$push21=, 1
	.endfunc
.Lfunc_end7:
	.size	_ZN5eosio14execute_actionINS_4biosES1_JyhEEEbPT_MT0_FvDpT1_E, .Lfunc_end7-_ZN5eosio14execute_actionINS_4biosES1_JyhEEEbPT_MT0_FvDpT1_E

	.section	.text._ZN5eosio4bios10setalimitsEyxxx,"axG",@progbits,_ZN5eosio4bios10setalimitsEyxxx,comdat
	.hidden	_ZN5eosio4bios10setalimitsEyxxx
	.weak	_ZN5eosio4bios10setalimitsEyxxx
	.type	_ZN5eosio4bios10setalimitsEyxxx,@function
_ZN5eosio4bios10setalimitsEyxxx:
	.param  	i32, i64, i64, i64, i64
	i64.load	$push0=, 0($0)
	call    	require_auth@FUNCTION, $pop0
	call    	set_resource_limits@FUNCTION, $1, $2, $3, $4
	.endfunc
.Lfunc_end8:
	.size	_ZN5eosio4bios10setalimitsEyxxx, .Lfunc_end8-_ZN5eosio4bios10setalimitsEyxxx

	.section	.text._ZN5eosio14execute_actionINS_4biosES1_JyxxxEEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN5eosio14execute_actionINS_4biosES1_JyxxxEEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN5eosio14execute_actionINS_4biosES1_JyxxxEEEbPT_MT0_FvDpT1_E
	.weak	_ZN5eosio14execute_actionINS_4biosES1_JyxxxEEEbPT_MT0_FvDpT1_E
	.type	_ZN5eosio14execute_actionINS_4biosES1_JyxxxEEEbPT_MT0_FvDpT1_E,@function
_ZN5eosio14execute_actionINS_4biosES1_JyxxxEEEbPT_MT0_FvDpT1_E:
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
.LBB9_3:
	end_block
	i32.const	$1=, 0
	br      	2
.LBB9_4:
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
.LBB9_5:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $1, $3
.LBB9_6:
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
	call    	_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyxxxEEELi0EEEZN5eosiorsINSA_10datastreamIPKcEEJyxxxEEERT_SH_RNS7_IJDpT0_EEEEUlSH_E_EEvRKSG_RKT0_@FUNCTION, $pop33, $pop35
	block   	
	i32.const	$push8=, 513
	i32.lt_u	$push9=, $3, $pop8
	br_if   	0, $pop9
	call    	free@FUNCTION, $1
.LBB9_8:
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
.LBB9_10:
	end_block
	call_indirect	$1, $4, $5, $6, $7, $8
	i32.const	$push29=, 0
	i32.const	$push27=, 64
	i32.add 	$push28=, $9, $pop27
	i32.store	__stack_pointer($pop29), $pop28
	i32.const	$push21=, 1
	.endfunc
.Lfunc_end9:
	.size	_ZN5eosio14execute_actionINS_4biosES1_JyxxxEEEbPT_MT0_FvDpT1_E, .Lfunc_end9-_ZN5eosio14execute_actionINS_4biosES1_JyxxxEEEbPT_MT0_FvDpT1_E

	.section	.text._ZN5eosio4bios10setglimitsEyyy,"axG",@progbits,_ZN5eosio4bios10setglimitsEyyy,comdat
	.hidden	_ZN5eosio4bios10setglimitsEyyy
	.weak	_ZN5eosio4bios10setglimitsEyyy
	.type	_ZN5eosio4bios10setglimitsEyyy,@function
_ZN5eosio4bios10setglimitsEyyy:
	.param  	i32, i64, i64, i64
	i64.load	$push0=, 0($0)
	call    	require_auth@FUNCTION, $pop0
	.endfunc
.Lfunc_end10:
	.size	_ZN5eosio4bios10setglimitsEyyy, .Lfunc_end10-_ZN5eosio4bios10setglimitsEyyy

	.section	.text._ZN5eosio14execute_actionINS_4biosES1_JyyyEEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN5eosio14execute_actionINS_4biosES1_JyyyEEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN5eosio14execute_actionINS_4biosES1_JyyyEEEbPT_MT0_FvDpT1_E
	.weak	_ZN5eosio14execute_actionINS_4biosES1_JyyyEEEbPT_MT0_FvDpT1_E
	.type	_ZN5eosio14execute_actionINS_4biosES1_JyyyEEEbPT_MT0_FvDpT1_E,@function
_ZN5eosio14execute_actionINS_4biosES1_JyyyEEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i64, i64, i64, i32, i32, i32, i32, i32
	i32.const	$push26=, 0
	i32.load	$push27=, __stack_pointer($pop26)
	i32.const	$push28=, 32
	i32.sub 	$push43=, $pop27, $pop28
	tee_local	$push42=, $8=, $pop43
	copy_local	$10=, $pop42
	i32.const	$push29=, 0
	i32.store	__stack_pointer($pop29), $8
	i32.load	$2=, 4($1)
	i32.load	$9=, 0($1)
	block   	
	block   	
	block   	
	block   	
	i32.call	$push41=, action_data_size@FUNCTION
	tee_local	$push40=, $1=, $pop41
	i32.eqz 	$push64=, $pop40
	br_if   	0, $pop64
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $1, $pop0
	br_if   	1, $pop1
	i32.call	$8=, malloc@FUNCTION, $1
	br      	2
.LBB11_3:
	end_block
	i32.const	$8=, 0
	br      	2
.LBB11_4:
	end_block
	i32.const	$push25=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $1, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push45=, $8, $pop5
	tee_local	$push44=, $8=, $pop45
	copy_local	$push39=, $pop44
	i32.store	__stack_pointer($pop25), $pop39
.LBB11_5:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $8, $1
.LBB11_6:
	end_block
	i64.const	$push6=, 0
	i64.store	16($10), $pop6
	i64.const	$push62=, 0
	i64.store	8($10), $pop62
	i64.const	$push61=, 0
	i64.store	24($10), $pop61
	i32.const	$push7=, 7
	i32.gt_u	$push8=, $1, $pop7
	i32.const	$push9=, .L.str.3
	call    	eosio_assert@FUNCTION, $pop8, $pop9
	i32.const	$push33=, 8
	i32.add 	$push34=, $10, $pop33
	i32.const	$push10=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop34, $8, $pop10
	i32.const	$push11=, -8
	i32.and 	$push60=, $1, $pop11
	tee_local	$push59=, $6=, $pop60
	i32.const	$push58=, 8
	i32.ne  	$push12=, $pop59, $pop58
	i32.const	$push57=, .L.str.3
	call    	eosio_assert@FUNCTION, $pop12, $pop57
	i32.const	$push35=, 8
	i32.add 	$push36=, $10, $pop35
	i32.const	$push56=, 8
	i32.add 	$push55=, $pop36, $pop56
	tee_local	$push54=, $7=, $pop55
	i32.const	$push53=, 8
	i32.add 	$push13=, $8, $pop53
	i32.const	$push52=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop54, $pop13, $pop52
	i32.const	$push14=, 16
	i32.ne  	$push15=, $6, $pop14
	i32.const	$push51=, .L.str.3
	call    	eosio_assert@FUNCTION, $pop15, $pop51
	i32.const	$push37=, 8
	i32.add 	$push38=, $10, $pop37
	i32.const	$push50=, 16
	i32.add 	$push49=, $pop38, $pop50
	tee_local	$push48=, $6=, $pop49
	i32.const	$push47=, 16
	i32.add 	$push16=, $8, $pop47
	i32.const	$push46=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop48, $pop16, $pop46
	block   	
	i32.const	$push17=, 513
	i32.lt_u	$push18=, $1, $pop17
	br_if   	0, $pop18
	call    	free@FUNCTION, $8
.LBB11_8:
	end_block
	i32.const	$push19=, 1
	i32.shr_s	$push20=, $2, $pop19
	i32.add 	$1=, $0, $pop20
	i64.load	$5=, 0($6)
	i64.load	$4=, 0($7)
	i64.load	$3=, 8($10)
	block   	
	i32.const	$push63=, 1
	i32.and 	$push21=, $2, $pop63
	i32.eqz 	$push65=, $pop21
	br_if   	0, $pop65
	i32.load	$push22=, 0($1)
	i32.add 	$push23=, $pop22, $9
	i32.load	$9=, 0($pop23)
.LBB11_10:
	end_block
	call_indirect	$1, $3, $4, $5, $9
	i32.const	$push32=, 0
	i32.const	$push30=, 32
	i32.add 	$push31=, $10, $pop30
	i32.store	__stack_pointer($pop32), $pop31
	i32.const	$push24=, 1
	.endfunc
.Lfunc_end11:
	.size	_ZN5eosio14execute_actionINS_4biosES1_JyyyEEEbPT_MT0_FvDpT1_E, .Lfunc_end11-_ZN5eosio14execute_actionINS_4biosES1_JyyyEEEbPT_MT0_FvDpT1_E

	.section	.text._ZN5eosio4bios8setprodsENSt3__16vectorINS_12producer_keyENS1_9allocatorIS3_EEEE,"axG",@progbits,_ZN5eosio4bios8setprodsENSt3__16vectorINS_12producer_keyENS1_9allocatorIS3_EEEE,comdat
	.hidden	_ZN5eosio4bios8setprodsENSt3__16vectorINS_12producer_keyENS1_9allocatorIS3_EEEE
	.weak	_ZN5eosio4bios8setprodsENSt3__16vectorINS_12producer_keyENS1_9allocatorIS3_EEEE
	.type	_ZN5eosio4bios8setprodsENSt3__16vectorINS_12producer_keyENS1_9allocatorIS3_EEEE,@function
_ZN5eosio4bios8setprodsENSt3__16vectorINS_12producer_keyENS1_9allocatorIS3_EEEE:
	.param  	i32, i32
	.local  	i32, i32
	i32.const	$push8=, 0
	i32.load	$push14=, __stack_pointer($pop8)
	tee_local	$push13=, $2=, $pop14
	copy_local	$3=, $pop13
	i64.load	$push0=, 0($0)
	call    	require_auth@FUNCTION, $pop0
	block   	
	block   	
	i32.call	$push12=, action_data_size@FUNCTION
	tee_local	$push11=, $0=, $pop12
	i32.const	$push1=, 513
	i32.lt_u	$push2=, $pop11, $pop1
	br_if   	0, $pop2
	i32.call	$2=, malloc@FUNCTION, $0
	br      	1
.LBB12_2:
	end_block
	i32.const	$push7=, 0
	i32.const	$push3=, 15
	i32.add 	$push4=, $0, $pop3
	i32.const	$push5=, -16
	i32.and 	$push6=, $pop4, $pop5
	i32.sub 	$push16=, $2, $pop6
	tee_local	$push15=, $2=, $pop16
	copy_local	$push10=, $pop15
	i32.store	__stack_pointer($pop7), $pop10
.LBB12_3:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $2, $0
	i64.call	$drop=, set_proposed_producers@FUNCTION, $2, $0
	i32.const	$push9=, 0
	i32.store	__stack_pointer($pop9), $3
	.endfunc
.Lfunc_end12:
	.size	_ZN5eosio4bios8setprodsENSt3__16vectorINS_12producer_keyENS1_9allocatorIS3_EEEE, .Lfunc_end12-_ZN5eosio4bios8setprodsENSt3__16vectorINS_12producer_keyENS1_9allocatorIS3_EEEE

	.section	.text._ZN5eosio14execute_actionINS_4biosES1_JNSt3__16vectorINS_12producer_keyENS2_9allocatorIS4_EEEEEEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN5eosio14execute_actionINS_4biosES1_JNSt3__16vectorINS_12producer_keyENS2_9allocatorIS4_EEEEEEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN5eosio14execute_actionINS_4biosES1_JNSt3__16vectorINS_12producer_keyENS2_9allocatorIS4_EEEEEEEbPT_MT0_FvDpT1_E
	.weak	_ZN5eosio14execute_actionINS_4biosES1_JNSt3__16vectorINS_12producer_keyENS2_9allocatorIS4_EEEEEEEbPT_MT0_FvDpT1_E
	.type	_ZN5eosio14execute_actionINS_4biosES1_JNSt3__16vectorINS_12producer_keyENS2_9allocatorIS4_EEEEEEEbPT_MT0_FvDpT1_E,@function
_ZN5eosio14execute_actionINS_4biosES1_JNSt3__16vectorINS_12producer_keyENS2_9allocatorIS4_EEEEEEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32
	i32.const	$push47=, 0
	i32.load	$push48=, __stack_pointer($pop47)
	i32.const	$push49=, 48
	i32.sub 	$push66=, $pop48, $pop49
	tee_local	$push65=, $6=, $pop66
	copy_local	$5=, $pop65
	i32.const	$push50=, 0
	i32.store	__stack_pointer($pop50), $6
	i32.load	$2=, 4($1)
	i32.load	$4=, 0($1)
	i32.const	$1=, 0
	block   	
	i32.call	$push64=, action_data_size@FUNCTION
	tee_local	$push63=, $3=, $pop64
	i32.eqz 	$push104=, $pop63
	br_if   	0, $pop104
	block   	
	block   	
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $3, $pop0
	br_if   	0, $pop1
	i32.call	$1=, malloc@FUNCTION, $3
	br      	1
.LBB13_3:
	end_block
	i32.const	$push46=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $3, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push68=, $6, $pop5
	tee_local	$push67=, $1=, $pop68
	copy_local	$push62=, $pop67
	i32.store	__stack_pointer($pop46), $pop62
.LBB13_4:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $1, $3
.LBB13_5:
	end_block
	i32.const	$push70=, 0
	i32.store	8($5), $pop70
	i64.const	$push69=, 0
	i64.store	0($5), $pop69
	i32.store	36($5), $1
	i32.store	32($5), $1
	i32.add 	$push6=, $1, $3
	i32.store	40($5), $pop6
	i32.const	$push54=, 32
	i32.add 	$push55=, $5, $pop54
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEENS_12producer_keyEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE@FUNCTION, $pop55, $5
	block   	
	i32.const	$push7=, 513
	i32.lt_u	$push8=, $3, $pop7
	br_if   	0, $pop8
	call    	free@FUNCTION, $1
.LBB13_7:
	end_block
	i64.const	$push74=, 0
	i64.store	16($5), $pop74
	i32.const	$1=, 0
	i32.const	$push73=, 0
	i32.store	24($5), $pop73
	i32.load	$push9=, 4($5)
	i32.load	$push10=, 0($5)
	i32.sub 	$push72=, $pop9, $pop10
	tee_local	$push71=, $3=, $pop72
	i32.const	$push11=, 48
	i32.div_s	$6=, $pop71, $pop11
	block   	
	block   	
	block   	
	i32.eqz 	$push105=, $3
	br_if   	0, $pop105
	i32.const	$push12=, 89478486
	i32.ge_u	$push13=, $6, $pop12
	br_if   	1, $pop13
	i32.const	$push16=, 24
	i32.add 	$push17=, $5, $pop16
	i32.call	$push81=, _Znwj@FUNCTION, $3
	tee_local	$push80=, $1=, $pop81
	i32.const	$push79=, 48
	i32.mul 	$push14=, $6, $pop79
	i32.add 	$push15=, $pop80, $pop14
	i32.store	0($pop17), $pop15
	i32.store	16($5), $1
	i32.store	20($5), $1
	i32.load	$push18=, 4($5)
	i32.load	$push78=, 0($5)
	tee_local	$push77=, $6=, $pop78
	i32.sub 	$push76=, $pop18, $pop77
	tee_local	$push75=, $3=, $pop76
	i32.const	$push19=, 1
	i32.lt_s	$push20=, $pop75, $pop19
	br_if   	0, $pop20
	i32.call	$drop=, memcpy@FUNCTION, $1, $6, $3
	i32.load	$push23=, 20($5)
	i32.const	$push85=, 48
	i32.div_u	$push21=, $3, $pop85
	i32.const	$push84=, 48
	i32.mul 	$push22=, $pop21, $pop84
	i32.add 	$push83=, $pop23, $pop22
	tee_local	$push82=, $1=, $pop83
	i32.store	20($5), $pop82
.LBB13_11:
	end_block
	i32.const	$push24=, 1
	i32.shr_s	$push25=, $2, $pop24
	i32.add 	$3=, $0, $pop25
	block   	
	i32.const	$push86=, 1
	i32.and 	$push26=, $2, $pop86
	i32.eqz 	$push106=, $pop26
	br_if   	0, $pop106
	i32.load	$push27=, 0($3)
	i32.add 	$push28=, $pop27, $4
	i32.load	$4=, 0($pop28)
.LBB13_13:
	end_block
	i64.const	$push29=, 0
	i64.store	32($5), $pop29
	i32.const	$push30=, 0
	i32.store	40($5), $pop30
	i32.load	$push31=, 16($5)
	i32.sub 	$push88=, $1, $pop31
	tee_local	$push87=, $1=, $pop88
	i32.const	$push32=, 48
	i32.div_s	$2=, $pop87, $pop32
	block   	
	i32.eqz 	$push107=, $1
	br_if   	0, $pop107
	i32.const	$push33=, 89478486
	i32.ge_u	$push34=, $2, $pop33
	br_if   	2, $pop34
	i32.const	$push37=, 40
	i32.add 	$push38=, $5, $pop37
	i32.call	$push95=, _Znwj@FUNCTION, $1
	tee_local	$push94=, $1=, $pop95
	i32.const	$push93=, 48
	i32.mul 	$push35=, $2, $pop93
	i32.add 	$push36=, $pop94, $pop35
	i32.store	0($pop38), $pop36
	i32.store	32($5), $1
	i32.store	36($5), $1
	i32.load	$push39=, 20($5)
	i32.load	$push92=, 16($5)
	tee_local	$push91=, $6=, $pop92
	i32.sub 	$push90=, $pop39, $pop91
	tee_local	$push89=, $2=, $pop90
	i32.const	$push40=, 1
	i32.lt_s	$push41=, $pop89, $pop40
	br_if   	0, $pop41
	i32.call	$drop=, memcpy@FUNCTION, $1, $6, $2
	i32.const	$push97=, 48
	i32.div_u	$push42=, $2, $pop97
	i32.const	$push96=, 48
	i32.mul 	$push43=, $pop42, $pop96
	i32.add 	$push44=, $1, $pop43
	i32.store	36($5), $pop44
.LBB13_17:
	end_block
	i32.const	$push56=, 32
	i32.add 	$push57=, $5, $pop56
	call_indirect	$3, $pop57, $4
	block   	
	i32.load	$push99=, 32($5)
	tee_local	$push98=, $1=, $pop99
	i32.eqz 	$push108=, $pop98
	br_if   	0, $pop108
	i32.store	36($5), $1
	call    	_ZdlPv@FUNCTION, $1
.LBB13_19:
	end_block
	block   	
	i32.load	$push101=, 16($5)
	tee_local	$push100=, $1=, $pop101
	i32.eqz 	$push109=, $pop100
	br_if   	0, $pop109
	i32.store	20($5), $1
	call    	_ZdlPv@FUNCTION, $1
.LBB13_21:
	end_block
	block   	
	i32.load	$push103=, 0($5)
	tee_local	$push102=, $1=, $pop103
	i32.eqz 	$push110=, $pop102
	br_if   	0, $pop110
	i32.store	4($5), $1
	call    	_ZdlPv@FUNCTION, $1
.LBB13_23:
	end_block
	i32.const	$push53=, 0
	i32.const	$push51=, 48
	i32.add 	$push52=, $5, $pop51
	i32.store	__stack_pointer($pop53), $pop52
	i32.const	$push45=, 1
	return  	$pop45
.LBB13_24:
	end_block
	i32.const	$push60=, 16
	i32.add 	$push61=, $5, $pop60
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $pop61
	unreachable
.LBB13_25:
	end_block
	i32.const	$push58=, 32
	i32.add 	$push59=, $5, $pop58
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $pop59
	unreachable
	.endfunc
.Lfunc_end13:
	.size	_ZN5eosio14execute_actionINS_4biosES1_JNSt3__16vectorINS_12producer_keyENS2_9allocatorIS4_EEEEEEEbPT_MT0_FvDpT1_E, .Lfunc_end13-_ZN5eosio14execute_actionINS_4biosES1_JNSt3__16vectorINS_12producer_keyENS2_9allocatorIS4_EEEEEEEbPT_MT0_FvDpT1_E

	.section	.text._ZN5eosio4bios9setparamsERKNS_21blockchain_parametersE,"axG",@progbits,_ZN5eosio4bios9setparamsERKNS_21blockchain_parametersE,comdat
	.hidden	_ZN5eosio4bios9setparamsERKNS_21blockchain_parametersE
	.weak	_ZN5eosio4bios9setparamsERKNS_21blockchain_parametersE
	.type	_ZN5eosio4bios9setparamsERKNS_21blockchain_parametersE,@function
_ZN5eosio4bios9setparamsERKNS_21blockchain_parametersE:
	.param  	i32, i32
	i64.load	$push0=, 0($0)
	call    	require_auth@FUNCTION, $pop0
	call    	_ZN5eosio25set_blockchain_parametersERKNS_21blockchain_parametersE@FUNCTION, $1
	.endfunc
.Lfunc_end14:
	.size	_ZN5eosio4bios9setparamsERKNS_21blockchain_parametersE, .Lfunc_end14-_ZN5eosio4bios9setparamsERKNS_21blockchain_parametersE

	.section	.text._ZN5eosio14execute_actionINS_4biosES1_JRKNS_21blockchain_parametersEEEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN5eosio14execute_actionINS_4biosES1_JRKNS_21blockchain_parametersEEEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN5eosio14execute_actionINS_4biosES1_JRKNS_21blockchain_parametersEEEEbPT_MT0_FvDpT1_E
	.weak	_ZN5eosio14execute_actionINS_4biosES1_JRKNS_21blockchain_parametersEEEEbPT_MT0_FvDpT1_E
	.type	_ZN5eosio14execute_actionINS_4biosES1_JRKNS_21blockchain_parametersEEEEbPT_MT0_FvDpT1_E,@function
_ZN5eosio14execute_actionINS_4biosES1_JRKNS_21blockchain_parametersEEEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32
	i32.const	$push16=, 0
	i32.load	$push17=, __stack_pointer($pop16)
	i32.const	$push18=, 272
	i32.sub 	$push43=, $pop17, $pop18
	tee_local	$push42=, $6=, $pop43
	copy_local	$5=, $pop42
	i32.const	$push19=, 0
	i32.store	__stack_pointer($pop19), $6
	i32.load	$2=, 4($1)
	i32.load	$4=, 0($1)
	i32.const	$1=, 0
	block   	
	i32.call	$push41=, action_data_size@FUNCTION
	tee_local	$push40=, $3=, $pop41
	i32.eqz 	$push51=, $pop40
	br_if   	0, $pop51
	block   	
	block   	
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $3, $pop0
	br_if   	0, $pop1
	i32.call	$1=, malloc@FUNCTION, $3
	br      	1
.LBB15_3:
	end_block
	i32.const	$push15=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $3, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push45=, $6, $pop5
	tee_local	$push44=, $1=, $pop45
	copy_local	$push39=, $pop44
	i32.store	__stack_pointer($pop15), $pop39
.LBB15_4:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $1, $3
.LBB15_5:
	end_block
	i32.const	$push23=, 8
	i32.add 	$push24=, $5, $pop23
	i32.const	$push47=, 0
	i32.const	$push46=, 88
	i32.call	$drop=, memset@FUNCTION, $pop24, $pop47, $pop46
	i32.store	188($5), $1
	i32.store	184($5), $1
	i32.add 	$push6=, $1, $3
	i32.store	192($5), $pop6
	i32.const	$push25=, 184
	i32.add 	$push26=, $5, $pop25
	i32.const	$push27=, 8
	i32.add 	$push28=, $5, $pop27
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_21blockchain_parametersE@FUNCTION, $pop26, $pop28
	block   	
	i32.const	$push7=, 513
	i32.lt_u	$push8=, $3, $pop7
	br_if   	0, $pop8
	call    	free@FUNCTION, $1
.LBB15_7:
	end_block
	i32.const	$push29=, 96
	i32.add 	$push30=, $5, $pop29
	i32.const	$push31=, 8
	i32.add 	$push32=, $5, $pop31
	i32.const	$push50=, 88
	i32.call	$drop=, memcpy@FUNCTION, $pop30, $pop32, $pop50
	i32.const	$push33=, 184
	i32.add 	$push34=, $5, $pop33
	i32.const	$push35=, 96
	i32.add 	$push36=, $5, $pop35
	i32.const	$push49=, 88
	i32.call	$drop=, memcpy@FUNCTION, $pop34, $pop36, $pop49
	i32.const	$push9=, 1
	i32.shr_s	$push10=, $2, $pop9
	i32.add 	$1=, $0, $pop10
	block   	
	i32.const	$push48=, 1
	i32.and 	$push11=, $2, $pop48
	i32.eqz 	$push52=, $pop11
	br_if   	0, $pop52
	i32.load	$push12=, 0($1)
	i32.add 	$push13=, $pop12, $4
	i32.load	$4=, 0($pop13)
.LBB15_9:
	end_block
	i32.const	$push37=, 184
	i32.add 	$push38=, $5, $pop37
	call_indirect	$1, $pop38, $4
	i32.const	$push22=, 0
	i32.const	$push20=, 272
	i32.add 	$push21=, $5, $pop20
	i32.store	__stack_pointer($pop22), $pop21
	i32.const	$push14=, 1
	.endfunc
.Lfunc_end15:
	.size	_ZN5eosio14execute_actionINS_4biosES1_JRKNS_21blockchain_parametersEEEEbPT_MT0_FvDpT1_E, .Lfunc_end15-_ZN5eosio14execute_actionINS_4biosES1_JRKNS_21blockchain_parametersEEEEbPT_MT0_FvDpT1_E

	.section	.text._ZN5eosio4bios7reqauthEy,"axG",@progbits,_ZN5eosio4bios7reqauthEy,comdat
	.hidden	_ZN5eosio4bios7reqauthEy
	.weak	_ZN5eosio4bios7reqauthEy
	.type	_ZN5eosio4bios7reqauthEy,@function
_ZN5eosio4bios7reqauthEy:
	.param  	i32, i64
	call    	require_auth@FUNCTION, $1
	.endfunc
.Lfunc_end16:
	.size	_ZN5eosio4bios7reqauthEy, .Lfunc_end16-_ZN5eosio4bios7reqauthEy

	.section	.text._ZN5eosio14execute_actionINS_4biosES1_JyEEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN5eosio14execute_actionINS_4biosES1_JyEEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN5eosio14execute_actionINS_4biosES1_JyEEEbPT_MT0_FvDpT1_E
	.weak	_ZN5eosio14execute_actionINS_4biosES1_JyEEEbPT_MT0_FvDpT1_E
	.type	_ZN5eosio14execute_actionINS_4biosES1_JyEEEbPT_MT0_FvDpT1_E,@function
_ZN5eosio14execute_actionINS_4biosES1_JyEEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i64, i32, i32, i32
	i32.const	$push20=, 0
	i32.load	$push21=, __stack_pointer($pop20)
	i32.const	$push22=, 16
	i32.sub 	$push33=, $pop21, $pop22
	tee_local	$push32=, $4=, $pop33
	copy_local	$6=, $pop32
	i32.const	$push23=, 0
	i32.store	__stack_pointer($pop23), $4
	i32.load	$2=, 4($1)
	i32.load	$5=, 0($1)
	block   	
	block   	
	block   	
	block   	
	i32.call	$push31=, action_data_size@FUNCTION
	tee_local	$push30=, $1=, $pop31
	i32.eqz 	$push37=, $pop30
	br_if   	0, $pop37
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $1, $pop0
	br_if   	1, $pop1
	i32.call	$4=, malloc@FUNCTION, $1
	br      	2
.LBB17_3:
	end_block
	i32.const	$4=, 0
	br      	2
.LBB17_4:
	end_block
	i32.const	$push19=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $1, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push35=, $4, $pop5
	tee_local	$push34=, $4=, $pop35
	copy_local	$push29=, $pop34
	i32.store	__stack_pointer($pop19), $pop29
.LBB17_5:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $4, $1
.LBB17_6:
	end_block
	i64.const	$push6=, 0
	i64.store	8($6), $pop6
	i32.const	$push7=, 7
	i32.gt_u	$push8=, $1, $pop7
	i32.const	$push9=, .L.str.3
	call    	eosio_assert@FUNCTION, $pop8, $pop9
	i32.const	$push27=, 8
	i32.add 	$push28=, $6, $pop27
	i32.const	$push10=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop28, $4, $pop10
	i64.load	$3=, 8($6)
	block   	
	i32.const	$push11=, 513
	i32.lt_u	$push12=, $1, $pop11
	br_if   	0, $pop12
	call    	free@FUNCTION, $4
.LBB17_8:
	end_block
	i32.const	$push13=, 1
	i32.shr_s	$push14=, $2, $pop13
	i32.add 	$1=, $0, $pop14
	block   	
	i32.const	$push36=, 1
	i32.and 	$push15=, $2, $pop36
	i32.eqz 	$push38=, $pop15
	br_if   	0, $pop38
	i32.load	$push16=, 0($1)
	i32.add 	$push17=, $pop16, $5
	i32.load	$5=, 0($pop17)
.LBB17_10:
	end_block
	call_indirect	$1, $3, $5
	i32.const	$push26=, 0
	i32.const	$push24=, 16
	i32.add 	$push25=, $6, $pop24
	i32.store	__stack_pointer($pop26), $pop25
	i32.const	$push18=, 1
	.endfunc
.Lfunc_end17:
	.size	_ZN5eosio14execute_actionINS_4biosES1_JyEEEbPT_MT0_FvDpT1_E, .Lfunc_end17-_ZN5eosio14execute_actionINS_4biosES1_JyEEEbPT_MT0_FvDpT1_E

	.section	.text._ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_21blockchain_parametersE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_21blockchain_parametersE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_21blockchain_parametersE
	.weak	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_21blockchain_parametersE
	.type	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_21blockchain_parametersE,@function
_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_21blockchain_parametersE:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.3
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $1, $pop6, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push218=, 8
	i32.add 	$push217=, $pop8, $pop218
	tee_local	$push216=, $2=, $pop217
	i32.store	4($0), $pop216
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push11=, 3
	i32.gt_u	$push12=, $pop10, $pop11
	i32.const	$push215=, .L.str.3
	call    	eosio_assert@FUNCTION, $pop12, $pop215
	i32.const	$push214=, 8
	i32.add 	$push13=, $1, $pop214
	i32.load	$push14=, 4($0)
	i32.const	$push15=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop13, $pop14, $pop15
	i32.load	$push16=, 4($0)
	i32.const	$push213=, 4
	i32.add 	$push212=, $pop16, $pop213
	tee_local	$push211=, $2=, $pop212
	i32.store	4($0), $pop211
	i32.load	$push17=, 8($0)
	i32.sub 	$push18=, $pop17, $2
	i32.const	$push210=, 3
	i32.gt_u	$push19=, $pop18, $pop210
	i32.const	$push209=, .L.str.3
	call    	eosio_assert@FUNCTION, $pop19, $pop209
	i32.const	$push20=, 12
	i32.add 	$push21=, $1, $pop20
	i32.load	$push22=, 4($0)
	i32.const	$push208=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop21, $pop22, $pop208
	i32.load	$push23=, 4($0)
	i32.const	$push207=, 4
	i32.add 	$push206=, $pop23, $pop207
	tee_local	$push205=, $2=, $pop206
	i32.store	4($0), $pop205
	i32.load	$push24=, 8($0)
	i32.sub 	$push25=, $pop24, $2
	i32.const	$push204=, 3
	i32.gt_u	$push26=, $pop25, $pop204
	i32.const	$push203=, .L.str.3
	call    	eosio_assert@FUNCTION, $pop26, $pop203
	i32.const	$push27=, 16
	i32.add 	$push28=, $1, $pop27
	i32.load	$push29=, 4($0)
	i32.const	$push202=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop28, $pop29, $pop202
	i32.load	$push30=, 4($0)
	i32.const	$push201=, 4
	i32.add 	$push200=, $pop30, $pop201
	tee_local	$push199=, $2=, $pop200
	i32.store	4($0), $pop199
	i32.load	$push31=, 8($0)
	i32.sub 	$push32=, $pop31, $2
	i32.const	$push198=, 3
	i32.gt_u	$push33=, $pop32, $pop198
	i32.const	$push197=, .L.str.3
	call    	eosio_assert@FUNCTION, $pop33, $pop197
	i32.const	$push34=, 20
	i32.add 	$push35=, $1, $pop34
	i32.load	$push36=, 4($0)
	i32.const	$push196=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop35, $pop36, $pop196
	i32.load	$push37=, 4($0)
	i32.const	$push195=, 4
	i32.add 	$push194=, $pop37, $pop195
	tee_local	$push193=, $2=, $pop194
	i32.store	4($0), $pop193
	i32.load	$push38=, 8($0)
	i32.sub 	$push39=, $pop38, $2
	i32.const	$push192=, 3
	i32.gt_u	$push40=, $pop39, $pop192
	i32.const	$push191=, .L.str.3
	call    	eosio_assert@FUNCTION, $pop40, $pop191
	i32.const	$push41=, 24
	i32.add 	$push42=, $1, $pop41
	i32.load	$push43=, 4($0)
	i32.const	$push190=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop42, $pop43, $pop190
	i32.load	$push44=, 4($0)
	i32.const	$push189=, 4
	i32.add 	$push188=, $pop44, $pop189
	tee_local	$push187=, $2=, $pop188
	i32.store	4($0), $pop187
	i32.load	$push45=, 8($0)
	i32.sub 	$push46=, $pop45, $2
	i32.const	$push186=, 3
	i32.gt_u	$push47=, $pop46, $pop186
	i32.const	$push185=, .L.str.3
	call    	eosio_assert@FUNCTION, $pop47, $pop185
	i32.const	$push48=, 28
	i32.add 	$push49=, $1, $pop48
	i32.load	$push50=, 4($0)
	i32.const	$push184=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop49, $pop50, $pop184
	i32.load	$push51=, 4($0)
	i32.const	$push183=, 4
	i32.add 	$push182=, $pop51, $pop183
	tee_local	$push181=, $2=, $pop182
	i32.store	4($0), $pop181
	i32.load	$push52=, 8($0)
	i32.sub 	$push53=, $pop52, $2
	i32.const	$push180=, 3
	i32.gt_u	$push54=, $pop53, $pop180
	i32.const	$push179=, .L.str.3
	call    	eosio_assert@FUNCTION, $pop54, $pop179
	i32.const	$push55=, 32
	i32.add 	$push56=, $1, $pop55
	i32.load	$push57=, 4($0)
	i32.const	$push178=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop56, $pop57, $pop178
	i32.load	$push58=, 4($0)
	i32.const	$push177=, 4
	i32.add 	$push176=, $pop58, $pop177
	tee_local	$push175=, $2=, $pop176
	i32.store	4($0), $pop175
	i32.load	$push59=, 8($0)
	i32.sub 	$push60=, $pop59, $2
	i32.const	$push174=, 3
	i32.gt_u	$push61=, $pop60, $pop174
	i32.const	$push173=, .L.str.3
	call    	eosio_assert@FUNCTION, $pop61, $pop173
	i32.const	$push62=, 36
	i32.add 	$push63=, $1, $pop62
	i32.load	$push64=, 4($0)
	i32.const	$push172=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop63, $pop64, $pop172
	i32.load	$push65=, 4($0)
	i32.const	$push171=, 4
	i32.add 	$push170=, $pop65, $pop171
	tee_local	$push169=, $2=, $pop170
	i32.store	4($0), $pop169
	i32.load	$push66=, 8($0)
	i32.sub 	$push67=, $pop66, $2
	i32.const	$push168=, 3
	i32.gt_u	$push68=, $pop67, $pop168
	i32.const	$push167=, .L.str.3
	call    	eosio_assert@FUNCTION, $pop68, $pop167
	i32.const	$push69=, 40
	i32.add 	$push70=, $1, $pop69
	i32.load	$push71=, 4($0)
	i32.const	$push166=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop70, $pop71, $pop166
	i32.load	$push72=, 4($0)
	i32.const	$push165=, 4
	i32.add 	$push164=, $pop72, $pop165
	tee_local	$push163=, $2=, $pop164
	i32.store	4($0), $pop163
	i32.load	$push73=, 8($0)
	i32.sub 	$push74=, $pop73, $2
	i32.const	$push162=, 3
	i32.gt_u	$push75=, $pop74, $pop162
	i32.const	$push161=, .L.str.3
	call    	eosio_assert@FUNCTION, $pop75, $pop161
	i32.const	$push76=, 44
	i32.add 	$push77=, $1, $pop76
	i32.load	$push78=, 4($0)
	i32.const	$push160=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop77, $pop78, $pop160
	i32.load	$push79=, 4($0)
	i32.const	$push159=, 4
	i32.add 	$push158=, $pop79, $pop159
	tee_local	$push157=, $2=, $pop158
	i32.store	4($0), $pop157
	i32.load	$push80=, 8($0)
	i32.sub 	$push81=, $pop80, $2
	i32.const	$push156=, 3
	i32.gt_u	$push82=, $pop81, $pop156
	i32.const	$push155=, .L.str.3
	call    	eosio_assert@FUNCTION, $pop82, $pop155
	i32.const	$push83=, 64
	i32.add 	$push84=, $1, $pop83
	i32.load	$push85=, 4($0)
	i32.const	$push154=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop84, $pop85, $pop154
	i32.load	$push86=, 4($0)
	i32.const	$push153=, 4
	i32.add 	$push152=, $pop86, $pop153
	tee_local	$push151=, $2=, $pop152
	i32.store	4($0), $pop151
	i32.load	$push87=, 8($0)
	i32.sub 	$push88=, $pop87, $2
	i32.const	$push150=, 3
	i32.gt_u	$push89=, $pop88, $pop150
	i32.const	$push149=, .L.str.3
	call    	eosio_assert@FUNCTION, $pop89, $pop149
	i32.const	$push90=, 68
	i32.add 	$push91=, $1, $pop90
	i32.load	$push92=, 4($0)
	i32.const	$push148=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop91, $pop92, $pop148
	i32.load	$push93=, 4($0)
	i32.const	$push147=, 4
	i32.add 	$push146=, $pop93, $pop147
	tee_local	$push145=, $2=, $pop146
	i32.store	4($0), $pop145
	i32.load	$push94=, 8($0)
	i32.sub 	$push95=, $pop94, $2
	i32.const	$push144=, 3
	i32.gt_u	$push96=, $pop95, $pop144
	i32.const	$push143=, .L.str.3
	call    	eosio_assert@FUNCTION, $pop96, $pop143
	i32.const	$push97=, 72
	i32.add 	$push98=, $1, $pop97
	i32.load	$push99=, 4($0)
	i32.const	$push142=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop98, $pop99, $pop142
	i32.load	$push100=, 4($0)
	i32.const	$push141=, 4
	i32.add 	$push140=, $pop100, $pop141
	tee_local	$push139=, $2=, $pop140
	i32.store	4($0), $pop139
	i32.load	$push101=, 8($0)
	i32.sub 	$push102=, $pop101, $2
	i32.const	$push138=, 3
	i32.gt_u	$push103=, $pop102, $pop138
	i32.const	$push137=, .L.str.3
	call    	eosio_assert@FUNCTION, $pop103, $pop137
	i32.const	$push104=, 76
	i32.add 	$push105=, $1, $pop104
	i32.load	$push106=, 4($0)
	i32.const	$push136=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop105, $pop106, $pop136
	i32.load	$push107=, 4($0)
	i32.const	$push135=, 4
	i32.add 	$push134=, $pop107, $pop135
	tee_local	$push133=, $2=, $pop134
	i32.store	4($0), $pop133
	i32.load	$push108=, 8($0)
	i32.sub 	$push109=, $pop108, $2
	i32.const	$push110=, 1
	i32.gt_u	$push111=, $pop109, $pop110
	i32.const	$push132=, .L.str.3
	call    	eosio_assert@FUNCTION, $pop111, $pop132
	i32.const	$push112=, 80
	i32.add 	$push113=, $1, $pop112
	i32.load	$push114=, 4($0)
	i32.const	$push115=, 2
	i32.call	$drop=, memcpy@FUNCTION, $pop113, $pop114, $pop115
	i32.load	$push116=, 4($0)
	i32.const	$push131=, 2
	i32.add 	$push130=, $pop116, $pop131
	tee_local	$push129=, $2=, $pop130
	i32.store	4($0), $pop129
	i32.load	$push117=, 8($0)
	i32.sub 	$push118=, $pop117, $2
	i32.const	$push128=, 1
	i32.gt_u	$push119=, $pop118, $pop128
	i32.const	$push127=, .L.str.3
	call    	eosio_assert@FUNCTION, $pop119, $pop127
	i32.const	$push120=, 82
	i32.add 	$push121=, $1, $pop120
	i32.load	$push122=, 4($0)
	i32.const	$push126=, 2
	i32.call	$drop=, memcpy@FUNCTION, $pop121, $pop122, $pop126
	i32.load	$push123=, 4($0)
	i32.const	$push125=, 2
	i32.add 	$push124=, $pop123, $pop125
	i32.store	4($0), $pop124
	copy_local	$push219=, $0
	.endfunc
.Lfunc_end18:
	.size	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_21blockchain_parametersE, .Lfunc_end18-_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_21blockchain_parametersE

	.section	.text._ZN5eosiorsINS_10datastreamIPKcEENS_12producer_keyEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPKcEENS_12producer_keyEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPKcEENS_12producer_keyEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE
	.weak	_ZN5eosiorsINS_10datastreamIPKcEENS_12producer_keyEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE
	.type	_ZN5eosiorsINS_10datastreamIPKcEENS_12producer_keyEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE,@function
_ZN5eosiorsINS_10datastreamIPKcEENS_12producer_keyEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32
	i32.load	$7=, 4($0)
	i32.const	$6=, 0
	i64.const	$5=, 0
	i32.const	$push0=, 8
	i32.add 	$2=, $0, $pop0
	i32.const	$push3=, 4
	i32.add 	$3=, $0, $pop3
.LBB19_1:
	loop    	
	i32.load	$push1=, 0($2)
	i32.lt_u	$push2=, $7, $pop1
	i32.const	$push45=, .L.str.4
	call    	eosio_assert@FUNCTION, $pop2, $pop45
	i32.load	$push44=, 0($3)
	tee_local	$push43=, $7=, $pop44
	i32.load8_u	$4=, 0($pop43)
	i32.const	$push42=, 1
	i32.add 	$push41=, $7, $pop42
	tee_local	$push40=, $7=, $pop41
	i32.store	0($3), $pop40
	i32.const	$push39=, 127
	i32.and 	$push4=, $4, $pop39
	i32.const	$push38=, 255
	i32.and 	$push37=, $6, $pop38
	tee_local	$push36=, $6=, $pop37
	i32.shl 	$push5=, $pop4, $pop36
	i64.extend_u/i32	$push6=, $pop5
	i64.or  	$5=, $pop6, $5
	i32.const	$push35=, 7
	i32.add 	$6=, $6, $pop35
	i32.const	$push34=, 7
	i32.shr_u	$push7=, $4, $pop34
	br_if   	0, $pop7
	end_loop
	block   	
	block   	
	block   	
	i32.wrap/i64	$push53=, $5
	tee_local	$push52=, $4=, $pop53
	i32.load	$push51=, 4($1)
	tee_local	$push50=, $2=, $pop51
	i32.load	$push49=, 0($1)
	tee_local	$push48=, $7=, $pop49
	i32.sub 	$push8=, $pop50, $pop48
	i32.const	$push9=, 48
	i32.div_s	$push47=, $pop8, $pop9
	tee_local	$push46=, $6=, $pop47
	i32.le_u	$push10=, $pop52, $pop46
	br_if   	0, $pop10
	i32.sub 	$push16=, $4, $6
	call    	_ZNSt3__16vectorIN5eosio12producer_keyENS_9allocatorIS2_EEE8__appendEj@FUNCTION, $1, $pop16
	i32.load	$push57=, 0($1)
	tee_local	$push56=, $7=, $pop57
	i32.const	$push17=, 4
	i32.add 	$push18=, $1, $pop17
	i32.load	$push55=, 0($pop18)
	tee_local	$push54=, $2=, $pop55
	i32.ne  	$push19=, $pop56, $pop54
	br_if   	1, $pop19
	br      	2
.LBB19_4:
	end_block
	block   	
	i32.ge_u	$push11=, $4, $6
	br_if   	0, $pop11
	i32.const	$push12=, 4
	i32.add 	$push13=, $1, $pop12
	i32.const	$push14=, 48
	i32.mul 	$push15=, $4, $pop14
	i32.add 	$push59=, $7, $pop15
	tee_local	$push58=, $2=, $pop59
	i32.store	0($pop13), $pop58
.LBB19_6:
	end_block
	i32.eq  	$push20=, $7, $2
	br_if   	1, $pop20
.LBB19_7:
	end_block
	i32.const	$push21=, 4
	i32.add 	$push61=, $0, $pop21
	tee_local	$push60=, $4=, $pop61
	i32.load	$6=, 0($pop60)
.LBB19_8:
	loop    	
	i32.const	$push80=, 8
	i32.add 	$push79=, $0, $pop80
	tee_local	$push78=, $3=, $pop79
	i32.load	$push22=, 0($pop78)
	i32.sub 	$push23=, $pop22, $6
	i32.const	$push77=, 7
	i32.gt_u	$push24=, $pop23, $pop77
	i32.const	$push76=, .L.str.3
	call    	eosio_assert@FUNCTION, $pop24, $pop76
	i32.load	$push25=, 0($4)
	i32.const	$push75=, 8
	i32.call	$drop=, memcpy@FUNCTION, $7, $pop25, $pop75
	i32.load	$push26=, 0($4)
	i32.const	$push74=, 8
	i32.add 	$push73=, $pop26, $pop74
	tee_local	$push72=, $6=, $pop73
	i32.store	0($4), $pop72
	i32.load	$push27=, 0($3)
	i32.sub 	$push28=, $pop27, $6
	i32.const	$push71=, 33
	i32.gt_u	$push29=, $pop28, $pop71
	i32.const	$push70=, .L.str.3
	call    	eosio_assert@FUNCTION, $pop29, $pop70
	i32.const	$push69=, 8
	i32.add 	$push30=, $7, $pop69
	i32.load	$push31=, 0($4)
	i32.const	$push68=, 34
	i32.call	$drop=, memcpy@FUNCTION, $pop30, $pop31, $pop68
	i32.load	$push32=, 0($4)
	i32.const	$push67=, 34
	i32.add 	$push66=, $pop32, $pop67
	tee_local	$push65=, $6=, $pop66
	i32.store	0($4), $pop65
	i32.const	$push64=, 48
	i32.add 	$push63=, $7, $pop64
	tee_local	$push62=, $7=, $pop63
	i32.ne  	$push33=, $pop62, $2
	br_if   	0, $pop33
.LBB19_9:
	end_loop
	end_block
	copy_local	$push81=, $0
	.endfunc
.Lfunc_end19:
	.size	_ZN5eosiorsINS_10datastreamIPKcEENS_12producer_keyEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE, .Lfunc_end19-_ZN5eosiorsINS_10datastreamIPKcEENS_12producer_keyEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE

	.section	.text._ZNSt3__16vectorIN5eosio12producer_keyENS_9allocatorIS2_EEE8__appendEj,"axG",@progbits,_ZNSt3__16vectorIN5eosio12producer_keyENS_9allocatorIS2_EEE8__appendEj,comdat
	.hidden	_ZNSt3__16vectorIN5eosio12producer_keyENS_9allocatorIS2_EEE8__appendEj
	.weak	_ZNSt3__16vectorIN5eosio12producer_keyENS_9allocatorIS2_EEE8__appendEj
	.type	_ZNSt3__16vectorIN5eosio12producer_keyENS_9allocatorIS2_EEE8__appendEj,@function
_ZNSt3__16vectorIN5eosio12producer_keyENS_9allocatorIS2_EEE8__appendEj:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.load	$push31=, 8($0)
	tee_local	$push30=, $2=, $pop31
	i32.load	$push29=, 4($0)
	tee_local	$push28=, $6=, $pop29
	i32.sub 	$push1=, $pop30, $pop28
	i32.const	$push27=, 48
	i32.div_s	$push2=, $pop1, $pop27
	i32.ge_u	$push3=, $pop2, $1
	br_if   	0, $pop3
	i32.load	$push38=, 0($0)
	tee_local	$push37=, $5=, $pop38
	i32.sub 	$push6=, $6, $pop37
	i32.const	$push36=, 48
	i32.div_s	$push35=, $pop6, $pop36
	tee_local	$push34=, $3=, $pop35
	i32.add 	$push33=, $pop34, $1
	tee_local	$push32=, $4=, $pop33
	i32.const	$push7=, 89478486
	i32.ge_u	$push8=, $pop32, $pop7
	br_if   	2, $pop8
	i32.const	$6=, 89478485
	block   	
	i32.sub 	$push9=, $2, $5
	i32.const	$push41=, 48
	i32.div_s	$push40=, $pop9, $pop41
	tee_local	$push39=, $2=, $pop40
	i32.const	$push10=, 44739241
	i32.gt_u	$push11=, $pop39, $pop10
	br_if   	0, $pop11
	i32.const	$push12=, 1
	i32.shl 	$push45=, $2, $pop12
	tee_local	$push44=, $6=, $pop45
	i32.lt_u	$push13=, $6, $4
	i32.select	$push43=, $4, $pop44, $pop13
	tee_local	$push42=, $6=, $pop43
	i32.eqz 	$push71=, $pop42
	br_if   	2, $pop71
.LBB20_4:
	end_block
	i32.const	$push46=, 48
	i32.mul 	$push14=, $6, $pop46
	i32.call	$2=, _Znwj@FUNCTION, $pop14
	br      	3
.LBB20_5:
	end_block
	i32.const	$push4=, 4
	i32.add 	$0=, $0, $pop4
.LBB20_6:
	loop    	
	i32.const	$push70=, 0
	i32.const	$push69=, 48
	i32.call	$drop=, memset@FUNCTION, $6, $pop70, $pop69
	i32.load	$push5=, 0($0)
	i32.const	$push68=, 48
	i32.add 	$push67=, $pop5, $pop68
	tee_local	$push66=, $6=, $pop67
	i32.store	0($0), $pop66
	i32.const	$push65=, -1
	i32.add 	$push64=, $1, $pop65
	tee_local	$push63=, $1=, $pop64
	br_if   	0, $pop63
	br      	4
.LBB20_7:
	end_loop
	end_block
	i32.const	$6=, 0
	i32.const	$2=, 0
	br      	1
.LBB20_8:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB20_9:
	end_block
	i32.const	$push50=, 48
	i32.mul 	$push15=, $6, $pop50
	i32.add 	$4=, $2, $pop15
	i32.const	$push49=, 48
	i32.mul 	$push16=, $3, $pop49
	i32.add 	$push48=, $2, $pop16
	tee_local	$push47=, $5=, $pop48
	copy_local	$6=, $pop47
.LBB20_10:
	loop    	
	i32.const	$push56=, 0
	i32.const	$push55=, 48
	i32.call	$push0=, memset@FUNCTION, $6, $pop56, $pop55
	i32.const	$push54=, 48
	i32.add 	$6=, $pop0, $pop54
	i32.const	$push53=, -1
	i32.add 	$push52=, $1, $pop53
	tee_local	$push51=, $1=, $pop52
	br_if   	0, $pop51
	end_loop
	i32.const	$push17=, 4
	i32.add 	$push62=, $0, $pop17
	tee_local	$push61=, $3=, $pop62
	i32.load	$push18=, 0($pop61)
	i32.load	$push60=, 0($0)
	tee_local	$push59=, $1=, $pop60
	i32.sub 	$push58=, $pop18, $pop59
	tee_local	$push57=, $2=, $pop58
	i32.const	$push19=, -48
	i32.div_s	$push20=, $pop57, $pop19
	i32.const	$push21=, 48
	i32.mul 	$push22=, $pop20, $pop21
	i32.add 	$5=, $5, $pop22
	block   	
	i32.const	$push23=, 1
	i32.lt_s	$push24=, $2, $pop23
	br_if   	0, $pop24
	i32.call	$drop=, memcpy@FUNCTION, $5, $1, $2
	i32.load	$1=, 0($0)
.LBB20_13:
	end_block
	i32.store	0($0), $5
	i32.store	0($3), $6
	i32.const	$push25=, 8
	i32.add 	$push26=, $0, $pop25
	i32.store	0($pop26), $4
	i32.eqz 	$push72=, $1
	br_if   	0, $pop72
	call    	_ZdlPv@FUNCTION, $1
	return
.LBB20_15:
	end_block
	.endfunc
.Lfunc_end20:
	.size	_ZNSt3__16vectorIN5eosio12producer_keyENS_9allocatorIS2_EEE8__appendEj, .Lfunc_end20-_ZNSt3__16vectorIN5eosio12producer_keyENS_9allocatorIS2_EEE8__appendEj

	.section	.text._ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyxxxEEELi0EEEZN5eosiorsINSA_10datastreamIPKcEEJyxxxEEERT_SH_RNS7_IJDpT0_EEEEUlSH_E_EEvRKSG_RKT0_,"axG",@progbits,_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyxxxEEELi0EEEZN5eosiorsINSA_10datastreamIPKcEEJyxxxEEERT_SH_RNS7_IJDpT0_EEEEUlSH_E_EEvRKSG_RKT0_,comdat
	.hidden	_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyxxxEEELi0EEEZN5eosiorsINSA_10datastreamIPKcEEJyxxxEEERT_SH_RNS7_IJDpT0_EEEEUlSH_E_EEvRKSG_RKT0_
	.weak	_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyxxxEEELi0EEEZN5eosiorsINSA_10datastreamIPKcEEJyxxxEEERT_SH_RNS7_IJDpT0_EEEEUlSH_E_EEvRKSG_RKT0_
	.type	_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyxxxEEELi0EEEZN5eosiorsINSA_10datastreamIPKcEEJyxxxEEERT_SH_RNS7_IJDpT0_EEEEUlSH_E_EEvRKSG_RKT0_,@function
_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyxxxEEELi0EEEZN5eosiorsINSA_10datastreamIPKcEEJyxxxEEERT_SH_RNS7_IJDpT0_EEEEUlSH_E_EEvRKSG_RKT0_:
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
	i32.const	$push5=, .L.str.3
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
	i32.const	$push51=, .L.str.3
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
	i32.const	$push44=, .L.str.3
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
	i32.const	$push38=, .L.str.3
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
.Lfunc_end21:
	.size	_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyxxxEEELi0EEEZN5eosiorsINSA_10datastreamIPKcEEJyxxxEEERT_SH_RNS7_IJDpT0_EEEEUlSH_E_EEvRKSG_RKT0_, .Lfunc_end21-_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyxxxEEELi0EEEZN5eosiorsINSA_10datastreamIPKcEEJyxxxEEERT_SH_RNS7_IJDpT0_EEEEUlSH_E_EEvRKSG_RKT0_

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
.LBB22_1:
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
.LBB22_3:
	end_loop
	end_block
	copy_local	$push12=, $0
	.endfunc
.Lfunc_end22:
	.size	_Znwj, .Lfunc_end22-_Znwj

	.weak	_ZdlPv
	.type	_ZdlPv,@function
_ZdlPv:
	.param  	i32
	block   	
	i32.eqz 	$push0=, $0
	br_if   	0, $pop0
	call    	free@FUNCTION, $0
.LBB23_2:
	end_block
	.endfunc
.Lfunc_end23:
	.size	_ZdlPv, .Lfunc_end23-_ZdlPv

	.section	.text._ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,"axG",@progbits,_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,comdat
	.hidden	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.weak	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.type	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,@function
_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv:
	.param  	i32
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end24:
	.size	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv, .Lfunc_end24-_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv

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
.LBB25_2:
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
.LBB25_4:
	end_loop
	end_block
	i32.sub 	$5=, $3, $4
.LBB25_5:
	end_block
	copy_local	$push11=, $5
	.endfunc
.Lfunc_end25:
	.size	memcmp, .Lfunc_end25-memcmp

	.hidden	_ZN5eosio25set_blockchain_parametersERKNS_21blockchain_parametersE
	.globl	_ZN5eosio25set_blockchain_parametersERKNS_21blockchain_parametersE
	.type	_ZN5eosio25set_blockchain_parametersERKNS_21blockchain_parametersE,@function
_ZN5eosio25set_blockchain_parametersERKNS_21blockchain_parametersE:
	.param  	i32
	.local  	i32
	i32.const	$push8=, 0
	i32.const	$push5=, 0
	i32.load	$push6=, __stack_pointer($pop5)
	i32.const	$push7=, 112
	i32.sub 	$push19=, $pop6, $pop7
	tee_local	$push18=, $1=, $pop19
	i32.store	__stack_pointer($pop8), $pop18
	i32.const	$push0=, 104
	i32.add 	$push1=, $1, $pop0
	i32.store	8($1), $pop1
	i32.const	$push12=, 16
	i32.add 	$push13=, $1, $pop12
	i32.store	4($1), $pop13
	i32.const	$push14=, 16
	i32.add 	$push15=, $1, $pop14
	i32.store	0($1), $pop15
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_21blockchain_parametersE@FUNCTION, $1, $0
	i32.const	$push16=, 16
	i32.add 	$push17=, $1, $pop16
	i32.load	$push3=, 4($1)
	i32.load	$push2=, 0($1)
	i32.sub 	$push4=, $pop3, $pop2
	call    	set_blockchain_parameters_packed@FUNCTION, $pop17, $pop4
	i32.const	$push11=, 0
	i32.const	$push9=, 112
	i32.add 	$push10=, $1, $pop9
	i32.store	__stack_pointer($pop11), $pop10
	.endfunc
.Lfunc_end26:
	.size	_ZN5eosio25set_blockchain_parametersERKNS_21blockchain_parametersE, .Lfunc_end26-_ZN5eosio25set_blockchain_parametersERKNS_21blockchain_parametersE

	.section	.text._ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_21blockchain_parametersE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_21blockchain_parametersE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_21blockchain_parametersE
	.weak	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_21blockchain_parametersE
	.type	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_21blockchain_parametersE,@function
_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_21blockchain_parametersE:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_s	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.2.11
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop6, $1, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push218=, 8
	i32.add 	$push217=, $pop8, $pop218
	tee_local	$push216=, $2=, $pop217
	i32.store	4($0), $pop216
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push11=, 3
	i32.gt_s	$push12=, $pop10, $pop11
	i32.const	$push215=, .L.str.2.11
	call    	eosio_assert@FUNCTION, $pop12, $pop215
	i32.load	$push14=, 4($0)
	i32.const	$push214=, 8
	i32.add 	$push13=, $1, $pop214
	i32.const	$push15=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop14, $pop13, $pop15
	i32.load	$push16=, 4($0)
	i32.const	$push213=, 4
	i32.add 	$push212=, $pop16, $pop213
	tee_local	$push211=, $2=, $pop212
	i32.store	4($0), $pop211
	i32.load	$push17=, 8($0)
	i32.sub 	$push18=, $pop17, $2
	i32.const	$push210=, 3
	i32.gt_s	$push19=, $pop18, $pop210
	i32.const	$push209=, .L.str.2.11
	call    	eosio_assert@FUNCTION, $pop19, $pop209
	i32.load	$push22=, 4($0)
	i32.const	$push20=, 12
	i32.add 	$push21=, $1, $pop20
	i32.const	$push208=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop22, $pop21, $pop208
	i32.load	$push23=, 4($0)
	i32.const	$push207=, 4
	i32.add 	$push206=, $pop23, $pop207
	tee_local	$push205=, $2=, $pop206
	i32.store	4($0), $pop205
	i32.load	$push24=, 8($0)
	i32.sub 	$push25=, $pop24, $2
	i32.const	$push204=, 3
	i32.gt_s	$push26=, $pop25, $pop204
	i32.const	$push203=, .L.str.2.11
	call    	eosio_assert@FUNCTION, $pop26, $pop203
	i32.load	$push29=, 4($0)
	i32.const	$push27=, 16
	i32.add 	$push28=, $1, $pop27
	i32.const	$push202=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop29, $pop28, $pop202
	i32.load	$push30=, 4($0)
	i32.const	$push201=, 4
	i32.add 	$push200=, $pop30, $pop201
	tee_local	$push199=, $2=, $pop200
	i32.store	4($0), $pop199
	i32.load	$push31=, 8($0)
	i32.sub 	$push32=, $pop31, $2
	i32.const	$push198=, 3
	i32.gt_s	$push33=, $pop32, $pop198
	i32.const	$push197=, .L.str.2.11
	call    	eosio_assert@FUNCTION, $pop33, $pop197
	i32.load	$push36=, 4($0)
	i32.const	$push34=, 20
	i32.add 	$push35=, $1, $pop34
	i32.const	$push196=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop36, $pop35, $pop196
	i32.load	$push37=, 4($0)
	i32.const	$push195=, 4
	i32.add 	$push194=, $pop37, $pop195
	tee_local	$push193=, $2=, $pop194
	i32.store	4($0), $pop193
	i32.load	$push38=, 8($0)
	i32.sub 	$push39=, $pop38, $2
	i32.const	$push192=, 3
	i32.gt_s	$push40=, $pop39, $pop192
	i32.const	$push191=, .L.str.2.11
	call    	eosio_assert@FUNCTION, $pop40, $pop191
	i32.load	$push43=, 4($0)
	i32.const	$push41=, 24
	i32.add 	$push42=, $1, $pop41
	i32.const	$push190=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop43, $pop42, $pop190
	i32.load	$push44=, 4($0)
	i32.const	$push189=, 4
	i32.add 	$push188=, $pop44, $pop189
	tee_local	$push187=, $2=, $pop188
	i32.store	4($0), $pop187
	i32.load	$push45=, 8($0)
	i32.sub 	$push46=, $pop45, $2
	i32.const	$push186=, 3
	i32.gt_s	$push47=, $pop46, $pop186
	i32.const	$push185=, .L.str.2.11
	call    	eosio_assert@FUNCTION, $pop47, $pop185
	i32.load	$push50=, 4($0)
	i32.const	$push48=, 28
	i32.add 	$push49=, $1, $pop48
	i32.const	$push184=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop50, $pop49, $pop184
	i32.load	$push51=, 4($0)
	i32.const	$push183=, 4
	i32.add 	$push182=, $pop51, $pop183
	tee_local	$push181=, $2=, $pop182
	i32.store	4($0), $pop181
	i32.load	$push52=, 8($0)
	i32.sub 	$push53=, $pop52, $2
	i32.const	$push180=, 3
	i32.gt_s	$push54=, $pop53, $pop180
	i32.const	$push179=, .L.str.2.11
	call    	eosio_assert@FUNCTION, $pop54, $pop179
	i32.load	$push57=, 4($0)
	i32.const	$push55=, 32
	i32.add 	$push56=, $1, $pop55
	i32.const	$push178=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop57, $pop56, $pop178
	i32.load	$push58=, 4($0)
	i32.const	$push177=, 4
	i32.add 	$push176=, $pop58, $pop177
	tee_local	$push175=, $2=, $pop176
	i32.store	4($0), $pop175
	i32.load	$push59=, 8($0)
	i32.sub 	$push60=, $pop59, $2
	i32.const	$push174=, 3
	i32.gt_s	$push61=, $pop60, $pop174
	i32.const	$push173=, .L.str.2.11
	call    	eosio_assert@FUNCTION, $pop61, $pop173
	i32.load	$push64=, 4($0)
	i32.const	$push62=, 36
	i32.add 	$push63=, $1, $pop62
	i32.const	$push172=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop64, $pop63, $pop172
	i32.load	$push65=, 4($0)
	i32.const	$push171=, 4
	i32.add 	$push170=, $pop65, $pop171
	tee_local	$push169=, $2=, $pop170
	i32.store	4($0), $pop169
	i32.load	$push66=, 8($0)
	i32.sub 	$push67=, $pop66, $2
	i32.const	$push168=, 3
	i32.gt_s	$push68=, $pop67, $pop168
	i32.const	$push167=, .L.str.2.11
	call    	eosio_assert@FUNCTION, $pop68, $pop167
	i32.load	$push71=, 4($0)
	i32.const	$push69=, 40
	i32.add 	$push70=, $1, $pop69
	i32.const	$push166=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop71, $pop70, $pop166
	i32.load	$push72=, 4($0)
	i32.const	$push165=, 4
	i32.add 	$push164=, $pop72, $pop165
	tee_local	$push163=, $2=, $pop164
	i32.store	4($0), $pop163
	i32.load	$push73=, 8($0)
	i32.sub 	$push74=, $pop73, $2
	i32.const	$push162=, 3
	i32.gt_s	$push75=, $pop74, $pop162
	i32.const	$push161=, .L.str.2.11
	call    	eosio_assert@FUNCTION, $pop75, $pop161
	i32.load	$push78=, 4($0)
	i32.const	$push76=, 44
	i32.add 	$push77=, $1, $pop76
	i32.const	$push160=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop78, $pop77, $pop160
	i32.load	$push79=, 4($0)
	i32.const	$push159=, 4
	i32.add 	$push158=, $pop79, $pop159
	tee_local	$push157=, $2=, $pop158
	i32.store	4($0), $pop157
	i32.load	$push80=, 8($0)
	i32.sub 	$push81=, $pop80, $2
	i32.const	$push156=, 3
	i32.gt_s	$push82=, $pop81, $pop156
	i32.const	$push155=, .L.str.2.11
	call    	eosio_assert@FUNCTION, $pop82, $pop155
	i32.load	$push85=, 4($0)
	i32.const	$push83=, 64
	i32.add 	$push84=, $1, $pop83
	i32.const	$push154=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop85, $pop84, $pop154
	i32.load	$push86=, 4($0)
	i32.const	$push153=, 4
	i32.add 	$push152=, $pop86, $pop153
	tee_local	$push151=, $2=, $pop152
	i32.store	4($0), $pop151
	i32.load	$push87=, 8($0)
	i32.sub 	$push88=, $pop87, $2
	i32.const	$push150=, 3
	i32.gt_s	$push89=, $pop88, $pop150
	i32.const	$push149=, .L.str.2.11
	call    	eosio_assert@FUNCTION, $pop89, $pop149
	i32.load	$push92=, 4($0)
	i32.const	$push90=, 68
	i32.add 	$push91=, $1, $pop90
	i32.const	$push148=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop92, $pop91, $pop148
	i32.load	$push93=, 4($0)
	i32.const	$push147=, 4
	i32.add 	$push146=, $pop93, $pop147
	tee_local	$push145=, $2=, $pop146
	i32.store	4($0), $pop145
	i32.load	$push94=, 8($0)
	i32.sub 	$push95=, $pop94, $2
	i32.const	$push144=, 3
	i32.gt_s	$push96=, $pop95, $pop144
	i32.const	$push143=, .L.str.2.11
	call    	eosio_assert@FUNCTION, $pop96, $pop143
	i32.load	$push99=, 4($0)
	i32.const	$push97=, 72
	i32.add 	$push98=, $1, $pop97
	i32.const	$push142=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop99, $pop98, $pop142
	i32.load	$push100=, 4($0)
	i32.const	$push141=, 4
	i32.add 	$push140=, $pop100, $pop141
	tee_local	$push139=, $2=, $pop140
	i32.store	4($0), $pop139
	i32.load	$push101=, 8($0)
	i32.sub 	$push102=, $pop101, $2
	i32.const	$push138=, 3
	i32.gt_s	$push103=, $pop102, $pop138
	i32.const	$push137=, .L.str.2.11
	call    	eosio_assert@FUNCTION, $pop103, $pop137
	i32.load	$push106=, 4($0)
	i32.const	$push104=, 76
	i32.add 	$push105=, $1, $pop104
	i32.const	$push136=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop106, $pop105, $pop136
	i32.load	$push107=, 4($0)
	i32.const	$push135=, 4
	i32.add 	$push134=, $pop107, $pop135
	tee_local	$push133=, $2=, $pop134
	i32.store	4($0), $pop133
	i32.load	$push108=, 8($0)
	i32.sub 	$push109=, $pop108, $2
	i32.const	$push110=, 1
	i32.gt_s	$push111=, $pop109, $pop110
	i32.const	$push132=, .L.str.2.11
	call    	eosio_assert@FUNCTION, $pop111, $pop132
	i32.load	$push114=, 4($0)
	i32.const	$push112=, 80
	i32.add 	$push113=, $1, $pop112
	i32.const	$push115=, 2
	i32.call	$drop=, memcpy@FUNCTION, $pop114, $pop113, $pop115
	i32.load	$push116=, 4($0)
	i32.const	$push131=, 2
	i32.add 	$push130=, $pop116, $pop131
	tee_local	$push129=, $2=, $pop130
	i32.store	4($0), $pop129
	i32.load	$push117=, 8($0)
	i32.sub 	$push118=, $pop117, $2
	i32.const	$push128=, 1
	i32.gt_s	$push119=, $pop118, $pop128
	i32.const	$push127=, .L.str.2.11
	call    	eosio_assert@FUNCTION, $pop119, $pop127
	i32.load	$push122=, 4($0)
	i32.const	$push120=, 82
	i32.add 	$push121=, $1, $pop120
	i32.const	$push126=, 2
	i32.call	$drop=, memcpy@FUNCTION, $pop122, $pop121, $pop126
	i32.load	$push123=, 4($0)
	i32.const	$push125=, 2
	i32.add 	$push124=, $pop123, $pop125
	i32.store	4($0), $pop124
	copy_local	$push219=, $0
	.endfunc
.Lfunc_end27:
	.size	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_21blockchain_parametersE, .Lfunc_end27-_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_21blockchain_parametersE

	.text
	.hidden	malloc
	.globl	malloc
	.type	malloc,@function
malloc:
	.param  	i32
	.result 	i32
	i32.const	$push0=, _ZN5eosio11memory_heapE
	i32.call	$push1=, _ZN5eosio14memory_manager6mallocEm@FUNCTION, $pop0, $0
	.endfunc
.Lfunc_end28:
	.size	malloc, .Lfunc_end28-malloc

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
.LBB29_3:
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
.LBB29_7:
	end_block
	i32.const	$push72=, 4
	i32.add 	$10=, $2, $pop72
.LBB29_8:
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
.LBB29_10:
	end_block
	i32.call	$push86=, _ZN5eosio14memory_manager16next_active_heapEv@FUNCTION, $0
	tee_local	$push85=, $1=, $pop86
	br_if   	0, $pop85
.LBB29_11:
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
.LBB29_12:
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
	i32.const	$push93=, .L.str.1.14
	call    	eosio_assert@FUNCTION, $pop31, $pop93
	i32.const	$push92=, 8196
	i32.add 	$push32=, $1, $pop92
	i32.load	$push91=, 0($pop32)
	tee_local	$push90=, $6=, $pop91
	i32.const	$push89=, 4
	i32.add 	$13=, $pop90, $pop89
.LBB29_13:
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
.LBB29_15:
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
.LBB29_18:
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
.LBB29_20:
	end_block
	i32.ge_u	$push49=, $1, $2
	br_if   	4, $pop49
.LBB29_21:
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
.LBB29_23:
	end_loop
	end_block
	return  	$1
.LBB29_24:
	end_block
	i32.load	$push50=, 0($8)
	i32.const	$push51=, -2147483648
	i32.or  	$push52=, $pop50, $pop51
	i32.store	0($8), $pop52
	return  	$13
.LBB29_25:
	end_block
	i32.const	$push61=, 0
	.endfunc
.Lfunc_end29:
	.size	_ZN5eosio14memory_manager6mallocEm, .Lfunc_end29-_ZN5eosio14memory_manager6mallocEm

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
.LBB30_2:
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
.LBB30_3:
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
.LBB30_6:
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
.LBB30_9:
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
.LBB30_13:
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
.LBB30_17:
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
.LBB30_18:
	end_block
	return  	$8
.LBB30_19:
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
.LBB30_21:
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
.LBB30_22:
	end_block
	i32.add 	$push71=, $8, $7
	i32.store	0($2), $pop71
	copy_local	$push158=, $2
	.endfunc
.Lfunc_end30:
	.size	_ZN5eosio14memory_manager16next_active_heapEv, .Lfunc_end30-_ZN5eosio14memory_manager16next_active_heapEv

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
.LBB31_3:
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
.LBB31_6:
	end_block
	i32.const	$push25=, 12
	i32.add 	$push24=, $3, $pop25
	tee_local	$push23=, $3=, $pop24
	i32.lt_u	$push14=, $pop23, $1
	br_if   	0, $pop14
.LBB31_7:
	end_loop
	end_block
	return
.LBB31_8:
	end_block
	i32.const	$push10=, -4
	i32.add 	$push27=, $0, $pop10
	tee_local	$push26=, $3=, $pop27
	i32.load	$push11=, 0($3)
	i32.const	$push12=, 2147483647
	i32.and 	$push13=, $pop11, $pop12
	i32.store	0($pop26), $pop13
	.endfunc
.Lfunc_end31:
	.size	free, .Lfunc_end31-free

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

	.type	.L.str.3,@object
.L.str.3:
	.asciz	"read"
	.size	.L.str.3, 5

	.type	.L.str.4,@object
.L.str.4:
	.asciz	"get"
	.size	.L.str.4, 4

	.type	_ZStL13__new_handler,@object
	.lcomm	_ZStL13__new_handler,4,2
	.type	.L.str.2.11,@object
.L.str.2.11:
	.asciz	"write"
	.size	.L.str.2.11, 6

	.hidden	_ZN5eosio11memory_heapE
	.type	_ZN5eosio11memory_heapE,@object
	.bss
	.globl	_ZN5eosio11memory_heapE
	.p2align	2
_ZN5eosio11memory_heapE:
	.skip	8396
	.size	_ZN5eosio11memory_heapE, 8396

	.type	.L.str.1.14,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1.14:
	.asciz	"malloc_from_freed was designed to only be called after _heap was completely allocated"
	.size	.L.str.1.14, 86

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
	.functype	action_data_size, i32
	.functype	read_action_data, i32, i32, i32
	.functype	memcpy, i32, i32, i32, i32
	.functype	require_auth, void, i64
	.functype	set_proposed_producers, i64, i32, i32
	.functype	set_resource_limits, void, i64, i64, i64, i64
	.functype	set_privileged, void, i64, i32
	.functype	abort, void
	.functype	set_blockchain_parameters_packed, void, i32, i32
