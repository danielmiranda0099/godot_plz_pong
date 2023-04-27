extends Node2D


func _ready():
	pass
	
func _restart_game():
	$Ball.is_moving = false
	$Ball.speed = 0
	$Ball.direction = Vector2.ZERO
	$Ball.position = Vector2(960, 540)

	$Ball.reset_ball()

func _on_Arco_Player_body_entered(_body):
	_restart_game()


func _on_Arco_Enemy_body_entered(_body):
	_restart_game()
