extends Node2D

func _restart_game():
	$Ball.is_moving = false
	$Ball.direction = Vector2.ZERO
	$Ball.position = Vector2(960, 540)
	$Ball.reset_ball()
	$Oponente.position = Vector2(1850, 460)
	$Player.position = Vector2(50, 460)


func _on_arco_player_body_entered(body):
	_restart_game()


func _on_arco_oponente_body_entered(body):
	_restart_game()
