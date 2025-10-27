extends Control

@onready var AnimPlayer = $AnimationPlayer

func _on_ready() -> void:
	AnimPlayer.play("play")

func _on_warning_img_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		AudioPlayer.playMainMenu()
		TransitionScene.change_scene_to_file("res://scenes/main_menu.tscn")
