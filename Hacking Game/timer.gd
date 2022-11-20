extends RichTextLabel
var time = 90

func _process(delta):
	if time > 0:
		time -= delta
		clear()
		append_bbcode("[color=green]%s" % stepify(time, 0.001))
	else:
		clear()
		append_bbcode("[color=green]0")
