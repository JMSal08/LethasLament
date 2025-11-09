extends Control

@onready var AnimPlayer = $AnimationPlayer
@onready var Instructions = $Instructions

func _on_ready() -> void:
	AnimPlayer.play("play")

func _on_play_button_pressed() -> void:
	TransitionScene.change_scene_to_file("res://scenes/levels/level_one.tscn")
	AudioPlayer.playLevelOne()


func _on_instructions_button_pressed() -> void:
	Instructions.visible = true


func _on_ins_close_pressed() -> void:
	Instructions.visible = false
