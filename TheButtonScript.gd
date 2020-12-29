extends Button

var a = 0
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	a = a + 1
	text = "A "+String(a)
	


func _on_TheButton_pressedOderSo():
	hide()
	#pass # Replace with function body.
