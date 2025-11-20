extends AudioStreamPlayer2D
@onready var AudioPlayer = $"."

@onready var MainMenuSound = preload("res://scenes/audio/audio_files/mainmenu.mp3")
@onready var LevelOneSound = preload("res://scenes/audio/audio_files/levelone.mp3")
@onready var LevelTwoSound = preload("res://scenes/audio/audio_files/leveltwo.mp3")
@onready var LevelThreeSound = preload("res://scenes/audio/audio_files/levelthree.mp3")
@onready var LevelFourSound = preload("res://scenes/audio/audio_files/levelfour.mp3")
@onready var LevelFiveSound = preload("res://scenes/audio/audio_files/levelfive.mp3")
@onready var CutsceneSound = preload("res://scenes/audio/audio_files/cutscene.mp3")
@onready var GameOverSound = preload("res://scenes/audio/audio_files/gameover.mp3")

func _on_ready() -> void:
	pass

func playGameOver() -> void:
	AudioPlayer.stream = GameOverSound
	AudioPlayer.play()

func playMainMenu() -> void:
	AudioPlayer.stream = MainMenuSound
	AudioPlayer.play()

func playLevelOne() -> void:
	AudioPlayer.stream = LevelOneSound
	AudioPlayer.play()

func playLevelTwo() -> void:
	AudioPlayer.stream = LevelTwoSound
	AudioPlayer.play()

func playLevelThree() -> void:
	AudioPlayer.stream = LevelThreeSound
	AudioPlayer.play()

func playLevelFour() -> void:
	AudioPlayer.stream = LevelFourSound
	AudioPlayer.play()

func playLevelFive() -> void:
	AudioPlayer.stream = LevelFiveSound
	AudioPlayer.play()

func playCutscene() -> void:
	AudioPlayer.stream = CutsceneSound
	AudioPlayer.play()
