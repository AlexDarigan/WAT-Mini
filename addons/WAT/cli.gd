extends Node

const FAILED: bool = true
var _exit_code: int = 0

func _ready():
	print("BEGIN TEST RUNNER")
	await run(get_tests())
	get_tree().quit(_exit_code)
	print("END TEST RUNNER")

func get_tests() -> Array[GDScript]:
	var tests: Array[GDScript] = []
	var directory: Directory = Directory.new()
	directory.include_hidden = false
	directory.include_navigational = false
	var err: int = directory.open("res://tests")
	if err:
		push_error(error_string(err))
	else:
		tests = (
			Array(directory.get_files())
				.map(func(file: String): return load("res://tests/%s" % file))
				.filter(func(script: GDScript): return script.get("IS_TEST"))
		)
	directory.list_dir_end()
	return tests
	
func run(tests: Array[GDScript]) -> void:
	for script in tests:
		var test: Test = script.new()
		await test.run()
		if test.asserts.failed:
			_exit_code = 1
		test.free()
	tests.clear()
