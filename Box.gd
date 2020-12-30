extends RigidBody

signal dropped

func _process(_delta):
	if translation.y < -20:
		translation = Vector3(0, 10, 0)
		emit_signal("dropped")
