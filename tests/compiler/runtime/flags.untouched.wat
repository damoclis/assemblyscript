(module
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\11\00\00\00 \00\00\00\00\00\00\00\00\00\00\00r\00u\00n\00t\00i\00m\00e\00/\00f\00l\00a\00g\00s\00.\00t\00s\00")
 (data (i32.const 56) "\11\00\00\00,\00\00\00\00\00\00\00\00\00\00\00~\00l\00i\00b\00/\00a\00l\00l\00o\00c\00a\00t\00o\00r\00/\00t\00l\00s\00f\00.\00t\00s\00")
 (data (i32.const 120) "\11\00\00\00(\00\00\00\00\00\00\00\00\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s\00")
 (data (i32.const 176) ";\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\19\00\00\00\0f\00\00\00)\00\00\00\0f\00\00\00I\00\00\00\0f\00\00\00\89\00\00\00\0f\00\00\00\t\01\00\00\0f\00\00\00\08\00\00\00\00\00\00\00I\04\00\00\0f\00\00\00I\06\00\00\0f\00\00\00\1a\00\00\00\00\00\00\00*\00\00\00\00\00\00\00J\00\00\00\00\00\00\00\8a\00\00\00\00\00\00\00\n\01\00\00\00\00\00\00J\04\00\00\00\00\00\00J\06\00\00\00\00\00\00\1c\80\00\00\00\00\00\00,@\00\00\00\00\00\00L \00\00\00\00\00\00\8c\10\00\00\00\00\00\00\0c\t\00\00\00\00\00\00\1c \02\00\00\00\00\00\1c \03\00\00\00\00\00L\0c\00\00\00\00\00\00L\0e\00\00\00\00\00\00L&\03\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00A\04\00\00\0f\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00B\04\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00D \02\00\00\00\00\00\00\00\00\00\00\00\00\00D$\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $runtime/flags/VALUE_ALIGN_REF i32 (i32.const 64))
 (global $runtime/flags/KEY_ALIGN_REF i32 (i32.const 8192))
 (global $~lib/util/runtime/HEADER_SIZE i32 (i32.const 16))
 (global $~lib/allocator/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/util/runtime/HEADER_MAGIC i32 (i32.const -1520547049))
 (global $~lib/ASC_NO_ASSERT i32 (i32.const 0))
 (global $~lib/collector/itcm/state (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/fromSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/toSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/iter (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/white (mut i32) (i32.const 0))
 (global $~lib/runtime/ROOT (mut i32) (i32.const 0))
 (global $~lib/runtime/RTTI_BASE i32 (i32.const 176))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 656))
 (export "memory" (memory $0))
 (export "$.instanceof" (func $~lib/runtime/runtime.instanceof))
 (export "$.flags" (func $~lib/runtime/runtime.flags))
 (export "$.newObject" (func $~lib/runtime/runtime.newObject))
 (export "$.newString" (func $~lib/runtime/runtime.newString))
 (export "$.newArrayBuffer" (func $~lib/runtime/runtime.newArrayBuffer))
 (export "$.newArray" (func $~lib/runtime/runtime.newArray))
 (export "$.retain" (func $~lib/runtime/runtime.retain))
 (export "$.release" (func $~lib/runtime/runtime.release))
 (export "$.collect" (func $~lib/runtime/runtime.collect))
 (start $start)
 (func $~lib/runtime/runtime.flags (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/runtime/RTTI_BASE
  local.set $1
  local.get $0
  i32.eqz
  if (result i32)
   i32.const 1
  else   
   local.get $0
   local.get $1
   i32.load
   i32.gt_u
  end
  if (result i32)
   unreachable
  else   
   local.get $1
   local.get $0
   i32.const 8
   i32.mul
   i32.add
   i32.load
  end
 )
 (func $runtime/flags/test<~lib/array/Array<i8>> (; 2 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 18
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/array/Array<i16>> (; 3 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 19
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/array/Array<i32>> (; 4 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 20
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/array/Array<i64>> (; 5 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 21
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/array/Array<v128>> (; 6 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 22
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/array/Array<runtime/flags/Ref>> (; 7 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 24
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/array/Array<runtime/flags/Ref | null>> (; 8 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 25
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/set/Set<i8>> (; 9 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 26
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/set/Set<i16>> (; 10 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 27
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/set/Set<i32>> (; 11 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 28
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/set/Set<i64>> (; 12 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 29
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/set/Set<v128>> (; 13 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 30
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/set/Set<runtime/flags/Ref>> (; 14 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 31
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/set/Set<runtime/flags/Ref | null>> (; 15 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 32
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/map/Map<v128,i8>> (; 16 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 33
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/map/Map<i64,i16>> (; 17 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 34
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/map/Map<i32,i32>> (; 18 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 35
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/map/Map<i16,i64>> (; 19 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 36
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/map/Map<i8,v128>> (; 20 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 37
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/map/Map<runtime/flags/Ref,i8>> (; 21 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 38
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/map/Map<runtime/flags/Ref | null,i8>> (; 22 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 39
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/map/Map<i8,runtime/flags/Ref>> (; 23 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 40
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/map/Map<i8,runtime/flags/Ref | null>> (; 24 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 41
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/map/Map<runtime/flags/Ref | null,runtime/flags/Ref | null>> (; 25 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 42
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<runtime/flags/NoCycle> (; 26 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 43
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<runtime/flags/DirectCycle> (; 27 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 44
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<runtime/flags/IndirectCycle> (; 28 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 45
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<runtime/flags/IndirectCycleArray> (; 29 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 47
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<runtime/flags/InnerCycleArray> (; 30 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 49
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<runtime/flags/IndirectCycleSet> (; 31 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 50
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<runtime/flags/InnerCycleSet> (; 32 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 52
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<runtime/flags/IndirectCycleMapKey> (; 33 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 53
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<runtime/flags/IndirectCycleMapValue> (; 34 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 55
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<runtime/flags/InnerCycleMapKey> (; 35 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 57
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<runtime/flags/InnerCycleMapValue> (; 36 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 58
  call $~lib/runtime/runtime.flags
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start:runtime/flags (; 37 ;) (type $FUNCSIG$v)
  i32.const 1
  i32.const 8
  i32.or
  i32.const 16
  i32.or
  call $runtime/flags/test<~lib/array/Array<i8>>
  i32.const 1
  i32.const 8
  i32.or
  i32.const 32
  i32.or
  call $runtime/flags/test<~lib/array/Array<i16>>
  i32.const 1
  i32.const 8
  i32.or
  i32.const 64
  i32.or
  call $runtime/flags/test<~lib/array/Array<i32>>
  i32.const 1
  i32.const 8
  i32.or
  i32.const 128
  i32.or
  call $runtime/flags/test<~lib/array/Array<i64>>
  i32.const 1
  i32.const 8
  i32.or
  i32.const 256
  i32.or
  call $runtime/flags/test<~lib/array/Array<v128>>
  i32.const 1
  i32.const 8
  i32.or
  global.get $runtime/flags/VALUE_ALIGN_REF
  i32.or
  i32.const 1024
  i32.or
  call $runtime/flags/test<~lib/array/Array<runtime/flags/Ref>>
  i32.const 1
  i32.const 8
  i32.or
  global.get $runtime/flags/VALUE_ALIGN_REF
  i32.or
  i32.const 512
  i32.or
  i32.const 1024
  i32.or
  call $runtime/flags/test<~lib/array/Array<runtime/flags/Ref | null>>
  i32.const 2
  i32.const 8
  i32.or
  i32.const 16
  i32.or
  call $runtime/flags/test<~lib/set/Set<i8>>
  i32.const 2
  i32.const 8
  i32.or
  i32.const 32
  i32.or
  call $runtime/flags/test<~lib/set/Set<i16>>
  i32.const 2
  i32.const 8
  i32.or
  i32.const 64
  i32.or
  call $runtime/flags/test<~lib/set/Set<i32>>
  i32.const 2
  i32.const 8
  i32.or
  i32.const 128
  i32.or
  call $runtime/flags/test<~lib/set/Set<i64>>
  i32.const 2
  i32.const 8
  i32.or
  i32.const 256
  i32.or
  call $runtime/flags/test<~lib/set/Set<v128>>
  i32.const 2
  i32.const 8
  i32.or
  global.get $runtime/flags/VALUE_ALIGN_REF
  i32.or
  i32.const 1024
  i32.or
  call $runtime/flags/test<~lib/set/Set<runtime/flags/Ref>>
  i32.const 2
  i32.const 8
  i32.or
  global.get $runtime/flags/VALUE_ALIGN_REF
  i32.or
  i32.const 512
  i32.or
  i32.const 1024
  i32.or
  call $runtime/flags/test<~lib/set/Set<runtime/flags/Ref | null>>
  i32.const 4
  i32.const 8
  i32.or
  i32.const 32768
  i32.or
  i32.const 16
  i32.or
  call $runtime/flags/test<~lib/map/Map<v128,i8>>
  i32.const 4
  i32.const 8
  i32.or
  i32.const 16384
  i32.or
  i32.const 32
  i32.or
  call $runtime/flags/test<~lib/map/Map<i64,i16>>
  i32.const 4
  i32.const 8
  i32.or
  i32.const 8192
  i32.or
  i32.const 64
  i32.or
  call $runtime/flags/test<~lib/map/Map<i32,i32>>
  i32.const 4
  i32.const 8
  i32.or
  i32.const 4096
  i32.or
  i32.const 128
  i32.or
  call $runtime/flags/test<~lib/map/Map<i16,i64>>
  i32.const 4
  i32.const 8
  i32.or
  i32.const 2048
  i32.or
  i32.const 256
  i32.or
  call $runtime/flags/test<~lib/map/Map<i8,v128>>
  i32.const 4
  i32.const 8
  i32.or
  global.get $runtime/flags/KEY_ALIGN_REF
  i32.or
  i32.const 131072
  i32.or
  i32.const 16
  i32.or
  call $runtime/flags/test<~lib/map/Map<runtime/flags/Ref,i8>>
  i32.const 4
  i32.const 8
  i32.or
  global.get $runtime/flags/KEY_ALIGN_REF
  i32.or
  i32.const 65536
  i32.or
  i32.const 131072
  i32.or
  i32.const 16
  i32.or
  call $runtime/flags/test<~lib/map/Map<runtime/flags/Ref | null,i8>>
  i32.const 4
  i32.const 8
  i32.or
  i32.const 2048
  i32.or
  i32.const 1024
  i32.or
  global.get $runtime/flags/VALUE_ALIGN_REF
  i32.or
  call $runtime/flags/test<~lib/map/Map<i8,runtime/flags/Ref>>
  i32.const 4
  i32.const 8
  i32.or
  i32.const 2048
  i32.or
  i32.const 512
  i32.or
  i32.const 1024
  i32.or
  global.get $runtime/flags/VALUE_ALIGN_REF
  i32.or
  call $runtime/flags/test<~lib/map/Map<i8,runtime/flags/Ref | null>>
  i32.const 4
  i32.const 8
  i32.or
  i32.const 65536
  i32.or
  i32.const 131072
  i32.or
  global.get $runtime/flags/KEY_ALIGN_REF
  i32.or
  i32.const 512
  i32.or
  i32.const 1024
  i32.or
  global.get $runtime/flags/VALUE_ALIGN_REF
  i32.or
  call $runtime/flags/test<~lib/map/Map<runtime/flags/Ref | null,runtime/flags/Ref | null>>
  i32.const 8
  call $runtime/flags/test<runtime/flags/NoCycle>
  i32.const 0
  call $runtime/flags/test<runtime/flags/DirectCycle>
  i32.const 0
  call $runtime/flags/test<runtime/flags/IndirectCycle>
  i32.const 0
  call $runtime/flags/test<runtime/flags/IndirectCycleArray>
  i32.const 8
  call $runtime/flags/test<runtime/flags/InnerCycleArray>
  i32.const 0
  call $runtime/flags/test<runtime/flags/IndirectCycleSet>
  i32.const 8
  call $runtime/flags/test<runtime/flags/InnerCycleSet>
  i32.const 0
  call $runtime/flags/test<runtime/flags/IndirectCycleMapKey>
  i32.const 0
  call $runtime/flags/test<runtime/flags/IndirectCycleMapValue>
  i32.const 8
  call $runtime/flags/test<runtime/flags/InnerCycleMapKey>
  i32.const 8
  call $runtime/flags/test<runtime/flags/InnerCycleMapValue>
 )
 (func $~lib/runtime/runtime.instanceof (; 38 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.sub
  i32.load
  local.set $2
  global.get $~lib/runtime/RTTI_BASE
  local.set $3
  local.get $2
  if (result i32)
   local.get $2
   local.get $3
   i32.load
   i32.le_u
  else   
   i32.const 0
  end
  if
   loop $continue|0
    local.get $2
    local.get $1
    i32.eq
    if
     i32.const 1
     return
    end
    local.get $3
    local.get $2
    i32.const 8
    i32.mul
    i32.add
    i32.load offset=4
    local.tee $2
    br_if $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/util/runtime/adjust (; 39 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  local.get $0
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.add
  i32.const 1
  i32.sub
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/allocator/tlsf/Root#set:tailRef (; 40 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=2912
 )
 (func $~lib/allocator/tlsf/Root#setSLMap (; 41 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  i32.const 22
  i32.lt_u
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 165
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 4
  i32.mul
  i32.add
  local.get $2
  i32.store offset=4
 )
 (func $~lib/allocator/tlsf/Root#setHead (; 42 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  local.get $1
  i32.const 22
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 32
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 189
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 32
  i32.mul
  local.get $2
  i32.add
  i32.const 4
  i32.mul
  i32.add
  local.get $3
  i32.store offset=96
 )
 (func $~lib/allocator/tlsf/Root#get:tailRef (; 43 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=2912
 )
 (func $~lib/allocator/tlsf/Block#get:right (; 44 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 110
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 8
  i32.add
  local.get $0
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.tee $1
  i32.eqz
  if (result i32)
   i32.const 0
   i32.const 72
   i32.const 111
   i32.const 11
   call $~lib/builtins/abort
   unreachable
  else   
   local.get $1
  end
 )
 (func $~lib/allocator/tlsf/fls<usize> (; 45 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 452
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 31
  local.get $0
  i32.clz
  i32.sub
 )
 (func $~lib/allocator/tlsf/Root#getHead (; 46 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  i32.const 22
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 32
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 181
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 32
  i32.mul
  local.get $2
  i32.add
  i32.const 4
  i32.mul
  i32.add
  i32.load offset=96
 )
 (func $~lib/allocator/tlsf/Root#getSLMap (; 47 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 22
  i32.lt_u
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 4
  i32.mul
  i32.add
  i32.load offset=4
 )
 (func $~lib/allocator/tlsf/Root#remove (; 48 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 276
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $3
  local.get $3
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $3
   i32.const 1073741824
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 278
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $4
   local.get $3
   i32.const 8
   i32.div_u
   local.set $5
  else   
   local.get $3
   call $~lib/allocator/tlsf/fls<usize>
   local.set $4
   local.get $3
   local.get $4
   i32.const 5
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 5
   i32.shl
   i32.xor
   local.set $5
   local.get $4
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $4
  end
  local.get $1
  i32.load offset=4
  local.set $6
  local.get $1
  i32.load offset=8
  local.set $7
  local.get $6
  if
   local.get $6
   local.get $7
   i32.store offset=8
  end
  local.get $7
  if
   local.get $7
   local.get $6
   i32.store offset=4
  end
  local.get $1
  local.get $0
  local.get $4
  local.get $5
  call $~lib/allocator/tlsf/Root#getHead
  i32.eq
  if
   local.get $0
   local.get $4
   local.get $5
   local.get $7
   call $~lib/allocator/tlsf/Root#setHead
   local.get $7
   i32.eqz
   if
    local.get $0
    local.get $4
    call $~lib/allocator/tlsf/Root#getSLMap
    local.set $8
    local.get $0
    local.get $4
    local.get $8
    i32.const 1
    local.get $5
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $8
    call $~lib/allocator/tlsf/Root#setSLMap
    local.get $8
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $4
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/allocator/tlsf/Block#get:left (; 49 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load
  i32.const 2
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 102
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.sub
  i32.load
  local.tee $1
  i32.eqz
  if (result i32)
   i32.const 0
   i32.const 72
   i32.const 103
   i32.const 11
   call $~lib/builtins/abort
   unreachable
  else   
   local.get $1
  end
 )
 (func $~lib/allocator/tlsf/Root#setJump (; 50 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  i32.load
  i32.const 1
  i32.and
  i32.const 0
  i32.ne
  if (result i32)
   local.get $1
   call $~lib/allocator/tlsf/Block#get:right
   local.get $2
   i32.eq
  else   
   i32.const 0
  end
  if (result i32)
   local.get $2
   i32.load
   i32.const 2
   i32.and
   i32.const 0
   i32.ne
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 352
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 4
  i32.sub
  local.get $1
  i32.store
 )
 (func $~lib/allocator/tlsf/Root#insert (; 51 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 211
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 213
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/allocator/tlsf/Block#get:right
  local.set $3
  local.get $3
  i32.load
  local.set $4
  local.get $4
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $3
   call $~lib/allocator/tlsf/Root#remove
   local.get $1
   local.get $2
   i32.const 8
   local.get $4
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   i32.add
   local.tee $2
   i32.store
   local.get $1
   call $~lib/allocator/tlsf/Block#get:right
   local.set $3
   local.get $3
   i32.load
   local.set $4
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $1
   call $~lib/allocator/tlsf/Block#get:left
   local.set $5
   local.get $5
   i32.load
   local.set $6
   local.get $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 72
    i32.const 231
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $5
   call $~lib/allocator/tlsf/Root#remove
   local.get $5
   local.get $6
   i32.const 8
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   i32.add
   local.tee $6
   i32.store
   local.get $5
   local.set $1
   local.get $6
   local.set $2
  end
  local.get $3
  local.get $4
  i32.const 2
  i32.or
  i32.store
  local.get $0
  local.get $1
  local.get $3
  call $~lib/allocator/tlsf/Root#setJump
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $7
  local.get $7
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $7
   i32.const 1073741824
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 244
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $8
   local.get $7
   i32.const 8
   i32.div_u
   local.set $9
  else   
   local.get $7
   call $~lib/allocator/tlsf/fls<usize>
   local.set $8
   local.get $7
   local.get $8
   i32.const 5
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 5
   i32.shl
   i32.xor
   local.set $9
   local.get $8
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $8
  end
  local.get $0
  local.get $8
  local.get $9
  call $~lib/allocator/tlsf/Root#getHead
  local.set $10
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $10
  i32.store offset=8
  local.get $10
  if
   local.get $10
   local.get $1
   i32.store offset=4
  end
  local.get $0
  local.get $8
  local.get $9
  local.get $1
  call $~lib/allocator/tlsf/Root#setHead
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $8
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $8
  local.get $0
  local.get $8
  call $~lib/allocator/tlsf/Root#getSLMap
  i32.const 1
  local.get $9
  i32.shl
  i32.or
  call $~lib/allocator/tlsf/Root#setSLMap
 )
 (func $~lib/allocator/tlsf/Root#addMemory (; 52 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  local.get $2
  i32.le_u
  if (result i32)
   local.get $1
   i32.const 7
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  if (result i32)
   local.get $2
   i32.const 7
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 399
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/allocator/tlsf/Root#get:tailRef
  local.set $3
  i32.const 0
  local.set $4
  local.get $3
  if
   local.get $1
   local.get $3
   i32.const 8
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 72
    i32.const 408
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 8
   i32.sub
   local.get $3
   i32.eq
   if
    local.get $1
    i32.const 8
    i32.sub
    local.set $1
    local.get $3
    i32.load
    local.set $4
   end
  else   
   local.get $1
   local.get $0
   i32.const 2916
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 72
    i32.const 417
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.set $5
  local.get $5
  i32.const 8
  i32.const 16
  i32.add
  i32.const 8
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $5
  i32.const 2
  i32.const 8
  i32.mul
  i32.sub
  local.set $6
  local.get $1
  local.set $7
  local.get $7
  local.get $6
  i32.const 1
  i32.or
  local.get $4
  i32.const 2
  i32.and
  i32.or
  i32.store
  local.get $7
  i32.const 0
  i32.store offset=4
  local.get $7
  i32.const 0
  i32.store offset=8
  local.get $1
  local.get $5
  i32.add
  i32.const 8
  i32.sub
  local.set $8
  local.get $8
  i32.const 0
  i32.const 2
  i32.or
  i32.store
  local.get $0
  local.get $8
  call $~lib/allocator/tlsf/Root#set:tailRef
  local.get $0
  local.get $7
  call $~lib/allocator/tlsf/Root#insert
  i32.const 1
 )
 (func $~lib/allocator/tlsf/ffs<usize> (; 53 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 446
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.ctz
 )
 (func $~lib/allocator/tlsf/ffs<u32> (; 54 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 446
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.ctz
 )
 (func $~lib/allocator/tlsf/Root#search (; 55 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $2
   local.get $1
   i32.const 8
   i32.div_u
   local.set $3
  else   
   local.get $1
   call $~lib/allocator/tlsf/fls<usize>
   local.set $2
   local.get $1
   local.get $2
   i32.const 5
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 5
   i32.shl
   i32.xor
   local.set $3
   local.get $2
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $2
   local.get $3
   i32.const 32
   i32.const 1
   i32.sub
   i32.lt_u
   if
    local.get $3
    i32.const 1
    i32.add
    local.set $3
   else    
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    i32.const 0
    local.set $3
   end
  end
  local.get $0
  local.get $2
  call $~lib/allocator/tlsf/Root#getSLMap
  i32.const 0
  i32.const -1
  i32.xor
  local.get $3
  i32.shl
  i32.and
  local.set $4
  local.get $4
  i32.eqz
  if
   local.get $0
   i32.load
   i32.const 0
   i32.const -1
   i32.xor
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $6
   local.get $6
   i32.eqz
   if
    i32.const 0
    local.set $5
   else    
    local.get $6
    call $~lib/allocator/tlsf/ffs<usize>
    local.set $2
    local.get $0
    local.get $2
    call $~lib/allocator/tlsf/Root#getSLMap
    local.tee $7
    if (result i32)
     local.get $7
    else     
     i32.const 0
     i32.const 72
     i32.const 341
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.set $4
    local.get $0
    local.get $2
    local.get $4
    call $~lib/allocator/tlsf/ffs<u32>
    call $~lib/allocator/tlsf/Root#getHead
    local.set $5
   end
  else   
   local.get $0
   local.get $2
   local.get $4
   call $~lib/allocator/tlsf/ffs<u32>
   call $~lib/allocator/tlsf/Root#getHead
   local.set $5
  end
  local.get $5
 )
 (func $~lib/allocator/tlsf/Root#use (; 56 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $3
  i32.const 1
  i32.and
  i32.const 0
  i32.ne
  if (result i32)
   local.get $2
   i32.const 7
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 370
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/allocator/tlsf/Root#remove
  local.get $3
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.sub
  local.set $4
  local.get $4
  i32.const 8
  i32.const 16
  i32.add
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $1
   i32.const 8
   i32.add
   local.get $2
   i32.add
   local.set $5
   local.get $5
   local.get $4
   i32.const 8
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $5
   call $~lib/allocator/tlsf/Root#insert
  else   
   local.get $1
   local.get $3
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   i32.store
   local.get $1
   call $~lib/allocator/tlsf/Block#get:right
   local.set $5
   local.get $5
   local.get $5
   i32.load
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   i32.store
  end
  local.get $1
  i32.const 8
  i32.add
 )
 (func $~lib/allocator/tlsf/__mem_allocate (; 57 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/allocator/tlsf/ROOT
  local.set $1
  local.get $1
  i32.eqz
  if
   global.get $~lib/memory/HEAP_BASE
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   local.set $2
   current_memory
   local.set $3
   local.get $2
   i32.const 2916
   i32.add
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $4
   local.get $4
   local.get $3
   i32.gt_s
   if (result i32)
    local.get $4
    local.get $3
    i32.sub
    grow_memory
    i32.const 0
    i32.lt_s
   else    
    i32.const 0
   end
   if
    unreachable
   end
   local.get $2
   local.tee $1
   global.set $~lib/allocator/tlsf/ROOT
   local.get $1
   i32.const 0
   call $~lib/allocator/tlsf/Root#set:tailRef
   local.get $1
   i32.const 0
   i32.store
   block $break|0
    i32.const 0
    local.set $5
    loop $repeat|0
     local.get $5
     i32.const 22
     i32.lt_u
     i32.eqz
     br_if $break|0
     block
      local.get $1
      local.get $5
      i32.const 0
      call $~lib/allocator/tlsf/Root#setSLMap
      block $break|1
       i32.const 0
       local.set $6
       loop $repeat|1
        local.get $6
        i32.const 32
        i32.lt_u
        i32.eqz
        br_if $break|1
        local.get $1
        local.get $5
        local.get $6
        i32.const 0
        call $~lib/allocator/tlsf/Root#setHead
        local.get $6
        i32.const 1
        i32.add
        local.set $6
        br $repeat|1
        unreachable
       end
       unreachable
      end
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   local.get $1
   local.get $2
   i32.const 2916
   i32.add
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   current_memory
   i32.const 16
   i32.shl
   call $~lib/allocator/tlsf/Root#addMemory
   drop
  end
  local.get $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  local.get $0
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  local.tee $4
  i32.const 16
  local.tee $3
  local.get $4
  local.get $3
  i32.gt_u
  select
  local.set $0
  local.get $1
  local.get $0
  call $~lib/allocator/tlsf/Root#search
  local.set $7
  local.get $7
  i32.eqz
  if
   current_memory
   local.set $4
   local.get $0
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $4
   local.tee $2
   local.get $3
   local.tee $5
   local.get $2
   local.get $5
   i32.gt_s
   select
   local.set $2
   local.get $2
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $3
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   current_memory
   local.set $5
   local.get $1
   local.get $4
   i32.const 16
   i32.shl
   local.get $5
   i32.const 16
   i32.shl
   call $~lib/allocator/tlsf/Root#addMemory
   drop
   local.get $1
   local.get $0
   call $~lib/allocator/tlsf/Root#search
   local.tee $6
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 72
    i32.const 507
    i32.const 12
    call $~lib/builtins/abort
    unreachable
   else    
    local.get $6
   end
   local.set $7
  end
  local.get $7
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $0
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 510
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $7
  local.get $0
  call $~lib/allocator/tlsf/Root#use
 )
 (func $~lib/memory/memory.allocate (; 58 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/allocator/tlsf/__mem_allocate
  return
 )
 (func $~lib/util/runtime/allocate (; 59 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/util/runtime/adjust
  call $~lib/memory/memory.allocate
  local.set $1
  local.get $1
  global.get $~lib/util/runtime/HEADER_MAGIC
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $1
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.add
 )
 (func $~lib/collector/itcm/ManagedObjectList#clear (; 60 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $0
  i32.store offset=12
 )
 (func $~lib/collector/itcm/maybeInit (; 61 ;) (type $FUNCSIG$v)
  global.get $~lib/collector/itcm/state
  i32.const 0
  i32.eq
  if
   global.get $~lib/util/runtime/HEADER_SIZE
   call $~lib/memory/memory.allocate
   global.set $~lib/collector/itcm/fromSpace
   global.get $~lib/collector/itcm/fromSpace
   i32.const -1
   i32.store
   global.get $~lib/collector/itcm/fromSpace
   i32.const 0
   i32.store offset=4
   global.get $~lib/collector/itcm/fromSpace
   call $~lib/collector/itcm/ManagedObjectList#clear
   global.get $~lib/util/runtime/HEADER_SIZE
   call $~lib/memory/memory.allocate
   global.set $~lib/collector/itcm/toSpace
   global.get $~lib/collector/itcm/toSpace
   i32.const -1
   i32.store
   global.get $~lib/collector/itcm/toSpace
   i32.const 0
   i32.store offset=4
   global.get $~lib/collector/itcm/toSpace
   call $~lib/collector/itcm/ManagedObjectList#clear
   global.get $~lib/collector/itcm/toSpace
   global.set $~lib/collector/itcm/iter
   i32.const 1
   global.set $~lib/collector/itcm/state
  end
 )
 (func $~lib/collector/itcm/ManagedObject#set:color (; 62 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $1
  i32.or
  i32.store offset=8
 )
 (func $~lib/collector/itcm/ManagedObject#set:next (; 63 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.and
  i32.or
  i32.store offset=8
 )
 (func $~lib/collector/itcm/ManagedObjectList#push (; 64 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $1
  local.get $0
  call $~lib/collector/itcm/ManagedObject#set:next
  local.get $1
  local.get $2
  i32.store offset=12
  local.get $2
  local.get $1
  call $~lib/collector/itcm/ManagedObject#set:next
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/collector/itcm/__ref_register (; 65 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  call $~lib/collector/itcm/maybeInit
  block $~lib/collector/itcm/refToObj|inlined.0 (result i32)
   local.get $0
   local.set $1
   local.get $1
   global.get $~lib/util/runtime/HEADER_SIZE
   i32.sub
  end
  local.set $2
  local.get $2
  global.get $~lib/collector/itcm/white
  call $~lib/collector/itcm/ManagedObject#set:color
  global.get $~lib/collector/itcm/fromSpace
  local.get $2
  call $~lib/collector/itcm/ManagedObjectList#push
 )
 (func $~lib/util/runtime/register (; 66 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  global.get $~lib/memory/HEAP_BASE
  i32.gt_u
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 129
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.sub
  local.set $2
  local.get $2
  i32.load
  global.get $~lib/util/runtime/HEADER_MAGIC
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 131
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.store
  local.get $0
  call $~lib/collector/itcm/__ref_register
  local.get $0
 )
 (func $~lib/runtime/runtime.newObject (; 67 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  call $~lib/util/runtime/allocate
  local.get $1
  call $~lib/util/runtime/register
 )
 (func $~lib/runtime/runtime.newString (; 68 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.shl
  i32.const 17
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/runtime/runtime.newArrayBuffer (; 69 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (; 70 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.sub
  i32.load offset=4
 )
 (func $~lib/collector/itcm/ManagedObject#get:color (; 71 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.and
 )
 (func $~lib/collector/itcm/ManagedObject#get:next (; 72 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
 )
 (func $~lib/collector/itcm/ManagedObject#unlink (; 73 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/collector/itcm/ManagedObject#get:next
  local.set $1
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $1
  local.get $2
  i32.store offset=12
  local.get $2
  local.get $1
  call $~lib/collector/itcm/ManagedObject#set:next
 )
 (func $~lib/collector/itcm/ManagedObject#makeGray (; 74 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/collector/itcm/iter
  i32.eq
  if
   local.get $0
   i32.load offset=12
   global.set $~lib/collector/itcm/iter
  end
  local.get $0
  call $~lib/collector/itcm/ManagedObject#unlink
  global.get $~lib/collector/itcm/toSpace
  local.get $0
  call $~lib/collector/itcm/ManagedObjectList#push
  local.get $0
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.const 2
  i32.or
  i32.store offset=8
 )
 (func $~lib/collector/itcm/__ref_link (; 75 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  call $~lib/collector/itcm/maybeInit
  block $~lib/collector/itcm/refToObj|inlined.1 (result i32)
   local.get $1
   local.set $2
   local.get $2
   global.get $~lib/util/runtime/HEADER_SIZE
   i32.sub
  end
  local.set $3
  local.get $3
  call $~lib/collector/itcm/ManagedObject#get:color
  global.get $~lib/collector/itcm/white
  i32.eqz
  i32.eq
  if (result i32)
   block $~lib/collector/itcm/refToObj|inlined.3 (result i32)
    local.get $0
    local.set $2
    local.get $2
    global.get $~lib/util/runtime/HEADER_SIZE
    i32.sub
   end
   call $~lib/collector/itcm/ManagedObject#get:color
   global.get $~lib/collector/itcm/white
   i32.eq
  else   
   i32.const 0
  end
  if
   local.get $3
   call $~lib/collector/itcm/ManagedObject#makeGray
  end
 )
 (func $~lib/runtime/runtime.newArray (; 76 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/runtime/runtime.flags
  local.set $2
  local.get $2
  i32.const 16
  i32.div_u
  i32.const 31
  i32.and
  local.set $3
  local.get $1
  i32.eqz
  if
   i32.const 0
   local.tee $4
   call $~lib/runtime/runtime.newArrayBuffer
   local.set $1
  else   
   local.get $1
   call $~lib/arraybuffer/ArrayBuffer#get:byteLength
   local.set $4
  end
  local.get $0
  i32.const 16
  call $~lib/runtime/runtime.newObject
  local.set $5
  local.get $5
  local.tee $6
  local.get $1
  local.tee $7
  local.get $6
  i32.load
  local.tee $8
  i32.ne
  if (result i32)
   nop
   local.get $7
   local.get $6
   call $~lib/collector/itcm/__ref_link
   local.get $7
  else   
   local.get $7
  end
  i32.store
  local.get $5
  local.get $1
  i32.store offset=4
  local.get $5
  local.get $4
  i32.store offset=8
  local.get $5
  local.get $4
  local.get $3
  i32.shr_u
  i32.store offset=12
  local.get $2
  i32.const 1024
  i32.and
  if
   local.get $1
   local.set $6
   local.get $6
   local.get $4
   i32.add
   local.set $8
   block $break|0
    loop $continue|0
     local.get $6
     local.get $8
     i32.lt_u
     if
      block
       local.get $6
       i32.load
       local.set $7
       local.get $7
       if
        local.get $7
        local.get $5
        call $~lib/collector/itcm/__ref_link
       end
       local.get $6
       i32.const 4
       i32.add
       local.set $6
      end
      br $continue|0
     end
    end
   end
  end
  local.get $5
 )
 (func $~lib/runtime/Root#constructor (; 77 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   call $~lib/util/runtime/allocate
   i32.const 59
   call $~lib/util/runtime/register
   local.set $0
  end
  local.get $0
 )
 (func $~lib/runtime/runtime.retain (; 78 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/runtime/ROOT
  call $~lib/collector/itcm/__ref_link
 )
 (func $~lib/runtime/runtime.release (; 79 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/allocator/tlsf/__mem_free (; 80 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  if
   local.get $0
   i32.const 7
   i32.and
   i32.eqz
   i32.eqz
   if
    i32.const 0
    i32.const 72
    i32.const 519
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/allocator/tlsf/ROOT
   local.set $1
   local.get $1
   if
    local.get $0
    i32.const 8
    i32.sub
    local.set $2
    local.get $2
    i32.load
    local.set $3
    local.get $3
    i32.const 1
    i32.and
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 72
     i32.const 524
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    local.get $3
    i32.const 1
    i32.or
    i32.store
    local.get $1
    local.get $0
    i32.const 8
    i32.sub
    call $~lib/allocator/tlsf/Root#insert
   end
  end
 )
 (func $~lib/memory/memory.free (; 81 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/allocator/tlsf/__mem_free
 )
 (func $~lib/collector/itcm/step (; 82 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  block $break|0
   block $case3|0
    block $case2|0
     block $case1|0
      block $case0|0
       global.get $~lib/collector/itcm/state
       local.set $1
       local.get $1
       i32.const 0
       i32.eq
       br_if $case0|0
       local.get $1
       i32.const 1
       i32.eq
       br_if $case1|0
       local.get $1
       i32.const 2
       i32.eq
       br_if $case2|0
       local.get $1
       i32.const 3
       i32.eq
       br_if $case3|0
       br $break|0
      end
      unreachable
     end
     block
      call $~lib/runtime/__gc_mark_roots
      i32.const 2
      global.set $~lib/collector/itcm/state
      br $break|0
      unreachable
     end
     unreachable
    end
    block
     global.get $~lib/collector/itcm/iter
     call $~lib/collector/itcm/ManagedObject#get:next
     local.set $0
     local.get $0
     global.get $~lib/collector/itcm/toSpace
     i32.ne
     if
      local.get $0
      global.set $~lib/collector/itcm/iter
      local.get $0
      global.get $~lib/collector/itcm/white
      i32.eqz
      call $~lib/collector/itcm/ManagedObject#set:color
      local.get $0
      i32.load
      block $~lib/collector/itcm/objToRef|inlined.0 (result i32)
       local.get $0
       local.set $1
       local.get $1
       global.get $~lib/util/runtime/HEADER_SIZE
       i32.add
      end
      call $~lib/runtime/__gc_mark_members
     else      
      call $~lib/runtime/__gc_mark_roots
      global.get $~lib/collector/itcm/iter
      call $~lib/collector/itcm/ManagedObject#get:next
      local.set $0
      local.get $0
      global.get $~lib/collector/itcm/toSpace
      i32.eq
      if
       global.get $~lib/collector/itcm/fromSpace
       local.set $1
       global.get $~lib/collector/itcm/toSpace
       global.set $~lib/collector/itcm/fromSpace
       local.get $1
       global.set $~lib/collector/itcm/toSpace
       global.get $~lib/collector/itcm/white
       i32.eqz
       global.set $~lib/collector/itcm/white
       local.get $1
       call $~lib/collector/itcm/ManagedObject#get:next
       global.set $~lib/collector/itcm/iter
       i32.const 3
       global.set $~lib/collector/itcm/state
      end
     end
     br $break|0
     unreachable
    end
    unreachable
   end
   block
    global.get $~lib/collector/itcm/iter
    local.set $0
    local.get $0
    global.get $~lib/collector/itcm/toSpace
    i32.ne
    if
     local.get $0
     call $~lib/collector/itcm/ManagedObject#get:next
     global.set $~lib/collector/itcm/iter
     local.get $0
     global.get $~lib/memory/HEAP_BASE
     i32.ge_u
     if
      local.get $0
      call $~lib/memory/memory.free
     end
    else     
     global.get $~lib/collector/itcm/toSpace
     call $~lib/collector/itcm/ManagedObjectList#clear
     i32.const 1
     global.set $~lib/collector/itcm/state
    end
    br $break|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/collector/itcm/__ref_collect (; 83 ;) (type $FUNCSIG$v)
  call $~lib/collector/itcm/maybeInit
  block $break|0
   loop $continue|0
    global.get $~lib/collector/itcm/state
    i32.const 1
    i32.ne
    if
     call $~lib/collector/itcm/step
     br $continue|0
    end
   end
  end
  block $break|1
   loop $continue|1
    call $~lib/collector/itcm/step
    global.get $~lib/collector/itcm/state
    i32.const 1
    i32.ne
    br_if $continue|1
   end
  end
 )
 (func $~lib/runtime/runtime.collect (; 84 ;) (type $FUNCSIG$v)
  call $~lib/collector/itcm/__ref_collect
 )
 (func $~lib/runtime/runtime#constructor (; 85 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  unreachable
 )
 (func $start (; 86 ;) (type $FUNCSIG$v)
  call $start:runtime/flags
  i32.const 0
  call $~lib/runtime/Root#constructor
  global.set $~lib/runtime/ROOT
 )
 (func $~lib/collector/itcm/__ref_mark (; 87 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  call $~lib/collector/itcm/maybeInit
  block $~lib/collector/itcm/refToObj|inlined.4 (result i32)
   local.get $0
   local.set $1
   local.get $1
   global.get $~lib/util/runtime/HEADER_SIZE
   i32.sub
  end
  local.set $2
  local.get $2
  call $~lib/collector/itcm/ManagedObject#get:color
  global.get $~lib/collector/itcm/white
  i32.eq
  if
   local.get $2
   call $~lib/collector/itcm/ManagedObject#makeGray
  end
 )
 (func $~lib/runtime/__gc_mark_roots (; 88 ;) (type $FUNCSIG$v)
  (local $0 i32)
  global.get $~lib/runtime/ROOT
  local.tee $0
  if
   local.get $0
   call $~lib/collector/itcm/__ref_mark
  end
 )
 (func $~lib/array/Array<i8>#__traverse (; 89 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/array/Array<i16>#__traverse (; 90 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/array/Array<i32>#__traverse (; 91 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/array/Array<i64>#__traverse (; 92 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/array/Array<v128>#__traverse (; 93 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/array/Array<runtime/flags/Ref>#__traverse (; 94 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  local.get $0
  i32.load offset=8
  i32.add
  local.set $2
  block $break|0
   loop $continue|0
    local.get $1
    local.get $2
    i32.lt_u
    if
     block
      local.get $1
      i32.load
      local.set $3
      local.get $3
      call $~lib/collector/itcm/__ref_mark
      i32.const 23
      local.get $3
      call $~lib/runtime/__gc_mark_members
      local.get $1
      i32.const 4
      i32.add
      local.set $1
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/array/Array<runtime/flags/Ref | null>#__traverse (; 95 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  local.get $0
  i32.load offset=8
  i32.add
  local.set $2
  block $break|0
   loop $continue|0
    local.get $1
    local.get $2
    i32.lt_u
    if
     block
      local.get $1
      i32.load
      local.set $3
      local.get $3
      if
       local.get $3
       call $~lib/collector/itcm/__ref_mark
       i32.const 23
       local.get $3
       call $~lib/runtime/__gc_mark_members
      end
      local.get $1
      i32.const 4
      i32.add
      local.set $1
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/set/Set<i8>#__traverse (; 96 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/set/Set<i16>#__traverse (; 97 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/set/Set<i32>#__traverse (; 98 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/set/Set<i64>#__traverse (; 99 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/set/Set<v128>#__traverse (; 100 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/set/Set<runtime/flags/Ref>#__traverse (; 101 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
  local.get $1
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=16
  block $~lib/set/ENTRY_SIZE<runtime/flags/Ref>|inlined.0 (result i32)
   i32.const 8
  end
  i32.mul
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    if
     block
      local.get $2
      local.set $4
      local.get $4
      i32.load offset=4
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $4
       i32.load
       local.set $5
       local.get $5
       call $~lib/collector/itcm/__ref_mark
       i32.const 23
       local.get $5
       call $~lib/runtime/__gc_mark_members
      end
      local.get $2
      block $~lib/set/ENTRY_SIZE<runtime/flags/Ref>|inlined.1 (result i32)
       i32.const 8
      end
      i32.add
      local.set $2
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/set/Set<runtime/flags/Ref | null>#__traverse (; 102 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
  local.get $1
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=16
  block $~lib/set/ENTRY_SIZE<runtime/flags/Ref | null>|inlined.0 (result i32)
   i32.const 8
  end
  i32.mul
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    if
     block
      local.get $2
      local.set $4
      local.get $4
      i32.load offset=4
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $4
       i32.load
       local.set $5
       local.get $5
       if
        local.get $5
        call $~lib/collector/itcm/__ref_mark
        i32.const 23
        local.get $5
        call $~lib/runtime/__gc_mark_members
       end
      end
      local.get $2
      block $~lib/set/ENTRY_SIZE<runtime/flags/Ref | null>|inlined.1 (result i32)
       i32.const 8
      end
      i32.add
      local.set $2
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/map/Map<v128,i8>#__traverse (; 103 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/map/Map<i64,i16>#__traverse (; 104 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/map/Map<i32,i32>#__traverse (; 105 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/map/Map<i16,i64>#__traverse (; 106 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/map/Map<i8,v128>#__traverse (; 107 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/map/Map<runtime/flags/Ref,i8>#__traverse (; 108 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
  local.get $1
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=16
  block $~lib/map/ENTRY_SIZE<runtime/flags/Ref,i8>|inlined.0 (result i32)
   i32.const 12
  end
  i32.mul
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    if
     block
      local.get $2
      local.set $4
      local.get $4
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $4
       i32.load
       local.set $5
       local.get $5
       call $~lib/collector/itcm/__ref_mark
       i32.const 23
       local.get $5
       call $~lib/runtime/__gc_mark_members
      end
      local.get $2
      block $~lib/map/ENTRY_SIZE<runtime/flags/Ref,i8>|inlined.1 (result i32)
       i32.const 12
      end
      i32.add
      local.set $2
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/map/Map<runtime/flags/Ref | null,i8>#__traverse (; 109 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
  local.get $1
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=16
  block $~lib/map/ENTRY_SIZE<runtime/flags/Ref | null,i8>|inlined.0 (result i32)
   i32.const 12
  end
  i32.mul
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    if
     block
      local.get $2
      local.set $4
      local.get $4
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $4
       i32.load
       local.set $5
       local.get $5
       if
        local.get $5
        call $~lib/collector/itcm/__ref_mark
        i32.const 23
        local.get $5
        call $~lib/runtime/__gc_mark_members
       end
      end
      local.get $2
      block $~lib/map/ENTRY_SIZE<runtime/flags/Ref | null,i8>|inlined.1 (result i32)
       i32.const 12
      end
      i32.add
      local.set $2
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/map/Map<i8,runtime/flags/Ref>#__traverse (; 110 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
  local.get $1
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=16
  block $~lib/map/ENTRY_SIZE<i8,runtime/flags/Ref>|inlined.0 (result i32)
   i32.const 12
  end
  i32.mul
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    if
     block
      local.get $2
      local.set $4
      local.get $4
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $4
       i32.load offset=4
       local.set $5
       local.get $5
       call $~lib/collector/itcm/__ref_mark
       i32.const 23
       local.get $5
       call $~lib/runtime/__gc_mark_members
      end
      local.get $2
      block $~lib/map/ENTRY_SIZE<i8,runtime/flags/Ref>|inlined.1 (result i32)
       i32.const 12
      end
      i32.add
      local.set $2
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/map/Map<i8,runtime/flags/Ref | null>#__traverse (; 111 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
  local.get $1
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=16
  block $~lib/map/ENTRY_SIZE<i8,runtime/flags/Ref | null>|inlined.0 (result i32)
   i32.const 12
  end
  i32.mul
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    if
     block
      local.get $2
      local.set $4
      local.get $4
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $4
       i32.load offset=4
       local.set $5
       local.get $5
       if
        local.get $5
        call $~lib/collector/itcm/__ref_mark
        i32.const 23
        local.get $5
        call $~lib/runtime/__gc_mark_members
       end
      end
      local.get $2
      block $~lib/map/ENTRY_SIZE<i8,runtime/flags/Ref | null>|inlined.1 (result i32)
       i32.const 12
      end
      i32.add
      local.set $2
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/map/Map<runtime/flags/Ref | null,runtime/flags/Ref | null>#__traverse (; 112 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
  local.get $1
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=16
  block $~lib/map/ENTRY_SIZE<runtime/flags/Ref | null,runtime/flags/Ref | null>|inlined.0 (result i32)
   i32.const 12
  end
  i32.mul
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    if
     block
      local.get $2
      local.set $4
      local.get $4
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $4
       i32.load
       local.set $5
       local.get $5
       if
        local.get $5
        call $~lib/collector/itcm/__ref_mark
        i32.const 23
        local.get $5
        call $~lib/runtime/__gc_mark_members
       end
       local.get $4
       i32.load offset=4
       local.set $5
       local.get $5
       if
        local.get $5
        call $~lib/collector/itcm/__ref_mark
        i32.const 23
        local.get $5
        call $~lib/runtime/__gc_mark_members
       end
      end
      local.get $2
      block $~lib/map/ENTRY_SIZE<runtime/flags/Ref | null,runtime/flags/Ref | null>|inlined.1 (result i32)
       i32.const 12
      end
      i32.add
      local.set $2
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/array/Array<runtime/flags/IndirectCycleArray>#__traverse (; 113 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  local.get $0
  i32.load offset=8
  i32.add
  local.set $2
  block $break|0
   loop $continue|0
    local.get $1
    local.get $2
    i32.lt_u
    if
     block
      local.get $1
      i32.load
      local.set $3
      local.get $3
      call $~lib/collector/itcm/__ref_mark
      i32.const 47
      local.get $3
      call $~lib/runtime/__gc_mark_members
      local.get $1
      i32.const 4
      i32.add
      local.set $1
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/set/Set<runtime/flags/IndirectCycleSet>#__traverse (; 114 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
  local.get $1
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=16
  block $~lib/set/ENTRY_SIZE<runtime/flags/IndirectCycleSet>|inlined.0 (result i32)
   i32.const 8
  end
  i32.mul
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    if
     block
      local.get $2
      local.set $4
      local.get $4
      i32.load offset=4
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $4
       i32.load
       local.set $5
       local.get $5
       call $~lib/collector/itcm/__ref_mark
       i32.const 50
       local.get $5
       call $~lib/runtime/__gc_mark_members
      end
      local.get $2
      block $~lib/set/ENTRY_SIZE<runtime/flags/IndirectCycleSet>|inlined.1 (result i32)
       i32.const 8
      end
      i32.add
      local.set $2
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/map/Map<runtime/flags/IndirectCycleMapKey,i32>#__traverse (; 115 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
  local.get $1
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=16
  block $~lib/map/ENTRY_SIZE<runtime/flags/IndirectCycleMapKey,i32>|inlined.0 (result i32)
   i32.const 12
  end
  i32.mul
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    if
     block
      local.get $2
      local.set $4
      local.get $4
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $4
       i32.load
       local.set $5
       local.get $5
       call $~lib/collector/itcm/__ref_mark
       i32.const 53
       local.get $5
       call $~lib/runtime/__gc_mark_members
      end
      local.get $2
      block $~lib/map/ENTRY_SIZE<runtime/flags/IndirectCycleMapKey,i32>|inlined.1 (result i32)
       i32.const 12
      end
      i32.add
      local.set $2
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/map/Map<i32,runtime/flags/IndirectCycleMapValue>#__traverse (; 116 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $1
  call $~lib/collector/itcm/__ref_mark
  local.get $1
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=16
  block $~lib/map/ENTRY_SIZE<i32,runtime/flags/IndirectCycleMapValue>|inlined.0 (result i32)
   i32.const 12
  end
  i32.mul
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    if
     block
      local.get $2
      local.set $4
      local.get $4
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $4
       i32.load offset=4
       local.set $5
       local.get $5
       call $~lib/collector/itcm/__ref_mark
       i32.const 55
       local.get $5
       call $~lib/runtime/__gc_mark_members
      end
      local.get $2
      block $~lib/map/ENTRY_SIZE<i32,runtime/flags/IndirectCycleMapValue>|inlined.1 (result i32)
       i32.const 12
      end
      i32.add
      local.set $2
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/runtime/__gc_mark_members (; 117 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $invalid
   block $~lib/runtime/Root
    block $runtime/flags/InnerCycleMapValue
     block $runtime/flags/InnerCycleMapKey
      block $~lib/map/Map<i32,runtime/flags/IndirectCycleMapValue>
       block $runtime/flags/IndirectCycleMapValue
        block $~lib/map/Map<runtime/flags/IndirectCycleMapKey,i32>
         block $runtime/flags/IndirectCycleMapKey
          block $runtime/flags/InnerCycleSet
           block $~lib/set/Set<runtime/flags/IndirectCycleSet>
            block $runtime/flags/IndirectCycleSet
             block $runtime/flags/InnerCycleArray
              block $~lib/array/Array<runtime/flags/IndirectCycleArray>
               block $runtime/flags/IndirectCycleArray
                block $runtime/flags/IndirectCycleBack
                 block $runtime/flags/IndirectCycle
                  block $runtime/flags/DirectCycle
                   block $runtime/flags/NoCycle
                    block $~lib/map/Map<runtime/flags/Ref | null,runtime/flags/Ref | null>
                     block $~lib/map/Map<i8,runtime/flags/Ref | null>
                      block $~lib/map/Map<i8,runtime/flags/Ref>
                       block $~lib/map/Map<runtime/flags/Ref | null,i8>
                        block $~lib/map/Map<runtime/flags/Ref,i8>
                         block $~lib/map/Map<i8,v128>
                          block $~lib/map/Map<i16,i64>
                           block $~lib/map/Map<i32,i32>
                            block $~lib/map/Map<i64,i16>
                             block $~lib/map/Map<v128,i8>
                              block $~lib/set/Set<runtime/flags/Ref | null>
                               block $~lib/set/Set<runtime/flags/Ref>
                                block $~lib/set/Set<v128>
                                 block $~lib/set/Set<i64>
                                  block $~lib/set/Set<i32>
                                   block $~lib/set/Set<i16>
                                    block $~lib/set/Set<i8>
                                     block $~lib/array/Array<runtime/flags/Ref | null>
                                      block $~lib/array/Array<runtime/flags/Ref>
                                       block $runtime/flags/Ref
                                        block $~lib/array/Array<v128>
                                         block $~lib/array/Array<i64>
                                          block $~lib/array/Array<i32>
                                           block $~lib/array/Array<i16>
                                            block $~lib/array/Array<i8>
                                             block $~lib/string/String
                                              block $~lib/arraybuffer/ArrayBuffer
                                               block $~lib/arraybuffer/ArrayBufferView
                                                block $~lib/vector/V128
                                                 block $~lib/number/F64
                                                  block $~lib/number/F32
                                                   block $~lib/number/Bool
                                                    block $~lib/number/Usize
                                                     block $~lib/number/U64
                                                      block $~lib/number/U32
                                                       block $~lib/number/U16
                                                        block $~lib/number/U8
                                                         block $~lib/number/Isize
                                                          block $~lib/number/I64
                                                           block $~lib/number/I32
                                                            block $~lib/number/I16
                                                             block $~lib/number/I8
                                                              local.get $0
                                                              br_table $invalid $~lib/number/I8 $~lib/number/I16 $~lib/number/I32 $~lib/number/I64 $~lib/number/Isize $~lib/number/U8 $~lib/number/U16 $~lib/number/U32 $~lib/number/U64 $~lib/number/Usize $~lib/number/Bool $~lib/number/F32 $~lib/number/F64 $~lib/vector/V128 $~lib/arraybuffer/ArrayBufferView $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/array/Array<i8> $~lib/array/Array<i16> $~lib/array/Array<i32> $~lib/array/Array<i64> $~lib/array/Array<v128> $runtime/flags/Ref $~lib/array/Array<runtime/flags/Ref> $~lib/array/Array<runtime/flags/Ref | null> $~lib/set/Set<i8> $~lib/set/Set<i16> $~lib/set/Set<i32> $~lib/set/Set<i64> $~lib/set/Set<v128> $~lib/set/Set<runtime/flags/Ref> $~lib/set/Set<runtime/flags/Ref | null> $~lib/map/Map<v128,i8> $~lib/map/Map<i64,i16> $~lib/map/Map<i32,i32> $~lib/map/Map<i16,i64> $~lib/map/Map<i8,v128> $~lib/map/Map<runtime/flags/Ref,i8> $~lib/map/Map<runtime/flags/Ref | null,i8> $~lib/map/Map<i8,runtime/flags/Ref> $~lib/map/Map<i8,runtime/flags/Ref | null> $~lib/map/Map<runtime/flags/Ref | null,runtime/flags/Ref | null> $runtime/flags/NoCycle $runtime/flags/DirectCycle $runtime/flags/IndirectCycle $runtime/flags/IndirectCycleBack $runtime/flags/IndirectCycleArray $~lib/array/Array<runtime/flags/IndirectCycleArray> $runtime/flags/InnerCycleArray $runtime/flags/IndirectCycleSet $~lib/set/Set<runtime/flags/IndirectCycleSet> $runtime/flags/InnerCycleSet $runtime/flags/IndirectCycleMapKey $~lib/map/Map<runtime/flags/IndirectCycleMapKey,i32> $runtime/flags/IndirectCycleMapValue $~lib/map/Map<i32,runtime/flags/IndirectCycleMapValue> $runtime/flags/InnerCycleMapKey $runtime/flags/InnerCycleMapValue $~lib/runtime/Root $invalid
                                                             end
                                                             return
                                                            end
                                                            return
                                                           end
                                                           return
                                                          end
                                                          return
                                                         end
                                                         return
                                                        end
                                                        return
                                                       end
                                                       return
                                                      end
                                                      return
                                                     end
                                                     return
                                                    end
                                                    return
                                                   end
                                                   return
                                                  end
                                                  return
                                                 end
                                                 return
                                                end
                                                return
                                               end
                                               local.get $1
                                               i32.load
                                               local.tee $2
                                               if
                                                local.get $2
                                                call $~lib/collector/itcm/__ref_mark
                                                i32.const 16
                                                local.get $2
                                                call $~lib/runtime/__gc_mark_members
                                               end
                                               return
                                              end
                                              return
                                             end
                                             return
                                            end
                                            local.get $1
                                            call $~lib/array/Array<i8>#__traverse
                                            return
                                           end
                                           local.get $1
                                           call $~lib/array/Array<i16>#__traverse
                                           return
                                          end
                                          local.get $1
                                          call $~lib/array/Array<i32>#__traverse
                                          return
                                         end
                                         local.get $1
                                         call $~lib/array/Array<i64>#__traverse
                                         return
                                        end
                                        local.get $1
                                        call $~lib/array/Array<v128>#__traverse
                                        return
                                       end
                                       return
                                      end
                                      local.get $1
                                      call $~lib/array/Array<runtime/flags/Ref>#__traverse
                                      return
                                     end
                                     local.get $1
                                     call $~lib/array/Array<runtime/flags/Ref | null>#__traverse
                                     return
                                    end
                                    local.get $1
                                    call $~lib/set/Set<i8>#__traverse
                                    return
                                   end
                                   local.get $1
                                   call $~lib/set/Set<i16>#__traverse
                                   return
                                  end
                                  local.get $1
                                  call $~lib/set/Set<i32>#__traverse
                                  return
                                 end
                                 local.get $1
                                 call $~lib/set/Set<i64>#__traverse
                                 return
                                end
                                local.get $1
                                call $~lib/set/Set<v128>#__traverse
                                return
                               end
                               local.get $1
                               call $~lib/set/Set<runtime/flags/Ref>#__traverse
                               return
                              end
                              local.get $1
                              call $~lib/set/Set<runtime/flags/Ref | null>#__traverse
                              return
                             end
                             local.get $1
                             call $~lib/map/Map<v128,i8>#__traverse
                             return
                            end
                            local.get $1
                            call $~lib/map/Map<i64,i16>#__traverse
                            return
                           end
                           local.get $1
                           call $~lib/map/Map<i32,i32>#__traverse
                           return
                          end
                          local.get $1
                          call $~lib/map/Map<i16,i64>#__traverse
                          return
                         end
                         local.get $1
                         call $~lib/map/Map<i8,v128>#__traverse
                         return
                        end
                        local.get $1
                        call $~lib/map/Map<runtime/flags/Ref,i8>#__traverse
                        return
                       end
                       local.get $1
                       call $~lib/map/Map<runtime/flags/Ref | null,i8>#__traverse
                       return
                      end
                      local.get $1
                      call $~lib/map/Map<i8,runtime/flags/Ref>#__traverse
                      return
                     end
                     local.get $1
                     call $~lib/map/Map<i8,runtime/flags/Ref | null>#__traverse
                     return
                    end
                    local.get $1
                    call $~lib/map/Map<runtime/flags/Ref | null,runtime/flags/Ref | null>#__traverse
                    return
                   end
                   return
                  end
                  local.get $1
                  i32.load
                  local.tee $2
                  if
                   local.get $2
                   call $~lib/collector/itcm/__ref_mark
                   i32.const 44
                   local.get $2
                   call $~lib/runtime/__gc_mark_members
                  end
                  return
                 end
                 local.get $1
                 i32.load
                 local.tee $2
                 if
                  local.get $2
                  call $~lib/collector/itcm/__ref_mark
                  i32.const 46
                  local.get $2
                  call $~lib/runtime/__gc_mark_members
                 end
                 return
                end
                local.get $1
                i32.load
                local.tee $2
                if
                 local.get $2
                 call $~lib/collector/itcm/__ref_mark
                 i32.const 45
                 local.get $2
                 call $~lib/runtime/__gc_mark_members
                end
                return
               end
               local.get $1
               i32.load
               local.tee $2
               if
                local.get $2
                call $~lib/collector/itcm/__ref_mark
                i32.const 48
                local.get $2
                call $~lib/runtime/__gc_mark_members
               end
               return
              end
              local.get $1
              call $~lib/array/Array<runtime/flags/IndirectCycleArray>#__traverse
              return
             end
             local.get $1
             i32.load
             local.tee $2
             if
              local.get $2
              call $~lib/collector/itcm/__ref_mark
              i32.const 47
              local.get $2
              call $~lib/runtime/__gc_mark_members
             end
             return
            end
            local.get $1
            i32.load
            local.tee $2
            if
             local.get $2
             call $~lib/collector/itcm/__ref_mark
             i32.const 51
             local.get $2
             call $~lib/runtime/__gc_mark_members
            end
            return
           end
           local.get $1
           call $~lib/set/Set<runtime/flags/IndirectCycleSet>#__traverse
           return
          end
          local.get $1
          i32.load
          local.tee $2
          if
           local.get $2
           call $~lib/collector/itcm/__ref_mark
           i32.const 50
           local.get $2
           call $~lib/runtime/__gc_mark_members
          end
          return
         end
         local.get $1
         i32.load
         local.tee $2
         if
          local.get $2
          call $~lib/collector/itcm/__ref_mark
          i32.const 54
          local.get $2
          call $~lib/runtime/__gc_mark_members
         end
         return
        end
        local.get $1
        call $~lib/map/Map<runtime/flags/IndirectCycleMapKey,i32>#__traverse
        return
       end
       local.get $1
       i32.load
       local.tee $2
       if
        local.get $2
        call $~lib/collector/itcm/__ref_mark
        i32.const 56
        local.get $2
        call $~lib/runtime/__gc_mark_members
       end
       return
      end
      local.get $1
      call $~lib/map/Map<i32,runtime/flags/IndirectCycleMapValue>#__traverse
      return
     end
     local.get $1
     i32.load
     local.tee $2
     if
      local.get $2
      call $~lib/collector/itcm/__ref_mark
      i32.const 53
      local.get $2
      call $~lib/runtime/__gc_mark_members
     end
     return
    end
    local.get $1
    i32.load
    local.tee $2
    if
     local.get $2
     call $~lib/collector/itcm/__ref_mark
     i32.const 55
     local.get $2
     call $~lib/runtime/__gc_mark_members
    end
    return
   end
   return
  end
  unreachable
 )
 (func $null (; 118 ;) (type $FUNCSIG$v)
 )
)