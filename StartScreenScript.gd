extends Spatial

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TheButton_button_down():
	print("Yeah")
	get_node("ALabel").text = "And this is where the story ends."
	#pass # Replace with function body.
