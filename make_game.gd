extends Panel

var idea setget set_idea
var budget
var game_name

func set_idea(value):
	idea = value
	get_node("idea_label").text = value
	



func _on_make_btn_pressed():
	if(typeof(budget) == TYPE_INT && typeof(game_name) == TYPE_STRING):
		get_node("something_wrong").visible = false
		player_info.money += (budget / rand_range(1,15)) * Ideas.test_cool_points(idea)
		var lab = player_info.get_main_scene().get_node("done_games/VBoxContainer/Label")
		lab.text = game_name
		player_info.get_main_scene().get_node("done_games/VBoxContainer").add_child(lab)
		idea = ""
		budget = null
		game_name = ""
		get_node("something_wrong2").visible = true
	else:
		get_node("something_wrong").visible = true

func _on_Budget_text_changed(new_text):
	budget = new_text.to_int()


func _on_LineEdit2_text_changed(new_text):
	game_name = new_text
