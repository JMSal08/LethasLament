extends Control



func _on_animation_player_animation_finished(_anim_name: StringName) -> void:
	await get_tree().create_timer(5).timeout
	AudioPlayer.playMainMenu()
	TransitionScene.change_scene_to_file("res://scenes/main_menu.tscn")
