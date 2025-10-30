extends CharacterBody2D

@onready var animated_sprite = $AnimatedSprite2D

@export var speed = 200

func _physics_process(delta: float) -> void:
	var input_direction = Input.get_vector("left", "right", "up", "down")
	print(input_direction)
	velocity = input_direction * speed
	if input_direction == Vector2(0,1):
		animated_sprite.play("down")
	else:
		animated_sprite.play("default")
	
	move_and_slide()
