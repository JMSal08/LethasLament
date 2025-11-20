extends CharacterBody2D

@onready var animated_sprite = $AnimatedSprite2D

@export var speed = 200

func _physics_process(_delta: float) -> void:
	var input_direction = Input.get_vector("left", "right", "up", "down")
	# print(input_direction) # for debug only
	velocity = input_direction * speed
	if Input.is_action_pressed("down") && Input.is_action_pressed("left"):
		animated_sprite.play("left")
	elif  Input.is_action_pressed("down") && Input.is_action_pressed("right"):
		animated_sprite.play("right")
	elif Input.is_action_pressed("up") && Input.is_action_pressed("left"):
		animated_sprite.play("left")
	elif  Input.is_action_pressed("up") && Input.is_action_pressed("right"):
		animated_sprite.play("right")
	elif Input.is_action_pressed("down"):
		animated_sprite.play("down")
	elif Input.is_action_pressed("up"):
		animated_sprite.play("up")
	elif Input.is_action_pressed("right"):
		animated_sprite.play("right")
	elif Input.is_action_pressed("left"):
		animated_sprite.play("left")
	else:
		animated_sprite.play("default") # Plays default animation
	
	move_and_slide()
