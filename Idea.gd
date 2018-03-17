extends Label


func _process(delta):
	rect_position += Vector2(0, 100) * delta


func _on_Button_pressed():
	player_info.get_main_scene().get_node("Control/MakeGame").idea = text
	player_info.get_main_scene().get_node("Control/MakeGame/something_wrong2").visible = false
