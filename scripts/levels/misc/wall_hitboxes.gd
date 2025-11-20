extends Area2D

@export var target_loc = Vector2(91, 123)

@onready var letha = $"../Letha"
func _on_body_entered(_body: Node2D) -> void:
	print("Body Entered")
	letha.global_position = target_loc
	pass
