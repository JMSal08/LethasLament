extends Control

@onready var AnimPlayer = $AnimationPlayer


func _on_ready() -> void:
	await get_tree().create_timer(2).timeout
	AnimPlayer.play("pop")


func _on_animation_player_animation_finished(_anim_name: StringName) -> void:
	await get_tree().create_timer(2).timeout
	TransitionScene.change_scene_to_file("res://scenes/game_splash.tscn")


func _on_overlay_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		TransitionScene.change_scene_to_file("res://scenes/game_splash.tscn")
