extends Node2D

var playerScore = 0
var enemyScore = 0

func _process(_delta):
	$"Marcador Player".text = str(playerScore) 
	$"Marcador Enemy".text = str(enemyScore)

func _ready():
	pass
	
func _restart_game():
	$Ball.is_moving = false
	$Ball.speed = 0
	$Ball.direction = Vector2.ZERO
	$Ball.position = Vector2(960, 540)

	$Ball.reset_ball()

func _on_Arco_Player_body_entered(body):
	if body is Ball:
		enemyScore += 1
		_restart_game()


func _on_Arco_Enemy_body_entered(body):
	if body is Ball:
		playerScore += 1
		_restart_game()
