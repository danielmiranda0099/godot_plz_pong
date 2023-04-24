extends KinematicBody2D

var speed = 700
var direction

var self_position_y
var ball_position_y

var ball

func _ready():
	ball = get_parent().find_node("Ball")

# warning-ignore:unused_argument
func _physics_process(delta):
	direction = Vector2(0, _get_direction())
# warning-ignore:return_value_discarded
	move_and_slide(direction * speed)

func _get_direction():
#	var direction = Vector2.ZERO
#
#	var y_diff = ball.position.y - position.y
#
#	if abs(y_diff) > ai_reaction:
#		direction.y = y_diff
#
#	return direction.normalized()
	
	self_position_y = position.y
	ball_position_y = ball.position.y 
	
	if abs(ball_position_y - self_position_y) < 25:
		return 0
		
	if ball_position_y > self_position_y:
		return 1
	else:
		return -1

			
