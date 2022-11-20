extends Area2D
var size = rand_range(0.5, 2.5)
	
func _ready():
	var rng = RandomNumberGenerator.new()
	randomize()
	$Sprite.modulate = Color8(rand_range(0,255),rand_range(0,255),rand_range(0,255),255) 
	$Sprite.scale = Vector2(size, size)
	$CollisionShape2D.scale = Vector2(size, size)
	var ran_planet = stepify(rand_range(1,18),1)
	var planet = load("res://Planets/planet%s.png" % ran_planet)
	$Sprite.texture = planet
	print(ran_planet)
