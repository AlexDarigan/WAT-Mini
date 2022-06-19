extends RefCounted
class_name Assertions

var failed: bool = true

func is_null(a: Variant, context: String = "No Context Given") -> void:
	var success: bool = (a == null)
	if not success:
		print("FAILED: %s was expected to be null but is not null." % a)
		print("CONTEXT: %s" % context)
		failed = true
		
func is_not_null(a: Variant, context: String = "No Context Given") -> void:
	var success: bool = (a != null)
	if not success:
		print("FAILED: %s was expected to be not null but is null." % a)
		print("CONTEXT: %s" % context)
		failed = true

func is_true(a: Variant, context: String = "No Context Given") -> void:
	var success: bool = (bool(a) == true)
	if not success:
		print("FAILED: %s was expected to be true but is not true." % a)
		print("CONTEXT: %s" % context)
		failed = true
	
func is_false(a: Variant, context: String = "No Context Given") -> void:
	var success: bool = (bool(a) == false)
	if not success:
		print("FAILED: %s was expected to be false but is not false." % a)
		print("CONTEXT: %s" % context)
		failed = true

func is_equal_to(a: Variant, b: Variant, context: String = "No Context Given") -> void:
	var success: bool = (a == b)
	if not success:
		print("FAILED: %s was expected to equal %s but was not." % [a, b])
		print("CONTEXT: %s" % context)
		failed = true
		
func is_not_equal_to(a: Variant, b: Variant, context: String = "No Context Given") -> void:
	var success: bool = (a != b)
	if not success:
		print("FAILED: %s was expected to not equal %s but was." % [a, b])
		print("CONTEXT: %s" % context)
		failed = true

func is_greater_than(a: Variant, b: Variant, context: String = "No Context Given") -> void:
	var success: bool = (a > b)
	if not success:
		print("FAILED: %s was expected to greater than %s but was not." % [a, b])
		print("CONTEXT: %s" % context)
		failed = true
		
func is_less_than(a: Variant, b: Variant, context: String = "No Context Given") -> void:
	var success: bool = (a < b)
	if not success:
		print("FAILED: %s was expected to be less than %s but was not." % [a, b])
		print("CONTEXT: %s" % context)
		failed = true
		
func is_equal_to_or_less_than(a: Variant, b: Variant, context: String = "No Context Given") -> void:
	var success: bool = (a <= b)
	if not success:
		print("FAILED: %s was expected to equal or be less than %s but was not." % [a, b])
		print("CONTEXT: %s" % context)
		failed = true
		
func is_equal_to_or_greater_than(a: Variant, b: Variant, context: String = "No Context Given") -> void:
	var success: bool = (a >= b)
	if not success:
		print("FAILED: %s was expected to equal or be greater %s but was not." % [a, b])
		print("CONTEXT: %s" % context)
		failed = true
