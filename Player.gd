extends KinematicBody2D

var speed = 450
var direction = Vector2.ZERO

# warning-ignore:unused_argument
func _physics_process(delta):
	
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1
		
	if Input.is_action_pressed("ui_down"):
		direction.y += 1
		
# warning-ignore:return_value_discarded
	move_and_slide(direction * speed)
	
	direction = Vector2.ZERO
