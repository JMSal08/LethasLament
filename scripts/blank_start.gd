extends Control


func _on_ready() -> void:
	await get_tree().create_timer(1).timeout
	get_tree().change_scene_to_file("res://scenes/studio_splash.tscn")
