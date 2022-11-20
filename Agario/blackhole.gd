extends Sprite

onready var player = get_parent().get_node("Player")

func _process(delta):
	self.position.x = player.position.x
	self.position.y = player.position.y
	self.rotate(delta)
