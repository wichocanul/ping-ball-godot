extends CharacterBody2D

var speed = 0
var is_moving = false
var direction = Vector2.ZERO
var angular_speed = PI

func _ready():
	randomize()
	reset_ball()
	
func reset_ball():
	speed = 600
	direction.x = [-1, 1][randi() % 2]
	direction.y = [-0.8, 0.8][randi() % 2]
	is_moving = true;
	
func _physics_process(delta):
	if is_moving:
		rotation += angular_speed * delta
		var collide = move_and_collide(direction * speed * delta)
		
		if collide:
			direction = direction.bounce(collide.get_normal())
