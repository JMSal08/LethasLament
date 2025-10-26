extends Control


func _on_ready() -> void:
	await get_tree().create_timer(2).timeout
	TransitionScene.change_scene_to_file("res://scenes/warning_scene.tscn")


func _on_overlay_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		TransitionScene.change_scene_to_file("res://scenes/warning_scene.tscn")
