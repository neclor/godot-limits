class_name Limits
extends Object


## Provides numerical constants for integer and floating-point limits.


## (1 << 8) - 1 = 255 [br]
const UI8_MAX: int = (1 << 8) - 1
## (1 << 16) - 1 = 65535 [br]
const UI16_MAX: int = (1 << 16) - 1
## (1 << 32) - 1 = 4294967295 [br]
const UI32_MAX: int = (1 << 32) - 1
# (1 << 64) - 1 = 18446744073709551615 [br]
# const UI64_MAX = (1 << 64) - 1

## -(1 << 7) = -128 [br]
const I8_MIN: int = -(1 << 7)
## (1 << 7) - 1 = 127 [br]
const I8_MAX: int = (1 << 7) - 1

## -(1 << 15) = -32768 [br]
const I16_MIN: int = -(1 << 15)
## (1 << 15) - 1 = 32767 [br]
const I16_MAX: int = (1 << 15) - 1

## -(1 << 31) = -2147483648 [br]
const I32_MIN: int = -(1 << 31)
## (1 << 31) - 1 = 2147483647 [br]
const I32_MAX: int = (1 << 31) - 1

## -(1 << 63) = -9223372036854775808 [br]
const I64_MIN: int = -(1 << 63)
## (1 << 63) - 1 = 9223372036854775807 [br]
const I64_MAX: int = (1 << 63) - 1

## Minimum positive normalized number of 32-bit float. [br]
const F32_P_MIN: float = 1.17549435e-38
## Maximum value of 32-bit float. [br]
const F32_MAX: float = 3.40282347e+38
## Minimum negative value of 32-bit float. [br]
const F32_N_MIN: float = -3.40282347e+38
## Smallest positive denormalized number of 32-bit float. [br]
const F32_TRUE_MIN: float = 1.40129846e-45

## Minimum positive normalized number of 64-bit float. [br]
const F64_P_MIN: float = 2.2250738585072014e-308
## Maximum value of 64-bit float. [br]
const F64_MAX: float = 1.7976931348623157e+308
## Minimum negative value of 64-bit float. [br]
const F64_N_MIN: float = -1.7976931348623157e+308
## Smallest positive denormalized number of 64-bit float. [br]
## [br]
## [br]
const F64_TRUE_MIN: float = 4.9406564584124654e-324

# Godot types

## Minimum negative value of [int]. [br]
const INT_MIN: int = I64_MIN
## Maximum value of [int]. [br]
const INT_MAX: int = I64_MAX

## Minimum negative value of [float]. [br]
const FLOAT_MIN: float = F64_N_MIN
## Maximum value of [float]. [br]
const FLOAT_MAX: float = F64_MAX

## Minimum negative value of Vector. [br]
const VECTOR_MIN: float = F32_N_MIN
## Maximum value of Vector. [br]
const VECTOR_MAX: float = F32_MAX

## Minimum negative value of double precision Vector. [br]
const DOUBLE_VECTOR_MIN: float = F64_N_MIN
## Maximum value of double precision Vector. [br]
const DOUBLE_VECTOR_MAX: float = F64_MAX
