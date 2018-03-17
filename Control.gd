extends Control

onready var idea_label = preload("res://Idea.tscn")
var timer = 1

func _process(delta):
	timer -= delta
	if timer <= 0:
		generate_idea()
		timer = 1
	get_node("Money").text = "Money: " + str(player_info.money)

func generate_idea():
	var label = idea_label.instance()
	label.text = Ideas.games_ideas[rand_range(0, Ideas.games_ideas.size())]
	add_child(label)