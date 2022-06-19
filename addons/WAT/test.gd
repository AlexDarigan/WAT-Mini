extends Node
class_name Test

const IS_TEST: bool = true
var asserts: Assertions = Assertions.new()

func run() -> bool:
	for method in get_test_methods():
		await method.call()
	return asserts.failed
	
func get_test_methods():
	return (get_method_list()
			.filter(func(method: Dictionary): return method.name.begins_with("test"))
			.map(func(method: Dictionary): return Callable(self, method.name))
			)
