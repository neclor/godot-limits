class_name Limits extends Object


## Provides numerical constants for integer and floating-point limits.
##
## @tutorial(Wikipedia: Binary number): https://simple.wikipedia.org/wiki/Binary_number
## @tutorial(Wikipedia: Floating point): https://simple.wikipedia.org/wiki/Floating_point
## @tutorial(Wikipedia: Single-precision floating-point format): https://en.wikipedia.org/wiki/Single-precision_floating-point_format
## @tutorial(Wikipedia: Double-precision floating-point format): https://en.wikipedia.org/wiki/Double-precision_floating-point_format
## @tutorial(Wikipedia: Floating-point arithmetic): https://en.wikipedia.org/wiki/Floating-point_arithmetic


## (1 << 8) - 1 = 255
const UI8_MAX: int = (1 << 8) - 1
## (1 << 16) - 1 = 65535
const UI16_MAX: int = (1 << 16) - 1
## (1 << 32) - 1 = 4294967295
const UI32_MAX: int = (1 << 32) - 1
# ## (1 << 64) - 1 = 18446744073709551615
# const UI64_MAX = (1 << 64) - 1

## -(1 << 7) = -128
const I8_MIN: int = -(1 << 7)
## (1 << 7) - 1 = 127
const I8_MAX: int = (1 << 7) - 1

## -(1 << 15) = -32768
const I16_MIN: int = -(1 << 15)
## (1 << 15) - 1 = 32767
const I16_MAX: int = (1 << 15) - 1

## -(1 << 31) = -2147483648
const I32_MIN: int = -(1 << 31)
## (1 << 31) - 1 = 2147483647
const I32_MAX: int = (1 << 31) - 1

## -(1 << 63) = -9223372036854775808
const I64_MIN: int = -(1 << 63)
## (1 << 63) - 1 = 9223372036854775807
const I64_MAX: int = (1 << 63) - 1

## Minimum positive normalized number of 32-bit float.
const F32_P_MIN: float = 1.17549435e-38
## Maximum value of 32-bit float.
const F32_MAX: float = 3.40282347e+38
## Minimum negative value of 32-bit float.
const F32_N_MIN: float = -3.40282347e+38
## Smallest positive denormalized number of 32-bit float.
const F32_TRUE_MIN: float = 1.40129846e-45

## Minimum positive normalized number of 64-bit float.
const F64_P_MIN: float = 2.2250738585072014e-308
## Maximum value of 64-bit float.
const F64_MAX: float = 1.7976931348623157e+308
## Minimum negative value of 64-bit float.
const F64_N_MIN: float = -1.7976931348623157e+308
## Smallest positive denormalized number of 64-bit float.
## [br] [br] [br]
## [@GDScript] types: 
## [br] [br]
const F64_TRUE_MIN: float = 4.9406564584124654e-324


## Minimum negative value of [int].
const INT_MIN: int = I64_MIN
## Maximum value of [int].
const INT_MAX: int = I64_MAX

## Minimum negative value of [float].
const FLOAT_MIN: float = F64_N_MIN
## Maximum value of [float].
const FLOAT_MAX: float = F64_MAX

## Minimum negative value of Vector.
const VECTOR_MIN: float = F32_N_MIN
## Maximum value of Vector.
const VECTOR_MAX: float = F32_MAX

## Minimum negative value of double precision Vector.
const DOUBLE_VECTOR_MIN: float = F64_N_MIN
## Maximum value of double precision Vector.
## [br]
const DOUBLE_VECTOR_MAX: float = F64_MAX

## True only if compiled with [code]precision=double[/code].
## [br]
const IS_DOUBLE_PRECISION: bool = Vector2(1e39, 0).x != INF

## Minimum negative vector value depending on precision mode.
const ACTUAL_VECTOR_MIN: float = DOUBLE_VECTOR_MIN if IS_DOUBLE_PRECISION else VECTOR_MIN
## Maximum vector value depending on precision mode.
## [br]
const ACTUAL_VECTOR_MAX: float = DOUBLE_VECTOR_MAX if IS_DOUBLE_PRECISION else VECTOR_MAX

## Minimum negative value of integer Vector.
const VECTORI_MIN: int = Vector2i.MIN.x
## Maximum value of integer Vector.
const VECTORI_MAX: int = Vector2i.MAX.x


## Returns the maximum possible value for the given [enum Variant.Type]. [br]
## Supports: [code]null[/code], [bool], [int], [float], [Vector2], [Vector2i], [Vector3], [Vector3i], [Vector4], [Vector4i].
static func max_value_of(type: Variant.Type) -> Variant:
	match type:
		TYPE_NIL: return null
		TYPE_BOOL: return true
		TYPE_INT: return INT_MAX
		TYPE_FLOAT: return FLOAT_MAX
		TYPE_VECTOR2: return ACTUAL_VECTOR_MAX
		TYPE_VECTOR2I: return VECTORI_MAX
		TYPE_VECTOR3: return ACTUAL_VECTOR_MAX
		TYPE_VECTOR3I: return VECTORI_MAX
		TYPE_VECTOR4: return ACTUAL_VECTOR_MAX
		TYPE_VECTOR4I: return VECTORI_MAX
		_: 
			assert(false, "Unsupported type: " + str(type))
			return null


## Returns the minimum possible value for the given [enum Variant.Type]. [br]
## Supports: [code]null[/code], [bool], [int], [float], [Vector2], [Vector2i], [Vector3], [Vector3i], [Vector4], [Vector4i].
static func min_value_of(type: Variant.Type) -> Variant:
	match type:
		TYPE_NIL: return null
		TYPE_BOOL: return false
		TYPE_INT: return INT_MIN
		TYPE_FLOAT: return FLOAT_MIN
		TYPE_VECTOR2: return ACTUAL_VECTOR_MIN
		TYPE_VECTOR2I: return VECTORI_MIN
		TYPE_VECTOR3: return ACTUAL_VECTOR_MIN
		TYPE_VECTOR3I: return VECTORI_MIN
		TYPE_VECTOR4: return ACTUAL_VECTOR_MIN
		TYPE_VECTOR4I: return VECTORI_MIN
		_: 
			assert(false, "Unsupported type: " + str(type))
			return null
