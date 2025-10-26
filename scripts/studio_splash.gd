extends Control

@onready var AnimPlayer = $AnimationPlayer


func _on_ready() -> void:
	await get_tree().create_timer(2).timeout
	AnimPlayer.play("pop")


func _on_animation_player_animation_finished(_anim_name: StringName) -> void:
	await get_tree().create_timer(2.5).timeout
	TransitionScene.change_scene_to_file("res://scenes/game_splash.tscn")
