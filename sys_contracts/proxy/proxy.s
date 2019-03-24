	.text
	.file	"proxy.bc"
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

	.hidden	_ZN5proxy7configs3getERNS_6configERKy
	.globl	_ZN5proxy7configs3getERNS_6configERKy
	.type	_ZN5proxy7configs3getERNS_6configERKy,@function
_ZN5proxy7configs3getERNS_6configERKy:
	.param  	i32, i32
	.result 	i32
	.local  	i64, i32, i64, i64, i64, i64
	i64.load	$2=, 0($1)
	i64.const	$5=, 0
	i64.const	$4=, 59
	i32.const	$1=, .L.str
	i64.const	$6=, 0
.LBB5_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push23=, 5
	i64.gt_u	$push0=, $5, $pop23
	br_if   	0, $pop0
	i32.load8_s	$push28=, 0($1)
	tee_local	$push27=, $3=, $pop28
	i32.const	$push26=, -97
	i32.add 	$push2=, $pop27, $pop26
	i32.const	$push25=, 255
	i32.and 	$push3=, $pop2, $pop25
	i32.const	$push24=, 25
	i32.gt_u	$push4=, $pop3, $pop24
	br_if   	1, $pop4
	i32.const	$push29=, 165
	i32.add 	$3=, $3, $pop29
	br      	2
.LBB5_4:
	end_block
	i64.const	$7=, 0
	i64.const	$push30=, 11
	i64.le_u	$push1=, $5, $pop30
	br_if   	2, $pop1
	br      	3
.LBB5_5:
	end_block
	i32.const	$push35=, 208
	i32.add 	$push5=, $3, $pop35
	i32.const	$push34=, 0
	i32.const	$push33=, -49
	i32.add 	$push6=, $3, $pop33
	i32.const	$push32=, 255
	i32.and 	$push7=, $pop6, $pop32
	i32.const	$push31=, 5
	i32.lt_u	$push8=, $pop7, $pop31
	i32.select	$3=, $pop5, $pop34, $pop8
.LBB5_6:
	end_block
	i64.extend_u/i32	$push9=, $3
	i64.const	$push37=, 56
	i64.shl 	$push10=, $pop9, $pop37
	i64.const	$push36=, 56
	i64.shr_s	$7=, $pop10, $pop36
.LBB5_7:
	end_block
	i64.const	$push39=, 31
	i64.and 	$push12=, $7, $pop39
	i64.const	$push38=, 4294967295
	i64.and 	$push11=, $4, $pop38
	i64.shl 	$7=, $pop12, $pop11
.LBB5_8:
	end_block
	i32.const	$push45=, 1
	i32.add 	$1=, $1, $pop45
	i64.const	$push44=, 1
	i64.add 	$5=, $5, $pop44
	i64.or  	$6=, $7, $6
	i64.const	$push43=, -5
	i64.add 	$push42=, $4, $pop43
	tee_local	$push41=, $4=, $pop42
	i64.const	$push40=, -6
	i64.ne  	$push13=, $pop41, $pop40
	br_if   	0, $pop13
	end_loop
	block   	
	i64.const	$push14=, 4982871454518345728
	i32.call	$push47=, db_find_i64@FUNCTION, $2, $2, $6, $pop14
	tee_local	$push46=, $1=, $pop47
	i32.const	$push15=, -1
	i32.eq  	$push16=, $pop46, $pop15
	br_if   	0, $pop16
	i32.const	$push17=, 16
	i32.call	$push18=, db_get_i64@FUNCTION, $1, $0, $pop17
	i32.const	$push48=, 16
	i32.eq  	$push19=, $pop18, $pop48
	i32.const	$push20=, .L.str.1
	call    	eosio_assert@FUNCTION, $pop19, $pop20
	i32.const	$push21=, 1
	return  	$pop21
.LBB5_11:
	end_block
	i32.const	$push22=, 0
	.endfunc
.Lfunc_end5:
	.size	_ZN5proxy7configs3getERNS_6configERKy, .Lfunc_end5-_ZN5proxy7configs3getERNS_6configERKy

	.hidden	_ZN5proxy7configs5storeERKNS_6configERKy
	.globl	_ZN5proxy7configs5storeERKNS_6configERKy
	.type	_ZN5proxy7configs5storeERKNS_6configERKy,@function
_ZN5proxy7configs5storeERKNS_6configERKy:
	.param  	i32, i32
	.local  	i64, i32, i32, i64, i64, i64, i64
	i64.load	$2=, 0($1)
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str
	i64.const	$7=, 0
.LBB6_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push34=, 5
	i64.gt_u	$push0=, $6, $pop34
	br_if   	0, $pop0
	i32.load8_s	$push39=, 0($4)
	tee_local	$push38=, $3=, $pop39
	i32.const	$push37=, -97
	i32.add 	$push2=, $pop38, $pop37
	i32.const	$push36=, 255
	i32.and 	$push3=, $pop2, $pop36
	i32.const	$push35=, 25
	i32.gt_u	$push4=, $pop3, $pop35
	br_if   	1, $pop4
	i32.const	$push40=, 165
	i32.add 	$3=, $3, $pop40
	br      	2
.LBB6_4:
	end_block
	i64.const	$8=, 0
	i64.const	$push41=, 11
	i64.le_u	$push1=, $6, $pop41
	br_if   	2, $pop1
	br      	3
.LBB6_5:
	end_block
	i32.const	$push46=, 208
	i32.add 	$push5=, $3, $pop46
	i32.const	$push45=, 0
	i32.const	$push44=, -49
	i32.add 	$push6=, $3, $pop44
	i32.const	$push43=, 255
	i32.and 	$push7=, $pop6, $pop43
	i32.const	$push42=, 5
	i32.lt_u	$push8=, $pop7, $pop42
	i32.select	$3=, $pop5, $pop45, $pop8
.LBB6_6:
	end_block
	i64.extend_u/i32	$push9=, $3
	i64.const	$push48=, 56
	i64.shl 	$push10=, $pop9, $pop48
	i64.const	$push47=, 56
	i64.shr_s	$8=, $pop10, $pop47
.LBB6_7:
	end_block
	i64.const	$push50=, 31
	i64.and 	$push12=, $8, $pop50
	i64.const	$push49=, 4294967295
	i64.and 	$push11=, $5, $pop49
	i64.shl 	$8=, $pop12, $pop11
.LBB6_8:
	end_block
	i32.const	$push56=, 1
	i32.add 	$4=, $4, $pop56
	i64.const	$push55=, 1
	i64.add 	$6=, $6, $pop55
	i64.or  	$7=, $8, $7
	i64.const	$push54=, -5
	i64.add 	$push53=, $5, $pop54
	tee_local	$push52=, $5=, $pop53
	i64.const	$push51=, -6
	i64.ne  	$push13=, $pop52, $pop51
	br_if   	0, $pop13
	end_loop
	i64.const	$push14=, 4982871454518345728
	i32.call	$4=, db_find_i64@FUNCTION, $2, $2, $7, $pop14
	i64.load	$2=, 0($1)
	block   	
	i32.const	$push15=, -1
	i32.eq  	$push16=, $4, $pop15
	br_if   	0, $pop16
	i32.const	$push17=, 16
	call    	db_update_i64@FUNCTION, $4, $2, $0, $pop17
	return
.LBB6_11:
	end_block
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str
	i64.const	$7=, 0
.LBB6_12:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push57=, 5
	i64.gt_u	$push18=, $6, $pop57
	br_if   	0, $pop18
	i32.load8_s	$push62=, 0($4)
	tee_local	$push61=, $3=, $pop62
	i32.const	$push60=, -97
	i32.add 	$push20=, $pop61, $pop60
	i32.const	$push59=, 255
	i32.and 	$push21=, $pop20, $pop59
	i32.const	$push58=, 25
	i32.gt_u	$push22=, $pop21, $pop58
	br_if   	1, $pop22
	i32.const	$push63=, 165
	i32.add 	$3=, $3, $pop63
	br      	2
.LBB6_15:
	end_block
	i64.const	$8=, 0
	i64.const	$push64=, 11
	i64.le_u	$push19=, $6, $pop64
	br_if   	2, $pop19
	br      	3
.LBB6_16:
	end_block
	i32.const	$push69=, 208
	i32.add 	$push23=, $3, $pop69
	i32.const	$push68=, 0
	i32.const	$push67=, -49
	i32.add 	$push24=, $3, $pop67
	i32.const	$push66=, 255
	i32.and 	$push25=, $pop24, $pop66
	i32.const	$push65=, 5
	i32.lt_u	$push26=, $pop25, $pop65
	i32.select	$3=, $pop23, $pop68, $pop26
.LBB6_17:
	end_block
	i64.extend_u/i32	$push27=, $3
	i64.const	$push71=, 56
	i64.shl 	$push28=, $pop27, $pop71
	i64.const	$push70=, 56
	i64.shr_s	$8=, $pop28, $pop70
.LBB6_18:
	end_block
	i64.const	$push73=, 31
	i64.and 	$push30=, $8, $pop73
	i64.const	$push72=, 4294967295
	i64.and 	$push29=, $5, $pop72
	i64.shl 	$8=, $pop30, $pop29
.LBB6_19:
	end_block
	i32.const	$push79=, 1
	i32.add 	$4=, $4, $pop79
	i64.const	$push78=, 1
	i64.add 	$6=, $6, $pop78
	i64.or  	$7=, $8, $7
	i64.const	$push77=, -5
	i64.add 	$push76=, $5, $pop77
	tee_local	$push75=, $5=, $pop76
	i64.const	$push74=, -6
	i64.ne  	$push31=, $pop75, $pop74
	br_if   	0, $pop31
	end_loop
	i64.const	$push33=, 4982871454518345728
	i32.const	$push32=, 16
	i32.call	$drop=, db_store_i64@FUNCTION, $2, $7, $2, $pop33, $0, $pop32
	.endfunc
.Lfunc_end6:
	.size	_ZN5proxy7configs5storeERKNS_6configERKy, .Lfunc_end6-_ZN5proxy7configs5storeERKNS_6configERKy

	.hidden	_ZN5proxy14apply_setownerEyNS_9set_ownerE
	.globl	_ZN5proxy14apply_setownerEyNS_9set_ownerE
	.type	_ZN5proxy14apply_setownerEyNS_9set_ownerE,@function
_ZN5proxy14apply_setownerEyNS_9set_ownerE:
	.param  	i64, i32
	.local  	i32
	i32.const	$push8=, 0
	i32.const	$push5=, 0
	i32.load	$push6=, __stack_pointer($pop5)
	i32.const	$push7=, 32
	i32.sub 	$push26=, $pop6, $pop7
	tee_local	$push25=, $2=, $pop26
	i32.store	__stack_pointer($pop8), $pop25
	i64.store	24($2), $0
	i64.load	$push24=, 0($1)
	tee_local	$push23=, $0=, $pop24
	call    	require_auth@FUNCTION, $pop23
	i64.const	$push0=, 0
	i64.store	8($2), $pop0
	i64.const	$push22=, 0
	i64.store	16($2), $pop22
	i32.const	$push12=, 8
	i32.add 	$push13=, $2, $pop12
	i32.const	$push14=, 24
	i32.add 	$push15=, $2, $pop14
	i32.call	$drop=, _ZN5proxy7configs3getERNS_6configERKy@FUNCTION, $pop13, $pop15
	i64.store	8($2), $0
	i32.load	$push21=, 8($1)
	tee_local	$push20=, $1=, $pop21
	i32.store	16($2), $pop20
	i32.const	$push1=, .L.str.2
	call    	prints@FUNCTION, $pop1
	call    	printn@FUNCTION, $0
	i32.const	$push2=, .L.str.3
	call    	prints@FUNCTION, $pop2
	i64.extend_u/i32	$push3=, $1
	call    	printui@FUNCTION, $pop3
	i32.const	$push4=, .L.str.4
	call    	prints@FUNCTION, $pop4
	i32.const	$push16=, 8
	i32.add 	$push17=, $2, $pop16
	i32.const	$push18=, 24
	i32.add 	$push19=, $2, $pop18
	call    	_ZN5proxy7configs5storeERKNS_6configERKy@FUNCTION, $pop17, $pop19
	i32.const	$push11=, 0
	i32.const	$push9=, 32
	i32.add 	$push10=, $2, $pop9
	i32.store	__stack_pointer($pop11), $pop10
	.endfunc
.Lfunc_end7:
	.size	_ZN5proxy14apply_setownerEyNS_9set_ownerE, .Lfunc_end7-_ZN5proxy14apply_setownerEyNS_9set_ownerE

	.hidden	apply
	.globl	apply
	.type	apply,@function
apply:
	.param  	i64, i64, i64
	.local  	i32, i32, i64, i64, i64, i64, i32
	i32.const	$push92=, 0
	i32.const	$push89=, 0
	i32.load	$push90=, __stack_pointer($pop89)
	i32.const	$push91=, 80
	i32.sub 	$push113=, $pop90, $pop91
	tee_local	$push112=, $9=, $pop113
	i32.store	__stack_pointer($pop92), $pop112
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.5
	i64.const	$7=, 0
.LBB8_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push114=, 4
	i64.gt_u	$push0=, $6, $pop114
	br_if   	0, $pop0
	i32.load8_s	$push119=, 0($4)
	tee_local	$push118=, $3=, $pop119
	i32.const	$push117=, -97
	i32.add 	$push2=, $pop118, $pop117
	i32.const	$push116=, 255
	i32.and 	$push3=, $pop2, $pop116
	i32.const	$push115=, 25
	i32.gt_u	$push4=, $pop3, $pop115
	br_if   	1, $pop4
	i32.const	$push120=, 165
	i32.add 	$3=, $3, $pop120
	br      	2
.LBB8_4:
	end_block
	i64.const	$8=, 0
	i64.const	$push121=, 11
	i64.le_u	$push1=, $6, $pop121
	br_if   	2, $pop1
	br      	3
.LBB8_5:
	end_block
	i32.const	$push126=, 208
	i32.add 	$push5=, $3, $pop126
	i32.const	$push125=, 0
	i32.const	$push124=, -49
	i32.add 	$push6=, $3, $pop124
	i32.const	$push123=, 255
	i32.and 	$push7=, $pop6, $pop123
	i32.const	$push122=, 5
	i32.lt_u	$push8=, $pop7, $pop122
	i32.select	$3=, $pop5, $pop125, $pop8
.LBB8_6:
	end_block
	i64.extend_u/i32	$push9=, $3
	i64.const	$push128=, 56
	i64.shl 	$push10=, $pop9, $pop128
	i64.const	$push127=, 56
	i64.shr_s	$8=, $pop10, $pop127
.LBB8_7:
	end_block
	i64.const	$push130=, 31
	i64.and 	$push12=, $8, $pop130
	i64.const	$push129=, 4294967295
	i64.and 	$push11=, $5, $pop129
	i64.shl 	$8=, $pop12, $pop11
.LBB8_8:
	end_block
	i32.const	$push136=, 1
	i32.add 	$4=, $4, $pop136
	i64.const	$push135=, 1
	i64.add 	$6=, $6, $pop135
	i64.or  	$7=, $8, $7
	i64.const	$push134=, -5
	i64.add 	$push133=, $5, $pop134
	tee_local	$push132=, $5=, $pop133
	i64.const	$push131=, -6
	i64.ne  	$push13=, $pop132, $pop131
	br_if   	0, $pop13
	end_loop
	block   	
	block   	
	i64.ne  	$push14=, $7, $1
	br_if   	0, $pop14
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.6
	i64.const	$7=, 0
.LBB8_11:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push137=, 6
	i64.gt_u	$push15=, $6, $pop137
	br_if   	0, $pop15
	i32.load8_s	$push142=, 0($4)
	tee_local	$push141=, $3=, $pop142
	i32.const	$push140=, -97
	i32.add 	$push17=, $pop141, $pop140
	i32.const	$push139=, 255
	i32.and 	$push18=, $pop17, $pop139
	i32.const	$push138=, 25
	i32.gt_u	$push19=, $pop18, $pop138
	br_if   	1, $pop19
	i32.const	$push143=, 165
	i32.add 	$3=, $3, $pop143
	br      	2
.LBB8_14:
	end_block
	i64.const	$8=, 0
	i64.const	$push144=, 11
	i64.le_u	$push16=, $6, $pop144
	br_if   	2, $pop16
	br      	3
.LBB8_15:
	end_block
	i32.const	$push149=, 208
	i32.add 	$push20=, $3, $pop149
	i32.const	$push148=, 0
	i32.const	$push147=, -49
	i32.add 	$push21=, $3, $pop147
	i32.const	$push146=, 255
	i32.and 	$push22=, $pop21, $pop146
	i32.const	$push145=, 5
	i32.lt_u	$push23=, $pop22, $pop145
	i32.select	$3=, $pop20, $pop148, $pop23
.LBB8_16:
	end_block
	i64.extend_u/i32	$push24=, $3
	i64.const	$push151=, 56
	i64.shl 	$push25=, $pop24, $pop151
	i64.const	$push150=, 56
	i64.shr_s	$8=, $pop25, $pop150
.LBB8_17:
	end_block
	i64.const	$push153=, 31
	i64.and 	$push27=, $8, $pop153
	i64.const	$push152=, 4294967295
	i64.and 	$push26=, $5, $pop152
	i64.shl 	$8=, $pop27, $pop26
.LBB8_18:
	end_block
	i32.const	$push159=, 1
	i32.add 	$4=, $4, $pop159
	i64.const	$push158=, 1
	i64.add 	$6=, $6, $pop158
	i64.or  	$7=, $8, $7
	i64.const	$push157=, -5
	i64.add 	$push156=, $5, $pop157
	tee_local	$push155=, $5=, $pop156
	i64.const	$push154=, -6
	i64.ne  	$push28=, $pop155, $pop154
	br_if   	0, $pop28
	end_loop
	i64.ne  	$push29=, $7, $2
	br_if   	0, $pop29
	i32.const	$push96=, 16
	i32.add 	$push97=, $9, $pop96
	call    	_ZN5eosio18unpack_action_dataINS_7onerrorEEET_v@FUNCTION, $pop97
	i32.const	$push98=, 16
	i32.add 	$push99=, $9, $pop98
	call    	_ZN5proxy13apply_onerrorIJEEEvyRKN5eosio7onerrorE@FUNCTION, $0, $pop99
	i32.load	$push161=, 32($9)
	tee_local	$push160=, $4=, $pop161
	i32.eqz 	$push232=, $pop160
	br_if   	1, $pop232
	i32.const	$push87=, 36
	i32.add 	$push88=, $9, $pop87
	i32.store	0($pop88), $4
	call    	_ZdlPv@FUNCTION, $4
	br      	1
.LBB8_22:
	end_block
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.7
	i64.const	$7=, 0
.LBB8_23:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push162=, 10
	i64.gt_u	$push30=, $6, $pop162
	br_if   	0, $pop30
	i32.load8_s	$push167=, 0($4)
	tee_local	$push166=, $3=, $pop167
	i32.const	$push165=, -97
	i32.add 	$push32=, $pop166, $pop165
	i32.const	$push164=, 255
	i32.and 	$push33=, $pop32, $pop164
	i32.const	$push163=, 25
	i32.gt_u	$push34=, $pop33, $pop163
	br_if   	1, $pop34
	i32.const	$push168=, 165
	i32.add 	$3=, $3, $pop168
	br      	2
.LBB8_26:
	end_block
	i64.const	$8=, 0
	i64.const	$push169=, 11
	i64.eq  	$push31=, $6, $pop169
	br_if   	2, $pop31
	br      	3
.LBB8_27:
	end_block
	i32.const	$push174=, 208
	i32.add 	$push35=, $3, $pop174
	i32.const	$push173=, 0
	i32.const	$push172=, -49
	i32.add 	$push36=, $3, $pop172
	i32.const	$push171=, 255
	i32.and 	$push37=, $pop36, $pop171
	i32.const	$push170=, 5
	i32.lt_u	$push38=, $pop37, $pop170
	i32.select	$3=, $pop35, $pop173, $pop38
.LBB8_28:
	end_block
	i64.extend_u/i32	$push39=, $3
	i64.const	$push176=, 56
	i64.shl 	$push40=, $pop39, $pop176
	i64.const	$push175=, 56
	i64.shr_s	$8=, $pop40, $pop175
.LBB8_29:
	end_block
	i64.const	$push178=, 31
	i64.and 	$push42=, $8, $pop178
	i64.const	$push177=, 4294967295
	i64.and 	$push41=, $5, $pop177
	i64.shl 	$8=, $pop42, $pop41
.LBB8_30:
	end_block
	i32.const	$push184=, 1
	i32.add 	$4=, $4, $pop184
	i64.const	$push183=, -5
	i64.add 	$5=, $5, $pop183
	i64.or  	$7=, $8, $7
	i64.const	$push182=, 1
	i64.add 	$push181=, $6, $pop182
	tee_local	$push180=, $6=, $pop181
	i64.const	$push179=, 13
	i64.ne  	$push43=, $pop180, $pop179
	br_if   	0, $pop43
	end_loop
	block   	
	i64.ne  	$push44=, $7, $1
	br_if   	0, $pop44
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.8
	i64.const	$7=, 0
.LBB8_33:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push185=, 7
	i64.gt_u	$push66=, $6, $pop185
	br_if   	0, $pop66
	i32.load8_s	$push190=, 0($4)
	tee_local	$push189=, $3=, $pop190
	i32.const	$push188=, -97
	i32.add 	$push68=, $pop189, $pop188
	i32.const	$push187=, 255
	i32.and 	$push69=, $pop68, $pop187
	i32.const	$push186=, 25
	i32.gt_u	$push70=, $pop69, $pop186
	br_if   	1, $pop70
	i32.const	$push191=, 165
	i32.add 	$3=, $3, $pop191
	br      	2
.LBB8_36:
	end_block
	i64.const	$8=, 0
	i64.const	$push192=, 11
	i64.le_u	$push67=, $6, $pop192
	br_if   	2, $pop67
	br      	3
.LBB8_37:
	end_block
	i32.const	$push197=, 208
	i32.add 	$push71=, $3, $pop197
	i32.const	$push196=, 0
	i32.const	$push195=, -49
	i32.add 	$push72=, $3, $pop195
	i32.const	$push194=, 255
	i32.and 	$push73=, $pop72, $pop194
	i32.const	$push193=, 5
	i32.lt_u	$push74=, $pop73, $pop193
	i32.select	$3=, $pop71, $pop196, $pop74
.LBB8_38:
	end_block
	i64.extend_u/i32	$push75=, $3
	i64.const	$push199=, 56
	i64.shl 	$push76=, $pop75, $pop199
	i64.const	$push198=, 56
	i64.shr_s	$8=, $pop76, $pop198
.LBB8_39:
	end_block
	i64.const	$push201=, 31
	i64.and 	$push78=, $8, $pop201
	i64.const	$push200=, 4294967295
	i64.and 	$push77=, $5, $pop200
	i64.shl 	$8=, $pop78, $pop77
.LBB8_40:
	end_block
	i32.const	$push207=, 1
	i32.add 	$4=, $4, $pop207
	i64.const	$push206=, 1
	i64.add 	$6=, $6, $pop206
	i64.or  	$7=, $8, $7
	i64.const	$push205=, -5
	i64.add 	$push204=, $5, $pop205
	tee_local	$push203=, $5=, $pop204
	i64.const	$push202=, -6
	i64.ne  	$push79=, $pop203, $pop202
	br_if   	0, $pop79
	end_loop
	i64.ne  	$push80=, $7, $2
	br_if   	1, $pop80
	i32.const	$push100=, 16
	i32.add 	$push101=, $9, $pop100
	call    	_ZN5eosio18unpack_action_dataINS_5token13transfer_argsEEET_v@FUNCTION, $pop101
	i32.const	$push102=, 16
	i32.add 	$push103=, $9, $pop102
	call    	_ZN5proxy14apply_transferIN5eosio5token13transfer_argsEEEvyyRKT_@FUNCTION, $0, $1, $pop103
	i32.load8_u	$push82=, 48($9)
	i32.const	$push81=, 1
	i32.and 	$push83=, $pop82, $pop81
	i32.eqz 	$push233=, $pop83
	br_if   	1, $pop233
	i32.const	$push84=, 56
	i32.add 	$push85=, $9, $pop84
	i32.load	$push86=, 0($pop85)
	call    	_ZdlPv@FUNCTION, $pop86
	br      	1
.LBB8_44:
	end_block
	i64.ne  	$push45=, $1, $0
	br_if   	0, $pop45
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.9
	i64.const	$7=, 0
.LBB8_46:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push208=, 7
	i64.gt_u	$push46=, $6, $pop208
	br_if   	0, $pop46
	i32.load8_s	$push213=, 0($4)
	tee_local	$push212=, $3=, $pop213
	i32.const	$push211=, -97
	i32.add 	$push48=, $pop212, $pop211
	i32.const	$push210=, 255
	i32.and 	$push49=, $pop48, $pop210
	i32.const	$push209=, 25
	i32.gt_u	$push50=, $pop49, $pop209
	br_if   	1, $pop50
	i32.const	$push214=, 165
	i32.add 	$3=, $3, $pop214
	br      	2
.LBB8_49:
	end_block
	i64.const	$8=, 0
	i64.const	$push215=, 11
	i64.le_u	$push47=, $6, $pop215
	br_if   	2, $pop47
	br      	3
.LBB8_50:
	end_block
	i32.const	$push220=, 208
	i32.add 	$push51=, $3, $pop220
	i32.const	$push219=, 0
	i32.const	$push218=, -49
	i32.add 	$push52=, $3, $pop218
	i32.const	$push217=, 255
	i32.and 	$push53=, $pop52, $pop217
	i32.const	$push216=, 5
	i32.lt_u	$push54=, $pop53, $pop216
	i32.select	$3=, $pop51, $pop219, $pop54
.LBB8_51:
	end_block
	i64.extend_u/i32	$push55=, $3
	i64.const	$push222=, 56
	i64.shl 	$push56=, $pop55, $pop222
	i64.const	$push221=, 56
	i64.shr_s	$8=, $pop56, $pop221
.LBB8_52:
	end_block
	i64.const	$push224=, 31
	i64.and 	$push58=, $8, $pop224
	i64.const	$push223=, 4294967295
	i64.and 	$push57=, $5, $pop223
	i64.shl 	$8=, $pop58, $pop57
.LBB8_53:
	end_block
	i32.const	$push230=, 1
	i32.add 	$4=, $4, $pop230
	i64.const	$push229=, 1
	i64.add 	$6=, $6, $pop229
	i64.or  	$7=, $8, $7
	i64.const	$push228=, -5
	i64.add 	$push227=, $5, $pop228
	tee_local	$push226=, $5=, $pop227
	i64.const	$push225=, -6
	i64.ne  	$push59=, $pop226, $pop225
	br_if   	0, $pop59
	end_loop
	i64.ne  	$push60=, $7, $2
	br_if   	0, $pop60
	call    	_ZN5eosio18unpack_action_dataIN5proxy9set_ownerEEET_v@FUNCTION, $9
	i32.load	$4=, 8($9)
	i64.load	$6=, 0($9)
	i64.store	72($9), $1
	call    	require_auth@FUNCTION, $6
	i64.const	$push61=, 0
	i64.store	16($9), $pop61
	i64.const	$push231=, 0
	i64.store	24($9), $pop231
	i32.const	$push104=, 16
	i32.add 	$push105=, $9, $pop104
	i32.const	$push106=, 72
	i32.add 	$push107=, $9, $pop106
	i32.call	$drop=, _ZN5proxy7configs3getERNS_6configERKy@FUNCTION, $pop105, $pop107
	i32.store	24($9), $4
	i64.store	16($9), $6
	i32.const	$push62=, .L.str.2
	call    	prints@FUNCTION, $pop62
	call    	printn@FUNCTION, $6
	i32.const	$push63=, .L.str.3
	call    	prints@FUNCTION, $pop63
	i64.extend_u/i32	$push64=, $4
	call    	printui@FUNCTION, $pop64
	i32.const	$push65=, .L.str.4
	call    	prints@FUNCTION, $pop65
	i32.const	$push108=, 16
	i32.add 	$push109=, $9, $pop108
	i32.const	$push110=, 72
	i32.add 	$push111=, $9, $pop110
	call    	_ZN5proxy7configs5storeERKNS_6configERKy@FUNCTION, $pop109, $pop111
.LBB8_56:
	end_block
	i32.const	$push95=, 0
	i32.const	$push93=, 80
	i32.add 	$push94=, $9, $pop93
	i32.store	__stack_pointer($pop95), $pop94
	.endfunc
.Lfunc_end8:
	.size	apply, .Lfunc_end8-apply

	.section	.text._ZN5eosio18unpack_action_dataINS_7onerrorEEET_v,"axG",@progbits,_ZN5eosio18unpack_action_dataINS_7onerrorEEET_v,comdat
	.hidden	_ZN5eosio18unpack_action_dataINS_7onerrorEEET_v
	.weak	_ZN5eosio18unpack_action_dataINS_7onerrorEEET_v
	.type	_ZN5eosio18unpack_action_dataINS_7onerrorEEET_v,@function
_ZN5eosio18unpack_action_dataINS_7onerrorEEET_v:
	.param  	i32
	.local  	i32, i32, i32
	i32.const	$push20=, 0
	i32.load	$push21=, __stack_pointer($pop20)
	i32.const	$push22=, 16
	i32.sub 	$push31=, $pop21, $pop22
	tee_local	$push30=, $2=, $pop31
	copy_local	$3=, $pop30
	i32.const	$push23=, 0
	i32.store	__stack_pointer($pop23), $2
	block   	
	block   	
	i32.call	$push29=, action_data_size@FUNCTION
	tee_local	$push28=, $1=, $pop29
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $pop28, $pop0
	br_if   	0, $pop1
	i32.call	$2=, malloc@FUNCTION, $1
	br      	1
.LBB9_2:
	end_block
	i32.const	$push19=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $1, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push33=, $2, $pop5
	tee_local	$push32=, $2=, $pop33
	copy_local	$push27=, $pop32
	i32.store	__stack_pointer($pop19), $pop27
.LBB9_3:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $2, $1
	i32.const	$push6=, 24
	i32.add 	$push7=, $0, $pop6
	i32.const	$push8=, 0
	i32.store	0($pop7), $pop8
	i64.const	$push9=, 0
	i64.store	16($0):p2align=2, $pop9
	i32.add 	$push10=, $2, $1
	i32.store	8($3), $pop10
	i32.store	0($3), $2
	i32.const	$push11=, 15
	i32.gt_u	$push12=, $1, $pop11
	i32.const	$push13=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop12, $pop13
	i32.const	$push14=, 16
	i32.call	$drop=, memcpy@FUNCTION, $0, $2, $pop14
	i32.const	$push35=, 16
	i32.add 	$push15=, $2, $pop35
	i32.store	4($3), $pop15
	i32.const	$push34=, 16
	i32.add 	$push16=, $0, $pop34
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE@FUNCTION, $3, $pop16
	block   	
	i32.const	$push17=, 513
	i32.lt_u	$push18=, $1, $pop17
	br_if   	0, $pop18
	call    	free@FUNCTION, $2
.LBB9_5:
	end_block
	i32.const	$push26=, 0
	i32.const	$push24=, 16
	i32.add 	$push25=, $3, $pop24
	i32.store	__stack_pointer($pop26), $pop25
	.endfunc
.Lfunc_end9:
	.size	_ZN5eosio18unpack_action_dataINS_7onerrorEEET_v, .Lfunc_end9-_ZN5eosio18unpack_action_dataINS_7onerrorEEET_v

	.section	.text._ZN5proxy13apply_onerrorIJEEEvyRKN5eosio7onerrorE,"axG",@progbits,_ZN5proxy13apply_onerrorIJEEEvyRKN5eosio7onerrorE,comdat
	.hidden	_ZN5proxy13apply_onerrorIJEEEvyRKN5eosio7onerrorE
	.weak	_ZN5proxy13apply_onerrorIJEEEvyRKN5eosio7onerrorE
	.type	_ZN5proxy13apply_onerrorIJEEEvyRKN5eosio7onerrorE,@function
_ZN5proxy13apply_onerrorIJEEEvyRKN5eosio7onerrorE:
	.param  	i64, i32
	.local  	i32, i64, i64, i32
	i32.const	$push46=, 0
	i32.const	$push43=, 0
	i32.load	$push44=, __stack_pointer($pop43)
	i32.const	$push45=, 128
	i32.sub 	$push91=, $pop44, $pop45
	tee_local	$push90=, $5=, $pop91
	i32.store	__stack_pointer($pop46), $pop90
	i32.const	$push0=, .L.str.13
	call    	prints@FUNCTION, $pop0
	i64.store	104($5), $0
	i64.const	$push1=, 0
	i64.store	88($5), $pop1
	i64.const	$push89=, 0
	i64.store	96($5), $pop89
	i32.const	$push50=, 88
	i32.add 	$push51=, $5, $pop50
	i32.const	$push52=, 104
	i32.add 	$push53=, $5, $pop52
	i32.call	$push3=, _ZN5proxy7configs3getERNS_6configERKy@FUNCTION, $pop51, $pop53
	i32.const	$push2=, .L.str.14
	call    	eosio_assert@FUNCTION, $pop3, $pop2
	i32.load	$push88=, 100($5)
	tee_local	$push87=, $2=, $pop88
	i32.const	$push4=, 1
	i32.add 	$push5=, $pop87, $pop4
	i32.store	100($5), $pop5
	i32.const	$push54=, 88
	i32.add 	$push55=, $5, $pop54
	i32.const	$push56=, 104
	i32.add 	$push57=, $5, $pop56
	call    	_ZN5proxy7configs5storeERKNS_6configERKy@FUNCTION, $pop55, $pop57
	i32.const	$push6=, .L.str.15
	call    	prints@FUNCTION, $pop6
	i64.load	$3=, 0($1)
	i32.const	$push7=, 8
	i32.add 	$push8=, $1, $pop7
	i64.load	$push9=, 0($pop8)
	i64.store	24($5), $pop9
	i64.store	16($5), $3
	i32.const	$push58=, 16
	i32.add 	$push59=, $5, $pop58
	call    	printui128@FUNCTION, $pop59
	i32.const	$push10=, .L.str.16
	call    	prints@FUNCTION, $pop10
	i64.extend_u/i32	$push86=, $2
	tee_local	$push85=, $3=, $pop86
	call    	printui@FUNCTION, $pop85
	i32.const	$push11=, .L.str.4
	call    	prints@FUNCTION, $pop11
	i32.const	$push12=, 20
	i32.add 	$push13=, $1, $pop12
	i32.load	$2=, 0($pop13)
	i32.load	$1=, 16($1)
	i64.call	$4=, current_time@FUNCTION
	i32.const	$push14=, 44
	i32.add 	$push15=, $5, $pop14
	i32.const	$push16=, 0
	i32.store	0($pop15), $pop16
	i32.const	$push17=, 48
	i32.add 	$push18=, $5, $pop17
	i32.const	$push84=, 0
	i32.store	0($pop18), $pop84
	i32.const	$push83=, 0
	i32.store	28($5), $pop83
	i32.const	$push82=, 0
	i32.store8	32($5), $pop82
	i32.const	$push81=, 0
	i32.store	36($5), $pop81
	i32.const	$push80=, 0
	i32.store	40($5), $pop80
	i64.const	$push19=, 1000000
	i64.div_u	$push20=, $4, $pop19
	i32.wrap/i64	$push21=, $pop20
	i32.const	$push22=, 60
	i32.add 	$push23=, $pop21, $pop22
	i32.store	16($5), $pop23
	i32.const	$push79=, 0
	i32.store	52($5), $pop79
	i32.const	$push24=, 56
	i32.add 	$push25=, $5, $pop24
	i32.const	$push78=, 0
	i32.store	0($pop25), $pop78
	i32.const	$push26=, 60
	i32.add 	$push27=, $5, $pop26
	i32.const	$push77=, 0
	i32.store	0($pop27), $pop77
	i32.const	$push76=, 0
	i32.store	64($5), $pop76
	i32.const	$push28=, 68
	i32.add 	$push29=, $5, $pop28
	i32.const	$push75=, 0
	i32.store	0($pop29), $pop75
	i32.const	$push30=, 72
	i32.add 	$push31=, $5, $pop30
	i32.const	$push74=, 0
	i32.store	0($pop31), $pop74
	i32.store	4($5), $1
	i32.store	0($5), $1
	i32.store	8($5), $2
	i32.const	$push60=, 16
	i32.add 	$push61=, $5, $pop60
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_18transaction_headerE@FUNCTION, $5, $pop61
	i32.const	$push34=, 40
	i32.add 	$push35=, $5, $pop34
	i32.call	$push36=, _ZN5eosiorsINS_10datastreamIPKcEENS_6actionEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE@FUNCTION, $5, $pop35
	i32.const	$push32=, 52
	i32.add 	$push33=, $5, $pop32
	i32.call	$push37=, _ZN5eosiorsINS_10datastreamIPKcEENS_6actionEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE@FUNCTION, $pop36, $pop33
	i32.const	$push38=, 64
	i32.add 	$push39=, $5, $pop38
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEENSt3__15tupleIJtNS5_6vectorIcNS5_9allocatorIcEEEEEEEEERT_SD_RNS7_IT0_NS8_ISE_EEEE@FUNCTION, $pop37, $pop39
	i32.load	$push40=, 96($5)
	i32.store	36($5), $pop40
	i64.const	$push73=, 0
	i64.store	8($5), $pop73
	i64.store	0($5), $3
	i32.const	$push62=, 112
	i32.add 	$push63=, $5, $pop62
	i32.const	$push64=, 16
	i32.add 	$push65=, $5, $pop64
	call    	_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_@FUNCTION, $pop63, $pop65
	i32.load	$push72=, 112($5)
	tee_local	$push71=, $1=, $pop72
	i32.load	$push41=, 116($5)
	i32.sub 	$push42=, $pop41, $1
	i32.const	$push70=, 0
	call    	send_deferred@FUNCTION, $5, $0, $pop71, $pop42, $pop70
	block   	
	i32.load	$push69=, 112($5)
	tee_local	$push68=, $1=, $pop69
	i32.eqz 	$push92=, $pop68
	br_if   	0, $pop92
	i32.store	116($5), $1
	call    	_ZdlPv@FUNCTION, $1
.LBB10_2:
	end_block
	i32.const	$push66=, 16
	i32.add 	$push67=, $5, $pop66
	i32.call	$drop=, _ZN5eosio11transactionD2Ev@FUNCTION, $pop67
	i32.const	$push49=, 0
	i32.const	$push47=, 128
	i32.add 	$push48=, $5, $pop47
	i32.store	__stack_pointer($pop49), $pop48
	.endfunc
.Lfunc_end10:
	.size	_ZN5proxy13apply_onerrorIJEEEvyRKN5eosio7onerrorE, .Lfunc_end10-_ZN5proxy13apply_onerrorIJEEEvyRKN5eosio7onerrorE

	.section	.text._ZN5eosio18unpack_action_dataINS_5token13transfer_argsEEET_v,"axG",@progbits,_ZN5eosio18unpack_action_dataINS_5token13transfer_argsEEET_v,comdat
	.hidden	_ZN5eosio18unpack_action_dataINS_5token13transfer_argsEEET_v
	.weak	_ZN5eosio18unpack_action_dataINS_5token13transfer_argsEEET_v
	.type	_ZN5eosio18unpack_action_dataINS_5token13transfer_argsEEET_v,@function
_ZN5eosio18unpack_action_dataINS_5token13transfer_argsEEET_v:
	.param  	i32
	.local  	i32, i32, i32
	i32.const	$push9=, 0
	i32.load	$push15=, __stack_pointer($pop9)
	tee_local	$push14=, $2=, $pop15
	copy_local	$3=, $pop14
	block   	
	block   	
	i32.call	$push13=, action_data_size@FUNCTION
	tee_local	$push12=, $1=, $pop13
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $pop12, $pop0
	br_if   	0, $pop1
	i32.call	$2=, malloc@FUNCTION, $1
	br      	1
.LBB11_2:
	end_block
	i32.const	$push8=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $1, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push17=, $2, $pop5
	tee_local	$push16=, $2=, $pop17
	copy_local	$push11=, $pop16
	i32.store	__stack_pointer($pop8), $pop11
.LBB11_3:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $2, $1
	call    	_ZN5eosio6unpackINS_5token13transfer_argsEEET_PKcj@FUNCTION, $0, $2, $1
	block   	
	i32.const	$push6=, 513
	i32.lt_u	$push7=, $1, $pop6
	br_if   	0, $pop7
	call    	free@FUNCTION, $2
.LBB11_5:
	end_block
	i32.const	$push10=, 0
	i32.store	__stack_pointer($pop10), $3
	.endfunc
.Lfunc_end11:
	.size	_ZN5eosio18unpack_action_dataINS_5token13transfer_argsEEET_v, .Lfunc_end11-_ZN5eosio18unpack_action_dataINS_5token13transfer_argsEEET_v

	.section	.text._ZN5proxy14apply_transferIN5eosio5token13transfer_argsEEEvyyRKT_,"axG",@progbits,_ZN5proxy14apply_transferIN5eosio5token13transfer_argsEEEvyyRKT_,comdat
	.hidden	_ZN5proxy14apply_transferIN5eosio5token13transfer_argsEEEvyyRKT_
	.weak	_ZN5proxy14apply_transferIN5eosio5token13transfer_argsEEEvyyRKT_
	.type	_ZN5proxy14apply_transferIN5eosio5token13transfer_argsEEEvyyRKT_,@function
_ZN5proxy14apply_transferIN5eosio5token13transfer_argsEEEvyyRKT_:
	.param  	i64, i64, i32
	.local  	i32, i32, i32, i64, i64, i64, i64, i32
	i32.const	$push107=, 0
	i32.const	$push104=, 0
	i32.load	$push105=, __stack_pointer($pop104)
	i32.const	$push106=, 192
	i32.sub 	$push148=, $pop105, $pop106
	tee_local	$push147=, $10=, $pop148
	i32.store	__stack_pointer($pop107), $pop147
	i64.const	$7=, 0
	i64.const	$push146=, 0
	i64.store	160($10), $pop146
	i64.const	$push145=, 0
	i64.store	168($10), $pop145
	i64.store	152($10), $0
	i32.const	$push111=, 160
	i32.add 	$push112=, $10, $pop111
	i32.const	$push113=, 152
	i32.add 	$push114=, $10, $pop113
	i32.call	$push1=, _ZN5proxy7configs3getERNS_6configERKy@FUNCTION, $pop112, $pop114
	i32.const	$push0=, .L.str.21
	call    	eosio_assert@FUNCTION, $pop1, $pop0
	i64.load	$9=, 8($2)
	block   	
	block   	
	i64.load	$push2=, 0($2)
	i64.ne  	$push3=, $pop2, $0
	br_if   	0, $pop3
	i64.load	$push101=, 160($10)
	i64.eq  	$push102=, $9, $pop101
	i32.const	$push103=, .L.str.22
	call    	eosio_assert@FUNCTION, $pop102, $pop103
	br      	1
.LBB12_2:
	end_block
	i64.eq  	$push4=, $9, $0
	i32.const	$push5=, .L.str.23
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.const	$push115=, 104
	i32.add 	$push116=, $10, $pop115
	i32.const	$push6=, 24
	i32.add 	$push9=, $pop116, $pop6
	i32.const	$push172=, 24
	i32.add 	$push7=, $2, $pop172
	i64.load	$push8=, 0($pop7)
	i64.store	0($pop9), $pop8
	i32.const	$push117=, 104
	i32.add 	$push118=, $10, $pop117
	i32.const	$push10=, 16
	i32.add 	$push13=, $pop118, $pop10
	i32.const	$push171=, 16
	i32.add 	$push11=, $2, $pop171
	i64.load	$push12=, 0($pop11)
	i64.store	0($pop13), $pop12
	i32.const	$push119=, 104
	i32.add 	$push120=, $10, $pop119
	i32.const	$push14=, 8
	i32.add 	$push170=, $pop120, $pop14
	tee_local	$push169=, $5=, $pop170
	i32.const	$push168=, 8
	i32.add 	$push15=, $2, $pop168
	i64.load	$push16=, 0($pop15)
	i64.store	0($pop169), $pop16
	i64.load	$push17=, 0($2)
	i64.store	104($10), $pop17
	i32.const	$push121=, 104
	i32.add 	$push122=, $10, $pop121
	i32.const	$push18=, 32
	i32.add 	$push20=, $pop122, $pop18
	i32.const	$push167=, 32
	i32.add 	$push19=, $2, $pop167
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop20, $pop19
	i64.store	104($10), $0
	i64.load	$push21=, 160($10)
	i64.store	0($5), $pop21
	i32.const	$push22=, 172
	i32.add 	$push166=, $10, $pop22
	tee_local	$push165=, $2=, $pop166
	i32.load	$push164=, 0($2)
	tee_local	$push163=, $3=, $pop164
	i32.const	$push162=, 1
	i32.add 	$push23=, $pop163, $pop162
	i32.store	0($pop165), $pop23
	i32.const	$push123=, 160
	i32.add 	$push124=, $10, $pop123
	i32.const	$push125=, 152
	i32.add 	$push126=, $10, $pop125
	call    	_ZN5proxy7configs5storeERKNS_6configERKy@FUNCTION, $pop124, $pop126
	i64.call	$9=, current_time@FUNCTION
	i32.const	$push24=, 68
	i32.add 	$push25=, $10, $pop24
	i32.const	$push161=, 0
	i32.store	0($pop25), $pop161
	i32.const	$push127=, 40
	i32.add 	$push128=, $10, $pop127
	i32.const	$push160=, 32
	i32.add 	$push26=, $pop128, $pop160
	i32.const	$push159=, 0
	i32.store	0($pop26), $pop159
	i32.const	$push158=, 0
	i32.store	52($10), $pop158
	i32.const	$push157=, 0
	i32.store8	56($10), $pop157
	i32.const	$push156=, 0
	i32.store	60($10), $pop156
	i32.const	$push155=, 0
	i32.store	64($10), $pop155
	i64.const	$push27=, 1000000
	i64.div_u	$push28=, $9, $pop27
	i32.wrap/i64	$push29=, $pop28
	i32.const	$push30=, 60
	i32.add 	$push31=, $pop29, $pop30
	i32.store	40($10), $pop31
	i32.const	$push154=, 0
	i32.store	76($10), $pop154
	i32.const	$push32=, 80
	i32.add 	$push33=, $10, $pop32
	i32.const	$push153=, 0
	i32.store	0($pop33), $pop153
	i32.const	$push34=, 84
	i32.add 	$push35=, $10, $pop34
	i32.const	$push152=, 0
	i32.store	0($pop35), $pop152
	i32.const	$push151=, 0
	i32.store	88($10), $pop151
	i32.const	$push36=, 92
	i32.add 	$push37=, $10, $pop36
	i32.const	$push150=, 0
	i32.store	0($pop37), $pop150
	i32.const	$push38=, 96
	i32.add 	$push39=, $10, $pop38
	i32.const	$push149=, 0
	i32.store	0($pop39), $pop149
	i32.const	$push40=, 76
	i32.add 	$4=, $10, $pop40
	i64.const	$6=, 59
	i32.const	$2=, .L.str.24
	i64.const	$8=, 0
.LBB12_3:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push173=, 5
	i64.gt_u	$push41=, $7, $pop173
	br_if   	0, $pop41
	i32.load8_s	$push178=, 0($2)
	tee_local	$push177=, $5=, $pop178
	i32.const	$push176=, -97
	i32.add 	$push43=, $pop177, $pop176
	i32.const	$push175=, 255
	i32.and 	$push44=, $pop43, $pop175
	i32.const	$push174=, 25
	i32.gt_u	$push45=, $pop44, $pop174
	br_if   	1, $pop45
	i32.const	$push179=, 165
	i32.add 	$5=, $5, $pop179
	br      	2
.LBB12_6:
	end_block
	i64.const	$9=, 0
	i64.const	$push180=, 11
	i64.le_u	$push42=, $7, $pop180
	br_if   	2, $pop42
	br      	3
.LBB12_7:
	end_block
	i32.const	$push185=, 208
	i32.add 	$push46=, $5, $pop185
	i32.const	$push184=, 0
	i32.const	$push183=, -49
	i32.add 	$push47=, $5, $pop183
	i32.const	$push182=, 255
	i32.and 	$push48=, $pop47, $pop182
	i32.const	$push181=, 5
	i32.lt_u	$push49=, $pop48, $pop181
	i32.select	$5=, $pop46, $pop184, $pop49
.LBB12_8:
	end_block
	i64.extend_u/i32	$push50=, $5
	i64.const	$push187=, 56
	i64.shl 	$push51=, $pop50, $pop187
	i64.const	$push186=, 56
	i64.shr_s	$9=, $pop51, $pop186
.LBB12_9:
	end_block
	i64.const	$push189=, 31
	i64.and 	$push53=, $9, $pop189
	i64.const	$push188=, 4294967295
	i64.and 	$push52=, $6, $pop188
	i64.shl 	$9=, $pop53, $pop52
.LBB12_10:
	end_block
	i32.const	$push195=, 1
	i32.add 	$2=, $2, $pop195
	i64.const	$push194=, 1
	i64.add 	$7=, $7, $pop194
	i64.or  	$8=, $9, $8
	i64.const	$push193=, -5
	i64.add 	$push192=, $6, $pop193
	tee_local	$push191=, $6=, $pop192
	i64.const	$push190=, -6
	i64.ne  	$push54=, $pop191, $pop190
	br_if   	0, $pop54
	end_loop
	i64.store	24($10), $8
	i64.store	16($10), $0
	i64.const	$7=, 0
	i64.const	$6=, 59
	i32.const	$2=, .L.str.7
	i64.const	$8=, 0
.LBB12_12:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push196=, 10
	i64.gt_u	$push55=, $7, $pop196
	br_if   	0, $pop55
	i32.load8_s	$push201=, 0($2)
	tee_local	$push200=, $5=, $pop201
	i32.const	$push199=, -97
	i32.add 	$push57=, $pop200, $pop199
	i32.const	$push198=, 255
	i32.and 	$push58=, $pop57, $pop198
	i32.const	$push197=, 25
	i32.gt_u	$push59=, $pop58, $pop197
	br_if   	1, $pop59
	i32.const	$push202=, 165
	i32.add 	$5=, $5, $pop202
	br      	2
.LBB12_15:
	end_block
	i64.const	$9=, 0
	i64.const	$push203=, 11
	i64.eq  	$push56=, $7, $pop203
	br_if   	2, $pop56
	br      	3
.LBB12_16:
	end_block
	i32.const	$push208=, 208
	i32.add 	$push60=, $5, $pop208
	i32.const	$push207=, 0
	i32.const	$push206=, -49
	i32.add 	$push61=, $5, $pop206
	i32.const	$push205=, 255
	i32.and 	$push62=, $pop61, $pop205
	i32.const	$push204=, 5
	i32.lt_u	$push63=, $pop62, $pop204
	i32.select	$5=, $pop60, $pop207, $pop63
.LBB12_17:
	end_block
	i64.extend_u/i32	$push64=, $5
	i64.const	$push210=, 56
	i64.shl 	$push65=, $pop64, $pop210
	i64.const	$push209=, 56
	i64.shr_s	$9=, $pop65, $pop209
.LBB12_18:
	end_block
	i64.const	$push212=, 31
	i64.and 	$push67=, $9, $pop212
	i64.const	$push211=, 4294967295
	i64.and 	$push66=, $6, $pop211
	i64.shl 	$9=, $pop67, $pop66
.LBB12_19:
	end_block
	i32.const	$push218=, 1
	i32.add 	$2=, $2, $pop218
	i64.const	$push217=, -5
	i64.add 	$6=, $6, $pop217
	i64.or  	$8=, $9, $8
	i64.const	$push216=, 1
	i64.add 	$push215=, $7, $pop216
	tee_local	$push214=, $7=, $pop215
	i64.const	$push213=, 13
	i64.ne  	$push68=, $pop214, $pop213
	br_if   	0, $pop68
	end_loop
	i64.store	176($10), $8
	i64.const	$7=, 0
	i64.const	$6=, 59
	i32.const	$2=, .L.str.8
	i64.const	$8=, 0
.LBB12_21:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push219=, 7
	i64.gt_u	$push69=, $7, $pop219
	br_if   	0, $pop69
	i32.load8_s	$push224=, 0($2)
	tee_local	$push223=, $5=, $pop224
	i32.const	$push222=, -97
	i32.add 	$push71=, $pop223, $pop222
	i32.const	$push221=, 255
	i32.and 	$push72=, $pop71, $pop221
	i32.const	$push220=, 25
	i32.gt_u	$push73=, $pop72, $pop220
	br_if   	1, $pop73
	i32.const	$push225=, 165
	i32.add 	$5=, $5, $pop225
	br      	2
.LBB12_24:
	end_block
	i64.const	$9=, 0
	i64.const	$push226=, 11
	i64.le_u	$push70=, $7, $pop226
	br_if   	2, $pop70
	br      	3
.LBB12_25:
	end_block
	i32.const	$push231=, 208
	i32.add 	$push74=, $5, $pop231
	i32.const	$push230=, 0
	i32.const	$push229=, -49
	i32.add 	$push75=, $5, $pop229
	i32.const	$push228=, 255
	i32.and 	$push76=, $pop75, $pop228
	i32.const	$push227=, 5
	i32.lt_u	$push77=, $pop76, $pop227
	i32.select	$5=, $pop74, $pop230, $pop77
.LBB12_26:
	end_block
	i64.extend_u/i32	$push78=, $5
	i64.const	$push233=, 56
	i64.shl 	$push79=, $pop78, $pop233
	i64.const	$push232=, 56
	i64.shr_s	$9=, $pop79, $pop232
.LBB12_27:
	end_block
	i64.const	$push235=, 31
	i64.and 	$push81=, $9, $pop235
	i64.const	$push234=, 4294967295
	i64.and 	$push80=, $6, $pop234
	i64.shl 	$9=, $pop81, $pop80
.LBB12_28:
	end_block
	i32.const	$push241=, 1
	i32.add 	$2=, $2, $pop241
	i64.const	$push240=, 1
	i64.add 	$7=, $7, $pop240
	i64.or  	$8=, $9, $8
	i64.const	$push239=, -5
	i64.add 	$push238=, $6, $pop239
	tee_local	$push237=, $6=, $pop238
	i64.const	$push236=, -6
	i64.ne  	$push82=, $pop237, $pop236
	br_if   	0, $pop82
	end_loop
	i64.store	8($10), $8
	i32.const	$push129=, 16
	i32.add 	$push130=, $10, $pop129
	i32.const	$push131=, 176
	i32.add 	$push132=, $10, $pop131
	i32.const	$push133=, 8
	i32.add 	$push134=, $10, $pop133
	i32.const	$push135=, 104
	i32.add 	$push136=, $10, $pop135
	call    	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS1_16permission_levelEyyRNS1_5token13transfer_argsEEEEvDpOT_@FUNCTION, $4, $pop130, $pop132, $pop134, $pop136
	i32.const	$push86=, 60
	i32.add 	$push87=, $10, $pop86
	i32.const	$push83=, 168
	i32.add 	$push84=, $10, $pop83
	i32.load	$push85=, 0($pop84)
	i32.store	0($pop87), $pop85
	i64.const	$push88=, 0
	i64.store	24($10), $pop88
	i64.extend_u/i32	$push89=, $3
	i64.store	16($10), $pop89
	i32.const	$push137=, 176
	i32.add 	$push138=, $10, $pop137
	i32.const	$push139=, 40
	i32.add 	$push140=, $10, $pop139
	call    	_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_@FUNCTION, $pop138, $pop140
	i32.const	$push141=, 16
	i32.add 	$push142=, $10, $pop141
	i32.load	$push245=, 176($10)
	tee_local	$push244=, $2=, $pop245
	i32.load	$push90=, 180($10)
	i32.sub 	$push91=, $pop90, $2
	i32.const	$push92=, 0
	call    	send_deferred@FUNCTION, $pop142, $0, $pop244, $pop91, $pop92
	block   	
	i32.load	$push243=, 176($10)
	tee_local	$push242=, $2=, $pop243
	i32.eqz 	$push246=, $pop242
	br_if   	0, $pop246
	i32.store	180($10), $2
	call    	_ZdlPv@FUNCTION, $2
.LBB12_31:
	end_block
	i32.const	$push143=, 40
	i32.add 	$push144=, $10, $pop143
	i32.call	$drop=, _ZN5eosio11transactionD2Ev@FUNCTION, $pop144
	i32.const	$push93=, 136
	i32.add 	$push94=, $10, $pop93
	i32.load8_u	$push95=, 0($pop94)
	i32.const	$push96=, 1
	i32.and 	$push97=, $pop95, $pop96
	i32.eqz 	$push247=, $pop97
	br_if   	0, $pop247
	i32.const	$push98=, 144
	i32.add 	$push99=, $10, $pop98
	i32.load	$push100=, 0($pop99)
	call    	_ZdlPv@FUNCTION, $pop100
.LBB12_33:
	end_block
	i32.const	$push110=, 0
	i32.const	$push108=, 192
	i32.add 	$push109=, $10, $pop108
	i32.store	__stack_pointer($pop110), $pop109
	.endfunc
.Lfunc_end12:
	.size	_ZN5proxy14apply_transferIN5eosio5token13transfer_argsEEEvyyRKT_, .Lfunc_end12-_ZN5proxy14apply_transferIN5eosio5token13transfer_argsEEEvyyRKT_

	.section	.text._ZN5eosio18unpack_action_dataIN5proxy9set_ownerEEET_v,"axG",@progbits,_ZN5eosio18unpack_action_dataIN5proxy9set_ownerEEET_v,comdat
	.hidden	_ZN5eosio18unpack_action_dataIN5proxy9set_ownerEEET_v
	.weak	_ZN5eosio18unpack_action_dataIN5proxy9set_ownerEEET_v
	.type	_ZN5eosio18unpack_action_dataIN5proxy9set_ownerEEET_v,@function
_ZN5eosio18unpack_action_dataIN5proxy9set_ownerEEET_v:
	.param  	i32
	.local  	i32, i32, i32
	i32.const	$push19=, 0
	i32.load	$push25=, __stack_pointer($pop19)
	tee_local	$push24=, $2=, $pop25
	copy_local	$3=, $pop24
	block   	
	block   	
	i32.call	$push23=, action_data_size@FUNCTION
	tee_local	$push22=, $1=, $pop23
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $pop22, $pop0
	br_if   	0, $pop1
	i32.call	$2=, malloc@FUNCTION, $1
	br      	1
.LBB13_2:
	end_block
	i32.const	$push18=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $1, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push27=, $2, $pop5
	tee_local	$push26=, $2=, $pop27
	copy_local	$push21=, $pop26
	i32.store	__stack_pointer($pop18), $pop21
.LBB13_3:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $2, $1
	i32.const	$push6=, 7
	i32.gt_u	$push7=, $1, $pop6
	i32.const	$push8=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop7, $pop8
	i32.const	$push9=, 8
	i32.call	$drop=, memcpy@FUNCTION, $0, $2, $pop9
	i32.const	$push10=, -4
	i32.and 	$push11=, $1, $pop10
	i32.const	$push31=, 8
	i32.ne  	$push12=, $pop11, $pop31
	i32.const	$push30=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop12, $pop30
	i32.const	$push29=, 8
	i32.add 	$push14=, $0, $pop29
	i32.const	$push28=, 8
	i32.add 	$push13=, $2, $pop28
	i32.const	$push15=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop14, $pop13, $pop15
	block   	
	i32.const	$push16=, 513
	i32.lt_u	$push17=, $1, $pop16
	br_if   	0, $pop17
	call    	free@FUNCTION, $2
.LBB13_5:
	end_block
	i32.const	$push20=, 0
	i32.store	__stack_pointer($pop20), $3
	.endfunc
.Lfunc_end13:
	.size	_ZN5eosio18unpack_action_dataIN5proxy9set_ownerEEET_v, .Lfunc_end13-_ZN5eosio18unpack_action_dataIN5proxy9set_ownerEEET_v

	.section	.text._ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS1_16permission_levelEyyRNS1_5token13transfer_argsEEEEvDpOT_,"axG",@progbits,_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS1_16permission_levelEyyRNS1_5token13transfer_argsEEEEvDpOT_,comdat
	.hidden	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS1_16permission_levelEyyRNS1_5token13transfer_argsEEEEvDpOT_
	.weak	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS1_16permission_levelEyyRNS1_5token13transfer_argsEEEEvDpOT_
	.type	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS1_16permission_levelEyyRNS1_5token13transfer_argsEEEEvDpOT_,@function
_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS1_16permission_levelEyyRNS1_5token13transfer_argsEEEEvDpOT_:
	.param  	i32, i32, i32, i32, i32
	.local  	i32, i32, i32, i32, i64, i32, i32
	i32.const	$push82=, 0
	i32.const	$push79=, 0
	i32.load	$push80=, __stack_pointer($pop79)
	i32.const	$push81=, 48
	i32.sub 	$push100=, $pop80, $pop81
	tee_local	$push99=, $11=, $pop100
	i32.store	__stack_pointer($pop82), $pop99
	block   	
	block   	
	i32.load	$push0=, 4($0)
	i32.load	$push98=, 0($0)
	tee_local	$push97=, $10=, $pop98
	i32.sub 	$push1=, $pop0, $pop97
	i32.const	$push96=, 40
	i32.div_s	$push95=, $pop1, $pop96
	tee_local	$push94=, $5=, $pop95
	i32.const	$push2=, 1
	i32.add 	$push93=, $pop94, $pop2
	tee_local	$push92=, $7=, $pop93
	i32.const	$push3=, 107374183
	i32.ge_u	$push4=, $pop92, $pop3
	br_if   	0, $pop4
	i32.const	$8=, 107374182
	block   	
	block   	
	i32.load	$push5=, 8($0)
	i32.sub 	$push6=, $pop5, $10
	i32.const	$push103=, 40
	i32.div_s	$push102=, $pop6, $pop103
	tee_local	$push101=, $10=, $pop102
	i32.const	$push7=, 53687090
	i32.gt_u	$push8=, $pop101, $pop7
	br_if   	0, $pop8
	i32.const	$push9=, 1
	i32.shl 	$push107=, $10, $pop9
	tee_local	$push106=, $10=, $pop107
	i32.lt_u	$push10=, $10, $7
	i32.select	$push105=, $7, $pop106, $pop10
	tee_local	$push104=, $8=, $pop105
	i32.eqz 	$push207=, $pop104
	br_if   	1, $pop207
.LBB14_3:
	end_block
	i32.const	$push11=, 40
	i32.mul 	$push12=, $8, $pop11
	i32.call	$7=, _Znwj@FUNCTION, $pop12
	br      	2
.LBB14_4:
	end_block
	i32.const	$8=, 0
	i32.const	$7=, 0
	br      	1
.LBB14_5:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB14_6:
	end_block
	i32.const	$push13=, 40
	i32.mul 	$push14=, $5, $pop13
	i32.add 	$push135=, $7, $pop14
	tee_local	$push134=, $10=, $pop135
	i64.load	$push15=, 0($2)
	i64.store	0($pop134), $pop15
	i64.load	$push16=, 0($3)
	i64.store	8($10), $pop16
	i64.const	$push133=, 0
	i64.store	16($10):p2align=2, $pop133
	i32.const	$push17=, 24
	i32.add 	$push132=, $10, $pop17
	tee_local	$push131=, $3=, $pop132
	i32.const	$push18=, 0
	i32.store	0($pop131), $pop18
	i32.const	$push19=, 16
	i32.call	$push130=, _Znwj@FUNCTION, $pop19
	tee_local	$push129=, $2=, $pop130
	i32.store	16($10), $pop129
	i32.const	$push128=, 16
	i32.add 	$push127=, $2, $pop128
	tee_local	$push126=, $5=, $pop127
	i32.store	0($3), $pop126
	i32.const	$push20=, 12
	i32.add 	$push21=, $2, $pop20
	i32.const	$push125=, 12
	i32.add 	$push22=, $1, $pop125
	i32.load	$push23=, 0($pop22)
	i32.store	0($pop21), $pop23
	i32.const	$push24=, 8
	i32.add 	$push25=, $2, $pop24
	i32.const	$push124=, 8
	i32.add 	$push26=, $1, $pop124
	i32.load	$push27=, 0($pop26)
	i32.store	0($pop25), $pop27
	i32.const	$push28=, 4
	i32.add 	$push29=, $2, $pop28
	i32.const	$push123=, 4
	i32.add 	$push30=, $1, $pop123
	i32.load	$push31=, 0($pop30)
	i32.store	0($pop29), $pop31
	i32.load	$push32=, 0($1)
	i32.store	0($2), $pop32
	i32.const	$push33=, 20
	i32.add 	$push34=, $10, $pop33
	i32.store	0($pop34), $5
	i32.const	$push122=, 0
	i32.store	28($10), $pop122
	i32.const	$push35=, 32
	i32.add 	$push121=, $10, $pop35
	tee_local	$push120=, $6=, $pop121
	i32.const	$push119=, 0
	i32.store	0($pop120), $pop119
	i32.const	$push36=, 36
	i32.add 	$push37=, $10, $pop36
	i32.const	$push118=, 0
	i32.store	0($pop37), $pop118
	i32.const	$push117=, 36
	i32.add 	$push40=, $4, $pop117
	i32.load	$push41=, 0($pop40)
	i32.load8_u	$push116=, 32($4)
	tee_local	$push115=, $2=, $pop116
	i32.const	$push114=, 1
	i32.shr_u	$push39=, $pop115, $pop114
	i32.const	$push113=, 1
	i32.and 	$push38=, $2, $pop113
	i32.select	$push112=, $pop41, $pop39, $pop38
	tee_local	$push111=, $1=, $pop112
	i32.const	$push110=, 32
	i32.add 	$2=, $pop111, $pop110
	i64.extend_u/i32	$9=, $1
	i32.const	$push109=, 32
	i32.add 	$3=, $4, $pop109
	i32.const	$push108=, 40
	i32.mul 	$push42=, $8, $pop108
	i32.add 	$5=, $7, $pop42
	i32.const	$push43=, 28
	i32.add 	$1=, $10, $pop43
.LBB14_7:
	loop    	
	i32.const	$push140=, 1
	i32.add 	$2=, $2, $pop140
	i64.const	$push139=, 7
	i64.shr_u	$push138=, $9, $pop139
	tee_local	$push137=, $9=, $pop138
	i64.const	$push136=, 0
	i64.ne  	$push44=, $pop137, $pop136
	br_if   	0, $pop44
	end_loop
	block   	
	block   	
	i32.eqz 	$push208=, $2
	br_if   	0, $pop208
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj@FUNCTION, $1, $2
	i32.load	$8=, 0($6)
	i32.load	$2=, 0($1)
	br      	1
.LBB14_10:
	end_block
	i32.const	$8=, 0
	i32.const	$2=, 0
.LBB14_11:
	end_block
	i32.store	12($11), $2
	i32.store	8($11), $2
	i32.store	16($11), $8
	i32.const	$push86=, 8
	i32.add 	$push87=, $11, $pop86
	i32.store	24($11), $pop87
	i32.store	44($11), $3
	i32.store	32($11), $4
	i32.const	$push147=, 8
	i32.add 	$push45=, $4, $pop147
	i32.store	36($11), $pop45
	i32.const	$push146=, 16
	i32.add 	$push46=, $4, $pop146
	i32.store	40($11), $pop46
	i32.const	$push47=, 40
	i32.add 	$3=, $10, $pop47
	i32.const	$push88=, 32
	i32.add 	$push89=, $11, $pop88
	i32.const	$push90=, 24
	i32.add 	$push91=, $11, $pop90
	call    	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_RKN5eosio5assetERKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEEEEEZNS7_lsINS7_10datastreamIPcEENS7_5token13transfer_argsELPv0EEERT_ST_RKT0_EUlRKSS_E_JLj0ELj1ELj2ELj3EEEEvST_OSU_NSB_16integer_sequenceIjJXspT1_EEEENSB_17integral_constantIbLb0EEE@FUNCTION, $pop89, $pop91
	block   	
	block   	
	i32.const	$push145=, 4
	i32.add 	$push48=, $0, $pop145
	i32.load	$push144=, 0($pop48)
	tee_local	$push143=, $4=, $pop144
	i32.load	$push142=, 0($0)
	tee_local	$push141=, $2=, $pop142
	i32.eq  	$push49=, $pop143, $pop141
	br_if   	0, $pop49
	i32.const	$push149=, 0
	i32.sub 	$7=, $pop149, $2
	i32.const	$push148=, -20
	i32.add 	$2=, $4, $pop148
.LBB14_13:
	loop    	
	i32.const	$push193=, -32
	i32.add 	$push50=, $10, $pop193
	i32.const	$push192=, -12
	i32.add 	$push51=, $2, $pop192
	i64.load	$push52=, 0($pop51)
	i64.store	0($pop50), $pop52
	i32.const	$push191=, -40
	i32.add 	$push53=, $10, $pop191
	i32.const	$push190=, -20
	i32.add 	$push54=, $2, $pop190
	i64.load	$push55=, 0($pop54)
	i64.store	0($pop53), $pop55
	i32.const	$push189=, -24
	i32.add 	$push188=, $10, $pop189
	tee_local	$push187=, $4=, $pop188
	i64.const	$push186=, 0
	i64.store	0($pop187):p2align=2, $pop186
	i32.const	$push185=, -16
	i32.add 	$push184=, $10, $pop185
	tee_local	$push183=, $1=, $pop184
	i32.const	$push182=, 0
	i32.store	0($pop183), $pop182
	i32.const	$push181=, -4
	i32.add 	$push180=, $2, $pop181
	tee_local	$push179=, $8=, $pop180
	i32.load	$push56=, 0($pop179)
	i32.store	0($4), $pop56
	i32.const	$push178=, -20
	i32.add 	$push57=, $10, $pop178
	i32.load	$push58=, 0($2)
	i32.store	0($pop57), $pop58
	i32.const	$push177=, 4
	i32.add 	$push176=, $2, $pop177
	tee_local	$push175=, $4=, $pop176
	i32.load	$push59=, 0($pop175)
	i32.store	0($1), $pop59
	i32.const	$push174=, 0
	i32.store	0($4), $pop174
	i32.const	$push173=, -12
	i32.add 	$push172=, $10, $pop173
	tee_local	$push171=, $4=, $pop172
	i64.const	$push170=, 0
	i64.store	0($pop171):p2align=2, $pop170
	i64.const	$push169=, 0
	i64.store	0($8):p2align=2, $pop169
	i32.const	$push168=, -4
	i32.add 	$push167=, $10, $pop168
	tee_local	$push166=, $1=, $pop167
	i32.const	$push165=, 0
	i32.store	0($pop166), $pop165
	i32.const	$push164=, 8
	i32.add 	$push163=, $2, $pop164
	tee_local	$push162=, $8=, $pop163
	i32.load	$push60=, 0($pop162)
	i32.store	0($4), $pop60
	i32.const	$push161=, -8
	i32.add 	$push61=, $10, $pop161
	i32.const	$push160=, 12
	i32.add 	$push62=, $2, $pop160
	i32.load	$push63=, 0($pop62)
	i32.store	0($pop61), $pop63
	i32.const	$push159=, 16
	i32.add 	$push158=, $2, $pop159
	tee_local	$push157=, $4=, $pop158
	i32.load	$push64=, 0($pop157)
	i32.store	0($1), $pop64
	i32.const	$push156=, 0
	i32.store	0($4), $pop156
	i64.const	$push155=, 0
	i64.store	0($8):p2align=2, $pop155
	i32.const	$push154=, -40
	i32.add 	$10=, $10, $pop154
	i32.const	$push153=, -40
	i32.add 	$push152=, $2, $pop153
	tee_local	$push151=, $2=, $pop152
	i32.add 	$push65=, $pop151, $7
	i32.const	$push150=, -20
	i32.ne  	$push66=, $pop65, $pop150
	br_if   	0, $pop66
	end_loop
	i32.const	$push67=, 4
	i32.add 	$push68=, $0, $pop67
	i32.load	$2=, 0($pop68)
	i32.load	$1=, 0($0)
	br      	1
.LBB14_15:
	end_block
	copy_local	$1=, $2
.LBB14_16:
	end_block
	i32.store	0($0), $10
	i32.const	$push194=, 4
	i32.add 	$push69=, $0, $pop194
	i32.store	0($pop69), $3
	i32.const	$push70=, 8
	i32.add 	$push71=, $0, $pop70
	i32.store	0($pop71), $5
	block   	
	i32.eq  	$push72=, $2, $1
	br_if   	0, $pop72
	i32.const	$push73=, 0
	i32.sub 	$4=, $pop73, $1
	i32.const	$push195=, -24
	i32.add 	$10=, $2, $pop195
.LBB14_18:
	loop    	
	block   	
	i32.const	$push198=, 12
	i32.add 	$push74=, $10, $pop198
	i32.load	$push197=, 0($pop74)
	tee_local	$push196=, $2=, $pop197
	i32.eqz 	$push209=, $pop196
	br_if   	0, $pop209
	i32.const	$push199=, 16
	i32.add 	$push75=, $10, $pop199
	i32.store	0($pop75), $2
	call    	_ZdlPv@FUNCTION, $2
.LBB14_20:
	end_block
	block   	
	i32.load	$push201=, 0($10)
	tee_local	$push200=, $2=, $pop201
	i32.eqz 	$push210=, $pop200
	br_if   	0, $pop210
	i32.const	$push202=, 4
	i32.add 	$push76=, $10, $pop202
	i32.store	0($pop76), $2
	call    	_ZdlPv@FUNCTION, $2
.LBB14_22:
	end_block
	i32.const	$push206=, -40
	i32.add 	$push205=, $10, $pop206
	tee_local	$push204=, $10=, $pop205
	i32.add 	$push77=, $pop204, $4
	i32.const	$push203=, -24
	i32.ne  	$push78=, $pop77, $pop203
	br_if   	0, $pop78
.LBB14_23:
	end_loop
	end_block
	block   	
	i32.eqz 	$push211=, $1
	br_if   	0, $pop211
	call    	_ZdlPv@FUNCTION, $1
.LBB14_25:
	end_block
	i32.const	$push85=, 0
	i32.const	$push83=, 48
	i32.add 	$push84=, $11, $pop83
	i32.store	__stack_pointer($pop85), $pop84
	.endfunc
.Lfunc_end14:
	.size	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS1_16permission_levelEyyRNS1_5token13transfer_argsEEEEvDpOT_, .Lfunc_end14-_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS1_16permission_levelEyyRNS1_5token13transfer_argsEEEEvDpOT_

	.section	.text._ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_,"axG",@progbits,_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_,comdat
	.hidden	_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
	.weak	_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
	.type	_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_,@function
_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_:
	.param  	i32, i32
	.local  	i32, i32, i32
	i32.const	$push14=, 0
	i32.const	$push11=, 0
	i32.load	$push12=, __stack_pointer($pop11)
	i32.const	$push13=, 16
	i32.sub 	$push23=, $pop12, $pop13
	tee_local	$push22=, $4=, $pop23
	i32.store	__stack_pointer($pop14), $pop22
	i32.const	$3=, 0
	i32.const	$push21=, 0
	i32.store	8($0), $pop21
	i64.const	$push0=, 0
	i64.store	0($0):p2align=2, $pop0
	i32.const	$push20=, 0
	i32.store	0($4), $pop20
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIjEEEERT_S4_RKNS_11transactionE@FUNCTION, $4, $1
	block   	
	block   	
	i32.load	$push19=, 0($4)
	tee_local	$push18=, $2=, $pop19
	i32.eqz 	$push24=, $pop18
	br_if   	0, $pop24
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj@FUNCTION, $0, $2
	i32.const	$push1=, 4
	i32.add 	$push2=, $0, $pop1
	i32.load	$3=, 0($pop2)
	i32.load	$0=, 0($0)
	br      	1
.LBB15_2:
	end_block
	i32.const	$0=, 0
.LBB15_3:
	end_block
	i32.store	4($4), $0
	i32.store	0($4), $0
	i32.store	8($4), $3
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_18transaction_headerE@FUNCTION, $4, $1
	i32.const	$push5=, 24
	i32.add 	$push6=, $1, $pop5
	i32.call	$push7=, _ZN5eosiolsINS_10datastreamIPcEENS_6actionEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE@FUNCTION, $4, $pop6
	i32.const	$push3=, 36
	i32.add 	$push4=, $1, $pop3
	i32.call	$push8=, _ZN5eosiolsINS_10datastreamIPcEENS_6actionEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE@FUNCTION, $pop7, $pop4
	i32.const	$push9=, 48
	i32.add 	$push10=, $1, $pop9
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEENSt3__15tupleIJtNS4_6vectorIcNS4_9allocatorIcEEEEEEEEERT_SC_RKNS6_IT0_NS7_ISD_EEEE@FUNCTION, $pop8, $pop10
	i32.const	$push17=, 0
	i32.const	$push15=, 16
	i32.add 	$push16=, $4, $pop15
	i32.store	__stack_pointer($pop17), $pop16
	.endfunc
.Lfunc_end15:
	.size	_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_, .Lfunc_end15-_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_

	.section	.text._ZN5eosio11transactionD2Ev,"axG",@progbits,_ZN5eosio11transactionD2Ev,comdat
	.hidden	_ZN5eosio11transactionD2Ev
	.weak	_ZN5eosio11transactionD2Ev
	.type	_ZN5eosio11transactionD2Ev,@function
_ZN5eosio11transactionD2Ev:
	.param  	i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32
	block   	
	i32.load	$push29=, 48($0)
	tee_local	$push28=, $1=, $pop29
	i32.eqz 	$push78=, $pop28
	br_if   	0, $pop78
	block   	
	block   	
	i32.const	$push0=, 52
	i32.add 	$push33=, $0, $pop0
	tee_local	$push32=, $4=, $pop33
	i32.load	$push31=, 0($pop32)
	tee_local	$push30=, $5=, $pop31
	i32.eq  	$push1=, $pop30, $1
	br_if   	0, $pop1
	i32.const	$push2=, 0
	i32.sub 	$2=, $pop2, $1
	i32.const	$push34=, -12
	i32.add 	$5=, $5, $pop34
.LBB16_3:
	loop    	
	block   	
	i32.load	$push36=, 0($5)
	tee_local	$push35=, $3=, $pop36
	i32.eqz 	$push79=, $pop35
	br_if   	0, $pop79
	i32.const	$push37=, 4
	i32.add 	$push3=, $5, $pop37
	i32.store	0($pop3), $3
	call    	_ZdlPv@FUNCTION, $3
.LBB16_5:
	end_block
	i32.const	$push41=, -16
	i32.add 	$push40=, $5, $pop41
	tee_local	$push39=, $5=, $pop40
	i32.add 	$push4=, $pop39, $2
	i32.const	$push38=, -12
	i32.ne  	$push5=, $pop4, $pop38
	br_if   	0, $pop5
	end_loop
	i32.const	$push6=, 48
	i32.add 	$push7=, $0, $pop6
	i32.load	$5=, 0($pop7)
	br      	1
.LBB16_7:
	end_block
	copy_local	$5=, $1
.LBB16_8:
	end_block
	i32.store	0($4), $1
	call    	_ZdlPv@FUNCTION, $5
.LBB16_9:
	end_block
	block   	
	i32.load	$push43=, 36($0)
	tee_local	$push42=, $1=, $pop43
	i32.eqz 	$push80=, $pop42
	br_if   	0, $pop80
	block   	
	block   	
	i32.const	$push8=, 40
	i32.add 	$push47=, $0, $pop8
	tee_local	$push46=, $4=, $pop47
	i32.load	$push45=, 0($pop46)
	tee_local	$push44=, $5=, $pop45
	i32.eq  	$push9=, $pop44, $1
	br_if   	0, $pop9
	i32.const	$push10=, 0
	i32.sub 	$2=, $pop10, $1
	i32.const	$push48=, -24
	i32.add 	$5=, $5, $pop48
.LBB16_12:
	loop    	
	block   	
	i32.const	$push51=, 12
	i32.add 	$push11=, $5, $pop51
	i32.load	$push50=, 0($pop11)
	tee_local	$push49=, $3=, $pop50
	i32.eqz 	$push81=, $pop49
	br_if   	0, $pop81
	i32.const	$push52=, 16
	i32.add 	$push12=, $5, $pop52
	i32.store	0($pop12), $3
	call    	_ZdlPv@FUNCTION, $3
.LBB16_14:
	end_block
	block   	
	i32.load	$push54=, 0($5)
	tee_local	$push53=, $3=, $pop54
	i32.eqz 	$push82=, $pop53
	br_if   	0, $pop82
	i32.const	$push55=, 4
	i32.add 	$push13=, $5, $pop55
	i32.store	0($pop13), $3
	call    	_ZdlPv@FUNCTION, $3
.LBB16_16:
	end_block
	i32.const	$push59=, -40
	i32.add 	$push58=, $5, $pop59
	tee_local	$push57=, $5=, $pop58
	i32.add 	$push14=, $pop57, $2
	i32.const	$push56=, -24
	i32.ne  	$push15=, $pop14, $pop56
	br_if   	0, $pop15
	end_loop
	i32.const	$push16=, 36
	i32.add 	$push17=, $0, $pop16
	i32.load	$5=, 0($pop17)
	br      	1
.LBB16_18:
	end_block
	copy_local	$5=, $1
.LBB16_19:
	end_block
	i32.store	0($4), $1
	call    	_ZdlPv@FUNCTION, $5
.LBB16_20:
	end_block
	block   	
	i32.load	$push61=, 24($0)
	tee_local	$push60=, $1=, $pop61
	i32.eqz 	$push83=, $pop60
	br_if   	0, $pop83
	block   	
	block   	
	i32.const	$push18=, 28
	i32.add 	$push65=, $0, $pop18
	tee_local	$push64=, $4=, $pop65
	i32.load	$push63=, 0($pop64)
	tee_local	$push62=, $5=, $pop63
	i32.eq  	$push19=, $pop62, $1
	br_if   	0, $pop19
	i32.const	$push20=, 0
	i32.sub 	$2=, $pop20, $1
	i32.const	$push66=, -24
	i32.add 	$5=, $5, $pop66
.LBB16_23:
	loop    	
	block   	
	i32.const	$push69=, 12
	i32.add 	$push21=, $5, $pop69
	i32.load	$push68=, 0($pop21)
	tee_local	$push67=, $3=, $pop68
	i32.eqz 	$push84=, $pop67
	br_if   	0, $pop84
	i32.const	$push70=, 16
	i32.add 	$push22=, $5, $pop70
	i32.store	0($pop22), $3
	call    	_ZdlPv@FUNCTION, $3
.LBB16_25:
	end_block
	block   	
	i32.load	$push72=, 0($5)
	tee_local	$push71=, $3=, $pop72
	i32.eqz 	$push85=, $pop71
	br_if   	0, $pop85
	i32.const	$push73=, 4
	i32.add 	$push23=, $5, $pop73
	i32.store	0($pop23), $3
	call    	_ZdlPv@FUNCTION, $3
.LBB16_27:
	end_block
	i32.const	$push77=, -40
	i32.add 	$push76=, $5, $pop77
	tee_local	$push75=, $5=, $pop76
	i32.add 	$push24=, $pop75, $2
	i32.const	$push74=, -24
	i32.ne  	$push25=, $pop24, $pop74
	br_if   	0, $pop25
	end_loop
	i32.const	$push26=, 24
	i32.add 	$push27=, $0, $pop26
	i32.load	$5=, 0($pop27)
	br      	1
.LBB16_29:
	end_block
	copy_local	$5=, $1
.LBB16_30:
	end_block
	i32.store	0($4), $1
	call    	_ZdlPv@FUNCTION, $5
.LBB16_31:
	end_block
	copy_local	$push86=, $0
	.endfunc
.Lfunc_end16:
	.size	_ZN5eosio11transactionD2Ev, .Lfunc_end16-_ZN5eosio11transactionD2Ev

	.section	.text._ZN5eosiolsINS_10datastreamIjEEEERT_S4_RKNS_11transactionE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIjEEEERT_S4_RKNS_11transactionE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIjEEEERT_S4_RKNS_11transactionE
	.weak	_ZN5eosiolsINS_10datastreamIjEEEERT_S4_RKNS_11transactionE
	.type	_ZN5eosiolsINS_10datastreamIjEEEERT_S4_RKNS_11transactionE,@function
_ZN5eosiolsINS_10datastreamIjEEEERT_S4_RKNS_11transactionE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i64
	i32.load	$push52=, 0($0)
	tee_local	$push51=, $6=, $pop52
	i32.const	$push0=, 10
	i32.add 	$push1=, $pop51, $pop0
	i32.store	0($0), $pop1
	i32.const	$push2=, 11
	i32.add 	$6=, $6, $pop2
	i64.load32_u	$8=, 12($1)
.LBB17_1:
	loop    	
	i32.const	$push57=, 1
	i32.add 	$6=, $6, $pop57
	i64.const	$push56=, 7
	i64.shr_u	$push55=, $8, $pop56
	tee_local	$push54=, $8=, $pop55
	i64.const	$push53=, 0
	i64.ne  	$push3=, $pop54, $pop53
	br_if   	0, $pop3
	end_loop
	i32.store	0($0), $6
	i64.load32_u	$8=, 20($1)
.LBB17_3:
	loop    	
	i32.const	$push62=, 1
	i32.add 	$6=, $6, $pop62
	i64.const	$push61=, 7
	i64.shr_u	$push60=, $8, $pop61
	tee_local	$push59=, $8=, $pop60
	i64.const	$push58=, 0
	i64.ne  	$push4=, $pop59, $pop58
	br_if   	0, $pop4
	end_loop
	i32.store	0($0), $6
	i32.const	$push5=, 28
	i32.add 	$push6=, $1, $pop5
	i32.load	$push66=, 0($pop6)
	tee_local	$push65=, $2=, $pop66
	i32.load	$push64=, 24($1)
	tee_local	$push63=, $7=, $pop64
	i32.sub 	$push7=, $pop65, $pop63
	i32.const	$push8=, 40
	i32.div_s	$push9=, $pop7, $pop8
	i64.extend_u/i32	$8=, $pop9
.LBB17_5:
	loop    	
	i32.const	$push71=, 1
	i32.add 	$6=, $6, $pop71
	i64.const	$push70=, 7
	i64.shr_u	$push69=, $8, $pop70
	tee_local	$push68=, $8=, $pop69
	i64.const	$push67=, 0
	i64.ne  	$push10=, $pop68, $pop67
	br_if   	0, $pop10
	end_loop
	i32.store	0($0), $6
	block   	
	i32.eq  	$push11=, $7, $2
	br_if   	0, $pop11
.LBB17_8:
	loop    	
	i32.const	$push80=, 16
	i32.add 	$6=, $6, $pop80
	i32.const	$push79=, 20
	i32.add 	$push12=, $7, $pop79
	i32.load	$push78=, 0($pop12)
	tee_local	$push77=, $3=, $pop78
	i32.load	$push76=, 16($7)
	tee_local	$push75=, $4=, $pop76
	i32.sub 	$push74=, $pop77, $pop75
	tee_local	$push73=, $5=, $pop74
	i32.const	$push72=, 4
	i32.shr_s	$push13=, $pop73, $pop72
	i64.extend_u/i32	$8=, $pop13
.LBB17_9:
	loop    	
	i32.const	$push85=, 1
	i32.add 	$6=, $6, $pop85
	i64.const	$push84=, 7
	i64.shr_u	$push83=, $8, $pop84
	tee_local	$push82=, $8=, $pop83
	i64.const	$push81=, 0
	i64.ne  	$push14=, $pop82, $pop81
	br_if   	0, $pop14
	end_loop
	block   	
	i32.eq  	$push15=, $4, $3
	br_if   	0, $pop15
	i32.const	$push86=, -16
	i32.and 	$push16=, $5, $pop86
	i32.add 	$6=, $pop16, $6
.LBB17_12:
	end_block
	i32.const	$push91=, 32
	i32.add 	$push17=, $7, $pop91
	i32.load	$push90=, 0($pop17)
	tee_local	$push89=, $3=, $pop90
	i32.add 	$push18=, $6, $pop89
	i32.load	$push88=, 28($7)
	tee_local	$push87=, $4=, $pop88
	i32.sub 	$6=, $pop18, $pop87
	i32.sub 	$push19=, $3, $4
	i64.extend_u/i32	$8=, $pop19
.LBB17_13:
	loop    	
	i32.const	$push96=, 1
	i32.add 	$6=, $6, $pop96
	i64.const	$push95=, 7
	i64.shr_u	$push94=, $8, $pop95
	tee_local	$push93=, $8=, $pop94
	i64.const	$push92=, 0
	i64.ne  	$push20=, $pop93, $pop92
	br_if   	0, $pop20
	end_loop
	i32.const	$push99=, 40
	i32.add 	$push98=, $7, $pop99
	tee_local	$push97=, $7=, $pop98
	i32.ne  	$push21=, $pop97, $2
	br_if   	0, $pop21
	end_loop
	i32.store	0($0), $6
.LBB17_16:
	end_block
	i32.const	$push22=, 40
	i32.add 	$push23=, $1, $pop22
	i32.load	$push104=, 0($pop23)
	tee_local	$push103=, $2=, $pop104
	i32.load	$push102=, 36($1)
	tee_local	$push101=, $7=, $pop102
	i32.sub 	$push24=, $pop103, $pop101
	i32.const	$push100=, 40
	i32.div_s	$push25=, $pop24, $pop100
	i64.extend_u/i32	$8=, $pop25
.LBB17_17:
	loop    	
	i32.const	$push109=, 1
	i32.add 	$6=, $6, $pop109
	i64.const	$push108=, 7
	i64.shr_u	$push107=, $8, $pop108
	tee_local	$push106=, $8=, $pop107
	i64.const	$push105=, 0
	i64.ne  	$push26=, $pop106, $pop105
	br_if   	0, $pop26
	end_loop
	i32.store	0($0), $6
	block   	
	i32.eq  	$push27=, $7, $2
	br_if   	0, $pop27
.LBB17_20:
	loop    	
	i32.const	$push118=, 16
	i32.add 	$6=, $6, $pop118
	i32.const	$push117=, 20
	i32.add 	$push28=, $7, $pop117
	i32.load	$push116=, 0($pop28)
	tee_local	$push115=, $3=, $pop116
	i32.load	$push114=, 16($7)
	tee_local	$push113=, $4=, $pop114
	i32.sub 	$push112=, $pop115, $pop113
	tee_local	$push111=, $5=, $pop112
	i32.const	$push110=, 4
	i32.shr_s	$push29=, $pop111, $pop110
	i64.extend_u/i32	$8=, $pop29
.LBB17_21:
	loop    	
	i32.const	$push123=, 1
	i32.add 	$6=, $6, $pop123
	i64.const	$push122=, 7
	i64.shr_u	$push121=, $8, $pop122
	tee_local	$push120=, $8=, $pop121
	i64.const	$push119=, 0
	i64.ne  	$push30=, $pop120, $pop119
	br_if   	0, $pop30
	end_loop
	block   	
	i32.eq  	$push31=, $4, $3
	br_if   	0, $pop31
	i32.const	$push124=, -16
	i32.and 	$push32=, $5, $pop124
	i32.add 	$6=, $pop32, $6
.LBB17_24:
	end_block
	i32.const	$push129=, 32
	i32.add 	$push33=, $7, $pop129
	i32.load	$push128=, 0($pop33)
	tee_local	$push127=, $3=, $pop128
	i32.add 	$push34=, $6, $pop127
	i32.load	$push126=, 28($7)
	tee_local	$push125=, $4=, $pop126
	i32.sub 	$6=, $pop34, $pop125
	i32.sub 	$push35=, $3, $4
	i64.extend_u/i32	$8=, $pop35
.LBB17_25:
	loop    	
	i32.const	$push134=, 1
	i32.add 	$6=, $6, $pop134
	i64.const	$push133=, 7
	i64.shr_u	$push132=, $8, $pop133
	tee_local	$push131=, $8=, $pop132
	i64.const	$push130=, 0
	i64.ne  	$push36=, $pop131, $pop130
	br_if   	0, $pop36
	end_loop
	i32.const	$push137=, 40
	i32.add 	$push136=, $7, $pop137
	tee_local	$push135=, $7=, $pop136
	i32.ne  	$push37=, $pop135, $2
	br_if   	0, $pop37
	end_loop
	i32.store	0($0), $6
.LBB17_28:
	end_block
	i32.const	$push38=, 52
	i32.add 	$push39=, $1, $pop38
	i32.load	$push141=, 0($pop39)
	tee_local	$push140=, $5=, $pop141
	i32.load	$push139=, 48($1)
	tee_local	$push138=, $7=, $pop139
	i32.sub 	$push40=, $pop140, $pop138
	i32.const	$push41=, 4
	i32.shr_s	$push42=, $pop40, $pop41
	i64.extend_u/i32	$8=, $pop42
.LBB17_29:
	loop    	
	i32.const	$push146=, 1
	i32.add 	$6=, $6, $pop146
	i64.const	$push145=, 7
	i64.shr_u	$push144=, $8, $pop145
	tee_local	$push143=, $8=, $pop144
	i64.const	$push142=, 0
	i64.ne  	$push43=, $pop143, $pop142
	br_if   	0, $pop43
	end_loop
	i32.store	0($0), $6
	block   	
	i32.eq  	$push44=, $7, $5
	br_if   	0, $pop44
.LBB17_32:
	loop    	
	i32.const	$push152=, 8
	i32.add 	$push45=, $7, $pop152
	i32.load	$push151=, 0($pop45)
	tee_local	$push150=, $3=, $pop151
	i32.add 	$push46=, $6, $pop150
	i32.const	$push149=, 2
	i32.add 	$push47=, $pop46, $pop149
	i32.load	$push148=, 4($7)
	tee_local	$push147=, $4=, $pop148
	i32.sub 	$6=, $pop47, $pop147
	i32.sub 	$push48=, $3, $4
	i64.extend_u/i32	$8=, $pop48
.LBB17_33:
	loop    	
	i32.const	$push157=, 1
	i32.add 	$6=, $6, $pop157
	i64.const	$push156=, 7
	i64.shr_u	$push155=, $8, $pop156
	tee_local	$push154=, $8=, $pop155
	i64.const	$push153=, 0
	i64.ne  	$push49=, $pop154, $pop153
	br_if   	0, $pop49
	end_loop
	i32.const	$push160=, 16
	i32.add 	$push159=, $7, $pop160
	tee_local	$push158=, $7=, $pop159
	i32.ne  	$push50=, $pop158, $5
	br_if   	0, $pop50
	end_loop
	i32.store	0($0), $6
.LBB17_36:
	end_block
	copy_local	$push161=, $0
	.endfunc
.Lfunc_end17:
	.size	_ZN5eosiolsINS_10datastreamIjEEEERT_S4_RKNS_11transactionE, .Lfunc_end17-_ZN5eosiolsINS_10datastreamIjEEEERT_S4_RKNS_11transactionE

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
	.size	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj, .Lfunc_end18-_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj

	.section	.text._ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_18transaction_headerE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_18transaction_headerE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_18transaction_headerE
	.weak	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_18transaction_headerE
	.type	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_18transaction_headerE,@function
_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_18transaction_headerE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i64, i32
	i32.const	$push49=, 0
	i32.const	$push46=, 0
	i32.load	$push47=, __stack_pointer($pop46)
	i32.const	$push48=, 16
	i32.sub 	$push76=, $pop47, $pop48
	tee_local	$push75=, $7=, $pop76
	i32.store	__stack_pointer($pop49), $pop75
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 3
	i32.gt_s	$push4=, $pop2, $pop3
	i32.const	$push74=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop4, $pop74
	i32.load	$push5=, 4($0)
	i32.const	$push73=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop5, $1, $pop73
	i32.load	$push6=, 4($0)
	i32.const	$push72=, 4
	i32.add 	$push71=, $pop6, $pop72
	tee_local	$push70=, $4=, $pop71
	i32.store	4($0), $pop70
	i32.load	$push7=, 8($0)
	i32.sub 	$push8=, $pop7, $4
	i32.const	$push69=, 1
	i32.gt_s	$push9=, $pop8, $pop69
	i32.const	$push68=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop9, $pop68
	i32.load	$push11=, 4($0)
	i32.const	$push67=, 4
	i32.add 	$push10=, $1, $pop67
	i32.const	$push12=, 2
	i32.call	$drop=, memcpy@FUNCTION, $pop11, $pop10, $pop12
	i32.load	$push13=, 4($0)
	i32.const	$push66=, 2
	i32.add 	$push65=, $pop13, $pop66
	tee_local	$push64=, $4=, $pop65
	i32.store	4($0), $pop64
	i32.load	$push14=, 8($0)
	i32.sub 	$push15=, $pop14, $4
	i32.const	$push63=, 3
	i32.gt_s	$push16=, $pop15, $pop63
	i32.const	$push62=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop16, $pop62
	i32.load	$push18=, 4($0)
	i32.const	$push61=, 8
	i32.add 	$push17=, $1, $pop61
	i32.const	$push60=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop18, $pop17, $pop60
	i32.load	$push19=, 4($0)
	i32.const	$push59=, 4
	i32.add 	$push58=, $pop19, $pop59
	tee_local	$push57=, $5=, $pop58
	i32.store	4($0), $pop57
	i64.load32_u	$6=, 12($1)
.LBB19_1:
	loop    	
	i32.wrap/i64	$4=, $6
	i64.const	$push94=, 7
	i64.shr_u	$push93=, $6, $pop94
	tee_local	$push92=, $6=, $pop93
	i64.const	$push91=, 0
	i64.ne  	$push90=, $pop92, $pop91
	tee_local	$push89=, $2=, $pop90
	i32.const	$push88=, 7
	i32.shl 	$push21=, $pop89, $pop88
	i32.const	$push87=, 127
	i32.and 	$push20=, $4, $pop87
	i32.or  	$push22=, $pop21, $pop20
	i32.store8	14($7), $pop22
	i32.const	$push86=, 8
	i32.add 	$push23=, $0, $pop86
	i32.load	$push24=, 0($pop23)
	i32.sub 	$push25=, $pop24, $5
	i32.const	$push85=, 0
	i32.gt_s	$push26=, $pop25, $pop85
	i32.const	$push84=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop26, $pop84
	i32.const	$push83=, 4
	i32.add 	$push82=, $0, $pop83
	tee_local	$push81=, $4=, $pop82
	i32.load	$push27=, 0($pop81)
	i32.const	$push53=, 14
	i32.add 	$push54=, $7, $pop53
	i32.const	$push80=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop27, $pop54, $pop80
	i32.load	$push28=, 0($4)
	i32.const	$push79=, 1
	i32.add 	$push78=, $pop28, $pop79
	tee_local	$push77=, $5=, $pop78
	i32.store	0($4), $pop77
	br_if   	0, $2
	end_loop
	i32.const	$push29=, 8
	i32.add 	$push104=, $0, $pop29
	tee_local	$push103=, $3=, $pop104
	i32.load	$push30=, 0($pop103)
	i32.sub 	$push31=, $pop30, $5
	i32.const	$push102=, 0
	i32.gt_s	$push32=, $pop31, $pop102
	i32.const	$push101=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop32, $pop101
	i32.const	$push35=, 4
	i32.add 	$push100=, $0, $pop35
	tee_local	$push99=, $4=, $pop100
	i32.load	$push36=, 0($pop99)
	i32.const	$push33=, 16
	i32.add 	$push34=, $1, $pop33
	i32.const	$push98=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop36, $pop34, $pop98
	i32.load	$push37=, 0($4)
	i32.const	$push97=, 1
	i32.add 	$push96=, $pop37, $pop97
	tee_local	$push95=, $5=, $pop96
	i32.store	0($4), $pop95
	i64.load32_u	$6=, 20($1)
.LBB19_3:
	loop    	
	i32.wrap/i64	$2=, $6
	i64.const	$push118=, 7
	i64.shr_u	$push117=, $6, $pop118
	tee_local	$push116=, $6=, $pop117
	i64.const	$push115=, 0
	i64.ne  	$push114=, $pop116, $pop115
	tee_local	$push113=, $1=, $pop114
	i32.const	$push112=, 7
	i32.shl 	$push39=, $pop113, $pop112
	i32.const	$push111=, 127
	i32.and 	$push38=, $2, $pop111
	i32.or  	$push40=, $pop39, $pop38
	i32.store8	15($7), $pop40
	i32.load	$push41=, 0($3)
	i32.sub 	$push42=, $pop41, $5
	i32.const	$push110=, 0
	i32.gt_s	$push43=, $pop42, $pop110
	i32.const	$push109=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop43, $pop109
	i32.load	$push44=, 0($4)
	i32.const	$push55=, 15
	i32.add 	$push56=, $7, $pop55
	i32.const	$push108=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop44, $pop56, $pop108
	i32.load	$push45=, 0($4)
	i32.const	$push107=, 1
	i32.add 	$push106=, $pop45, $pop107
	tee_local	$push105=, $5=, $pop106
	i32.store	0($4), $pop105
	br_if   	0, $1
	end_loop
	i32.const	$push52=, 0
	i32.const	$push50=, 16
	i32.add 	$push51=, $7, $pop50
	i32.store	__stack_pointer($pop52), $pop51
	copy_local	$push119=, $0
	.endfunc
.Lfunc_end19:
	.size	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_18transaction_headerE, .Lfunc_end19-_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_18transaction_headerE

	.section	.text._ZN5eosiolsINS_10datastreamIPcEENS_6actionEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIPcEENS_6actionEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIPcEENS_6actionEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE
	.weak	_ZN5eosiolsINS_10datastreamIPcEENS_6actionEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE
	.type	_ZN5eosiolsINS_10datastreamIPcEENS_6actionEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE,@function
_ZN5eosiolsINS_10datastreamIPcEENS_6actionEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32, i32
	i32.const	$push36=, 0
	i32.const	$push33=, 0
	i32.load	$push34=, __stack_pointer($pop33)
	i32.const	$push35=, 16
	i32.sub 	$push43=, $pop34, $pop35
	tee_local	$push42=, $8=, $pop43
	i32.store	__stack_pointer($pop36), $pop42
	i32.load	$push1=, 4($1)
	i32.load	$push0=, 0($1)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 40
	i32.div_s	$push4=, $pop2, $pop3
	i64.extend_u/i32	$5=, $pop4
	i32.load	$6=, 4($0)
	i32.const	$push8=, 8
	i32.add 	$3=, $0, $pop8
	i32.const	$push12=, 4
	i32.add 	$4=, $0, $pop12
.LBB20_1:
	loop    	
	i32.wrap/i64	$7=, $5
	i64.const	$push57=, 7
	i64.shr_u	$push56=, $5, $pop57
	tee_local	$push55=, $5=, $pop56
	i64.const	$push54=, 0
	i64.ne  	$push53=, $pop55, $pop54
	tee_local	$push52=, $2=, $pop53
	i32.const	$push51=, 7
	i32.shl 	$push6=, $pop52, $pop51
	i32.const	$push50=, 127
	i32.and 	$push5=, $7, $pop50
	i32.or  	$push7=, $pop6, $pop5
	i32.store8	15($8), $pop7
	i32.load	$push9=, 0($3)
	i32.sub 	$push10=, $pop9, $6
	i32.const	$push49=, 0
	i32.gt_s	$push11=, $pop10, $pop49
	i32.const	$push48=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop11, $pop48
	i32.load	$push13=, 0($4)
	i32.const	$push40=, 15
	i32.add 	$push41=, $8, $pop40
	i32.const	$push47=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop13, $pop41, $pop47
	i32.load	$push14=, 0($4)
	i32.const	$push46=, 1
	i32.add 	$push45=, $pop14, $pop46
	tee_local	$push44=, $6=, $pop45
	i32.store	0($4), $pop44
	br_if   	0, $2
	end_loop
	block   	
	i32.load	$push62=, 0($1)
	tee_local	$push61=, $7=, $pop62
	i32.const	$push60=, 4
	i32.add 	$push15=, $1, $pop60
	i32.load	$push59=, 0($pop15)
	tee_local	$push58=, $3=, $pop59
	i32.eq  	$push16=, $pop61, $pop58
	br_if   	0, $pop16
	i32.const	$push63=, 4
	i32.add 	$4=, $0, $pop63
.LBB20_4:
	loop    	
	i32.const	$push82=, 8
	i32.add 	$push81=, $0, $pop82
	tee_local	$push80=, $2=, $pop81
	i32.load	$push17=, 0($pop80)
	i32.sub 	$push18=, $pop17, $6
	i32.const	$push79=, 7
	i32.gt_s	$push19=, $pop18, $pop79
	i32.const	$push78=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop19, $pop78
	i32.load	$push20=, 0($4)
	i32.const	$push77=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop20, $7, $pop77
	i32.load	$push21=, 0($4)
	i32.const	$push76=, 8
	i32.add 	$push75=, $pop21, $pop76
	tee_local	$push74=, $6=, $pop75
	i32.store	0($4), $pop74
	i32.load	$push22=, 0($2)
	i32.sub 	$push23=, $pop22, $6
	i32.const	$push73=, 7
	i32.gt_s	$push24=, $pop23, $pop73
	i32.const	$push72=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop24, $pop72
	i32.load	$push26=, 0($4)
	i32.const	$push71=, 8
	i32.add 	$push25=, $7, $pop71
	i32.const	$push70=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop26, $pop25, $pop70
	i32.load	$push27=, 0($4)
	i32.const	$push69=, 8
	i32.add 	$push28=, $pop27, $pop69
	i32.store	0($4), $pop28
	i32.const	$push68=, 16
	i32.add 	$push30=, $7, $pop68
	i32.call	$push31=, _ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE@FUNCTION, $0, $pop30
	i32.const	$push67=, 28
	i32.add 	$push29=, $7, $pop67
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE@FUNCTION, $pop31, $pop29
	i32.const	$push66=, 40
	i32.add 	$push65=, $7, $pop66
	tee_local	$push64=, $7=, $pop65
	i32.eq  	$push32=, $pop64, $3
	br_if   	1, $pop32
	i32.load	$6=, 0($4)
	br      	0
.LBB20_6:
	end_loop
	end_block
	i32.const	$push39=, 0
	i32.const	$push37=, 16
	i32.add 	$push38=, $8, $pop37
	i32.store	__stack_pointer($pop39), $pop38
	copy_local	$push83=, $0
	.endfunc
.Lfunc_end20:
	.size	_ZN5eosiolsINS_10datastreamIPcEENS_6actionEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE, .Lfunc_end20-_ZN5eosiolsINS_10datastreamIPcEENS_6actionEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE

	.section	.text._ZN5eosiolsINS_10datastreamIPcEENSt3__15tupleIJtNS4_6vectorIcNS4_9allocatorIcEEEEEEEEERT_SC_RKNS6_IT0_NS7_ISD_EEEE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIPcEENSt3__15tupleIJtNS4_6vectorIcNS4_9allocatorIcEEEEEEEEERT_SC_RKNS6_IT0_NS7_ISD_EEEE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIPcEENSt3__15tupleIJtNS4_6vectorIcNS4_9allocatorIcEEEEEEEEERT_SC_RKNS6_IT0_NS7_ISD_EEEE
	.weak	_ZN5eosiolsINS_10datastreamIPcEENSt3__15tupleIJtNS4_6vectorIcNS4_9allocatorIcEEEEEEEEERT_SC_RKNS6_IT0_NS7_ISD_EEEE
	.type	_ZN5eosiolsINS_10datastreamIPcEENSt3__15tupleIJtNS4_6vectorIcNS4_9allocatorIcEEEEEEEEERT_SC_RKNS6_IT0_NS7_ISD_EEEE,@function
_ZN5eosiolsINS_10datastreamIPcEENSt3__15tupleIJtNS4_6vectorIcNS4_9allocatorIcEEEEEEEEERT_SC_RKNS6_IT0_NS7_ISD_EEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32
	i32.const	$push27=, 0
	i32.const	$push24=, 0
	i32.load	$push25=, __stack_pointer($pop24)
	i32.const	$push26=, 16
	i32.sub 	$push35=, $pop25, $pop26
	tee_local	$push34=, $7=, $pop35
	i32.store	__stack_pointer($pop27), $pop34
	i32.load	$push1=, 4($1)
	i32.load	$push0=, 0($1)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push33=, 4
	i32.shr_s	$push3=, $pop2, $pop33
	i64.extend_u/i32	$5=, $pop3
	i32.load	$6=, 4($0)
	i32.const	$push7=, 8
	i32.add 	$3=, $0, $pop7
.LBB21_1:
	loop    	
	i32.wrap/i64	$4=, $5
	i64.const	$push52=, 7
	i64.shr_u	$push51=, $5, $pop52
	tee_local	$push50=, $5=, $pop51
	i64.const	$push49=, 0
	i64.ne  	$push48=, $pop50, $pop49
	tee_local	$push47=, $2=, $pop48
	i32.const	$push46=, 7
	i32.shl 	$push5=, $pop47, $pop46
	i32.const	$push45=, 127
	i32.and 	$push4=, $4, $pop45
	i32.or  	$push6=, $pop5, $pop4
	i32.store8	15($7), $pop6
	i32.load	$push8=, 0($3)
	i32.sub 	$push9=, $pop8, $6
	i32.const	$push44=, 0
	i32.gt_s	$push10=, $pop9, $pop44
	i32.const	$push43=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop10, $pop43
	i32.const	$push42=, 4
	i32.add 	$push41=, $0, $pop42
	tee_local	$push40=, $4=, $pop41
	i32.load	$push11=, 0($pop40)
	i32.const	$push31=, 15
	i32.add 	$push32=, $7, $pop31
	i32.const	$push39=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop11, $pop32, $pop39
	i32.load	$push12=, 0($4)
	i32.const	$push38=, 1
	i32.add 	$push37=, $pop12, $pop38
	tee_local	$push36=, $6=, $pop37
	i32.store	0($4), $pop36
	br_if   	0, $2
	end_loop
	block   	
	i32.load	$push57=, 0($1)
	tee_local	$push56=, $4=, $pop57
	i32.const	$push55=, 4
	i32.add 	$push13=, $1, $pop55
	i32.load	$push54=, 0($pop13)
	tee_local	$push53=, $2=, $pop54
	i32.eq  	$push14=, $pop56, $pop53
	br_if   	0, $pop14
	i32.const	$push15=, 8
	i32.add 	$3=, $0, $pop15
.LBB21_4:
	loop    	
	i32.load	$push16=, 0($3)
	i32.sub 	$push17=, $pop16, $6
	i32.const	$push68=, 1
	i32.gt_s	$push18=, $pop17, $pop68
	i32.const	$push67=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop18, $pop67
	i32.const	$push66=, 4
	i32.add 	$push65=, $0, $pop66
	tee_local	$push64=, $6=, $pop65
	i32.load	$push19=, 0($pop64)
	i32.const	$push63=, 2
	i32.call	$drop=, memcpy@FUNCTION, $pop19, $4, $pop63
	i32.load	$push20=, 0($6)
	i32.const	$push62=, 2
	i32.add 	$push21=, $pop20, $pop62
	i32.store	0($6), $pop21
	i32.const	$push61=, 4
	i32.add 	$push22=, $4, $pop61
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE@FUNCTION, $0, $pop22
	i32.const	$push60=, 16
	i32.add 	$push59=, $4, $pop60
	tee_local	$push58=, $4=, $pop59
	i32.eq  	$push23=, $pop58, $2
	br_if   	1, $pop23
	i32.load	$6=, 0($6)
	br      	0
.LBB21_6:
	end_loop
	end_block
	i32.const	$push30=, 0
	i32.const	$push28=, 16
	i32.add 	$push29=, $7, $pop28
	i32.store	__stack_pointer($pop30), $pop29
	copy_local	$push69=, $0
	.endfunc
.Lfunc_end21:
	.size	_ZN5eosiolsINS_10datastreamIPcEENSt3__15tupleIJtNS4_6vectorIcNS4_9allocatorIcEEEEEEEEERT_SC_RKNS6_IT0_NS7_ISD_EEEE, .Lfunc_end21-_ZN5eosiolsINS_10datastreamIPcEENSt3__15tupleIJtNS4_6vectorIcNS4_9allocatorIcEEEEEEEEERT_SC_RKNS6_IT0_NS7_ISD_EEEE

	.section	.text._ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE
	.weak	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE
	.type	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE,@function
_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i64, i32
	i32.const	$push28=, 0
	i32.const	$push25=, 0
	i32.load	$push26=, __stack_pointer($pop25)
	i32.const	$push27=, 16
	i32.sub 	$push35=, $pop26, $pop27
	tee_local	$push34=, $8=, $pop35
	i32.store	__stack_pointer($pop28), $pop34
	i32.load	$push1=, 4($1)
	i32.load	$push0=, 0($1)
	i32.sub 	$push2=, $pop1, $pop0
	i64.extend_u/i32	$7=, $pop2
	i32.load	$6=, 4($0)
	i32.const	$push6=, 8
	i32.add 	$4=, $0, $pop6
	i32.const	$push10=, 4
	i32.add 	$5=, $0, $pop10
.LBB22_1:
	loop    	
	i32.wrap/i64	$2=, $7
	i64.const	$push49=, 7
	i64.shr_u	$push48=, $7, $pop49
	tee_local	$push47=, $7=, $pop48
	i64.const	$push46=, 0
	i64.ne  	$push45=, $pop47, $pop46
	tee_local	$push44=, $3=, $pop45
	i32.const	$push43=, 7
	i32.shl 	$push4=, $pop44, $pop43
	i32.const	$push42=, 127
	i32.and 	$push3=, $2, $pop42
	i32.or  	$push5=, $pop4, $pop3
	i32.store8	15($8), $pop5
	i32.load	$push7=, 0($4)
	i32.sub 	$push8=, $pop7, $6
	i32.const	$push41=, 0
	i32.gt_s	$push9=, $pop8, $pop41
	i32.const	$push40=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop9, $pop40
	i32.load	$push11=, 0($5)
	i32.const	$push32=, 15
	i32.add 	$push33=, $8, $pop32
	i32.const	$push39=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop11, $pop33, $pop39
	i32.load	$push12=, 0($5)
	i32.const	$push38=, 1
	i32.add 	$push37=, $pop12, $pop38
	tee_local	$push36=, $6=, $pop37
	i32.store	0($5), $pop36
	br_if   	0, $3
	end_loop
	i32.const	$push16=, 8
	i32.add 	$push17=, $0, $pop16
	i32.load	$push18=, 0($pop17)
	i32.sub 	$push19=, $pop18, $6
	i32.const	$push13=, 4
	i32.add 	$push14=, $1, $pop13
	i32.load	$push15=, 0($pop14)
	i32.load	$push56=, 0($1)
	tee_local	$push55=, $2=, $pop56
	i32.sub 	$push54=, $pop15, $pop55
	tee_local	$push53=, $5=, $pop54
	i32.ge_s	$push20=, $pop19, $pop53
	i32.const	$push21=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop20, $pop21
	i32.const	$push52=, 4
	i32.add 	$push51=, $0, $pop52
	tee_local	$push50=, $6=, $pop51
	i32.load	$push22=, 0($pop50)
	i32.call	$drop=, memcpy@FUNCTION, $pop22, $2, $5
	i32.load	$push23=, 0($6)
	i32.add 	$push24=, $pop23, $5
	i32.store	0($6), $pop24
	i32.const	$push31=, 0
	i32.const	$push29=, 16
	i32.add 	$push30=, $8, $pop29
	i32.store	__stack_pointer($pop31), $pop30
	copy_local	$push57=, $0
	.endfunc
.Lfunc_end22:
	.size	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE, .Lfunc_end22-_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE

	.section	.text._ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE
	.weak	_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE
	.type	_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE,@function
_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i64, i32, i32, i32
	i32.const	$push30=, 0
	i32.const	$push27=, 0
	i32.load	$push28=, __stack_pointer($pop27)
	i32.const	$push29=, 16
	i32.sub 	$push38=, $pop28, $pop29
	tee_local	$push37=, $7=, $pop38
	i32.store	__stack_pointer($pop30), $pop37
	i32.load	$push1=, 4($1)
	i32.load	$push0=, 0($1)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push36=, 4
	i32.shr_s	$push3=, $pop2, $pop36
	i64.extend_u/i32	$4=, $pop3
	i32.load	$5=, 4($0)
	i32.const	$push7=, 8
	i32.add 	$2=, $0, $pop7
.LBB23_1:
	loop    	
	i32.wrap/i64	$3=, $4
	i64.const	$push55=, 7
	i64.shr_u	$push54=, $4, $pop55
	tee_local	$push53=, $4=, $pop54
	i64.const	$push52=, 0
	i64.ne  	$push51=, $pop53, $pop52
	tee_local	$push50=, $6=, $pop51
	i32.const	$push49=, 7
	i32.shl 	$push5=, $pop50, $pop49
	i32.const	$push48=, 127
	i32.and 	$push4=, $3, $pop48
	i32.or  	$push6=, $pop5, $pop4
	i32.store8	15($7), $pop6
	i32.load	$push8=, 0($2)
	i32.sub 	$push9=, $pop8, $5
	i32.const	$push47=, 0
	i32.gt_s	$push10=, $pop9, $pop47
	i32.const	$push46=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop10, $pop46
	i32.const	$push45=, 4
	i32.add 	$push44=, $0, $pop45
	tee_local	$push43=, $3=, $pop44
	i32.load	$push11=, 0($pop43)
	i32.const	$push34=, 15
	i32.add 	$push35=, $7, $pop34
	i32.const	$push42=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop11, $pop35, $pop42
	i32.load	$push12=, 0($3)
	i32.const	$push41=, 1
	i32.add 	$push40=, $pop12, $pop41
	tee_local	$push39=, $5=, $pop40
	i32.store	0($3), $pop39
	br_if   	0, $6
	end_loop
	block   	
	i32.load	$push60=, 0($1)
	tee_local	$push59=, $6=, $pop60
	i32.const	$push58=, 4
	i32.add 	$push13=, $1, $pop58
	i32.load	$push57=, 0($pop13)
	tee_local	$push56=, $1=, $pop57
	i32.eq  	$push14=, $pop59, $pop56
	br_if   	0, $pop14
	i32.const	$push61=, 4
	i32.add 	$3=, $0, $pop61
.LBB23_4:
	loop    	
	i32.const	$push80=, 8
	i32.add 	$push79=, $0, $pop80
	tee_local	$push78=, $2=, $pop79
	i32.load	$push15=, 0($pop78)
	i32.sub 	$push16=, $pop15, $5
	i32.const	$push77=, 7
	i32.gt_s	$push17=, $pop16, $pop77
	i32.const	$push76=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop17, $pop76
	i32.load	$push18=, 0($3)
	i32.const	$push75=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop18, $6, $pop75
	i32.load	$push19=, 0($3)
	i32.const	$push74=, 8
	i32.add 	$push73=, $pop19, $pop74
	tee_local	$push72=, $5=, $pop73
	i32.store	0($3), $pop72
	i32.load	$push20=, 0($2)
	i32.sub 	$push21=, $pop20, $5
	i32.const	$push71=, 7
	i32.gt_s	$push22=, $pop21, $pop71
	i32.const	$push70=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop22, $pop70
	i32.load	$push24=, 0($3)
	i32.const	$push69=, 8
	i32.add 	$push23=, $6, $pop69
	i32.const	$push68=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop24, $pop23, $pop68
	i32.load	$push25=, 0($3)
	i32.const	$push67=, 8
	i32.add 	$push66=, $pop25, $pop67
	tee_local	$push65=, $5=, $pop66
	i32.store	0($3), $pop65
	i32.const	$push64=, 16
	i32.add 	$push63=, $6, $pop64
	tee_local	$push62=, $6=, $pop63
	i32.ne  	$push26=, $pop62, $1
	br_if   	0, $pop26
.LBB23_5:
	end_loop
	end_block
	i32.const	$push33=, 0
	i32.const	$push31=, 16
	i32.add 	$push32=, $7, $pop31
	i32.store	__stack_pointer($pop33), $pop32
	copy_local	$push81=, $0
	.endfunc
.Lfunc_end23:
	.size	_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE, .Lfunc_end23-_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE

	.section	.text._ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_RKN5eosio5assetERKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEEEEEZNS7_lsINS7_10datastreamIPcEENS7_5token13transfer_argsELPv0EEERT_ST_RKT0_EUlRKSS_E_JLj0ELj1ELj2ELj3EEEEvST_OSU_NSB_16integer_sequenceIjJXspT1_EEEENSB_17integral_constantIbLb0EEE,"axG",@progbits,_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_RKN5eosio5assetERKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEEEEEZNS7_lsINS7_10datastreamIPcEENS7_5token13transfer_argsELPv0EEERT_ST_RKT0_EUlRKSS_E_JLj0ELj1ELj2ELj3EEEEvST_OSU_NSB_16integer_sequenceIjJXspT1_EEEENSB_17integral_constantIbLb0EEE,comdat
	.hidden	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_RKN5eosio5assetERKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEEEEEZNS7_lsINS7_10datastreamIPcEENS7_5token13transfer_argsELPv0EEERT_ST_RKT0_EUlRKSS_E_JLj0ELj1ELj2ELj3EEEEvST_OSU_NSB_16integer_sequenceIjJXspT1_EEEENSB_17integral_constantIbLb0EEE
	.weak	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_RKN5eosio5assetERKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEEEEEZNS7_lsINS7_10datastreamIPcEENS7_5token13transfer_argsELPv0EEERT_ST_RKT0_EUlRKSS_E_JLj0ELj1ELj2ELj3EEEEvST_OSU_NSB_16integer_sequenceIjJXspT1_EEEENSB_17integral_constantIbLb0EEE
	.type	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_RKN5eosio5assetERKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEEEEEZNS7_lsINS7_10datastreamIPcEENS7_5token13transfer_argsELPv0EEERT_ST_RKT0_EUlRKSS_E_JLj0ELj1ELj2ELj3EEEEvST_OSU_NSB_16integer_sequenceIjJXspT1_EEEENSB_17integral_constantIbLb0EEE,@function
_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_RKN5eosio5assetERKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEEEEEZNS7_lsINS7_10datastreamIPcEENS7_5token13transfer_argsELPv0EEERT_ST_RKT0_EUlRKSS_E_JLj0ELj1ELj2ELj3EEEEvST_OSU_NSB_16integer_sequenceIjJXspT1_EEEENSB_17integral_constantIbLb0EEE:
	.param  	i32, i32
	.local  	i32, i32, i32
	i32.load	$3=, 0($0)
	i32.load	$push53=, 0($1)
	tee_local	$push52=, $2=, $pop53
	i32.load	$push1=, 8($pop52)
	i32.load	$push0=, 4($2)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_s	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($2)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop6, $3, $pop7
	i32.load	$push8=, 4($2)
	i32.const	$push51=, 8
	i32.add 	$push9=, $pop8, $pop51
	i32.store	4($2), $pop9
	i32.load	$3=, 4($0)
	i32.load	$push50=, 0($1)
	tee_local	$push49=, $2=, $pop50
	i32.load	$push11=, 8($pop49)
	i32.load	$push10=, 4($2)
	i32.sub 	$push12=, $pop11, $pop10
	i32.const	$push48=, 7
	i32.gt_s	$push13=, $pop12, $pop48
	i32.const	$push47=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop13, $pop47
	i32.load	$push14=, 4($2)
	i32.const	$push46=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop14, $3, $pop46
	i32.load	$push15=, 4($2)
	i32.const	$push45=, 8
	i32.add 	$push16=, $pop15, $pop45
	i32.store	4($2), $pop16
	i32.load	$3=, 8($0)
	i32.load	$push44=, 0($1)
	tee_local	$push43=, $2=, $pop44
	i32.load	$push18=, 8($pop43)
	i32.load	$push17=, 4($2)
	i32.sub 	$push19=, $pop18, $pop17
	i32.const	$push42=, 7
	i32.gt_s	$push20=, $pop19, $pop42
	i32.const	$push41=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop20, $pop41
	i32.load	$push21=, 4($2)
	i32.const	$push40=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop21, $3, $pop40
	i32.load	$push22=, 4($2)
	i32.const	$push39=, 8
	i32.add 	$push38=, $pop22, $pop39
	tee_local	$push37=, $4=, $pop38
	i32.store	4($2), $pop37
	i32.load	$push23=, 8($2)
	i32.sub 	$push24=, $pop23, $4
	i32.const	$push36=, 7
	i32.gt_s	$push25=, $pop24, $pop36
	i32.const	$push35=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop25, $pop35
	i32.load	$push27=, 4($2)
	i32.const	$push34=, 8
	i32.add 	$push26=, $3, $pop34
	i32.const	$push33=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop27, $pop26, $pop33
	i32.load	$push28=, 4($2)
	i32.const	$push32=, 8
	i32.add 	$push29=, $pop28, $pop32
	i32.store	4($2), $pop29
	i32.load	$push30=, 0($1)
	i32.load	$push31=, 12($0)
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $pop30, $pop31
	.endfunc
.Lfunc_end24:
	.size	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_RKN5eosio5assetERKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEEEEEZNS7_lsINS7_10datastreamIPcEENS7_5token13transfer_argsELPv0EEERT_ST_RKT0_EUlRKSS_E_JLj0ELj1ELj2ELj3EEEEvST_OSU_NSB_16integer_sequenceIjJXspT1_EEEENSB_17integral_constantIbLb0EEE, .Lfunc_end24-_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_RKN5eosio5assetERKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEEEEEZNS7_lsINS7_10datastreamIPcEENS7_5token13transfer_argsELPv0EEERT_ST_RKT0_EUlRKSS_E_JLj0ELj1ELj2ELj3EEEEvST_OSU_NSB_16integer_sequenceIjJXspT1_EEEENSB_17integral_constantIbLb0EEE

	.section	.text._ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE
	.weak	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE
	.type	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE,@function
_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i64, i32
	i32.const	$push31=, 0
	i32.const	$push28=, 0
	i32.load	$push29=, __stack_pointer($pop28)
	i32.const	$push30=, 16
	i32.sub 	$push42=, $pop29, $pop30
	tee_local	$push41=, $8=, $pop42
	i32.store	__stack_pointer($pop31), $pop41
	i32.load	$push2=, 4($1)
	i32.load8_u	$push40=, 0($1)
	tee_local	$push39=, $5=, $pop40
	i32.const	$push38=, 1
	i32.shr_u	$push1=, $pop39, $pop38
	i32.const	$push37=, 1
	i32.and 	$push0=, $5, $pop37
	i32.select	$push3=, $pop2, $pop1, $pop0
	i64.extend_u/i32	$7=, $pop3
	i32.load	$6=, 4($0)
	i32.const	$push7=, 8
	i32.add 	$4=, $0, $pop7
	i32.const	$push11=, 4
	i32.add 	$5=, $0, $pop11
.LBB25_1:
	loop    	
	i32.wrap/i64	$2=, $7
	i64.const	$push56=, 7
	i64.shr_u	$push55=, $7, $pop56
	tee_local	$push54=, $7=, $pop55
	i64.const	$push53=, 0
	i64.ne  	$push52=, $pop54, $pop53
	tee_local	$push51=, $3=, $pop52
	i32.const	$push50=, 7
	i32.shl 	$push5=, $pop51, $pop50
	i32.const	$push49=, 127
	i32.and 	$push4=, $2, $pop49
	i32.or  	$push6=, $pop5, $pop4
	i32.store8	15($8), $pop6
	i32.load	$push8=, 0($4)
	i32.sub 	$push9=, $pop8, $6
	i32.const	$push48=, 0
	i32.gt_s	$push10=, $pop9, $pop48
	i32.const	$push47=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop10, $pop47
	i32.load	$push12=, 0($5)
	i32.const	$push35=, 15
	i32.add 	$push36=, $8, $pop35
	i32.const	$push46=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop12, $pop36, $pop46
	i32.load	$push13=, 0($5)
	i32.const	$push45=, 1
	i32.add 	$push44=, $pop13, $pop45
	tee_local	$push43=, $6=, $pop44
	i32.store	0($5), $pop43
	br_if   	0, $3
	end_loop
	block   	
	i32.const	$push65=, 4
	i32.add 	$push15=, $1, $pop65
	i32.load	$push16=, 0($pop15)
	i32.load8_u	$push64=, 0($1)
	tee_local	$push63=, $5=, $pop64
	i32.const	$push62=, 1
	i32.shr_u	$push14=, $pop63, $pop62
	i32.const	$push61=, 1
	i32.and 	$push60=, $5, $pop61
	tee_local	$push59=, $2=, $pop60
	i32.select	$push58=, $pop16, $pop14, $pop59
	tee_local	$push57=, $5=, $pop58
	i32.eqz 	$push70=, $pop57
	br_if   	0, $pop70
	i32.load	$3=, 8($1)
	i32.const	$push17=, 8
	i32.add 	$push18=, $0, $pop17
	i32.load	$push19=, 0($pop18)
	i32.sub 	$push20=, $pop19, $6
	i32.ge_s	$push21=, $pop20, $5
	i32.const	$push22=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop21, $pop22
	i32.const	$push69=, 4
	i32.add 	$push68=, $0, $pop69
	tee_local	$push67=, $6=, $pop68
	i32.load	$push25=, 0($pop67)
	i32.const	$push66=, 1
	i32.add 	$push23=, $1, $pop66
	i32.select	$push24=, $3, $pop23, $2
	i32.call	$drop=, memcpy@FUNCTION, $pop25, $pop24, $5
	i32.load	$push26=, 0($6)
	i32.add 	$push27=, $pop26, $5
	i32.store	0($6), $pop27
.LBB25_4:
	end_block
	i32.const	$push34=, 0
	i32.const	$push32=, 16
	i32.add 	$push33=, $8, $pop32
	i32.store	__stack_pointer($pop34), $pop33
	copy_local	$push71=, $0
	.endfunc
.Lfunc_end25:
	.size	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE, .Lfunc_end25-_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE

	.section	.text._ZN5eosio6unpackINS_5token13transfer_argsEEET_PKcj,"axG",@progbits,_ZN5eosio6unpackINS_5token13transfer_argsEEET_PKcj,comdat
	.hidden	_ZN5eosio6unpackINS_5token13transfer_argsEEET_PKcj
	.weak	_ZN5eosio6unpackINS_5token13transfer_argsEEET_PKcj
	.type	_ZN5eosio6unpackINS_5token13transfer_argsEEET_PKcj,@function
_ZN5eosio6unpackINS_5token13transfer_argsEEET_PKcj:
	.param  	i32, i32, i32
	.local  	i64, i32, i32, i32
	i32.const	$push28=, 0
	i32.const	$push25=, 0
	i32.load	$push26=, __stack_pointer($pop25)
	i32.const	$push27=, 48
	i32.sub 	$push42=, $pop26, $pop27
	tee_local	$push41=, $6=, $pop42
	i32.store	__stack_pointer($pop28), $pop41
	i64.const	$push40=, 0
	i64.store	16($0), $pop40
	i32.const	$push39=, 24
	i32.add 	$push0=, $0, $pop39
	i64.const	$push1=, 1398362884
	i64.store	0($pop0), $pop1
	i32.const	$push38=, 1
	i32.const	$push2=, .L.str.19
	call    	eosio_assert@FUNCTION, $pop38, $pop2
	i64.const	$3=, 5462355
	i32.const	$4=, 0
.LBB26_1:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push3=, $3
	i32.const	$push45=, 24
	i32.shl 	$push4=, $pop3, $pop45
	i32.const	$push44=, -1073741825
	i32.add 	$push5=, $pop4, $pop44
	i32.const	$push43=, 452984830
	i32.gt_u	$push6=, $pop5, $pop43
	br_if   	1, $pop6
	block   	
	i64.const	$push50=, 8
	i64.shr_u	$push49=, $3, $pop50
	tee_local	$push48=, $3=, $pop49
	i64.const	$push47=, 255
	i64.and 	$push7=, $pop48, $pop47
	i64.const	$push46=, 0
	i64.ne  	$push8=, $pop7, $pop46
	br_if   	0, $pop8
.LBB26_3:
	loop    	
	i64.const	$push55=, 8
	i64.shr_u	$push54=, $3, $pop55
	tee_local	$push53=, $3=, $pop54
	i64.const	$push52=, 255
	i64.and 	$push9=, $pop53, $pop52
	i64.const	$push51=, 0
	i64.ne  	$push10=, $pop9, $pop51
	br_if   	3, $pop10
	i32.const	$push59=, 1
	i32.add 	$push58=, $4, $pop59
	tee_local	$push57=, $4=, $pop58
	i32.const	$push56=, 7
	i32.lt_s	$push11=, $pop57, $pop56
	br_if   	0, $pop11
.LBB26_5:
	end_loop
	end_block
	i32.const	$5=, 1
	i32.const	$push63=, 1
	i32.add 	$push62=, $4, $pop63
	tee_local	$push61=, $4=, $pop62
	i32.const	$push60=, 7
	i32.lt_s	$push12=, $pop61, $pop60
	br_if   	0, $pop12
	br      	2
.LBB26_6:
	end_loop
	end_block
	i32.const	$5=, 0
.LBB26_7:
	end_block
	i32.const	$push13=, .L.str.20
	call    	eosio_assert@FUNCTION, $5, $pop13
	i32.const	$push14=, 40
	i32.add 	$push15=, $0, $pop14
	i32.const	$push16=, 0
	i32.store	0($pop15), $pop16
	i64.const	$push17=, 0
	i64.store	32($0):p2align=2, $pop17
	i32.store	12($6), $1
	i32.store	8($6), $1
	i32.add 	$push18=, $1, $2
	i32.store	16($6), $pop18
	i32.const	$push32=, 8
	i32.add 	$push33=, $6, $pop32
	i32.store	24($6), $pop33
	i32.const	$push19=, 8
	i32.add 	$push20=, $0, $pop19
	i32.store	36($6), $pop20
	i32.store	32($6), $0
	i32.const	$push21=, 16
	i32.add 	$push22=, $0, $pop21
	i32.store	40($6), $pop22
	i32.const	$push23=, 32
	i32.add 	$push24=, $0, $pop23
	i32.store	44($6), $pop24
	i32.const	$push34=, 32
	i32.add 	$push35=, $6, $pop34
	i32.const	$push36=, 24
	i32.add 	$push37=, $6, $pop36
	call    	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyS5_RN5eosio5assetERNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEEEEZNS6_rsINS6_10datastreamIPKcEENS6_5token13transfer_argsELPv0EEERT_SR_RT0_EUlSR_E_JLj0ELj1ELj2ELj3EEEEvSR_OSS_NS9_16integer_sequenceIjJXspT1_EEEENS9_17integral_constantIbLb0EEE@FUNCTION, $pop35, $pop37
	i32.const	$push31=, 0
	i32.const	$push29=, 48
	i32.add 	$push30=, $6, $pop29
	i32.store	__stack_pointer($pop31), $pop30
	.endfunc
.Lfunc_end26:
	.size	_ZN5eosio6unpackINS_5token13transfer_argsEEET_PKcj, .Lfunc_end26-_ZN5eosio6unpackINS_5token13transfer_argsEEET_PKcj

	.section	.text._ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyS5_RN5eosio5assetERNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEEEEZNS6_rsINS6_10datastreamIPKcEENS6_5token13transfer_argsELPv0EEERT_SR_RT0_EUlSR_E_JLj0ELj1ELj2ELj3EEEEvSR_OSS_NS9_16integer_sequenceIjJXspT1_EEEENS9_17integral_constantIbLb0EEE,"axG",@progbits,_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyS5_RN5eosio5assetERNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEEEEZNS6_rsINS6_10datastreamIPKcEENS6_5token13transfer_argsELPv0EEERT_SR_RT0_EUlSR_E_JLj0ELj1ELj2ELj3EEEEvSR_OSS_NS9_16integer_sequenceIjJXspT1_EEEENS9_17integral_constantIbLb0EEE,comdat
	.hidden	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyS5_RN5eosio5assetERNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEEEEZNS6_rsINS6_10datastreamIPKcEENS6_5token13transfer_argsELPv0EEERT_SR_RT0_EUlSR_E_JLj0ELj1ELj2ELj3EEEEvSR_OSS_NS9_16integer_sequenceIjJXspT1_EEEENS9_17integral_constantIbLb0EEE
	.weak	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyS5_RN5eosio5assetERNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEEEEZNS6_rsINS6_10datastreamIPKcEENS6_5token13transfer_argsELPv0EEERT_SR_RT0_EUlSR_E_JLj0ELj1ELj2ELj3EEEEvSR_OSS_NS9_16integer_sequenceIjJXspT1_EEEENS9_17integral_constantIbLb0EEE
	.type	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyS5_RN5eosio5assetERNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEEEEZNS6_rsINS6_10datastreamIPKcEENS6_5token13transfer_argsELPv0EEERT_SR_RT0_EUlSR_E_JLj0ELj1ELj2ELj3EEEEvSR_OSS_NS9_16integer_sequenceIjJXspT1_EEEENS9_17integral_constantIbLb0EEE,@function
_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyS5_RN5eosio5assetERNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEEEEZNS6_rsINS6_10datastreamIPKcEENS6_5token13transfer_argsELPv0EEERT_SR_RT0_EUlSR_E_JLj0ELj1ELj2ELj3EEEEvSR_OSS_NS9_16integer_sequenceIjJXspT1_EEEENS9_17integral_constantIbLb0EEE:
	.param  	i32, i32
	.local  	i32, i32, i32
	i32.load	$3=, 0($0)
	i32.load	$push53=, 0($1)
	tee_local	$push52=, $2=, $pop53
	i32.load	$push1=, 8($pop52)
	i32.load	$push0=, 4($2)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($2)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $3, $pop6, $pop7
	i32.load	$push8=, 4($2)
	i32.const	$push51=, 8
	i32.add 	$push9=, $pop8, $pop51
	i32.store	4($2), $pop9
	i32.load	$3=, 4($0)
	i32.load	$push50=, 0($1)
	tee_local	$push49=, $2=, $pop50
	i32.load	$push11=, 8($pop49)
	i32.load	$push10=, 4($2)
	i32.sub 	$push12=, $pop11, $pop10
	i32.const	$push48=, 7
	i32.gt_u	$push13=, $pop12, $pop48
	i32.const	$push47=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop13, $pop47
	i32.load	$push14=, 4($2)
	i32.const	$push46=, 8
	i32.call	$drop=, memcpy@FUNCTION, $3, $pop14, $pop46
	i32.load	$push15=, 4($2)
	i32.const	$push45=, 8
	i32.add 	$push16=, $pop15, $pop45
	i32.store	4($2), $pop16
	i32.load	$3=, 8($0)
	i32.load	$push44=, 0($1)
	tee_local	$push43=, $2=, $pop44
	i32.load	$push18=, 8($pop43)
	i32.load	$push17=, 4($2)
	i32.sub 	$push19=, $pop18, $pop17
	i32.const	$push42=, 7
	i32.gt_u	$push20=, $pop19, $pop42
	i32.const	$push41=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop20, $pop41
	i32.load	$push21=, 4($2)
	i32.const	$push40=, 8
	i32.call	$drop=, memcpy@FUNCTION, $3, $pop21, $pop40
	i32.load	$push22=, 4($2)
	i32.const	$push39=, 8
	i32.add 	$push38=, $pop22, $pop39
	tee_local	$push37=, $4=, $pop38
	i32.store	4($2), $pop37
	i32.load	$push23=, 8($2)
	i32.sub 	$push24=, $pop23, $4
	i32.const	$push36=, 7
	i32.gt_u	$push25=, $pop24, $pop36
	i32.const	$push35=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop25, $pop35
	i32.const	$push34=, 8
	i32.add 	$push26=, $3, $pop34
	i32.load	$push27=, 4($2)
	i32.const	$push33=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop26, $pop27, $pop33
	i32.load	$push28=, 4($2)
	i32.const	$push32=, 8
	i32.add 	$push29=, $pop28, $pop32
	i32.store	4($2), $pop29
	i32.load	$push30=, 0($1)
	i32.load	$push31=, 12($0)
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop30, $pop31
	.endfunc
.Lfunc_end27:
	.size	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyS5_RN5eosio5assetERNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEEEEZNS6_rsINS6_10datastreamIPKcEENS6_5token13transfer_argsELPv0EEERT_SR_RT0_EUlSR_E_JLj0ELj1ELj2ELj3EEEEvSR_OSS_NS9_16integer_sequenceIjJXspT1_EEEENS9_17integral_constantIbLb0EEE, .Lfunc_end27-_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyS5_RN5eosio5assetERNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEEEEZNS6_rsINS6_10datastreamIPKcEENS6_5token13transfer_argsELPv0EEERT_SR_RT0_EUlSR_E_JLj0ELj1ELj2ELj3EEEEvSR_OSS_NS9_16integer_sequenceIjJXspT1_EEEENS9_17integral_constantIbLb0EEE

	.section	.text._ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
	.weak	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
	.type	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE,@function
_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32
	i32.const	$push38=, 0
	i32.const	$push35=, 0
	i32.load	$push36=, __stack_pointer($pop35)
	i32.const	$push37=, 32
	i32.sub 	$push51=, $pop36, $pop37
	tee_local	$push50=, $7=, $pop51
	i32.store	__stack_pointer($pop38), $pop50
	i32.const	$push49=, 0
	i32.store	24($7), $pop49
	i64.const	$push48=, 0
	i64.store	16($7), $pop48
	i32.const	$push42=, 16
	i32.add 	$push43=, $7, $pop42
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE@FUNCTION, $0, $pop43
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.load	$push47=, 20($7)
	tee_local	$push46=, $5=, $pop47
	i32.load	$push45=, 16($7)
	tee_local	$push44=, $4=, $pop45
	i32.ne  	$push0=, $pop46, $pop44
	br_if   	0, $pop0
	i32.load8_u	$push25=, 0($1)
	i32.const	$push26=, 1
	i32.and 	$push27=, $pop25, $pop26
	br_if   	1, $pop27
	i32.const	$push31=, 0
	i32.store16	0($1), $pop31
	i32.const	$push32=, 8
	i32.add 	$4=, $1, $pop32
	br      	2
.LBB28_3:
	end_block
	i32.const	$push1=, 8
	i32.add 	$push2=, $7, $pop1
	i32.const	$push55=, 0
	i32.store	0($pop2), $pop55
	i64.const	$push54=, 0
	i64.store	0($7), $pop54
	i32.sub 	$push53=, $5, $4
	tee_local	$push52=, $2=, $pop53
	i32.const	$push3=, -16
	i32.ge_u	$push4=, $pop52, $pop3
	br_if   	7, $pop4
	i32.const	$push5=, 11
	i32.ge_u	$push6=, $2, $pop5
	br_if   	2, $pop6
	i32.const	$push12=, 1
	i32.shl 	$push13=, $2, $pop12
	i32.store8	0($7), $pop13
	i32.const	$push56=, 1
	i32.or  	$6=, $7, $pop56
	br_if   	3, $2
	br      	4
.LBB28_6:
	end_block
	i32.load	$push28=, 8($1)
	i32.const	$push29=, 0
	i32.store8	0($pop28), $pop29
	i32.const	$push57=, 0
	i32.store	4($1), $pop57
	i32.const	$push30=, 8
	i32.add 	$4=, $1, $pop30
.LBB28_7:
	end_block
	i32.const	$push33=, 0
	call    	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj@FUNCTION, $1, $pop33
	i32.const	$push60=, 0
	i32.store	0($4), $pop60
	i64.const	$push34=, 0
	i64.store	0($1):p2align=2, $pop34
	i32.load	$push59=, 16($7)
	tee_local	$push58=, $4=, $pop59
	br_if   	3, $pop58
	br      	4
.LBB28_8:
	end_block
	i32.const	$push7=, 16
	i32.add 	$push8=, $2, $pop7
	i32.const	$push9=, -16
	i32.and 	$push62=, $pop8, $pop9
	tee_local	$push61=, $5=, $pop62
	i32.call	$6=, _Znwj@FUNCTION, $pop61
	i32.const	$push10=, 1
	i32.or  	$push11=, $5, $pop10
	i32.store	0($7), $pop11
	i32.store	8($7), $6
	i32.store	4($7), $2
.LBB28_9:
	end_block
	copy_local	$3=, $2
	copy_local	$5=, $6
.LBB28_10:
	loop    	
	i32.load8_u	$push14=, 0($4)
	i32.store8	0($5), $pop14
	i32.const	$push67=, 1
	i32.add 	$5=, $5, $pop67
	i32.const	$push66=, 1
	i32.add 	$4=, $4, $pop66
	i32.const	$push65=, -1
	i32.add 	$push64=, $3, $pop65
	tee_local	$push63=, $3=, $pop64
	br_if   	0, $pop63
	end_loop
	i32.add 	$6=, $6, $2
.LBB28_12:
	end_block
	i32.const	$push68=, 0
	i32.store8	0($6), $pop68
	block   	
	block   	
	i32.load8_u	$push15=, 0($1)
	i32.const	$push16=, 1
	i32.and 	$push17=, $pop15, $pop16
	br_if   	0, $pop17
	i32.const	$push69=, 0
	i32.store16	0($1), $pop69
	br      	1
.LBB28_14:
	end_block
	i32.load	$push18=, 8($1)
	i32.const	$push71=, 0
	i32.store8	0($pop18), $pop71
	i32.const	$push70=, 0
	i32.store	4($1), $pop70
.LBB28_15:
	end_block
	i32.const	$push19=, 0
	call    	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj@FUNCTION, $1, $pop19
	i32.const	$push20=, 8
	i32.add 	$push21=, $1, $pop20
	i32.const	$push74=, 8
	i32.add 	$push22=, $7, $pop74
	i32.load	$push23=, 0($pop22)
	i32.store	0($pop21), $pop23
	i64.load	$push24=, 0($7)
	i64.store	0($1):p2align=2, $pop24
	i32.load	$push73=, 16($7)
	tee_local	$push72=, $4=, $pop73
	i32.eqz 	$push75=, $pop72
	br_if   	1, $pop75
.LBB28_16:
	end_block
	i32.store	20($7), $4
	call    	_ZdlPv@FUNCTION, $4
.LBB28_17:
	end_block
	i32.const	$push41=, 0
	i32.const	$push39=, 32
	i32.add 	$push40=, $7, $pop39
	i32.store	__stack_pointer($pop41), $pop40
	return  	$0
.LBB28_18:
	end_block
	call    	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv@FUNCTION, $7
	unreachable
	.endfunc
.Lfunc_end28:
	.size	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE, .Lfunc_end28-_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE

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
.LBB29_1:
	loop    	
	i32.load	$push1=, 0($2)
	i32.lt_u	$push2=, $5, $pop1
	i32.const	$push37=, .L.str.10
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
.LBB29_4:
	end_block
	i32.ge_u	$push9=, $3, $2
	br_if   	0, $pop9
	i32.const	$push10=, 4
	i32.add 	$push11=, $1, $pop10
	i32.add 	$push48=, $4, $3
	tee_local	$push47=, $7=, $pop48
	i32.store	0($pop11), $pop47
.LBB29_6:
	end_block
	i32.const	$push16=, 8
	i32.add 	$push17=, $0, $pop16
	i32.load	$push18=, 0($pop17)
	i32.sub 	$push19=, $pop18, $5
	i32.sub 	$push52=, $7, $4
	tee_local	$push51=, $5=, $pop52
	i32.ge_u	$push20=, $pop19, $pop51
	i32.const	$push21=, .L.str.12
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
.Lfunc_end29:
	.size	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE, .Lfunc_end29-_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE

	.section	.text._ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_18transaction_headerE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_18transaction_headerE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_18transaction_headerE
	.weak	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_18transaction_headerE
	.type	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_18transaction_headerE,@function
_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_18transaction_headerE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 3
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push59=, 4
	i32.call	$drop=, memcpy@FUNCTION, $1, $pop6, $pop59
	i32.load	$push7=, 4($0)
	i32.const	$push58=, 4
	i32.add 	$push57=, $pop7, $pop58
	tee_local	$push56=, $2=, $pop57
	i32.store	4($0), $pop56
	i32.load	$push8=, 8($0)
	i32.sub 	$push9=, $pop8, $2
	i32.const	$push55=, 1
	i32.gt_u	$push10=, $pop9, $pop55
	i32.const	$push54=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop10, $pop54
	i32.const	$push53=, 4
	i32.add 	$push11=, $1, $pop53
	i32.load	$push12=, 4($0)
	i32.const	$push13=, 2
	i32.call	$drop=, memcpy@FUNCTION, $pop11, $pop12, $pop13
	i32.load	$push14=, 4($0)
	i32.const	$push52=, 2
	i32.add 	$push51=, $pop14, $pop52
	tee_local	$push50=, $2=, $pop51
	i32.store	4($0), $pop50
	i32.load	$push15=, 8($0)
	i32.sub 	$push16=, $pop15, $2
	i32.const	$push49=, 3
	i32.gt_u	$push17=, $pop16, $pop49
	i32.const	$push48=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop17, $pop48
	i32.const	$push47=, 8
	i32.add 	$push18=, $1, $pop47
	i32.load	$push19=, 4($0)
	i32.const	$push46=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop18, $pop19, $pop46
	i32.load	$push20=, 4($0)
	i32.const	$push45=, 4
	i32.add 	$push44=, $pop20, $pop45
	tee_local	$push43=, $4=, $pop44
	i32.store	4($0), $pop43
	i32.const	$6=, 0
	i64.const	$5=, 0
.LBB30_1:
	loop    	
	i32.const	$push75=, 8
	i32.add 	$push21=, $0, $pop75
	i32.load	$push22=, 0($pop21)
	i32.lt_u	$push23=, $4, $pop22
	i32.const	$push74=, .L.str.10
	call    	eosio_assert@FUNCTION, $pop23, $pop74
	i32.const	$push73=, 4
	i32.add 	$push72=, $0, $pop73
	tee_local	$push71=, $7=, $pop72
	i32.load	$push70=, 0($pop71)
	tee_local	$push69=, $4=, $pop70
	i32.load8_u	$2=, 0($pop69)
	i32.const	$push68=, 1
	i32.add 	$push67=, $4, $pop68
	tee_local	$push66=, $4=, $pop67
	i32.store	0($7), $pop66
	i32.const	$push65=, 127
	i32.and 	$push24=, $2, $pop65
	i32.const	$push64=, 255
	i32.and 	$push63=, $6, $pop64
	tee_local	$push62=, $6=, $pop63
	i32.shl 	$push25=, $pop24, $pop62
	i64.extend_u/i32	$push26=, $pop25
	i64.or  	$5=, $pop26, $5
	i32.const	$push61=, 7
	i32.add 	$6=, $6, $pop61
	i32.const	$push60=, 7
	i32.shr_u	$push27=, $2, $pop60
	br_if   	0, $pop27
	end_loop
	i64.store32	12($1), $5
	i32.const	$push28=, 8
	i32.add 	$push83=, $0, $pop28
	tee_local	$push82=, $3=, $pop83
	i32.load	$push29=, 0($pop82)
	i32.ne  	$push30=, $pop29, $4
	i32.const	$push31=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop30, $pop31
	i32.const	$push32=, 16
	i32.add 	$push33=, $1, $pop32
	i32.const	$push34=, 4
	i32.add 	$push81=, $0, $pop34
	tee_local	$push80=, $4=, $pop81
	i32.load	$push35=, 0($pop80)
	i32.const	$push79=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop33, $pop35, $pop79
	i32.load	$push36=, 0($4)
	i32.const	$push78=, 1
	i32.add 	$push77=, $pop36, $pop78
	tee_local	$push76=, $6=, $pop77
	i32.store	0($4), $pop76
	i32.const	$7=, 0
	i64.const	$5=, 0
.LBB30_3:
	loop    	
	i32.load	$push37=, 0($3)
	i32.lt_u	$push38=, $6, $pop37
	i32.const	$push95=, .L.str.10
	call    	eosio_assert@FUNCTION, $pop38, $pop95
	i32.load	$push94=, 0($4)
	tee_local	$push93=, $6=, $pop94
	i32.load8_u	$2=, 0($pop93)
	i32.const	$push92=, 1
	i32.add 	$push91=, $6, $pop92
	tee_local	$push90=, $6=, $pop91
	i32.store	0($4), $pop90
	i32.const	$push89=, 127
	i32.and 	$push39=, $2, $pop89
	i32.const	$push88=, 255
	i32.and 	$push87=, $7, $pop88
	tee_local	$push86=, $7=, $pop87
	i32.shl 	$push40=, $pop39, $pop86
	i64.extend_u/i32	$push41=, $pop40
	i64.or  	$5=, $pop41, $5
	i32.const	$push85=, 7
	i32.add 	$7=, $7, $pop85
	i32.const	$push84=, 7
	i32.shr_u	$push42=, $2, $pop84
	br_if   	0, $pop42
	end_loop
	i64.store32	20($1), $5
	copy_local	$push96=, $0
	.endfunc
.Lfunc_end30:
	.size	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_18transaction_headerE, .Lfunc_end30-_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_18transaction_headerE

	.section	.text._ZN5eosiorsINS_10datastreamIPKcEENS_6actionEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPKcEENS_6actionEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPKcEENS_6actionEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE
	.weak	_ZN5eosiorsINS_10datastreamIPKcEENS_6actionEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE
	.type	_ZN5eosiorsINS_10datastreamIPKcEENS_6actionEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE,@function
_ZN5eosiorsINS_10datastreamIPKcEENS_6actionEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE:
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
.LBB31_1:
	loop    	
	i32.load	$push1=, 0($2)
	i32.lt_u	$push2=, $7, $pop1
	i32.const	$push56=, .L.str.10
	call    	eosio_assert@FUNCTION, $pop2, $pop56
	i32.load	$push55=, 0($3)
	tee_local	$push54=, $7=, $pop55
	i32.load8_u	$4=, 0($pop54)
	i32.const	$push53=, 1
	i32.add 	$push52=, $7, $pop53
	tee_local	$push51=, $7=, $pop52
	i32.store	0($3), $pop51
	i32.const	$push50=, 127
	i32.and 	$push4=, $4, $pop50
	i32.const	$push49=, 255
	i32.and 	$push48=, $6, $pop49
	tee_local	$push47=, $6=, $pop48
	i32.shl 	$push5=, $pop4, $pop47
	i64.extend_u/i32	$push6=, $pop5
	i64.or  	$5=, $pop6, $5
	i32.const	$push46=, 7
	i32.add 	$6=, $6, $pop46
	i32.const	$push45=, 7
	i32.shr_u	$push7=, $4, $pop45
	br_if   	0, $pop7
	end_loop
	block   	
	block   	
	i32.wrap/i64	$push64=, $5
	tee_local	$push63=, $4=, $pop64
	i32.load	$push62=, 4($1)
	tee_local	$push61=, $2=, $pop62
	i32.load	$push60=, 0($1)
	tee_local	$push59=, $6=, $pop60
	i32.sub 	$push8=, $pop61, $pop59
	i32.const	$push9=, 40
	i32.div_s	$push58=, $pop8, $pop9
	tee_local	$push57=, $7=, $pop58
	i32.le_u	$push10=, $pop63, $pop57
	br_if   	0, $pop10
	i32.sub 	$push23=, $4, $7
	call    	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE8__appendEj@FUNCTION, $1, $pop23
	i32.const	$push24=, 4
	i32.add 	$push25=, $1, $pop24
	i32.load	$2=, 0($pop25)
	br      	1
.LBB31_4:
	end_block
	i32.ge_u	$push11=, $4, $7
	br_if   	0, $pop11
	block   	
	i32.const	$push12=, 40
	i32.mul 	$push68=, $4, $pop12
	tee_local	$push67=, $4=, $pop68
	i32.add 	$push66=, $6, $pop67
	tee_local	$push65=, $3=, $pop66
	i32.eq  	$push13=, $2, $pop65
	br_if   	0, $pop13
	i32.const	$push14=, 0
	i32.sub 	$push15=, $pop14, $6
	i32.sub 	$6=, $pop15, $4
	i32.const	$push69=, -24
	i32.add 	$4=, $2, $pop69
.LBB31_7:
	loop    	
	block   	
	i32.const	$push72=, 12
	i32.add 	$push16=, $4, $pop72
	i32.load	$push71=, 0($pop16)
	tee_local	$push70=, $7=, $pop71
	i32.eqz 	$push102=, $pop70
	br_if   	0, $pop102
	i32.const	$push73=, 16
	i32.add 	$push17=, $4, $pop73
	i32.store	0($pop17), $7
	call    	_ZdlPv@FUNCTION, $7
.LBB31_9:
	end_block
	block   	
	i32.load	$push75=, 0($4)
	tee_local	$push74=, $7=, $pop75
	i32.eqz 	$push103=, $pop74
	br_if   	0, $pop103
	i32.const	$push76=, 4
	i32.add 	$push18=, $4, $pop76
	i32.store	0($pop18), $7
	call    	_ZdlPv@FUNCTION, $7
.LBB31_11:
	end_block
	i32.const	$push80=, -40
	i32.add 	$push79=, $4, $pop80
	tee_local	$push78=, $4=, $pop79
	i32.add 	$push19=, $pop78, $6
	i32.const	$push77=, -24
	i32.ne  	$push20=, $pop19, $pop77
	br_if   	0, $pop20
.LBB31_12:
	end_loop
	end_block
	i32.const	$push21=, 4
	i32.add 	$push22=, $1, $pop21
	i32.store	0($pop22), $3
	copy_local	$2=, $3
.LBB31_13:
	end_block
	block   	
	i32.load	$push82=, 0($1)
	tee_local	$push81=, $7=, $pop82
	i32.eq  	$push26=, $pop81, $2
	br_if   	0, $pop26
	i32.const	$push27=, 4
	i32.add 	$4=, $0, $pop27
.LBB31_15:
	loop    	
	i32.const	$push101=, 8
	i32.add 	$push100=, $0, $pop101
	tee_local	$push99=, $6=, $pop100
	i32.load	$push29=, 0($pop99)
	i32.load	$push28=, 0($4)
	i32.sub 	$push30=, $pop29, $pop28
	i32.const	$push98=, 7
	i32.gt_u	$push31=, $pop30, $pop98
	i32.const	$push97=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop31, $pop97
	i32.load	$push32=, 0($4)
	i32.const	$push96=, 8
	i32.call	$drop=, memcpy@FUNCTION, $7, $pop32, $pop96
	i32.load	$push33=, 0($4)
	i32.const	$push95=, 8
	i32.add 	$push94=, $pop33, $pop95
	tee_local	$push93=, $3=, $pop94
	i32.store	0($4), $pop93
	i32.load	$push34=, 0($6)
	i32.sub 	$push35=, $pop34, $3
	i32.const	$push92=, 7
	i32.gt_u	$push36=, $pop35, $pop92
	i32.const	$push91=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop36, $pop91
	i32.const	$push90=, 8
	i32.add 	$push37=, $7, $pop90
	i32.load	$push38=, 0($4)
	i32.const	$push89=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop37, $pop38, $pop89
	i32.load	$push39=, 0($4)
	i32.const	$push88=, 8
	i32.add 	$push40=, $pop39, $pop88
	i32.store	0($4), $pop40
	i32.const	$push87=, 16
	i32.add 	$push42=, $7, $pop87
	i32.call	$push43=, _ZN5eosiorsINS_10datastreamIPKcEENS_16permission_levelEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE@FUNCTION, $0, $pop42
	i32.const	$push86=, 28
	i32.add 	$push41=, $7, $pop86
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE@FUNCTION, $pop43, $pop41
	i32.const	$push85=, 40
	i32.add 	$push84=, $7, $pop85
	tee_local	$push83=, $7=, $pop84
	i32.ne  	$push44=, $pop83, $2
	br_if   	0, $pop44
.LBB31_16:
	end_loop
	end_block
	copy_local	$push104=, $0
	.endfunc
.Lfunc_end31:
	.size	_ZN5eosiorsINS_10datastreamIPKcEENS_6actionEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE, .Lfunc_end31-_ZN5eosiorsINS_10datastreamIPKcEENS_6actionEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE

	.section	.text._ZN5eosiorsINS_10datastreamIPKcEENSt3__15tupleIJtNS5_6vectorIcNS5_9allocatorIcEEEEEEEEERT_SD_RNS7_IT0_NS8_ISE_EEEE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPKcEENSt3__15tupleIJtNS5_6vectorIcNS5_9allocatorIcEEEEEEEEERT_SD_RNS7_IT0_NS8_ISE_EEEE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPKcEENSt3__15tupleIJtNS5_6vectorIcNS5_9allocatorIcEEEEEEEEERT_SD_RNS7_IT0_NS8_ISE_EEEE
	.weak	_ZN5eosiorsINS_10datastreamIPKcEENSt3__15tupleIJtNS5_6vectorIcNS5_9allocatorIcEEEEEEEEERT_SD_RNS7_IT0_NS8_ISE_EEEE
	.type	_ZN5eosiorsINS_10datastreamIPKcEENSt3__15tupleIJtNS5_6vectorIcNS5_9allocatorIcEEEEEEEEERT_SD_RNS7_IT0_NS8_ISE_EEEE,@function
_ZN5eosiorsINS_10datastreamIPKcEENSt3__15tupleIJtNS5_6vectorIcNS5_9allocatorIcEEEEEEEEERT_SD_RNS7_IT0_NS8_ISE_EEEE:
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
.LBB32_1:
	loop    	
	i32.load	$push1=, 0($2)
	i32.lt_u	$push2=, $5, $pop1
	i32.const	$push42=, .L.str.10
	call    	eosio_assert@FUNCTION, $pop2, $pop42
	i32.load	$push41=, 0($3)
	tee_local	$push40=, $5=, $pop41
	i32.load8_u	$4=, 0($pop40)
	i32.const	$push39=, 1
	i32.add 	$push38=, $5, $pop39
	tee_local	$push37=, $5=, $pop38
	i32.store	0($3), $pop37
	i32.const	$push36=, 127
	i32.and 	$push4=, $4, $pop36
	i32.const	$push35=, 255
	i32.and 	$push34=, $7, $pop35
	tee_local	$push33=, $7=, $pop34
	i32.shl 	$push5=, $pop4, $pop33
	i64.extend_u/i32	$push6=, $pop5
	i64.or  	$6=, $pop6, $6
	i32.const	$push32=, 7
	i32.add 	$7=, $7, $pop32
	i32.const	$push31=, 7
	i32.shr_u	$push7=, $4, $pop31
	br_if   	0, $pop7
	end_loop
	block   	
	block   	
	i32.wrap/i64	$push51=, $6
	tee_local	$push50=, $4=, $pop51
	i32.load	$push49=, 4($1)
	tee_local	$push48=, $7=, $pop49
	i32.load	$push47=, 0($1)
	tee_local	$push46=, $3=, $pop47
	i32.sub 	$push8=, $pop48, $pop46
	i32.const	$push45=, 4
	i32.shr_s	$push44=, $pop8, $pop45
	tee_local	$push43=, $5=, $pop44
	i32.le_u	$push9=, $pop50, $pop43
	br_if   	0, $pop9
	i32.sub 	$push18=, $4, $5
	call    	_ZNSt3__16vectorINS_5tupleIJtNS0_IcNS_9allocatorIcEEEEEEENS2_IS5_EEE8__appendEj@FUNCTION, $1, $pop18
	i32.const	$push52=, 4
	i32.add 	$push19=, $1, $pop52
	i32.load	$7=, 0($pop19)
	br      	1
.LBB32_4:
	end_block
	i32.ge_u	$push10=, $4, $5
	br_if   	0, $pop10
	block   	
	i32.const	$push57=, 4
	i32.shl 	$push56=, $4, $pop57
	tee_local	$push55=, $4=, $pop56
	i32.add 	$push54=, $3, $pop55
	tee_local	$push53=, $2=, $pop54
	i32.eq  	$push11=, $7, $pop53
	br_if   	0, $pop11
	i32.const	$push12=, 0
	i32.sub 	$push13=, $pop12, $3
	i32.sub 	$3=, $pop13, $4
	i32.const	$push58=, -12
	i32.add 	$4=, $7, $pop58
.LBB32_7:
	loop    	
	block   	
	i32.load	$push60=, 0($4)
	tee_local	$push59=, $5=, $pop60
	i32.eqz 	$push80=, $pop59
	br_if   	0, $pop80
	i32.const	$push61=, 4
	i32.add 	$push14=, $4, $pop61
	i32.store	0($pop14), $5
	call    	_ZdlPv@FUNCTION, $5
.LBB32_9:
	end_block
	i32.const	$push65=, -16
	i32.add 	$push64=, $4, $pop65
	tee_local	$push63=, $4=, $pop64
	i32.add 	$push15=, $pop63, $3
	i32.const	$push62=, -12
	i32.ne  	$push16=, $pop15, $pop62
	br_if   	0, $pop16
.LBB32_10:
	end_loop
	end_block
	i32.const	$push66=, 4
	i32.add 	$push17=, $1, $pop66
	i32.store	0($pop17), $2
	copy_local	$7=, $2
.LBB32_11:
	end_block
	block   	
	i32.load	$push68=, 0($1)
	tee_local	$push67=, $4=, $pop68
	i32.eq  	$push20=, $pop67, $7
	br_if   	0, $pop20
	i32.const	$push22=, 8
	i32.add 	$3=, $0, $pop22
.LBB32_13:
	loop    	
	i32.load	$push23=, 0($3)
	i32.const	$push79=, 4
	i32.add 	$push78=, $0, $pop79
	tee_local	$push77=, $5=, $pop78
	i32.load	$push21=, 0($pop77)
	i32.sub 	$push24=, $pop23, $pop21
	i32.const	$push76=, 1
	i32.gt_u	$push25=, $pop24, $pop76
	i32.const	$push75=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop25, $pop75
	i32.load	$push26=, 0($5)
	i32.const	$push74=, 2
	i32.call	$drop=, memcpy@FUNCTION, $4, $pop26, $pop74
	i32.load	$push27=, 0($5)
	i32.const	$push73=, 2
	i32.add 	$push28=, $pop27, $pop73
	i32.store	0($5), $pop28
	i32.const	$push72=, 4
	i32.add 	$push29=, $4, $pop72
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE@FUNCTION, $0, $pop29
	i32.const	$push71=, 16
	i32.add 	$push70=, $4, $pop71
	tee_local	$push69=, $4=, $pop70
	i32.ne  	$push30=, $pop69, $7
	br_if   	0, $pop30
.LBB32_14:
	end_loop
	end_block
	copy_local	$push81=, $0
	.endfunc
.Lfunc_end32:
	.size	_ZN5eosiorsINS_10datastreamIPKcEENSt3__15tupleIJtNS5_6vectorIcNS5_9allocatorIcEEEEEEEEERT_SD_RNS7_IT0_NS8_ISE_EEEE, .Lfunc_end32-_ZN5eosiorsINS_10datastreamIPKcEENSt3__15tupleIJtNS5_6vectorIcNS5_9allocatorIcEEEEEEEEERT_SD_RNS7_IT0_NS8_ISE_EEEE

	.section	.text._ZNSt3__16vectorINS_5tupleIJtNS0_IcNS_9allocatorIcEEEEEEENS2_IS5_EEE8__appendEj,"axG",@progbits,_ZNSt3__16vectorINS_5tupleIJtNS0_IcNS_9allocatorIcEEEEEEENS2_IS5_EEE8__appendEj,comdat
	.hidden	_ZNSt3__16vectorINS_5tupleIJtNS0_IcNS_9allocatorIcEEEEEEENS2_IS5_EEE8__appendEj
	.weak	_ZNSt3__16vectorINS_5tupleIJtNS0_IcNS_9allocatorIcEEEEEEENS2_IS5_EEE8__appendEj
	.type	_ZNSt3__16vectorINS_5tupleIJtNS0_IcNS_9allocatorIcEEEEEEENS2_IS5_EEE8__appendEj,@function
_ZNSt3__16vectorINS_5tupleIJtNS0_IcNS_9allocatorIcEEEEEEENS2_IS5_EEE8__appendEj:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32, i32, i32
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.load	$push50=, 8($0)
	tee_local	$push49=, $8=, $pop50
	i32.load	$push48=, 4($0)
	tee_local	$push47=, $7=, $pop48
	i32.sub 	$push0=, $pop49, $pop47
	i32.const	$push46=, 4
	i32.shr_s	$push1=, $pop0, $pop46
	i32.ge_u	$push2=, $pop1, $1
	br_if   	0, $pop2
	i32.load	$push57=, 0($0)
	tee_local	$push56=, $5=, $pop57
	i32.sub 	$push9=, $7, $pop56
	i32.const	$push55=, 4
	i32.shr_s	$push54=, $pop9, $pop55
	tee_local	$push53=, $4=, $pop54
	i32.add 	$push52=, $pop53, $1
	tee_local	$push51=, $7=, $pop52
	i32.const	$push10=, 268435456
	i32.ge_u	$push11=, $pop51, $pop10
	br_if   	2, $pop11
	i32.const	$6=, 268435455
	block   	
	i32.sub 	$push60=, $8, $5
	tee_local	$push59=, $8=, $pop60
	i32.const	$push58=, 4
	i32.shr_s	$push12=, $pop59, $pop58
	i32.const	$push13=, 134217726
	i32.gt_u	$push14=, $pop12, $pop13
	br_if   	0, $pop14
	i32.const	$push15=, 3
	i32.shr_s	$push64=, $8, $pop15
	tee_local	$push63=, $6=, $pop64
	i32.lt_u	$push16=, $6, $7
	i32.select	$push62=, $7, $pop63, $pop16
	tee_local	$push61=, $6=, $pop62
	i32.eqz 	$push130=, $pop61
	br_if   	2, $pop130
	i32.const	$push17=, 268435456
	i32.ge_u	$push18=, $6, $pop17
	br_if   	4, $pop18
.LBB33_5:
	end_block
	i32.const	$push65=, 4
	i32.shl 	$push19=, $6, $pop65
	i32.call	$8=, _Znwj@FUNCTION, $pop19
	br      	4
.LBB33_6:
	end_block
	copy_local	$6=, $7
	copy_local	$8=, $1
.LBB33_7:
	loop    	
	i32.const	$push119=, 0
	i32.store16	0($6), $pop119
	i32.const	$push118=, 4
	i32.add 	$push3=, $6, $pop118
	i64.const	$push117=, 0
	i64.store	0($pop3):p2align=2, $pop117
	i32.const	$push116=, 12
	i32.add 	$push4=, $6, $pop116
	i32.const	$push115=, 0
	i32.store	0($pop4), $pop115
	i32.const	$push114=, 16
	i32.add 	$6=, $6, $pop114
	i32.const	$push113=, -1
	i32.add 	$push112=, $8, $pop113
	tee_local	$push111=, $8=, $pop112
	br_if   	0, $pop111
	end_loop
	i32.const	$push5=, 4
	i32.add 	$push6=, $0, $pop5
	i32.const	$push120=, 4
	i32.shl 	$push7=, $1, $pop120
	i32.add 	$push8=, $7, $pop7
	i32.store	0($pop6), $pop8
	return
.LBB33_9:
	end_block
	i32.const	$6=, 0
	i32.const	$8=, 0
	br      	2
.LBB33_10:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB33_11:
	end_block
	call    	abort@FUNCTION
	unreachable
.LBB33_12:
	end_block
	i32.const	$push69=, 4
	i32.shl 	$push20=, $6, $pop69
	i32.add 	$2=, $8, $pop20
	i32.const	$push68=, 4
	i32.shl 	$push21=, $4, $pop68
	i32.add 	$push67=, $8, $pop21
	tee_local	$push66=, $8=, $pop67
	copy_local	$6=, $pop66
	copy_local	$7=, $1
.LBB33_13:
	loop    	
	i32.const	$push78=, 0
	i32.store16	0($6), $pop78
	i32.const	$push77=, 4
	i32.add 	$push22=, $6, $pop77
	i64.const	$push76=, 0
	i64.store	0($pop22):p2align=2, $pop76
	i32.const	$push75=, 12
	i32.add 	$push23=, $6, $pop75
	i32.const	$push74=, 0
	i32.store	0($pop23), $pop74
	i32.const	$push73=, 16
	i32.add 	$6=, $6, $pop73
	i32.const	$push72=, -1
	i32.add 	$push71=, $7, $pop72
	tee_local	$push70=, $7=, $pop71
	br_if   	0, $pop70
	end_loop
	i32.const	$push84=, 4
	i32.shl 	$push24=, $1, $pop84
	i32.add 	$3=, $8, $pop24
	block   	
	block   	
	i32.const	$push83=, 4
	i32.add 	$push25=, $0, $pop83
	i32.load	$push82=, 0($pop25)
	tee_local	$push81=, $7=, $pop82
	i32.load	$push80=, 0($0)
	tee_local	$push79=, $6=, $pop80
	i32.eq  	$push26=, $pop81, $pop79
	br_if   	0, $pop26
	i32.const	$push86=, 0
	i32.sub 	$4=, $pop86, $6
	i32.const	$push85=, -16
	i32.add 	$6=, $7, $pop85
.LBB33_16:
	loop    	
	i32.const	$push110=, -16
	i32.add 	$push27=, $8, $pop110
	i32.load16_u	$push28=, 0($6)
	i32.store16	0($pop27), $pop28
	i32.const	$push109=, -12
	i32.add 	$push108=, $8, $pop109
	tee_local	$push107=, $7=, $pop108
	i64.const	$push106=, 0
	i64.store	0($pop107):p2align=2, $pop106
	i32.const	$push105=, -4
	i32.add 	$push104=, $8, $pop105
	tee_local	$push103=, $1=, $pop104
	i32.const	$push102=, 0
	i32.store	0($pop103), $pop102
	i32.const	$push101=, 4
	i32.add 	$push100=, $6, $pop101
	tee_local	$push99=, $5=, $pop100
	i32.load	$push29=, 0($pop99)
	i32.store	0($7), $pop29
	i32.const	$push98=, -8
	i32.add 	$push30=, $8, $pop98
	i32.const	$push97=, 8
	i32.add 	$push31=, $6, $pop97
	i32.load	$push32=, 0($pop31)
	i32.store	0($pop30), $pop32
	i32.const	$push96=, 12
	i32.add 	$push95=, $6, $pop96
	tee_local	$push94=, $7=, $pop95
	i32.load	$push33=, 0($pop94)
	i32.store	0($1), $pop33
	i32.const	$push93=, 0
	i32.store	0($7), $pop93
	i64.const	$push92=, 0
	i64.store	0($5):p2align=2, $pop92
	i32.const	$push91=, -16
	i32.add 	$8=, $8, $pop91
	i32.const	$push90=, -16
	i32.add 	$push89=, $6, $pop90
	tee_local	$push88=, $6=, $pop89
	i32.add 	$push34=, $pop88, $4
	i32.const	$push87=, -16
	i32.ne  	$push35=, $pop34, $pop87
	br_if   	0, $pop35
	end_loop
	i32.const	$push36=, 4
	i32.add 	$push37=, $0, $pop36
	i32.load	$6=, 0($pop37)
	i32.load	$1=, 0($0)
	br      	1
.LBB33_18:
	end_block
	copy_local	$1=, $6
.LBB33_19:
	end_block
	i32.store	0($0), $8
	i32.const	$push121=, 4
	i32.add 	$push38=, $0, $pop121
	i32.store	0($pop38), $3
	i32.const	$push39=, 8
	i32.add 	$push40=, $0, $pop39
	i32.store	0($pop40), $2
	block   	
	i32.eq  	$push41=, $6, $1
	br_if   	0, $pop41
	i32.const	$push42=, 0
	i32.sub 	$7=, $pop42, $1
	i32.const	$push122=, -12
	i32.add 	$6=, $6, $pop122
.LBB33_21:
	loop    	
	block   	
	i32.load	$push124=, 0($6)
	tee_local	$push123=, $8=, $pop124
	i32.eqz 	$push131=, $pop123
	br_if   	0, $pop131
	i32.const	$push125=, 4
	i32.add 	$push43=, $6, $pop125
	i32.store	0($pop43), $8
	call    	_ZdlPv@FUNCTION, $8
.LBB33_23:
	end_block
	i32.const	$push129=, -16
	i32.add 	$push128=, $6, $pop129
	tee_local	$push127=, $6=, $pop128
	i32.add 	$push44=, $pop127, $7
	i32.const	$push126=, -12
	i32.ne  	$push45=, $pop44, $pop126
	br_if   	0, $pop45
.LBB33_24:
	end_loop
	end_block
	block   	
	i32.eqz 	$push132=, $1
	br_if   	0, $pop132
	call    	_ZdlPv@FUNCTION, $1
.LBB33_26:
	end_block
	.endfunc
.Lfunc_end33:
	.size	_ZNSt3__16vectorINS_5tupleIJtNS0_IcNS_9allocatorIcEEEEEEENS2_IS5_EEE8__appendEj, .Lfunc_end33-_ZNSt3__16vectorINS_5tupleIJtNS0_IcNS_9allocatorIcEEEEEEENS2_IS5_EEE8__appendEj

	.section	.text._ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE8__appendEj,"axG",@progbits,_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE8__appendEj,comdat
	.hidden	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE8__appendEj
	.weak	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE8__appendEj
	.type	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE8__appendEj,@function
_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE8__appendEj:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32, i32, i32
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.load	$push57=, 8($0)
	tee_local	$push56=, $8=, $pop57
	i32.load	$push55=, 4($0)
	tee_local	$push54=, $7=, $pop55
	i32.sub 	$push0=, $pop56, $pop54
	i32.const	$push53=, 40
	i32.div_s	$push1=, $pop0, $pop53
	i32.ge_u	$push2=, $pop1, $1
	br_if   	0, $pop2
	i32.load	$push64=, 0($0)
	tee_local	$push63=, $4=, $pop64
	i32.sub 	$push8=, $7, $pop63
	i32.const	$push62=, 40
	i32.div_s	$push61=, $pop8, $pop62
	tee_local	$push60=, $5=, $pop61
	i32.add 	$push59=, $pop60, $1
	tee_local	$push58=, $6=, $pop59
	i32.const	$push9=, 107374183
	i32.ge_u	$push10=, $pop58, $pop9
	br_if   	2, $pop10
	i32.const	$7=, 107374182
	block   	
	i32.sub 	$push11=, $8, $4
	i32.const	$push67=, 40
	i32.div_s	$push66=, $pop11, $pop67
	tee_local	$push65=, $8=, $pop66
	i32.const	$push12=, 53687090
	i32.gt_u	$push13=, $pop65, $pop12
	br_if   	0, $pop13
	i32.const	$push14=, 1
	i32.shl 	$push71=, $8, $pop14
	tee_local	$push70=, $7=, $pop71
	i32.lt_u	$push15=, $7, $6
	i32.select	$push69=, $6, $pop70, $pop15
	tee_local	$push68=, $7=, $pop69
	i32.eqz 	$push167=, $pop68
	br_if   	2, $pop167
.LBB34_4:
	end_block
	i32.const	$push72=, 40
	i32.mul 	$push16=, $7, $pop72
	i32.call	$8=, _Znwj@FUNCTION, $pop16
	br      	3
.LBB34_5:
	end_block
	i32.const	$push6=, 4
	i32.add 	$8=, $0, $pop6
.LBB34_6:
	loop    	
	i64.const	$push153=, 0
	i64.store	0($7), $pop153
	i64.const	$push152=, 0
	i64.store	16($7):p2align=2, $pop152
	i32.const	$push151=, 8
	i32.add 	$push3=, $7, $pop151
	i64.const	$push150=, 0
	i64.store	0($pop3), $pop150
	i32.const	$push149=, 24
	i32.add 	$push4=, $7, $pop149
	i64.const	$push148=, 0
	i64.store	0($pop4):p2align=2, $pop148
	i32.const	$push147=, 32
	i32.add 	$push5=, $7, $pop147
	i64.const	$push146=, 0
	i64.store	0($pop5):p2align=2, $pop146
	i32.load	$push7=, 0($8)
	i32.const	$push145=, 40
	i32.add 	$push144=, $pop7, $pop145
	tee_local	$push143=, $7=, $pop144
	i32.store	0($8), $pop143
	i32.const	$push142=, -1
	i32.add 	$push141=, $1, $pop142
	tee_local	$push140=, $1=, $pop141
	br_if   	0, $pop140
	br      	4
.LBB34_7:
	end_loop
	end_block
	i32.const	$7=, 0
	i32.const	$8=, 0
	br      	1
.LBB34_8:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB34_9:
	end_block
	i32.const	$push76=, 40
	i32.mul 	$push17=, $7, $pop76
	i32.add 	$2=, $8, $pop17
	i32.const	$push75=, 40
	i32.mul 	$push18=, $5, $pop75
	i32.add 	$push74=, $8, $pop18
	tee_local	$push73=, $8=, $pop74
	copy_local	$7=, $pop73
.LBB34_10:
	loop    	
	i64.const	$push88=, 0
	i64.store	0($7), $pop88
	i64.const	$push87=, 0
	i64.store	16($7):p2align=2, $pop87
	i32.const	$push86=, 8
	i32.add 	$push19=, $7, $pop86
	i64.const	$push85=, 0
	i64.store	0($pop19), $pop85
	i32.const	$push84=, 24
	i32.add 	$push20=, $7, $pop84
	i64.const	$push83=, 0
	i64.store	0($pop20):p2align=2, $pop83
	i32.const	$push82=, 32
	i32.add 	$push21=, $7, $pop82
	i64.const	$push81=, 0
	i64.store	0($pop21):p2align=2, $pop81
	i32.const	$push80=, 40
	i32.add 	$7=, $7, $pop80
	i32.const	$push79=, -1
	i32.add 	$push78=, $1, $pop79
	tee_local	$push77=, $1=, $pop78
	br_if   	0, $pop77
	end_loop
	block   	
	block   	
	i32.const	$push93=, 4
	i32.add 	$push22=, $0, $pop93
	i32.load	$push92=, 0($pop22)
	tee_local	$push91=, $1=, $pop92
	i32.load	$push90=, 0($0)
	tee_local	$push89=, $4=, $pop90
	i32.eq  	$push23=, $pop91, $pop89
	br_if   	0, $pop23
	i32.const	$push95=, 0
	i32.sub 	$3=, $pop95, $4
	i32.const	$push94=, -20
	i32.add 	$1=, $1, $pop94
.LBB34_13:
	loop    	
	i32.const	$push139=, -32
	i32.add 	$push24=, $8, $pop139
	i32.const	$push138=, -12
	i32.add 	$push25=, $1, $pop138
	i64.load	$push26=, 0($pop25)
	i64.store	0($pop24), $pop26
	i32.const	$push137=, -40
	i32.add 	$push27=, $8, $pop137
	i32.const	$push136=, -20
	i32.add 	$push28=, $1, $pop136
	i64.load	$push29=, 0($pop28)
	i64.store	0($pop27), $pop29
	i32.const	$push135=, -24
	i32.add 	$push134=, $8, $pop135
	tee_local	$push133=, $4=, $pop134
	i64.const	$push132=, 0
	i64.store	0($pop133):p2align=2, $pop132
	i32.const	$push131=, -16
	i32.add 	$push130=, $8, $pop131
	tee_local	$push129=, $5=, $pop130
	i32.const	$push128=, 0
	i32.store	0($pop129), $pop128
	i32.const	$push127=, -4
	i32.add 	$push126=, $1, $pop127
	tee_local	$push125=, $6=, $pop126
	i32.load	$push30=, 0($pop125)
	i32.store	0($4), $pop30
	i32.const	$push124=, -20
	i32.add 	$push31=, $8, $pop124
	i32.load	$push32=, 0($1)
	i32.store	0($pop31), $pop32
	i32.const	$push123=, 4
	i32.add 	$push122=, $1, $pop123
	tee_local	$push121=, $4=, $pop122
	i32.load	$push33=, 0($pop121)
	i32.store	0($5), $pop33
	i32.const	$push120=, 0
	i32.store	0($4), $pop120
	i32.const	$push119=, -12
	i32.add 	$push118=, $8, $pop119
	tee_local	$push117=, $4=, $pop118
	i64.const	$push116=, 0
	i64.store	0($pop117):p2align=2, $pop116
	i64.const	$push115=, 0
	i64.store	0($6):p2align=2, $pop115
	i32.const	$push114=, -4
	i32.add 	$push113=, $8, $pop114
	tee_local	$push112=, $5=, $pop113
	i32.const	$push111=, 0
	i32.store	0($pop112), $pop111
	i32.const	$push110=, 8
	i32.add 	$push109=, $1, $pop110
	tee_local	$push108=, $6=, $pop109
	i32.load	$push34=, 0($pop108)
	i32.store	0($4), $pop34
	i32.const	$push107=, -8
	i32.add 	$push35=, $8, $pop107
	i32.const	$push106=, 12
	i32.add 	$push36=, $1, $pop106
	i32.load	$push37=, 0($pop36)
	i32.store	0($pop35), $pop37
	i32.const	$push105=, 16
	i32.add 	$push104=, $1, $pop105
	tee_local	$push103=, $4=, $pop104
	i32.load	$push38=, 0($pop103)
	i32.store	0($5), $pop38
	i32.const	$push102=, 0
	i32.store	0($4), $pop102
	i64.const	$push101=, 0
	i64.store	0($6):p2align=2, $pop101
	i32.const	$push100=, -40
	i32.add 	$8=, $8, $pop100
	i32.const	$push99=, -40
	i32.add 	$push98=, $1, $pop99
	tee_local	$push97=, $1=, $pop98
	i32.add 	$push39=, $pop97, $3
	i32.const	$push96=, -20
	i32.ne  	$push40=, $pop39, $pop96
	br_if   	0, $pop40
	end_loop
	i32.const	$push41=, 4
	i32.add 	$push42=, $0, $pop41
	i32.load	$4=, 0($pop42)
	i32.load	$5=, 0($0)
	br      	1
.LBB34_15:
	end_block
	copy_local	$5=, $4
.LBB34_16:
	end_block
	i32.store	0($0), $8
	i32.const	$push154=, 4
	i32.add 	$push43=, $0, $pop154
	i32.store	0($pop43), $7
	i32.const	$push44=, 8
	i32.add 	$push45=, $0, $pop44
	i32.store	0($pop45), $2
	block   	
	i32.eq  	$push46=, $4, $5
	br_if   	0, $pop46
	i32.const	$push47=, 0
	i32.sub 	$1=, $pop47, $5
	i32.const	$push155=, -24
	i32.add 	$7=, $4, $pop155
.LBB34_18:
	loop    	
	block   	
	i32.const	$push158=, 12
	i32.add 	$push48=, $7, $pop158
	i32.load	$push157=, 0($pop48)
	tee_local	$push156=, $8=, $pop157
	i32.eqz 	$push168=, $pop156
	br_if   	0, $pop168
	i32.const	$push159=, 16
	i32.add 	$push49=, $7, $pop159
	i32.store	0($pop49), $8
	call    	_ZdlPv@FUNCTION, $8
.LBB34_20:
	end_block
	block   	
	i32.load	$push161=, 0($7)
	tee_local	$push160=, $8=, $pop161
	i32.eqz 	$push169=, $pop160
	br_if   	0, $pop169
	i32.const	$push162=, 4
	i32.add 	$push50=, $7, $pop162
	i32.store	0($pop50), $8
	call    	_ZdlPv@FUNCTION, $8
.LBB34_22:
	end_block
	i32.const	$push166=, -40
	i32.add 	$push165=, $7, $pop166
	tee_local	$push164=, $7=, $pop165
	i32.add 	$push51=, $pop164, $1
	i32.const	$push163=, -24
	i32.ne  	$push52=, $pop51, $pop163
	br_if   	0, $pop52
.LBB34_23:
	end_loop
	end_block
	i32.eqz 	$push170=, $5
	br_if   	0, $pop170
	call    	_ZdlPv@FUNCTION, $5
.LBB34_25:
	end_block
	.endfunc
.Lfunc_end34:
	.size	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE8__appendEj, .Lfunc_end34-_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE8__appendEj

	.section	.text._ZN5eosiorsINS_10datastreamIPKcEENS_16permission_levelEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPKcEENS_16permission_levelEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPKcEENS_16permission_levelEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE
	.weak	_ZN5eosiorsINS_10datastreamIPKcEENS_16permission_levelEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE
	.type	_ZN5eosiorsINS_10datastreamIPKcEENS_16permission_levelEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE,@function
_ZN5eosiorsINS_10datastreamIPKcEENS_16permission_levelEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE:
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
.LBB35_1:
	loop    	
	i32.load	$push1=, 0($2)
	i32.lt_u	$push2=, $7, $pop1
	i32.const	$push42=, .L.str.10
	call    	eosio_assert@FUNCTION, $pop2, $pop42
	i32.load	$push41=, 0($3)
	tee_local	$push40=, $7=, $pop41
	i32.load8_u	$4=, 0($pop40)
	i32.const	$push39=, 1
	i32.add 	$push38=, $7, $pop39
	tee_local	$push37=, $7=, $pop38
	i32.store	0($3), $pop37
	i32.const	$push36=, 127
	i32.and 	$push4=, $4, $pop36
	i32.const	$push35=, 255
	i32.and 	$push34=, $6, $pop35
	tee_local	$push33=, $6=, $pop34
	i32.shl 	$push5=, $pop4, $pop33
	i64.extend_u/i32	$push6=, $pop5
	i64.or  	$5=, $pop6, $5
	i32.const	$push32=, 7
	i32.add 	$6=, $6, $pop32
	i32.const	$push31=, 7
	i32.shr_u	$push7=, $4, $pop31
	br_if   	0, $pop7
	end_loop
	block   	
	block   	
	block   	
	i32.wrap/i64	$push51=, $5
	tee_local	$push50=, $4=, $pop51
	i32.load	$push49=, 4($1)
	tee_local	$push48=, $2=, $pop49
	i32.load	$push47=, 0($1)
	tee_local	$push46=, $7=, $pop47
	i32.sub 	$push8=, $pop48, $pop46
	i32.const	$push45=, 4
	i32.shr_s	$push44=, $pop8, $pop45
	tee_local	$push43=, $6=, $pop44
	i32.le_u	$push9=, $pop50, $pop43
	br_if   	0, $pop9
	i32.sub 	$push14=, $4, $6
	call    	_ZNSt3__16vectorIN5eosio16permission_levelENS_9allocatorIS2_EEE8__appendEj@FUNCTION, $1, $pop14
	i32.load	$push56=, 0($1)
	tee_local	$push55=, $7=, $pop56
	i32.const	$push54=, 4
	i32.add 	$push15=, $1, $pop54
	i32.load	$push53=, 0($pop15)
	tee_local	$push52=, $2=, $pop53
	i32.ne  	$push16=, $pop55, $pop52
	br_if   	1, $pop16
	br      	2
.LBB35_4:
	end_block
	block   	
	i32.ge_u	$push10=, $4, $6
	br_if   	0, $pop10
	i32.const	$push11=, 4
	i32.add 	$push12=, $1, $pop11
	i32.const	$push59=, 4
	i32.shl 	$push13=, $4, $pop59
	i32.add 	$push58=, $7, $pop13
	tee_local	$push57=, $2=, $pop58
	i32.store	0($pop12), $pop57
.LBB35_6:
	end_block
	i32.eq  	$push17=, $7, $2
	br_if   	1, $pop17
.LBB35_7:
	end_block
	i32.const	$push18=, 4
	i32.add 	$push61=, $0, $pop18
	tee_local	$push60=, $4=, $pop61
	i32.load	$6=, 0($pop60)
.LBB35_8:
	loop    	
	i32.const	$push80=, 8
	i32.add 	$push79=, $0, $pop80
	tee_local	$push78=, $3=, $pop79
	i32.load	$push19=, 0($pop78)
	i32.sub 	$push20=, $pop19, $6
	i32.const	$push77=, 7
	i32.gt_u	$push21=, $pop20, $pop77
	i32.const	$push76=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop21, $pop76
	i32.load	$push22=, 0($4)
	i32.const	$push75=, 8
	i32.call	$drop=, memcpy@FUNCTION, $7, $pop22, $pop75
	i32.load	$push23=, 0($4)
	i32.const	$push74=, 8
	i32.add 	$push73=, $pop23, $pop74
	tee_local	$push72=, $6=, $pop73
	i32.store	0($4), $pop72
	i32.load	$push24=, 0($3)
	i32.sub 	$push25=, $pop24, $6
	i32.const	$push71=, 7
	i32.gt_u	$push26=, $pop25, $pop71
	i32.const	$push70=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop26, $pop70
	i32.const	$push69=, 8
	i32.add 	$push27=, $7, $pop69
	i32.load	$push28=, 0($4)
	i32.const	$push68=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop27, $pop28, $pop68
	i32.load	$push29=, 0($4)
	i32.const	$push67=, 8
	i32.add 	$push66=, $pop29, $pop67
	tee_local	$push65=, $6=, $pop66
	i32.store	0($4), $pop65
	i32.const	$push64=, 16
	i32.add 	$push63=, $7, $pop64
	tee_local	$push62=, $7=, $pop63
	i32.ne  	$push30=, $pop62, $2
	br_if   	0, $pop30
.LBB35_9:
	end_loop
	end_block
	copy_local	$push81=, $0
	.endfunc
.Lfunc_end35:
	.size	_ZN5eosiorsINS_10datastreamIPKcEENS_16permission_levelEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE, .Lfunc_end35-_ZN5eosiorsINS_10datastreamIPKcEENS_16permission_levelEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE

	.section	.text._ZNSt3__16vectorIN5eosio16permission_levelENS_9allocatorIS2_EEE8__appendEj,"axG",@progbits,_ZNSt3__16vectorIN5eosio16permission_levelENS_9allocatorIS2_EEE8__appendEj,comdat
	.hidden	_ZNSt3__16vectorIN5eosio16permission_levelENS_9allocatorIS2_EEE8__appendEj
	.weak	_ZNSt3__16vectorIN5eosio16permission_levelENS_9allocatorIS2_EEE8__appendEj
	.type	_ZNSt3__16vectorIN5eosio16permission_levelENS_9allocatorIS2_EEE8__appendEj,@function
_ZNSt3__16vectorIN5eosio16permission_levelENS_9allocatorIS2_EEE8__appendEj:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32, i32
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.load	$push30=, 8($0)
	tee_local	$push29=, $2=, $pop30
	i32.load	$push28=, 4($0)
	tee_local	$push27=, $7=, $pop28
	i32.sub 	$push0=, $pop29, $pop27
	i32.const	$push26=, 4
	i32.shr_s	$push1=, $pop0, $pop26
	i32.ge_u	$push2=, $pop1, $1
	br_if   	0, $pop2
	i32.load	$push37=, 0($0)
	tee_local	$push36=, $6=, $pop37
	i32.sub 	$push6=, $7, $pop36
	i32.const	$push35=, 4
	i32.shr_s	$push34=, $pop6, $pop35
	tee_local	$push33=, $3=, $pop34
	i32.add 	$push32=, $pop33, $1
	tee_local	$push31=, $4=, $pop32
	i32.const	$push7=, 268435456
	i32.ge_u	$push8=, $pop31, $pop7
	br_if   	2, $pop8
	i32.const	$5=, 268435455
	block   	
	i32.sub 	$push40=, $2, $6
	tee_local	$push39=, $2=, $pop40
	i32.const	$push38=, 4
	i32.shr_s	$push9=, $pop39, $pop38
	i32.const	$push10=, 134217726
	i32.gt_u	$push11=, $pop9, $pop10
	br_if   	0, $pop11
	i32.const	$push12=, 3
	i32.shr_s	$push44=, $2, $pop12
	tee_local	$push43=, $5=, $pop44
	i32.lt_u	$push13=, $5, $4
	i32.select	$push42=, $4, $pop43, $pop13
	tee_local	$push41=, $5=, $pop42
	i32.eqz 	$push57=, $pop41
	br_if   	2, $pop57
	i32.const	$push14=, 268435456
	i32.ge_u	$push15=, $5, $pop14
	br_if   	4, $pop15
.LBB36_5:
	end_block
	i32.const	$push46=, 4
	i32.shl 	$push16=, $5, $pop46
	i32.call	$2=, _Znwj@FUNCTION, $pop16
	i32.const	$push45=, 4
	i32.add 	$push17=, $0, $pop45
	i32.load	$7=, 0($pop17)
	i32.load	$6=, 0($0)
	br      	4
.LBB36_6:
	end_block
	i32.const	$push56=, 4
	i32.add 	$push3=, $0, $pop56
	i32.const	$push55=, 4
	i32.shl 	$push4=, $1, $pop55
	i32.add 	$push5=, $7, $pop4
	i32.store	0($pop3), $pop5
	return
.LBB36_7:
	end_block
	i32.const	$5=, 0
	i32.const	$2=, 0
	br      	2
.LBB36_8:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB36_9:
	end_block
	call    	abort@FUNCTION
	unreachable
.LBB36_10:
	end_block
	i32.const	$push53=, 4
	i32.shl 	$push18=, $3, $pop53
	i32.add 	$push52=, $2, $pop18
	tee_local	$push51=, $3=, $pop52
	i32.sub 	$push50=, $7, $6
	tee_local	$push49=, $7=, $pop50
	i32.sub 	$4=, $pop51, $pop49
	i32.const	$push48=, 4
	i32.shl 	$push19=, $1, $pop48
	i32.add 	$1=, $3, $pop19
	i32.const	$push47=, 4
	i32.shl 	$push20=, $5, $pop47
	i32.add 	$5=, $2, $pop20
	block   	
	i32.const	$push21=, 1
	i32.lt_s	$push22=, $7, $pop21
	br_if   	0, $pop22
	i32.call	$drop=, memcpy@FUNCTION, $4, $6, $7
	i32.load	$6=, 0($0)
.LBB36_12:
	end_block
	i32.store	0($0), $4
	i32.const	$push54=, 4
	i32.add 	$push23=, $0, $pop54
	i32.store	0($pop23), $1
	i32.const	$push24=, 8
	i32.add 	$push25=, $0, $pop24
	i32.store	0($pop25), $5
	block   	
	i32.eqz 	$push58=, $6
	br_if   	0, $pop58
	call    	_ZdlPv@FUNCTION, $6
.LBB36_14:
	end_block
	.endfunc
.Lfunc_end36:
	.size	_ZNSt3__16vectorIN5eosio16permission_levelENS_9allocatorIS2_EEE8__appendEj, .Lfunc_end36-_ZNSt3__16vectorIN5eosio16permission_levelENS_9allocatorIS2_EEE8__appendEj

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
.LBB37_1:
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
.LBB37_3:
	end_loop
	end_block
	copy_local	$push12=, $0
	.endfunc
.Lfunc_end37:
	.size	_Znwj, .Lfunc_end37-_Znwj

	.weak	_ZdlPv
	.type	_ZdlPv,@function
_ZdlPv:
	.param  	i32
	block   	
	i32.eqz 	$push0=, $0
	br_if   	0, $pop0
	call    	free@FUNCTION, $0
.LBB38_2:
	end_block
	.endfunc
.Lfunc_end38:
	.size	_ZdlPv, .Lfunc_end38-_ZdlPv

	.section	.text._ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv,"axG",@progbits,_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv,comdat
	.hidden	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
	.weak	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
	.type	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv,@function
_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv:
	.param  	i32
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end39:
	.size	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv, .Lfunc_end39-_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv

	.section	.text._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj,"axG",@progbits,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj,comdat
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj
	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj,@function
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32, i32
	block   	
	i32.const	$push0=, -16
	i32.ge_u	$push1=, $1, $pop0
	br_if   	0, $pop1
	i32.const	$2=, 10
	block   	
	i32.load8_u	$push35=, 0($0)
	tee_local	$push34=, $5=, $pop35
	i32.const	$push33=, 1
	i32.and 	$push2=, $pop34, $pop33
	i32.eqz 	$push52=, $pop2
	br_if   	0, $pop52
	i32.load	$push37=, 0($0)
	tee_local	$push36=, $5=, $pop37
	i32.const	$push3=, -2
	i32.and 	$push4=, $pop36, $pop3
	i32.const	$push5=, -1
	i32.add 	$2=, $pop4, $pop5
.LBB40_3:
	end_block
	block   	
	block   	
	i32.const	$push38=, 1
	i32.and 	$push6=, $5, $pop38
	br_if   	0, $pop6
	i32.const	$push7=, 254
	i32.and 	$push8=, $5, $pop7
	i32.const	$push9=, 1
	i32.shr_u	$3=, $pop8, $pop9
	br      	1
.LBB40_5:
	end_block
	i32.load	$3=, 4($0)
.LBB40_6:
	end_block
	i32.const	$4=, 10
	block   	
	i32.gt_u	$push10=, $3, $1
	i32.select	$push40=, $3, $1, $pop10
	tee_local	$push39=, $1=, $pop40
	i32.const	$push11=, 11
	i32.lt_u	$push12=, $pop39, $pop11
	br_if   	0, $pop12
	i32.const	$push13=, 16
	i32.add 	$push14=, $1, $pop13
	i32.const	$push15=, -16
	i32.and 	$push16=, $pop14, $pop15
	i32.const	$push17=, -1
	i32.add 	$4=, $pop16, $pop17
.LBB40_8:
	end_block
	block   	
	i32.eq  	$push18=, $4, $2
	br_if   	0, $pop18
	block   	
	block   	
	i32.const	$push19=, 10
	i32.ne  	$push20=, $4, $pop19
	br_if   	0, $pop20
	i32.const	$6=, 1
	i32.const	$push41=, 1
	i32.add 	$1=, $0, $pop41
	i32.load	$2=, 8($0)
	i32.const	$7=, 0
	br      	1
.LBB40_11:
	end_block
	i32.const	$push42=, 1
	i32.add 	$push22=, $4, $pop42
	i32.call	$1=, _Znwj@FUNCTION, $pop22
	block   	
	i32.gt_u	$push21=, $4, $2
	br_if   	0, $pop21
	i32.eqz 	$push53=, $1
	br_if   	2, $pop53
.LBB40_13:
	end_block
	block   	
	i32.load8_u	$push45=, 0($0)
	tee_local	$push44=, $5=, $pop45
	i32.const	$push43=, 1
	i32.and 	$push23=, $pop44, $pop43
	br_if   	0, $pop23
	i32.const	$7=, 1
	i32.const	$push46=, 1
	i32.add 	$2=, $0, $pop46
	i32.const	$6=, 0
	br      	1
.LBB40_15:
	end_block
	i32.load	$2=, 8($0)
	i32.const	$6=, 1
	i32.const	$7=, 1
.LBB40_16:
	end_block
	block   	
	block   	
	i32.const	$push47=, 1
	i32.and 	$push24=, $5, $pop47
	br_if   	0, $pop24
	i32.const	$push25=, 254
	i32.and 	$push26=, $5, $pop25
	i32.const	$push48=, 1
	i32.shr_u	$5=, $pop26, $pop48
	br      	1
.LBB40_18:
	end_block
	i32.load	$5=, 4($0)
.LBB40_19:
	end_block
	block   	
	i32.const	$push27=, 1
	i32.add 	$push50=, $5, $pop27
	tee_local	$push49=, $5=, $pop50
	i32.eqz 	$push54=, $pop49
	br_if   	0, $pop54
	i32.call	$drop=, memcpy@FUNCTION, $1, $2, $5
.LBB40_21:
	end_block
	block   	
	i32.eqz 	$push55=, $6
	br_if   	0, $pop55
	call    	_ZdlPv@FUNCTION, $2
.LBB40_23:
	end_block
	block   	
	i32.eqz 	$push56=, $7
	br_if   	0, $pop56
	i32.store	4($0), $3
	i32.store	8($0), $1
	i32.const	$push30=, 1
	i32.add 	$push31=, $4, $pop30
	i32.const	$push51=, 1
	i32.or  	$push32=, $pop31, $pop51
	i32.store	0($0), $pop32
	return
.LBB40_25:
	end_block
	i32.const	$push28=, 1
	i32.shl 	$push29=, $3, $pop28
	i32.store8	0($0), $pop29
.LBB40_26:
	end_block
	return
.LBB40_27:
	end_block
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end40:
	.size	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj, .Lfunc_end40-_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj

	.section	.text._ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,"axG",@progbits,_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,comdat
	.hidden	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.weak	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.type	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,@function
_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv:
	.param  	i32
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end41:
	.size	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv, .Lfunc_end41-_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv

	.section	.text._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_,"axG",@progbits,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC5ERKS5_,comdat
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_,@function
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32
	i64.const	$push0=, 0
	i64.store	0($0):p2align=2, $pop0
	i32.const	$push23=, 8
	i32.add 	$push22=, $0, $pop23
	tee_local	$push21=, $3=, $pop22
	i32.const	$push1=, 0
	i32.store	0($pop21), $pop1
	block   	
	i32.load8_u	$push2=, 0($1)
	i32.const	$push3=, 1
	i32.and 	$push4=, $pop2, $pop3
	br_if   	0, $pop4
	i64.load	$push18=, 0($1):p2align=2
	i64.store	0($0):p2align=2, $pop18
	i32.const	$push24=, 8
	i32.add 	$push19=, $1, $pop24
	i32.load	$push20=, 0($pop19)
	i32.store	0($3), $pop20
	return  	$0
.LBB42_2:
	end_block
	block   	
	i32.load	$push26=, 4($1)
	tee_local	$push25=, $3=, $pop26
	i32.const	$push5=, -16
	i32.ge_u	$push6=, $pop25, $pop5
	br_if   	0, $pop6
	i32.load	$2=, 8($1)
	block   	
	block   	
	block   	
	i32.const	$push7=, 11
	i32.ge_u	$push8=, $3, $pop7
	br_if   	0, $pop8
	i32.const	$push14=, 1
	i32.shl 	$push15=, $3, $pop14
	i32.store8	0($0), $pop15
	i32.const	$push27=, 1
	i32.add 	$1=, $0, $pop27
	br_if   	1, $3
	br      	2
.LBB42_5:
	end_block
	i32.const	$push9=, 16
	i32.add 	$push10=, $3, $pop9
	i32.const	$push11=, -16
	i32.and 	$push29=, $pop10, $pop11
	tee_local	$push28=, $4=, $pop29
	i32.call	$1=, _Znwj@FUNCTION, $pop28
	i32.const	$push12=, 1
	i32.or  	$push13=, $4, $pop12
	i32.store	0($0), $pop13
	i32.store	8($0), $1
	i32.store	4($0), $3
.LBB42_6:
	end_block
	i32.call	$drop=, memcpy@FUNCTION, $1, $2, $3
.LBB42_7:
	end_block
	i32.add 	$push16=, $1, $3
	i32.const	$push17=, 0
	i32.store8	0($pop16), $pop17
	return  	$0
.LBB42_8:
	end_block
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end42:
	.size	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_, .Lfunc_end42-_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_

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
.LBB43_2:
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
.LBB43_4:
	end_loop
	end_block
	i32.sub 	$5=, $3, $4
.LBB43_5:
	end_block
	copy_local	$push11=, $5
	.endfunc
.Lfunc_end43:
	.size	memcmp, .Lfunc_end43-memcmp

	.hidden	malloc
	.globl	malloc
	.type	malloc,@function
malloc:
	.param  	i32
	.result 	i32
	i32.const	$push0=, _ZN5eosio11memory_heapE
	i32.call	$push1=, _ZN5eosio14memory_manager6mallocEm@FUNCTION, $pop0, $0
	.endfunc
.Lfunc_end44:
	.size	malloc, .Lfunc_end44-malloc

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
.LBB45_3:
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
.LBB45_7:
	end_block
	i32.const	$push72=, 4
	i32.add 	$10=, $2, $pop72
.LBB45_8:
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
.LBB45_10:
	end_block
	i32.call	$push86=, _ZN5eosio14memory_manager16next_active_heapEv@FUNCTION, $0
	tee_local	$push85=, $1=, $pop86
	br_if   	0, $pop85
.LBB45_11:
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
.LBB45_12:
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
	i32.const	$push93=, .L.str.1.17
	call    	eosio_assert@FUNCTION, $pop31, $pop93
	i32.const	$push92=, 8196
	i32.add 	$push32=, $1, $pop92
	i32.load	$push91=, 0($pop32)
	tee_local	$push90=, $6=, $pop91
	i32.const	$push89=, 4
	i32.add 	$13=, $pop90, $pop89
.LBB45_13:
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
.LBB45_15:
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
.LBB45_18:
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
.LBB45_20:
	end_block
	i32.ge_u	$push49=, $1, $2
	br_if   	4, $pop49
.LBB45_21:
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
.LBB45_23:
	end_loop
	end_block
	return  	$1
.LBB45_24:
	end_block
	i32.load	$push50=, 0($8)
	i32.const	$push51=, -2147483648
	i32.or  	$push52=, $pop50, $pop51
	i32.store	0($8), $pop52
	return  	$13
.LBB45_25:
	end_block
	i32.const	$push61=, 0
	.endfunc
.Lfunc_end45:
	.size	_ZN5eosio14memory_manager6mallocEm, .Lfunc_end45-_ZN5eosio14memory_manager6mallocEm

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
.LBB46_2:
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
.LBB46_3:
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
.LBB46_6:
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
.LBB46_9:
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
.LBB46_13:
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
.LBB46_17:
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
.LBB46_18:
	end_block
	return  	$8
.LBB46_19:
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
.LBB46_21:
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
.LBB46_22:
	end_block
	i32.add 	$push71=, $8, $7
	i32.store	0($2), $pop71
	copy_local	$push158=, $2
	.endfunc
.Lfunc_end46:
	.size	_ZN5eosio14memory_manager16next_active_heapEv, .Lfunc_end46-_ZN5eosio14memory_manager16next_active_heapEv

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
.LBB47_3:
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
.LBB47_6:
	end_block
	i32.const	$push25=, 12
	i32.add 	$push24=, $3, $pop25
	tee_local	$push23=, $3=, $pop24
	i32.lt_u	$push14=, $pop23, $1
	br_if   	0, $pop14
.LBB47_7:
	end_loop
	end_block
	return
.LBB47_8:
	end_block
	i32.const	$push10=, -4
	i32.add 	$push27=, $0, $pop10
	tee_local	$push26=, $3=, $pop27
	i32.load	$push11=, 0($3)
	i32.const	$push12=, 2147483647
	i32.and 	$push13=, $pop11, $pop12
	i32.store	0($pop26), $pop13
	.endfunc
.Lfunc_end47:
	.size	free, .Lfunc_end47-free

	.type	.L.str,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"config"
	.size	.L.str, 7

	.type	.L.str.1,@object
.L.str.1:
	.asciz	"Wrong record size"
	.size	.L.str.1, 18

	.type	.L.str.2,@object
.L.str.2:
	.asciz	"Setting owner to: "
	.size	.L.str.2, 19

	.type	.L.str.3,@object
.L.str.3:
	.asciz	" with delay: "
	.size	.L.str.3, 14

	.type	.L.str.4,@object
.L.str.4:
	.asciz	"\n"
	.size	.L.str.4, 2

	.type	.L.str.5,@object
.L.str.5:
	.asciz	"eosio"
	.size	.L.str.5, 6

	.type	.L.str.6,@object
.L.str.6:
	.asciz	"onerror"
	.size	.L.str.6, 8

	.type	.L.str.7,@object
.L.str.7:
	.asciz	"eosio.token"
	.size	.L.str.7, 12

	.type	.L.str.8,@object
.L.str.8:
	.asciz	"transfer"
	.size	.L.str.8, 9

	.type	.L.str.9,@object
.L.str.9:
	.asciz	"setowner"
	.size	.L.str.9, 9

	.type	.L.str.12,@object
.L.str.12:
	.asciz	"read"
	.size	.L.str.12, 5

	.type	.L.str.21,@object
.L.str.21:
	.asciz	"Attempting to use unconfigured proxy"
	.size	.L.str.21, 37

	.type	.L.str.22,@object
.L.str.22:
	.asciz	"proxy may only pay its owner"
	.size	.L.str.22, 29

	.type	.L.str.23,@object
.L.str.23:
	.asciz	"proxy is not involved in this transfer"
	.size	.L.str.23, 39

	.type	.L.str.24,@object
.L.str.24:
	.asciz	"active"
	.size	.L.str.24, 7

	.type	.L.str.17,@object
.L.str.17:
	.asciz	"write"
	.size	.L.str.17, 6

	.type	.L.str.19,@object
.L.str.19:
	.asciz	"magnitude of asset amount must be less than 2^62"
	.size	.L.str.19, 49

	.type	.L.str.20,@object
.L.str.20:
	.asciz	"invalid symbol name"
	.size	.L.str.20, 20

	.type	.L.str.10,@object
.L.str.10:
	.asciz	"get"
	.size	.L.str.10, 4

	.type	.L.str.13,@object
.L.str.13:
	.asciz	"starting onerror\n"
	.size	.L.str.13, 18

	.type	.L.str.14,@object
.L.str.14:
	.asciz	"Attempting use of unconfigured proxy"
	.size	.L.str.14, 37

	.type	.L.str.15,@object
.L.str.15:
	.asciz	"Resending Transaction: "
	.size	.L.str.15, 24

	.type	.L.str.16,@object
.L.str.16:
	.asciz	" as "
	.size	.L.str.16, 5

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

	.type	.L.str.1.17,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1.17:
	.asciz	"malloc_from_freed was designed to only be called after _heap was completely allocated"
	.size	.L.str.1.17, 86

	.type	_ZZ4sbrkjE11initialized,@object
	.lcomm	_ZZ4sbrkjE11initialized,1
	.type	_ZZ4sbrkjE10sbrk_bytes,@object
	.lcomm	_ZZ4sbrkjE10sbrk_bytes,4,2

	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_,@function
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_ = _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_@FUNCTION
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
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
	.functype	db_find_i64, i32, i64, i64, i64, i64
	.functype	db_get_i64, i32, i32, i32, i32
	.functype	eosio_assert, void, i32, i32
	.functype	db_update_i64, void, i32, i64, i32, i32
	.functype	db_store_i64, i32, i64, i64, i64, i64, i32, i32
	.functype	require_auth, void, i64
	.functype	prints, void, i32
	.functype	printn, void, i64
	.functype	printui, void, i64
	.functype	action_data_size, i32
	.functype	read_action_data, i32, i32, i32
	.functype	memcpy, i32, i32, i32, i32
	.functype	send_deferred, void, i32, i64, i32, i32, i32
	.functype	printui128, void, i32
	.functype	abort, void
