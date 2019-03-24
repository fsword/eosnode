const char* const snapshot_test_wast = R"=====(
(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$j (func (result i64)))
 (type $FUNCSIG$vjj (func (param i64 i64)))
 (type $FUNCSIG$vj (func (param i64)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$ijjjj (func (param i64 i64 i64 i64) (result i32)))
 (type $FUNCSIG$ijjjjii (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $FUNCSIG$ijjjji (func (param i64 i64 i64 i64 i32) (result i32)))
 (type $FUNCSIG$vijii (func (param i32 i64 i32 i32)))
 (type $FUNCSIG$ijjjij (func (param i64 i64 i64 i32 i64) (result i32)))
 (type $FUNCSIG$viji (func (param i32 i64 i32)))
 (type $FUNCSIG$ijjjiij (func (param i64 i64 i64 i32 i32 i64) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vijjjj (func (param i32 i64 i64 i64 i64)))
 (import "env" "__addtf3" (func $__addtf3 (param i32 i64 i64 i64 i64)))
 (import "env" "__floatunsitf" (func $__floatunsitf (param i32 i32)))
 (import "env" "abort" (func $abort))
 (import "env" "action_data_size" (func $action_data_size (result i32)))
 (import "env" "current_receiver" (func $current_receiver (result i64)))
 (import "env" "current_time" (func $current_time (result i64)))
 (import "env" "db_get_i64" (func $db_get_i64 (param i32 i32 i32) (result i32)))
 (import "env" "db_idx128_find_primary" (func $db_idx128_find_primary (param i64 i64 i64 i32 i64) (result i32)))
 (import "env" "db_idx128_store" (func $db_idx128_store (param i64 i64 i64 i64 i32) (result i32)))
 (import "env" "db_idx128_update" (func $db_idx128_update (param i32 i64 i32)))
 (import "env" "db_idx256_find_primary" (func $db_idx256_find_primary (param i64 i64 i64 i32 i32 i64) (result i32)))
 (import "env" "db_idx256_store" (func $db_idx256_store (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_idx256_update" (func $db_idx256_update (param i32 i64 i32 i32)))
 (import "env" "db_idx64_find_primary" (func $db_idx64_find_primary (param i64 i64 i64 i32 i64) (result i32)))
 (import "env" "db_idx64_store" (func $db_idx64_store (param i64 i64 i64 i64 i32) (result i32)))
 (import "env" "db_idx64_update" (func $db_idx64_update (param i32 i64 i32)))
 (import "env" "db_idx_double_find_primary" (func $db_idx_double_find_primary (param i64 i64 i64 i32 i64) (result i32)))
 (import "env" "db_idx_double_store" (func $db_idx_double_store (param i64 i64 i64 i64 i32) (result i32)))
 (import "env" "db_idx_double_update" (func $db_idx_double_update (param i32 i64 i32)))
 (import "env" "db_idx_long_double_find_primary" (func $db_idx_long_double_find_primary (param i64 i64 i64 i32 i64) (result i32)))
 (import "env" "db_idx_long_double_store" (func $db_idx_long_double_store (param i64 i64 i64 i64 i32) (result i32)))
 (import "env" "db_idx_long_double_update" (func $db_idx_long_double_update (param i32 i64 i32)))
 (import "env" "db_lowerbound_i64" (func $db_lowerbound_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_store_i64" (func $db_store_i64 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_update_i64" (func $db_update_i64 (param i32 i64 i32 i32)))
 (import "env" "eosio_assert" (func $eosio_assert (param i32 i32)))
 (import "env" "memcpy" (func $memcpy (param i32 i32 i32) (result i32)))
 (import "env" "read_action_data" (func $read_action_data (param i32 i32) (result i32)))
 (import "env" "require_auth" (func $require_auth (param i64)))
 (import "env" "require_auth2" (func $require_auth2 (param i64 i64)))
 (table 0 anyfunc)
 (memory $0 1)
 (data (i32.const 4) "\d0J\00\00")
 (data (i32.const 16) "increment\00")
 (data (i32.const 32) "unsupported action\00")
 (data (i32.const 64) "cannot create objects in table of another contract\00")
 (data (i32.const 128) "cannot pass end iterator to modify\00")
 (data (i32.const 176) "object passed to modify is not in multi_index\00")
 (data (i32.const 224) "cannot modify objects in table of another contract\00")
 (data (i32.const 288) "updater cannot change primary key when modifying an object\00")
 (data (i32.const 352) "error reading iterator\00")
 (data (i32.const 384) "read\00")
 (data (i32.const 400) "write\00")
 (data (i32.const 8816) "malloc_from_freed was designed to only be called after _heap was completely allocated\00")
 (export "memory" (memory $0))
 (export "_ZeqRK11checksum256S1_" (func $_ZeqRK11checksum256S1_))
 (export "_ZeqRK11checksum160S1_" (func $_ZeqRK11checksum160S1_))
 (export "_ZneRK11checksum160S1_" (func $_ZneRK11checksum160S1_))
 (export "now" (func $now))
 (export "_ZN5eosio12require_authERKNS_16permission_levelE" (func $_ZN5eosio12require_authERKNS_16permission_levelE))
 (export "apply" (func $apply))
 (export "memcmp" (func $memcmp))
 (export "malloc" (func $malloc))
 (export "free" (func $free))
 (func $_ZeqRK11checksum256S1_ (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $memcmp
    (get_local $0)
    (get_local $1)
    (i32.const 32)
   )
  )
 )
 (func $_ZeqRK11checksum160S1_ (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $memcmp
    (get_local $0)
    (get_local $1)
    (i32.const 32)
   )
  )
 )
 (func $_ZneRK11checksum160S1_ (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $memcmp
    (get_local $0)
    (get_local $1)
    (i32.const 32)
   )
   (i32.const 0)
  )
 )
 (func $now (result i32)
  (i32.wrap/i64
   (i64.div_u
    (call $current_time)
    (i64.const 1000000)
   )
  )
 )
 (func $_ZN5eosio12require_authERKNS_16permission_levelE (param $0 i32)
  (call $require_auth2
   (i64.load
    (get_local $0)
   )
   (i64.load offset=8
    (get_local $0)
   )
  )
 )
 (func $apply (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i64)
  (local $16 i64)
  (local $17 i64)
  (local $18 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $18
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 336)
    )
   )
  )
  (call $require_auth
   (get_local $1)
  )
  (set_local $1
   (i64.const 0)
  )
  (set_local $15
   (i64.const 59)
  )
  (set_local $14
   (i32.const 16)
  )
  (set_local $16
   (i64.const 0)
  )
  (loop $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (br_if $label$5
         (i64.gt_u
          (get_local $1)
          (i64.const 8)
         )
        )
        (br_if $label$4
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $3
             (i32.load8_s
              (get_local $14)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $3
         (i32.add
          (get_local $3)
          (i32.const 165)
         )
        )
        (br $label$3)
       )
       (set_local $17
        (i64.const 0)
       )
       (br_if $label$2
        (i64.le_u
         (get_local $1)
         (i64.const 11)
        )
       )
       (br $label$1)
      )
      (set_local $3
       (select
        (i32.add
         (get_local $3)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $3)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $17
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $17
     (i64.shl
      (i64.and
       (get_local $17)
       (i64.const 31)
      )
      (i64.and
       (get_local $15)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $14
    (i32.add
     (get_local $14)
     (i32.const 1)
    )
   )
   (set_local $1
    (i64.add
     (get_local $1)
     (i64.const 1)
    )
   )
   (set_local $16
    (i64.or
     (get_local $17)
     (get_local $16)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $15
      (i64.add
       (get_local $15)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $16)
    (get_local $2)
   )
   (i32.const 32)
  )
  (set_local $3
   (call $_ZN5eosio18unpack_action_dataIN13snapshot_test9incrementEEET_v)
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $18)
     (i32.const 48)
    )
    (i32.const 32)
   )
   (i64.const 0)
  )
  (i32.store8
   (i32.add
    (get_local $18)
    (i32.const 88)
   )
   (i32.const 0)
  )
  (i64.store offset=56
   (get_local $18)
   (get_local $0)
  )
  (i64.store offset=48
   (get_local $18)
   (get_local $0)
  )
  (i64.store offset=64
   (get_local $18)
   (i64.const -1)
  )
  (i64.store offset=72
   (get_local $18)
   (i64.const 0)
  )
  (block $label$6
   (block $label$7
    (block $label$8
     (block $label$9
      (br_if $label$9
       (i32.le_s
        (tee_local $14
         (call $db_lowerbound_i64
          (get_local $0)
          (get_local $0)
          (i64.const 5310412463739502592)
          (i64.const 0)
         )
        )
        (i32.const -1)
       )
      )
      (set_local $14
       (call $_ZNK5eosio11multi_indexILy5310412463739502592EN13snapshot_test11main_recordEJNS_10indexed_byILy4581849670896058368EN5boost11multi_index13const_mem_funIS2_dXadL_ZNKS2_13get_index_f64EvEEEEEENS3_ILy4582043184942546944ENS6_IS2_eXadL_ZNKS2_14get_index_f128EvEEEEEENS3_ILy4583538520756322304ENS6_IS2_yXadL_ZNKS2_13get_index_i64EvEEEEEENS3_ILy4583784811360944128ENS6_IS2_oXadL_ZNKS2_14get_index_i128EvEEEEEENS3_ILy4583792748460507136ENS6_IS2_RKNS_9fixed_keyILj32EEEXadL_ZNKS2_14get_index_i256EvEEEEEEEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $18)
         (i32.const 48)
        )
        (get_local $14)
       )
      )
      (call $eosio_assert
       (i32.const 1)
       (i32.const 128)
      )
      (call $eosio_assert
       (i32.eq
        (i32.load offset=96
         (get_local $14)
        )
        (i32.add
         (get_local $18)
         (i32.const 48)
        )
       )
       (i32.const 176)
      )
      (call $eosio_assert
       (i64.eq
        (i64.load offset=48
         (get_local $18)
        )
        (call $current_receiver)
       )
       (i32.const 224)
      )
      (set_local $1
       (i64.load
        (tee_local $5
         (i32.add
          (get_local $14)
          (i32.const 24)
         )
        )
       )
      )
      (set_local $15
       (i64.load
        (tee_local $6
         (i32.add
          (get_local $14)
          (i32.const 16)
         )
        )
       )
      )
      (call $__floatunsitf
       (i32.add
        (get_local $18)
        (i32.const 32)
       )
       (get_local $3)
      )
      (call $__addtf3
       (i32.add
        (get_local $18)
        (i32.const 16)
       )
       (i64.load offset=32
        (get_local $18)
       )
       (i64.load
        (i32.add
         (i32.add
          (get_local $18)
          (i32.const 32)
         )
         (i32.const 8)
        )
       )
       (get_local $15)
       (get_local $1)
      )
      (set_local $17
       (i64.load
        (tee_local $7
         (i32.add
          (get_local $14)
          (i32.const 48)
         )
        )
       )
      )
      (set_local $16
       (i64.load
        (tee_local $8
         (i32.add
          (get_local $14)
          (i32.const 56)
         )
        )
       )
      )
      (set_local $2
       (i64.load
        (tee_local $9
         (i32.add
          (get_local $14)
          (i32.const 32)
         )
        )
       )
      )
      (set_local $10
       (i64.load
        (tee_local $4
         (i32.add
          (get_local $14)
          (i32.const 8)
         )
        )
       )
      )
      (i64.store
       (tee_local $11
        (i32.add
         (i32.add
          (get_local $18)
          (i32.const 304)
         )
         (i32.const 24)
        )
       )
       (i64.load
        (i32.add
         (get_local $14)
         (i32.const 88)
        )
       )
      )
      (i64.store
       (tee_local $12
        (i32.add
         (i32.add
          (get_local $18)
          (i32.const 304)
         )
         (i32.const 16)
        )
       )
       (i64.load
        (i32.add
         (get_local $14)
         (i32.const 80)
        )
       )
      )
      (i64.store offset=312
       (get_local $18)
       (i64.load
        (tee_local $13
         (i32.add
          (get_local $14)
          (i32.const 72)
         )
        )
       )
      )
      (i64.store offset=304
       (get_local $18)
       (i64.load offset=64
        (get_local $14)
       )
      )
      (i64.store offset=176
       (get_local $18)
       (get_local $10)
      )
      (i64.store
       (i32.add
        (i32.add
         (get_local $18)
         (i32.const 176)
        )
        (i32.const 24)
       )
       (get_local $1)
      )
      (i64.store offset=192
       (get_local $18)
       (get_local $15)
      )
      (i64.store offset=208
       (get_local $18)
       (get_local $2)
      )
      (i64.store
       (i32.add
        (i32.add
         (get_local $18)
         (i32.const 176)
        )
        (i32.const 56)
       )
       (get_local $16)
      )
      (i64.store offset=224
       (get_local $18)
       (get_local $17)
      )
      (i64.store
       (i32.add
        (i32.add
         (get_local $18)
         (i32.const 176)
        )
        (i32.const 88)
       )
       (i64.load
        (get_local $11)
       )
      )
      (i64.store
       (i32.add
        (i32.add
         (get_local $18)
         (i32.const 176)
        )
        (i32.const 80)
       )
       (i64.load
        (get_local $12)
       )
      )
      (i64.store
       (i32.add
        (i32.add
         (get_local $18)
         (i32.const 176)
        )
        (i32.const 72)
       )
       (i64.load offset=312
        (get_local $18)
       )
      )
      (i64.store offset=240
       (get_local $18)
       (i64.load offset=304
        (get_local $18)
       )
      )
      (i64.store
       (get_local $5)
       (i64.load
        (i32.add
         (i32.add
          (get_local $18)
          (i32.const 16)
         )
         (i32.const 8)
        )
       )
      )
      (i64.store
       (get_local $6)
       (i64.load offset=16
        (get_local $18)
       )
      )
      (i64.store
       (get_local $8)
       (i64.add
        (get_local $16)
        (select
         (i64.const 1)
         (i64.extend_u/i32
          (i64.lt_u
           (tee_local $15
            (i64.add
             (get_local $17)
             (tee_local $1
              (i64.extend_u/i32
               (get_local $3)
              )
             )
            )
           )
           (get_local $17)
          )
         )
         (i64.lt_u
          (get_local $15)
          (get_local $1)
         )
        )
       )
      )
      (i64.store
       (get_local $7)
       (get_local $15)
      )
      (f64.store
       (get_local $4)
       (f64.add
        (f64.convert_u/i32
         (get_local $3)
        )
        (f64.reinterpret/i64
         (get_local $10)
        )
       )
      )
      (i64.store
       (get_local $9)
       (i64.add
        (get_local $2)
        (get_local $1)
       )
      )
      (i64.store offset=64
       (get_local $14)
       (tee_local $17
        (i64.add
         (tee_local $15
          (i64.load offset=64
           (get_local $14)
          )
         )
         (get_local $1)
        )
       )
      )
      (i64.store
       (get_local $13)
       (i64.add
        (i64.load
         (get_local $13)
        )
        (select
         (i64.const 1)
         (i64.extend_u/i32
          (i64.lt_u
           (get_local $17)
           (get_local $15)
          )
         )
         (i64.lt_u
          (get_local $17)
          (get_local $1)
         )
        )
       )
      )
      (set_local $1
       (i64.load
        (get_local $14)
       )
      )
      (call $eosio_assert
       (i32.const 1)
       (i32.const 288)
      )
      (i32.store offset=168
       (get_local $18)
       (i32.add
        (i32.add
         (get_local $18)
         (i32.const 96)
        )
        (i32.const 58)
       )
      )
      (i32.store offset=164
       (get_local $18)
       (i32.add
        (get_local $18)
        (i32.const 96)
       )
      )
      (i32.store offset=160
       (get_local $18)
       (i32.add
        (get_local $18)
        (i32.const 96)
       )
      )
      (drop
       (call $_ZN13snapshot_testlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_11main_recordE
        (i32.add
         (get_local $18)
         (i32.const 160)
        )
        (get_local $14)
       )
      )
      (call $db_update_i64
       (i32.load offset=100
        (get_local $14)
       )
       (get_local $0)
       (i32.add
        (get_local $18)
        (i32.const 96)
       )
       (i32.const 58)
      )
      (block $label$10
       (br_if $label$10
        (i64.lt_u
         (get_local $1)
         (i64.load
          (tee_local $3
           (i32.add
            (i32.add
             (get_local $18)
             (i32.const 48)
            )
            (i32.const 16)
           )
          )
         )
        )
       )
       (i64.store
        (get_local $3)
        (select
         (i64.const -2)
         (i64.add
          (get_local $1)
          (i64.const 1)
         )
         (i64.gt_u
          (get_local $1)
          (i64.const -3)
         )
        )
       )
      )
      (set_local $3
       (i32.add
        (i32.add
         (get_local $18)
         (i32.const 176)
        )
        (i32.const 16)
       )
      )
      (i64.store offset=304
       (get_local $18)
       (i64.load
        (get_local $4)
       )
      )
      (block $label$11
       (br_if $label$11
        (i32.eqz
         (call $memcmp
          (i32.add
           (get_local $18)
           (i32.const 176)
          )
          (i32.add
           (get_local $18)
           (i32.const 304)
          )
          (i32.const 8)
         )
        )
       )
       (block $label$12
        (br_if $label$12
         (i32.gt_s
          (tee_local $4
           (i32.load
            (tee_local $13
             (i32.add
              (get_local $14)
              (i32.const 104)
             )
            )
           )
          )
          (i32.const -1)
         )
        )
        (i32.store
         (get_local $13)
         (tee_local $4
          (call $db_idx_double_find_primary
           (i64.load offset=48
            (get_local $18)
           )
           (i64.load
            (i32.add
             (get_local $18)
             (i32.const 56)
            )
           )
           (i64.const 5310412463739502592)
           (i32.add
            (get_local $18)
            (i32.const 272)
           )
           (get_local $1)
          )
         )
        )
       )
       (call $db_idx_double_update
        (get_local $4)
        (get_local $0)
        (i32.add
         (get_local $18)
         (i32.const 304)
        )
       )
      )
      (set_local $4
       (i32.add
        (i32.add
         (get_local $18)
         (i32.const 176)
        )
        (i32.const 32)
       )
      )
      (set_local $17
       (i64.load
        (i32.add
         (get_local $14)
         (i32.const 16)
        )
       )
      )
      (i64.store offset=312
       (get_local $18)
       (i64.load
        (i32.add
         (get_local $14)
         (i32.const 24)
        )
       )
      )
      (i64.store offset=304
       (get_local $18)
       (get_local $17)
      )
      (block $label$13
       (br_if $label$13
        (i32.eqz
         (call $memcmp
          (get_local $3)
          (i32.add
           (get_local $18)
           (i32.const 304)
          )
          (i32.const 16)
         )
        )
       )
       (block $label$14
        (br_if $label$14
         (i32.gt_s
          (tee_local $3
           (i32.load
            (tee_local $13
             (i32.add
              (get_local $14)
              (i32.const 108)
             )
            )
           )
          )
          (i32.const -1)
         )
        )
        (i32.store
         (get_local $13)
         (tee_local $3
          (call $db_idx_long_double_find_primary
           (i64.load offset=48
            (get_local $18)
           )
           (i64.load
            (i32.add
             (get_local $18)
             (i32.const 56)
            )
           )
           (i64.const 5310412463739502593)
           (i32.add
            (get_local $18)
            (i32.const 272)
           )
           (get_local $1)
          )
         )
        )
       )
       (call $db_idx_long_double_update
        (get_local $3)
        (get_local $0)
        (i32.add
         (get_local $18)
         (i32.const 304)
        )
       )
      )
      (set_local $13
       (i32.add
        (i32.add
         (get_local $18)
         (i32.const 176)
        )
        (i32.const 48)
       )
      )
      (i64.store offset=304
       (get_local $18)
       (i64.load
        (i32.add
         (get_local $14)
         (i32.const 32)
        )
       )
      )
      (block $label$15
       (br_if $label$15
        (i32.eqz
         (call $memcmp
          (get_local $4)
          (i32.add
           (get_local $18)
           (i32.const 304)
          )
          (i32.const 8)
         )
        )
       )
       (block $label$16
        (br_if $label$16
         (i32.gt_s
          (tee_local $3
           (i32.load
            (tee_local $4
             (i32.add
              (get_local $14)
              (i32.const 112)
             )
            )
           )
          )
          (i32.const -1)
         )
        )
        (i32.store
         (get_local $4)
         (tee_local $3
          (call $db_idx64_find_primary
           (i64.load offset=48
            (get_local $18)
           )
           (i64.load
            (i32.add
             (get_local $18)
             (i32.const 56)
            )
           )
           (i64.const 5310412463739502594)
           (i32.add
            (get_local $18)
            (i32.const 272)
           )
           (get_local $1)
          )
         )
        )
       )
       (call $db_idx64_update
        (get_local $3)
        (get_local $0)
        (i32.add
         (get_local $18)
         (i32.const 304)
        )
       )
      )
      (set_local $3
       (i32.add
        (get_local $14)
        (i32.const 64)
       )
      )
      (set_local $17
       (i64.load
        (i32.add
         (get_local $14)
         (i32.const 48)
        )
       )
      )
      (i64.store offset=312
       (get_local $18)
       (i64.load
        (i32.add
         (get_local $14)
         (i32.const 56)
        )
       )
      )
      (i64.store offset=304
       (get_local $18)
       (get_local $17)
      )
      (block $label$17
       (br_if $label$17
        (i32.eqz
         (call $memcmp
          (get_local $13)
          (i32.add
           (get_local $18)
           (i32.const 304)
          )
          (i32.const 16)
         )
        )
       )
       (block $label$18
        (br_if $label$18
         (i32.gt_s
          (tee_local $4
           (i32.load
            (tee_local $13
             (i32.add
              (get_local $14)
              (i32.const 116)
             )
            )
           )
          )
          (i32.const -1)
         )
        )
        (i32.store
         (get_local $13)
         (tee_local $4
          (call $db_idx128_find_primary
           (i64.load offset=48
            (get_local $18)
           )
           (i64.load
            (i32.add
             (get_local $18)
             (i32.const 56)
            )
           )
           (i64.const 5310412463739502595)
           (i32.add
            (get_local $18)
            (i32.const 272)
           )
           (get_local $1)
          )
         )
        )
       )
       (call $db_idx128_update
        (get_local $4)
        (get_local $0)
        (i32.add
         (get_local $18)
         (i32.const 304)
        )
       )
      )
      (i64.store
       (i32.add
        (i32.add
         (get_local $18)
         (i32.const 304)
        )
        (i32.const 24)
       )
       (i64.load
        (i32.add
         (get_local $3)
         (i32.const 24)
        )
       )
      )
      (i64.store
       (i32.add
        (i32.add
         (get_local $18)
         (i32.const 304)
        )
        (i32.const 16)
       )
       (i64.load
        (i32.add
         (get_local $3)
         (i32.const 16)
        )
       )
      )
      (i64.store offset=312
       (get_local $18)
       (i64.load
        (i32.add
         (get_local $3)
         (i32.const 8)
        )
       )
      )
      (i64.store offset=304
       (get_local $18)
       (i64.load
        (get_local $3)
       )
      )
      (br_if $label$8
       (i32.eqz
        (call $memcmp
         (i32.add
          (get_local $18)
          (i32.const 240)
         )
         (i32.add
          (get_local $18)
          (i32.const 304)
         )
         (i32.const 32)
        )
       )
      )
      (block $label$19
       (br_if $label$19
        (i32.gt_s
         (tee_local $14
          (i32.load
           (tee_local $3
            (i32.add
             (get_local $14)
             (i32.const 120)
            )
           )
          )
         )
         (i32.const -1)
        )
       )
       (i64.store
        (i32.add
         (get_local $18)
         (i32.const 296)
        )
        (i64.const 0)
       )
       (i64.store
        (i32.add
         (get_local $18)
         (i32.const 288)
        )
        (i64.const 0)
       )
       (i64.store offset=272
        (get_local $18)
        (i64.const 0)
       )
       (i64.store offset=280
        (get_local $18)
        (i64.const 0)
       )
       (i32.store
        (get_local $3)
        (tee_local $14
         (call $db_idx256_find_primary
          (i64.load offset=48
           (get_local $18)
          )
          (i64.load
           (i32.add
            (get_local $18)
            (i32.const 56)
           )
          )
          (i64.const 5310412463739502596)
          (i32.add
           (get_local $18)
           (i32.const 272)
          )
          (i32.const 2)
          (get_local $1)
         )
        )
       )
      )
      (call $db_idx256_update
       (get_local $14)
       (get_local $0)
       (i32.add
        (get_local $18)
        (i32.const 304)
       )
       (i32.const 2)
      )
      (br_if $label$7
       (tee_local $4
        (i32.load offset=72
         (get_local $18)
        )
       )
      )
      (br $label$6)
     )
     (call $eosio_assert
      (i64.eq
       (call $current_receiver)
       (get_local $0)
      )
      (i32.const 64)
     )
     (i64.store offset=80
      (tee_local $14
       (call $_Znwj
        (i32.const 128)
       )
      )
      (i64.const 0)
     )
     (i64.store
      (i32.add
       (get_local $14)
       (i32.const 88)
      )
      (i64.const 0)
     )
     (i32.store offset=96
      (get_local $14)
      (i32.add
       (get_local $18)
       (i32.const 48)
      )
     )
     (call $__floatunsitf
      (get_local $18)
      (get_local $3)
     )
     (i64.store
      (tee_local $13
       (i32.add
        (get_local $14)
        (i32.const 24)
       )
      )
      (i64.load
       (i32.add
        (get_local $18)
        (i32.const 8)
       )
      )
     )
     (i64.store offset=16
      (get_local $14)
      (i64.load
       (get_local $18)
      )
     )
     (i64.store
      (tee_local $5
       (i32.add
        (get_local $14)
        (i32.const 56)
       )
      )
      (i64.const 0)
     )
     (i64.store offset=48
      (get_local $14)
      (tee_local $1
       (i64.extend_u/i32
        (get_local $3)
       )
      )
     )
     (i64.store
      (i32.add
       (get_local $14)
       (i32.const 72)
      )
      (i64.const 0)
     )
     (i64.store offset=64
      (get_local $14)
      (get_local $1)
     )
     (f64.store offset=8
      (get_local $14)
      (f64.convert_u/i32
       (get_local $3)
      )
     )
     (i64.store
      (get_local $14)
      (get_local $1)
     )
     (i64.store offset=32
      (get_local $14)
      (get_local $1)
     )
     (i32.store offset=312
      (get_local $18)
      (i32.add
       (i32.add
        (get_local $18)
        (i32.const 96)
       )
       (i32.const 58)
      )
     )
     (i32.store offset=308
      (get_local $18)
      (i32.add
       (get_local $18)
       (i32.const 96)
      )
     )
     (i32.store offset=304
      (get_local $18)
      (i32.add
       (get_local $18)
       (i32.const 96)
      )
     )
     (drop
      (call $_ZN13snapshot_testlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_11main_recordE
       (i32.add
        (get_local $18)
        (i32.const 304)
       )
       (get_local $14)
      )
     )
     (i32.store offset=100
      (get_local $14)
      (call $db_store_i64
       (i64.load
        (tee_local $3
         (i32.add
          (i32.add
           (get_local $18)
           (i32.const 48)
          )
          (i32.const 8)
         )
        )
       )
       (i64.const 5310412463739502592)
       (get_local $0)
       (tee_local $1
        (i64.load
         (get_local $14)
        )
       )
       (i32.add
        (get_local $18)
        (i32.const 96)
       )
       (i32.const 58)
      )
     )
     (set_local $4
      (i32.add
       (get_local $14)
       (i32.const 64)
      )
     )
     (block $label$20
      (br_if $label$20
       (i64.lt_u
        (get_local $1)
        (i64.load
         (tee_local $6
          (i32.add
           (i32.add
            (get_local $18)
            (i32.const 48)
           )
           (i32.const 16)
          )
         )
        )
       )
      )
      (i64.store
       (get_local $6)
       (select
        (i64.const -2)
        (i64.add
         (get_local $1)
         (i64.const 1)
        )
        (i64.gt_u
         (get_local $1)
         (i64.const -3)
        )
       )
      )
     )
     (set_local $1
      (i64.load
       (get_local $14)
      )
     )
     (set_local $17
      (i64.load
       (get_local $3)
      )
     )
     (i64.store offset=176
      (get_local $18)
      (i64.load
       (i32.add
        (get_local $14)
        (i32.const 8)
       )
      )
     )
     (i32.store offset=104
      (get_local $14)
      (call $db_idx_double_store
       (get_local $17)
       (i64.const 5310412463739502592)
       (get_local $0)
       (get_local $1)
       (i32.add
        (get_local $18)
        (i32.const 176)
       )
      )
     )
     (set_local $1
      (i64.load
       (get_local $14)
      )
     )
     (set_local $17
      (i64.load
       (get_local $3)
      )
     )
     (i64.store offset=184
      (get_local $18)
      (i64.load
       (get_local $13)
      )
     )
     (i64.store offset=176
      (get_local $18)
      (i64.load
       (i32.add
        (get_local $14)
        (i32.const 16)
       )
      )
     )
     (i32.store offset=108
      (get_local $14)
      (call $db_idx_long_double_store
       (get_local $17)
       (i64.const 5310412463739502593)
       (get_local $0)
       (get_local $1)
       (i32.add
        (get_local $18)
        (i32.const 176)
       )
      )
     )
     (set_local $1
      (i64.load
       (get_local $14)
      )
     )
     (set_local $17
      (i64.load
       (get_local $3)
      )
     )
     (i64.store offset=176
      (get_local $18)
      (i64.load
       (i32.add
        (get_local $14)
        (i32.const 32)
       )
      )
     )
     (i32.store offset=112
      (get_local $14)
      (call $db_idx64_store
       (get_local $17)
       (i64.const 5310412463739502594)
       (get_local $0)
       (get_local $1)
       (i32.add
        (get_local $18)
        (i32.const 176)
       )
      )
     )
     (set_local $1
      (i64.load
       (get_local $14)
      )
     )
     (set_local $17
      (i64.load
       (get_local $3)
      )
     )
     (i64.store offset=184
      (get_local $18)
      (i64.load
       (get_local $5)
      )
     )
     (i64.store offset=176
      (get_local $18)
      (i64.load
       (i32.add
        (get_local $14)
        (i32.const 48)
       )
      )
     )
     (i32.store offset=116
      (get_local $14)
      (call $db_idx128_store
       (get_local $17)
       (i64.const 5310412463739502595)
       (get_local $0)
       (get_local $1)
       (i32.add
        (get_local $18)
        (i32.const 176)
       )
      )
     )
     (set_local $1
      (i64.load
       (get_local $14)
      )
     )
     (set_local $17
      (i64.load
       (get_local $3)
      )
     )
     (i64.store
      (i32.add
       (i32.add
        (get_local $18)
        (i32.const 176)
       )
       (i32.const 24)
      )
      (i64.load
       (i32.add
        (get_local $4)
        (i32.const 24)
       )
      )
     )
     (i64.store
      (i32.add
       (i32.add
        (get_local $18)
        (i32.const 176)
       )
       (i32.const 16)
      )
      (i64.load
       (i32.add
        (get_local $4)
        (i32.const 16)
       )
      )
     )
     (i64.store offset=184
      (get_local $18)
      (i64.load
       (i32.add
        (get_local $4)
        (i32.const 8)
       )
      )
     )
     (i64.store offset=176
      (get_local $18)
      (i64.load
       (get_local $4)
      )
     )
     (i32.store offset=120
      (get_local $14)
      (call $db_idx256_store
       (get_local $17)
       (i64.const 5310412463739502596)
       (get_local $0)
       (get_local $1)
       (i32.add
        (get_local $18)
        (i32.const 176)
       )
       (i32.const 2)
      )
     )
     (i32.store offset=96
      (get_local $18)
      (get_local $14)
     )
     (i64.store offset=176
      (get_local $18)
      (tee_local $1
       (i64.load
        (get_local $14)
       )
      )
     )
     (i32.store offset=304
      (get_local $18)
      (tee_local $4
       (i32.load
        (i32.add
         (get_local $14)
         (i32.const 100)
        )
       )
      )
     )
     (block $label$21
      (block $label$22
       (br_if $label$22
        (i32.ge_u
         (tee_local $3
          (i32.load
           (tee_local $13
            (i32.add
             (get_local $18)
             (i32.const 76)
            )
           )
          )
         )
         (i32.load
          (i32.add
           (i32.add
            (get_local $18)
            (i32.const 48)
           )
           (i32.const 32)
          )
         )
        )
       )
       (i64.store offset=8
        (get_local $3)
        (get_local $1)
       )
       (i32.store offset=16
        (get_local $3)
        (get_local $4)
       )
       (i32.store offset=96
        (get_local $18)
        (i32.const 0)
       )
       (i32.store
        (get_local $3)
        (get_local $14)
       )
       (i32.store
        (get_local $13)
        (i32.add
         (get_local $3)
         (i32.const 24)
        )
       )
       (br $label$21)
      )
      (call $_ZNSt3__16vectorIN5eosio11multi_indexILy5310412463739502592EN13snapshot_test11main_recordEJNS1_10indexed_byILy4581849670896058368EN5boost11multi_index13const_mem_funIS4_dXadL_ZNKS4_13get_index_f64EvEEEEEENS5_ILy4582043184942546944ENS8_IS4_eXadL_ZNKS4_14get_index_f128EvEEEEEENS5_ILy4583538520756322304ENS8_IS4_yXadL_ZNKS4_13get_index_i64EvEEEEEENS5_ILy4583784811360944128ENS8_IS4_oXadL_ZNKS4_14get_index_i128EvEEEEEENS5_ILy4583792748460507136ENS8_IS4_RKNS1_9fixed_keyILj32EEEXadL_ZNKS4_14get_index_i256EvEEEEEEEE8item_ptrENS_9allocatorISO_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSN_4itemENS_14default_deleteISU_EEEERyRlEEEvDpOT_
       (i32.add
        (get_local $18)
        (i32.const 72)
       )
       (i32.add
        (get_local $18)
        (i32.const 96)
       )
       (i32.add
        (get_local $18)
        (i32.const 176)
       )
       (i32.add
        (get_local $18)
        (i32.const 304)
       )
      )
     )
     (set_local $14
      (i32.load offset=96
       (get_local $18)
      )
     )
     (i32.store offset=96
      (get_local $18)
      (i32.const 0)
     )
     (br_if $label$8
      (i32.eqz
       (get_local $14)
      )
     )
     (call $_ZdlPv
      (get_local $14)
     )
    )
    (br_if $label$6
     (i32.eqz
      (tee_local $4
       (i32.load offset=72
        (get_local $18)
       )
      )
     )
    )
   )
   (block $label$23
    (block $label$24
     (br_if $label$24
      (i32.eq
       (tee_local $14
        (i32.load
         (tee_local $13
          (i32.add
           (get_local $18)
           (i32.const 76)
          )
         )
        )
       )
       (get_local $4)
      )
     )
     (loop $label$25
      (set_local $3
       (i32.load
        (tee_local $14
         (i32.add
          (get_local $14)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $14)
       (i32.const 0)
      )
      (block $label$26
       (br_if $label$26
        (i32.eqz
         (get_local $3)
        )
       )
       (call $_ZdlPv
        (get_local $3)
       )
      )
      (br_if $label$25
       (i32.ne
        (get_local $4)
        (get_local $14)
       )
      )
     )
     (set_local $14
      (i32.load
       (i32.add
        (get_local $18)
        (i32.const 72)
       )
      )
     )
     (br $label$23)
    )
    (set_local $14
     (get_local $4)
    )
   )
   (i32.store
    (get_local $13)
    (get_local $4)
   )
   (call $_ZdlPv
    (get_local $14)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $18)
    (i32.const 336)
   )
  )
 )
 (func $_ZN5eosio18unpack_action_dataIN13snapshot_test9incrementEEET_v (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $3
   (tee_local $2
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $2)
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.lt_u
      (tee_local $0
       (call $action_data_size)
      )
      (i32.const 513)
     )
    )
    (set_local $2
     (call $malloc
      (get_local $0)
     )
    )
    (br $label$0)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $2
     (i32.sub
      (get_local $2)
      (i32.and
       (i32.add
        (get_local $0)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (drop
   (call $read_action_data
    (get_local $2)
    (get_local $0)
   )
  )
  (i32.store offset=8
   (get_local $3)
   (i32.const 0)
  )
  (call $eosio_assert
   (i32.gt_u
    (get_local $0)
    (i32.const 3)
   )
   (i32.const 384)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
    (get_local $2)
    (i32.const 4)
   )
  )
  (set_local $1
   (i32.load offset=8
    (get_local $3)
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.lt_u
     (get_local $0)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $2)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $3)
    (i32.const 16)
   )
  )
  (get_local $1)
 )
 (func $_ZN13snapshot_testlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_11main_recordE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 7)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 15)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (i32.const 16)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 16)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (i32.add
     (get_local $1)
     (i32.const 32)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 15)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (i32.add
     (get_local $1)
     (i32.const 48)
    )
    (i32.const 16)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 16)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 1)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (i32.add
     (get_local $1)
     (i32.const 64)
    )
    (i32.const 2)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 2)
   )
  )
  (get_local $0)
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy5310412463739502592EN13snapshot_test11main_recordEJNS1_10indexed_byILy4581849670896058368EN5boost11multi_index13const_mem_funIS4_dXadL_ZNKS4_13get_index_f64EvEEEEEENS5_ILy4582043184942546944ENS8_IS4_eXadL_ZNKS4_14get_index_f128EvEEEEEENS5_ILy4583538520756322304ENS8_IS4_yXadL_ZNKS4_13get_index_i64EvEEEEEENS5_ILy4583784811360944128ENS8_IS4_oXadL_ZNKS4_14get_index_i128EvEEEEEENS5_ILy4583792748460507136ENS8_IS4_RKNS1_9fixed_keyILj32EEEXadL_ZNKS4_14get_index_i256EvEEEEEEEE8item_ptrENS_9allocatorISO_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSN_4itemENS_14default_deleteISU_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy5310412463739502592EN13snapshot_test11main_recordEJNS_10indexed_byILy4581849670896058368EN5boost11multi_index13const_mem_funIS2_dXadL_ZNKS2_13get_index_f64EvEEEEEENS3_ILy4582043184942546944ENS6_IS2_eXadL_ZNKS2_14get_index_f128EvEEEEEENS3_ILy4583538520756322304ENS6_IS2_yXadL_ZNKS2_13get_index_i64EvEEEEEENS3_ILy4583784811360944128ENS6_IS2_oXadL_ZNKS2_14get_index_i128EvEEEEEENS3_ILy4583792748460507136ENS6_IS2_RKNS_9fixed_keyILj32EEEXadL_ZNKS2_14get_index_i256EvEEEEEEEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $8
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $4
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (set_local $6
     (i32.load
      (i32.add
       (get_local $7)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $6
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 352)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.lt_u
       (get_local $6)
       (i32.const 513)
      )
     )
     (set_local $4
      (call $malloc
       (get_local $6)
      )
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $4
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $6)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $db_get_i64
     (get_local $1)
     (get_local $4)
     (get_local $6)
    )
   )
   (i32.store offset=36
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=32
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=40
    (get_local $8)
    (i32.add
     (get_local $4)
     (get_local $6)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.lt_u
      (get_local $6)
      (i32.const 513)
     )
    )
    (call $free
     (get_local $4)
    )
   )
   (i64.store offset=16
    (tee_local $6
     (call $_Znwj
      (i32.const 128)
     )
    )
    (i64.const 0)
   )
   (i64.store offset=48
    (get_local $6)
    (i64.const 0)
   )
   (i64.store offset=8
    (get_local $6)
    (i64.const 0)
   )
   (i64.store offset=32
    (get_local $6)
    (i64.const 0)
   )
   (i64.store offset=64
    (get_local $6)
    (i64.const 0)
   )
   (i64.store
    (i32.add
     (get_local $6)
     (i32.const 24)
    )
    (i64.const 0)
   )
   (i64.store
    (i32.add
     (get_local $6)
     (i32.const 56)
    )
    (i64.const 0)
   )
   (i64.store
    (i32.add
     (get_local $6)
     (i32.const 88)
    )
    (i64.const 0)
   )
   (i64.store
    (i32.add
     (get_local $6)
     (i32.const 80)
    )
    (i64.const 0)
   )
   (i64.store
    (i32.add
     (get_local $6)
     (i32.const 72)
    )
    (i64.const 0)
   )
   (i32.store offset=96
    (get_local $6)
    (get_local $0)
   )
   (drop
    (call $_ZN13snapshot_testrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_11main_recordE
     (i32.add
      (get_local $8)
      (i32.const 32)
     )
     (get_local $6)
    )
   )
   (i32.store offset=104
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=100
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=108
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=112
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=116
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=120
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=24
    (get_local $8)
    (get_local $6)
   )
   (i64.store offset=16
    (get_local $8)
    (tee_local $5
     (i64.load
      (get_local $6)
     )
    )
   )
   (i32.store offset=12
    (get_local $8)
    (tee_local $7
     (i32.load offset=100
      (get_local $6)
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.ge_u
       (tee_local $4
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $4)
      (get_local $5)
     )
     (i32.store offset=16
      (get_local $4)
      (get_local $7)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (get_local $6)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
     (br $label$7)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy5310412463739502592EN13snapshot_test11main_recordEJNS1_10indexed_byILy4581849670896058368EN5boost11multi_index13const_mem_funIS4_dXadL_ZNKS4_13get_index_f64EvEEEEEENS5_ILy4582043184942546944ENS8_IS4_eXadL_ZNKS4_14get_index_f128EvEEEEEENS5_ILy4583538520756322304ENS8_IS4_yXadL_ZNKS4_13get_index_i64EvEEEEEENS5_ILy4583784811360944128ENS8_IS4_oXadL_ZNKS4_14get_index_i128EvEEEEEENS5_ILy4583792748460507136ENS8_IS4_RKNS1_9fixed_keyILj32EEEXadL_ZNKS4_14get_index_i256EvEEEEEEEE8item_ptrENS_9allocatorISO_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSN_4itemENS_14default_deleteISU_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.add
      (get_local $8)
      (i32.const 12)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $8)
    )
   )
   (i32.store offset=24
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
  (get_local $6)
 )
 (func $_ZN13snapshot_testrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_11main_recordE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 7)
   )
   (i32.const 384)
  )
  (drop
   (call $memcpy
    (get_local $1)
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 384)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 15)
   )
   (i32.const 384)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 16)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 16)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 384)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 32)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 15)
   )
   (i32.const 384)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 48)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 16)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 16)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 1)
   )
   (i32.const 384)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 64)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 2)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 2)
   )
  )
  (get_local $0)
 )
 (func $_Znwj (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $label$0
   (br_if $label$0
    (tee_local $0
     (call $malloc
      (tee_local $1
       (select
        (get_local $0)
        (i32.const 1)
        (get_local $0)
       )
      )
     )
    )
   )
   (loop $label$1
    (set_local $0
     (i32.const 0)
    )
    (br_if $label$0
     (i32.eqz
      (tee_local $2
       (i32.load offset=408
        (i32.const 0)
       )
      )
     )
    )
    (call_indirect (type $FUNCSIG$v)
     (get_local $2)
    )
    (br_if $label$1
     (i32.eqz
      (tee_local $0
       (call $malloc
        (get_local $1)
       )
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $_ZdlPv (param $0 i32)
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $0)
    )
   )
   (call $free
    (get_local $0)
   )
  )
 )
 (func $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv (param $0 i32)
  (call $abort)
  (unreachable)
 )
 (func $memcmp (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $5
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $2)
    )
   )
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.ne
       (tee_local $3
        (i32.load8_u
         (get_local $0)
        )
       )
       (tee_local $4
        (i32.load8_u
         (get_local $1)
        )
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br_if $label$2
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const -1)
       )
      )
     )
     (br $label$0)
    )
   )
   (set_local $5
    (i32.sub
     (get_local $3)
     (get_local $4)
    )
   )
  )
  (get_local $5)
 )
 (func $malloc (param $0 i32) (result i32)
  (call $_ZN5eosio14memory_manager6mallocEm
   (i32.const 412)
   (get_local $0)
  )
 )
 (func $_ZN5eosio14memory_manager6mallocEm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $1)
    )
   )
   (block $label$1
    (br_if $label$1
     (tee_local $13
      (i32.load offset=8384
       (get_local $0)
      )
     )
    )
    (set_local $13
     (i32.const 16)
    )
    (i32.store
     (i32.add
      (get_local $0)
      (i32.const 8384)
     )
     (i32.const 16)
    )
   )
   (set_local $2
    (select
     (i32.sub
      (i32.add
       (get_local $1)
       (i32.const 8)
      )
      (tee_local $2
       (i32.and
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
        (i32.const 7)
       )
      )
     )
     (get_local $1)
     (get_local $2)
    )
   )
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.ge_u
        (tee_local $10
         (i32.load offset=8388
          (get_local $0)
         )
        )
        (get_local $13)
       )
      )
      (set_local $1
       (i32.add
        (i32.add
         (get_local $0)
         (i32.mul
          (get_local $10)
          (i32.const 12)
         )
        )
        (i32.const 8192)
       )
      )
      (block $label$5
       (br_if $label$5
        (get_local $10)
       )
       (br_if $label$5
        (i32.load
         (tee_local $13
          (i32.add
           (get_local $0)
           (i32.const 8196)
          )
         )
        )
       )
       (i32.store
        (get_local $1)
        (i32.const 8192)
       )
       (i32.store
        (get_local $13)
        (get_local $0)
       )
      )
      (set_local $10
       (i32.add
        (get_local $2)
        (i32.const 4)
       )
      )
      (loop $label$6
       (block $label$7
        (br_if $label$7
         (i32.gt_u
          (i32.add
           (tee_local $13
            (i32.load offset=8
             (get_local $1)
            )
           )
           (get_local $10)
          )
          (i32.load
           (get_local $1)
          )
         )
        )
        (i32.store
         (tee_local $13
          (i32.add
           (i32.load offset=4
            (get_local $1)
           )
           (get_local $13)
          )
         )
         (i32.or
          (i32.and
           (i32.load
            (get_local $13)
           )
           (i32.const -2147483648)
          )
          (get_local $2)
         )
        )
        (i32.store
         (tee_local $1
          (i32.add
           (get_local $1)
           (i32.const 8)
          )
         )
         (i32.add
          (i32.load
           (get_local $1)
          )
          (get_local $10)
         )
        )
        (i32.store
         (get_local $13)
         (i32.or
          (i32.load
           (get_local $13)
          )
          (i32.const -2147483648)
         )
        )
        (br_if $label$3
         (tee_local $1
          (i32.add
           (get_local $13)
           (i32.const 4)
          )
         )
        )
       )
       (br_if $label$6
        (tee_local $1
         (call $_ZN5eosio14memory_manager16next_active_heapEv
          (get_local $0)
         )
        )
       )
      )
     )
     (set_local $4
      (i32.sub
       (i32.const 2147483644)
       (get_local $2)
      )
     )
     (set_local $11
      (i32.add
       (get_local $0)
       (i32.const 8392)
      )
     )
     (set_local $12
      (i32.add
       (get_local $0)
       (i32.const 8384)
      )
     )
     (set_local $13
      (tee_local $3
       (i32.load offset=8392
        (get_local $0)
       )
      )
     )
     (loop $label$8
      (call $eosio_assert
       (i32.eq
        (i32.load
         (i32.add
          (tee_local $1
           (i32.add
            (get_local $0)
            (i32.mul
             (get_local $13)
             (i32.const 12)
            )
           )
          )
          (i32.const 8200)
         )
        )
        (i32.load
         (tee_local $5
          (i32.add
           (get_local $1)
           (i32.const 8192)
          )
         )
        )
       )
       (i32.const 8816)
      )
      (set_local $13
       (i32.add
        (tee_local $6
         (i32.load
          (i32.add
           (get_local $1)
           (i32.const 8196)
          )
         )
        )
        (i32.const 4)
       )
      )
      (loop $label$9
       (set_local $7
        (i32.add
         (get_local $6)
         (i32.load
          (get_local $5)
         )
        )
       )
       (set_local $1
        (i32.and
         (tee_local $9
          (i32.load
           (tee_local $8
            (i32.add
             (get_local $13)
             (i32.const -4)
            )
           )
          )
         )
         (i32.const 2147483647)
        )
       )
       (block $label$10
        (br_if $label$10
         (i32.lt_s
          (get_local $9)
          (i32.const 0)
         )
        )
        (block $label$11
         (br_if $label$11
          (i32.ge_u
           (get_local $1)
           (get_local $2)
          )
         )
         (loop $label$12
          (br_if $label$11
           (i32.ge_u
            (tee_local $10
             (i32.add
              (get_local $13)
              (get_local $1)
             )
            )
            (get_local $7)
           )
          )
          (br_if $label$11
           (i32.lt_s
            (tee_local $10
             (i32.load
              (get_local $10)
             )
            )
            (i32.const 0)
           )
          )
          (br_if $label$12
           (i32.lt_u
            (tee_local $1
             (i32.add
              (i32.add
               (get_local $1)
               (i32.and
                (get_local $10)
                (i32.const 2147483647)
               )
              )
              (i32.const 4)
             )
            )
            (get_local $2)
           )
          )
         )
        )
        (i32.store
         (get_local $8)
         (i32.or
          (select
           (get_local $1)
           (get_local $2)
           (i32.lt_u
            (get_local $1)
            (get_local $2)
           )
          )
          (i32.and
           (get_local $9)
           (i32.const -2147483648)
          )
         )
        )
        (block $label$13
         (br_if $label$13
          (i32.le_u
           (get_local $1)
           (get_local $2)
          )
         )
         (i32.store
          (i32.add
           (get_local $13)
           (get_local $2)
          )
          (i32.and
           (i32.add
            (get_local $4)
            (get_local $1)
           )
           (i32.const 2147483647)
          )
         )
        )
        (br_if $label$2
         (i32.ge_u
          (get_local $1)
          (get_local $2)
         )
        )
       )
       (br_if $label$9
        (i32.lt_u
         (tee_local $13
          (i32.add
           (i32.add
            (get_local $13)
            (get_local $1)
           )
           (i32.const 4)
          )
         )
         (get_local $7)
        )
       )
      )
      (set_local $1
       (i32.const 0)
      )
      (i32.store
       (get_local $11)
       (tee_local $13
        (select
         (i32.const 0)
         (tee_local $13
          (i32.add
           (i32.load
            (get_local $11)
           )
           (i32.const 1)
          )
         )
         (i32.eq
          (get_local $13)
          (i32.load
           (get_local $12)
          )
         )
        )
       )
      )
      (br_if $label$8
       (i32.ne
        (get_local $13)
        (get_local $3)
       )
      )
     )
    )
    (return
     (get_local $1)
    )
   )
   (i32.store
    (get_local $8)
    (i32.or
     (i32.load
      (get_local $8)
     )
     (i32.const -2147483648)
    )
   )
   (return
    (get_local $13)
   )
  )
  (i32.const 0)
 )
 (func $_ZN5eosio14memory_manager16next_active_heapEv (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $1
   (i32.load offset=8388
    (get_local $0)
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (i32.load8_u offset=8902
       (i32.const 0)
      )
     )
    )
    (set_local $7
     (i32.load offset=8904
      (i32.const 0)
     )
    )
    (br $label$0)
   )
   (set_local $7
    (current_memory)
   )
   (i32.store8 offset=8902
    (i32.const 0)
    (i32.const 1)
   )
   (i32.store offset=8904
    (i32.const 0)
    (tee_local $7
     (i32.shl
      (get_local $7)
      (i32.const 16)
     )
    )
   )
  )
  (set_local $3
   (get_local $7)
  )
  (block $label$2
   (block $label$3
    (block $label$4
     (block $label$5
      (br_if $label$5
       (i32.le_u
        (tee_local $2
         (i32.shr_u
          (i32.add
           (get_local $7)
           (i32.const 65535)
          )
          (i32.const 16)
         )
        )
        (tee_local $8
         (current_memory)
        )
       )
      )
      (drop
       (grow_memory
        (i32.sub
         (get_local $2)
         (get_local $8)
        )
       )
      )
      (set_local $8
       (i32.const 0)
      )
      (br_if $label$4
       (i32.ne
        (get_local $2)
        (current_memory)
       )
      )
      (set_local $3
       (i32.load offset=8904
        (i32.const 0)
       )
      )
     )
     (set_local $8
      (i32.const 0)
     )
     (i32.store offset=8904
      (i32.const 0)
      (get_local $3)
     )
     (br_if $label$4
      (i32.lt_s
       (get_local $7)
       (i32.const 0)
      )
     )
     (set_local $2
      (i32.add
       (get_local $0)
       (i32.mul
        (get_local $1)
        (i32.const 12)
       )
      )
     )
     (set_local $7
      (i32.sub
       (i32.sub
        (i32.add
         (get_local $7)
         (select
          (i32.const 65536)
          (i32.const 131072)
          (tee_local $6
           (i32.lt_u
            (tee_local $8
             (i32.and
              (get_local $7)
              (i32.const 65535)
             )
            )
            (i32.const 64513)
           )
          )
         )
        )
        (select
         (get_local $8)
         (i32.and
          (get_local $7)
          (i32.const 131071)
         )
         (get_local $6)
        )
       )
       (get_local $7)
      )
     )
     (block $label$6
      (br_if $label$6
       (i32.load8_u offset=8902
        (i32.const 0)
       )
      )
      (set_local $3
       (current_memory)
      )
      (i32.store8 offset=8902
       (i32.const 0)
       (i32.const 1)
      )
      (i32.store offset=8904
       (i32.const 0)
       (tee_local $3
        (i32.shl
         (get_local $3)
         (i32.const 16)
        )
       )
      )
     )
     (set_local $2
      (i32.add
       (get_local $2)
       (i32.const 8192)
      )
     )
     (br_if $label$3
      (i32.lt_s
       (get_local $7)
       (i32.const 0)
      )
     )
     (set_local $6
      (get_local $3)
     )
     (block $label$7
      (br_if $label$7
       (i32.le_u
        (tee_local $8
         (i32.shr_u
          (i32.add
           (i32.add
            (tee_local $5
             (i32.and
              (i32.add
               (get_local $7)
               (i32.const 7)
              )
              (i32.const -8)
             )
            )
            (get_local $3)
           )
           (i32.const 65535)
          )
          (i32.const 16)
         )
        )
        (tee_local $4
         (current_memory)
        )
       )
      )
      (drop
       (grow_memory
        (i32.sub
         (get_local $8)
         (get_local $4)
        )
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $8)
        (current_memory)
       )
      )
      (set_local $6
       (i32.load offset=8904
        (i32.const 0)
       )
      )
     )
     (i32.store offset=8904
      (i32.const 0)
      (i32.add
       (get_local $6)
       (get_local $5)
      )
     )
     (br_if $label$3
      (i32.eq
       (get_local $3)
       (i32.const -1)
      )
     )
     (br_if $label$2
      (i32.eq
       (i32.add
        (tee_local $6
         (i32.load
          (i32.add
           (tee_local $1
            (i32.add
             (get_local $0)
             (i32.mul
              (get_local $1)
              (i32.const 12)
             )
            )
           )
           (i32.const 8196)
          )
         )
        )
        (tee_local $8
         (i32.load
          (get_local $2)
         )
        )
       )
       (get_local $3)
      )
     )
     (block $label$8
      (br_if $label$8
       (i32.eq
        (get_local $8)
        (tee_local $1
         (i32.load
          (tee_local $5
           (i32.add
            (get_local $1)
            (i32.const 8200)
           )
          )
         )
        )
       )
      )
      (i32.store
       (tee_local $6
        (i32.add
         (get_local $6)
         (get_local $1)
        )
       )
       (i32.or
        (i32.and
         (i32.load
          (get_local $6)
         )
         (i32.const -2147483648)
        )
        (i32.add
         (i32.sub
          (i32.const -4)
          (get_local $1)
         )
         (get_local $8)
        )
       )
      )
      (i32.store
       (get_local $5)
       (i32.load
        (get_local $2)
       )
      )
      (i32.store
       (get_local $6)
       (i32.and
        (i32.load
         (get_local $6)
        )
        (i32.const 2147483647)
       )
      )
     )
     (i32.store
      (tee_local $2
       (i32.add
        (get_local $0)
        (i32.const 8388)
       )
      )
      (tee_local $2
       (i32.add
        (i32.load
         (get_local $2)
        )
        (i32.const 1)
       )
      )
     )
     (i32.store
      (i32.add
       (tee_local $0
        (i32.add
         (get_local $0)
         (i32.mul
          (get_local $2)
          (i32.const 12)
         )
        )
       )
       (i32.const 8196)
      )
      (get_local $3)
     )
     (i32.store
      (tee_local $8
       (i32.add
        (get_local $0)
        (i32.const 8192)
       )
      )
      (get_local $7)
     )
    )
    (return
     (get_local $8)
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.eq
      (tee_local $8
       (i32.load
        (get_local $2)
       )
      )
      (tee_local $7
       (i32.load
        (tee_local $1
         (i32.add
          (tee_local $3
           (i32.add
            (get_local $0)
            (i32.mul
             (get_local $1)
             (i32.const 12)
            )
           )
          )
          (i32.const 8200)
         )
        )
       )
      )
     )
    )
    (i32.store
     (tee_local $3
      (i32.add
       (i32.load
        (i32.add
         (get_local $3)
         (i32.const 8196)
        )
       )
       (get_local $7)
      )
     )
     (i32.or
      (i32.and
       (i32.load
        (get_local $3)
       )
       (i32.const -2147483648)
      )
      (i32.add
       (i32.sub
        (i32.const -4)
        (get_local $7)
       )
       (get_local $8)
      )
     )
    )
    (i32.store
     (get_local $1)
     (i32.load
      (get_local $2)
     )
    )
    (i32.store
     (get_local $3)
     (i32.and
      (i32.load
       (get_local $3)
      )
      (i32.const 2147483647)
     )
    )
   )
   (i32.store offset=8384
    (get_local $0)
    (tee_local $3
     (i32.add
      (i32.load
       (tee_local $7
        (i32.add
         (get_local $0)
         (i32.const 8388)
        )
       )
      )
      (i32.const 1)
     )
    )
   )
   (i32.store
    (get_local $7)
    (get_local $3)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.store
   (get_local $2)
   (i32.add
    (get_local $8)
    (get_local $7)
   )
  )
  (get_local $2)
 )
 (func $free (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (get_local $0)
     )
    )
    (br_if $label$1
     (i32.lt_s
      (tee_local $2
       (i32.load offset=8796
        (i32.const 0)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $3
     (i32.const 8604)
    )
    (set_local $1
     (i32.add
      (i32.mul
       (get_local $2)
       (i32.const 12)
      )
      (i32.const 8604)
     )
    )
    (loop $label$2
     (br_if $label$1
      (i32.eqz
       (tee_local $2
        (i32.load
         (i32.add
          (get_local $3)
          (i32.const 4)
         )
        )
       )
      )
     )
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (i32.add
         (get_local $2)
         (i32.const 4)
        )
        (get_local $0)
       )
      )
      (br_if $label$0
       (i32.gt_u
        (i32.add
         (get_local $2)
         (i32.load
          (get_local $3)
         )
        )
        (get_local $0)
       )
      )
     )
     (br_if $label$2
      (i32.lt_u
       (tee_local $3
        (i32.add
         (get_local $3)
         (i32.const 12)
        )
       )
       (get_local $1)
      )
     )
    )
   )
   (return)
  )
  (i32.store
   (tee_local $3
    (i32.add
     (get_local $0)
     (i32.const -4)
    )
   )
   (i32.and
    (i32.load
     (get_local $3)
    )
    (i32.const 2147483647)
   )
  )
 )
)
)=====";
