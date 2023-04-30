extends KinematicBody2D
class_name Ball

var speed = 0
var direction = Vector2.ZERO
var is_moving = false

func _ready():
	reset_ball()

func reset_ball():
	randomize()

	speed = 500
	direction.x = (2) * (randi() % 2) - (1) #[-1,1][randi() % 2]
	direction.y = (0.8 * 2) * (randi() % 2) - (0.8) #[-0.8, 0.8][randi() % 2]
	is_moving = true

func _physics_process(delta):
	if !is_moving:
		return
	var collide = move_and_collide(direction * speed * delta)	
	
	if collide:
		direction = direction.bounce(collide.normal)
		$AudioCollision.play()
