extends Button

var a = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	a = a + 1
	text = "A "+str(a)

func _on_TheButton_pressedOderSo():
	hide()
