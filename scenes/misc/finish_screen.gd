extends Control

@onready var hairdryer = preload("res://scenes/audio/audio_files/hairdryer.mp3")
@onready var FinishSound = $FinishSound


func _ready() -> void:
	FinishSound.stream = hairdryer
	FinishSound.play()
	await get_tree().create_timer(1).timeout
	get_tree().change_scene_to_file("res://scenes/cutscene/cutscene.tscn")
