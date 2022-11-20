extends Node2D

var food = preload("res://Food.tscn")

func _ready():
	for i in range(300):
		randomize()
		var new_food = food.instance()
		add_child(new_food)
		new_food.position.x = rand_range(-4000, 4000)
		new_food.position.y = rand_range(-4000, 4000)
