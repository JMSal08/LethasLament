extends Control


func _on_ready() -> void:
	await get_tree().create_timer(2).timeout
	TransitionScene.change_scene_to_file("res://scenes/main_menu.tscn")
