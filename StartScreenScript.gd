extends Spatial

var drops = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(_delta):
	if Input.get_action_strength("ui_focus_next") > 0.1:
		$Player/Camera.make_current()
	if Input.get_action_strength("ui_focus_prev") > 0.1:
		$Camera.make_current()
	pass


func _on_TheButton_button_down():
	print("Yeah")
	# get_node("ALabel").text = "And this is where the story ends."
	# shorter using $
	$ALabel.text = "And this is where the story ends."


func _on_Box_dropped():
	drops += 1
	$DropsLabel.text = "Drops: "+str(drops)
