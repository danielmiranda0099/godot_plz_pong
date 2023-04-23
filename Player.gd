extends KinematicBody2D

var speed = 450
var direction = Vector2.ZERO

func _physics_process(delta):
	
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1
		
	if Input.is_action_pressed("ui_down"):
		direction.y += 1
		
	move_and_slide(direction * speed)
	
	direction = Vector2.ZERO
