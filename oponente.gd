extends CharacterBody2D

const SPEED = 600
var ball

func _ready():
	ball = get_parent().find_child("Ball")
	
func _physics_process(_delta):
	if ball.position.x > 700:
		velocity = Vector2(0, _get_direction())
		velocity = velocity.normalized() * SPEED
		move_and_slide()
	
func _get_direction():
	if abs(ball.position.y - position.y) > 10:
		if ball.position.y > position.y:
			return 1
		else: 
			return -1
	else:
		return 0
