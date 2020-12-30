extends KinematicBody

class_name Player # why needed?

export var hspeed : float = 20.0
export var rspeed : float = 2.0

func _ready():
	pass

func _physics_process(delta : float) -> void:
	var dz : float = Input.get_action_strength("ui_up") - Input.get_action_strength("ui_down")
	var da : float = Input.get_action_strength("ui_left") - Input.get_action_strength("ui_right")
	rotation.y += da*rspeed * delta
	var direction : Vector3 = Vector3(0,0,1).rotated(Vector3(0,1,0), rotation.y)
	var motion : Vector3 = direction * dz * hspeed * delta
	move_and_collide(motion)
