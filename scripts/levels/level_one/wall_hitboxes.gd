extends Area2D

@export var target_loc = Vector2(92, 112)

@onready var letha = $"../Letha"
func _on_body_entered(_body: Node2D) -> void:
	letha.global_position = target_loc
	
