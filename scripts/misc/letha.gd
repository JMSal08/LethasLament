extends CharacterBody2D

@onready var animated_sprite = $AnimatedSprite2D

@export var speed = 200

func _physics_process(_delta: float) -> void:
	var input_direction = Input.get_vector("left", "right", "up", "down")
	#print(input_direction) # for debug only
	velocity = input_direction * speed
	if input_direction == Vector2(0,1):
		animated_sprite.play("down")
	elif input_direction == Vector2(0,-1):
		pass #Put animated up here
	elif input_direction == Vector2(1,0):
		pass # Put animated right here
	elif  input_direction == Vector2(-1,0):
		pass # Put animated left here
	else:
		animated_sprite.play("default") # Plays default animation
	
	move_and_slide()
