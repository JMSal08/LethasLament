extends AudioStreamPlayer2D
@onready var AudioPlayer = $"."

@onready var MainMenuSound = preload("res://scenes/audio/audio_files/mainmenu.mp3")
@onready var LevelOneSound = preload("res://scenes/audio/audio_files/levelone.mp3")

func _on_ready() -> void:
	pass

func playMainMenu() -> void:
	AudioPlayer.stream = MainMenuSound
	AudioPlayer.play()

func playLevelOne() -> void:
	AudioPlayer.stream = LevelOneSound
	AudioPlayer.play()
