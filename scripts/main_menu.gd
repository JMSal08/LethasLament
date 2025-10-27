extends Control

@onready var AnimPlayer = $AnimationPlayer

func _on_ready() -> void:
	AnimPlayer.play("play")

func _on_play_button_pressed() -> void:
	TransitionScene.change_scene_to_file("res://scenes/levels/level_one.tscn")
	AudioPlayer.playLevelOne()
