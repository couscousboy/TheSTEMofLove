extends Node2D

onready var bh = get_parent().get_node("BlackHole1")

var size = 1.0
var zoom = 2.5
var speed = 7.5

func _process(delta):
	$MeshInstance2D.scale.x = lerp($MeshInstance2D.scale.x, size, 0.1)
	$MeshInstance2D.scale.y = lerp($MeshInstance2D.scale.y, size, 0.1)

	if Input.is_action_pressed("ui_right") and position.x < 4000:
		position.x += speed
	if Input.is_action_pressed("ui_left") and position.x > -4000:
		position.x -= speed
	if Input.is_action_pressed("ui_up") and position.y > -4000:
		position.y -= speed
	if Input.is_action_pressed("ui_down") and position.y < 4000:
		position.y += speed

	$Camera2D.zoom.x = lerp($Camera2D.zoom.x, zoom, 0.1)
	$Camera2D.zoom.y = lerp($Camera2D.zoom.y, zoom, 0.1)
	
	var foods = get_tree().get_nodes_in_group("Food")
	#print(size)
	for a in foods:
		#var distance = sqrt(pow((self.position.x - a.position.x),2) + pow((self.position.y - a.position.y),2))
	
		if $MeshInstance2D/Area2D.overlaps_area(a) and a.size < size:
			a.queue_free()
			size += 0.04
			bh.scale.x += 0.04
			bh.scale.y += 0.04
			zoom += 0.01
		
		


