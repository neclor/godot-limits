@tool
extends EditorScript


func _run() -> void:
	print("TEST")

	print("int:")
	print(Limits.max_value_of(typeof(1)))
	print(Limits.min_value_of(typeof(1)))
	print()

	print("float:")
	print(Limits.max_value_of(typeof(1.0)))
	print(Limits.min_value_of(typeof(1.0)))
	print()

	print("Vector:")
	print(Limits.max_value_of(typeof(Vector2.ZERO)))
	print(Limits.min_value_of(typeof(Vector2.ZERO)))
	print()

	print("VectorI:")
	print(Limits.max_value_of(typeof(Vector2i.ZERO)))
	print(Limits.min_value_of(typeof(Vector2i.ZERO)))
	print()

	print(Limits.max_value_of(typeof("a")))
	print(Limits.min_value_of(typeof("a")))
	print()

	print("TEST COMPLETED")
