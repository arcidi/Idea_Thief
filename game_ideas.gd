extends Node

var games_ideas = ["Plants eating plants",
"My cat is barking",
"Totaly random world",
"Zombie wanna eat my cat",
"Cat is the most evil animal on the world",
"Kill da cat!",
"The game totaly not about memes",
"My cat is trying to steal my lasagne",
"True hacker simulator",
"Grass simulator",
"Simulator of typing stupid games ideas",
"Author of this game not language inglish",
"Super idea stealing!",
"Its bad idea to be theft",
"A game about making games",
"There is no more time to write more ideas!"]

func test_cool_points(idea):
	var points = 10
	idea = idea.to_lower()
	if idea.find("cat") == -1:
		points -= 5
	return points