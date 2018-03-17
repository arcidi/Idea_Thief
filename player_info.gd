extends Node

var money = 100
func get_main_scene():
	var root = get_tree().get_root()
	return root.get_child( root.get_child_count() -1 ) 