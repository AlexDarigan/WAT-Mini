# WAT-Mini
This is a temporary version of WAT with limited functionality that works with GDScript in Godot 4. This particular instance was built in Alpha 10.

# Features

- Tests must extend from Test and be stored in res://tests
- To run tests enter <godot-bin-path> res://addons/WAT/cli.tscn
- Basic asserts only (Check res://addons/WAT/assertions.gd)
- Tests with no asserts default to passing status
- TestRunner quits automatically but sets the exit code first so CI is still possible
- No JUnit XML
  
  # Future
  
  There are plans for WAT in Godot 4, for both GDScript & C#, with siginificant documentation, but nothing is set in stone until Godot itself is. 
  
  Thank you for your patience.
