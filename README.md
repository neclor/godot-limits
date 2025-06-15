# Limits
Adds constants and utility functions for numeric limits.

## Methods
```gdscript
Variant max_value_of(type: Variant.Type) static
Variant min_value_of(type: Variant.Type) static
```

## Example
```gdscript
func example() -> void:
	print(Limits.INT_MAX) # Prints 9223372036854775807
	print(Limits.INT_MIN) # Prints -9223372036854775808
	print(Limits.max_value_of(typeof(123)) # Prints 9223372036854775807
	print(Limits.min_value_of(typeof(123))) # Prints -9223372036854775808
```
