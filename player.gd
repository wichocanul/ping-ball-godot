extends CharacterBody2D

var speed = 400

func _physics_process(_delta):
	velocity = Vector2.ZERO
	
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
		
	velocity = velocity.normalized() * speed
	move_and_slide()



#ESTA ES OTRA FORMA DE MOVER A MI PERSONAJE UTILIZANDO MOVE_AND_COLLIDE()
#func _physics_process(delta):
	#var direction = Vector2.ZERO
	#if Input.is_action_pressed("ui_up"):
		#direction.y -= 1 * speed
	#if Input.is_action_pressed("ui_down"):
		#direction.y += 1 * speed
	#move_and_collide(direction)
