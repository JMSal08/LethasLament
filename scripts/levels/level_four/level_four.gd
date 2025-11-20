extends Node2D

@onready var LoudSound = preload("res://scenes/audio/audio_files/RAHHH.mp3")

@onready var Letha = $Letha

@onready var LevelFourFinish = $LevelFourFinish
@onready var FinishPointMarker = $FinishPointMarker

@onready var LevelThreeFinish = $LevelFourFinish
@onready var SpeechBox = $SpeechBox
@onready var Warning = $SpeechBox/Warning

@onready var Jumpscare = $Jumpscare
@onready var JumpscareSound = $Jumpscare/JumpscareSound

@onready var Letter_H = $Letter_H
@onready var Letter_A = $Letter_A
@onready var Letter_T = $Letter_T
@onready var Letter_E = $Letter_E

var has_H = false
var has_A = false
var has_T = false
var has_E = false

var RNG = RandomNumberGenerator.new()

func _process(_delta: float) -> void:
	if has_H && has_A && has_T && has_E:
		FinishPointMarker.visible = true

var wall_touches = 0

func _on_wall_hitboxes_body_entered(_body: Node2D) -> void:
	wall_touches += 1
	print("Wall Touches: ", wall_touches)
	var chance = RNG.randi_range(1, 20)
	print("Chance: " , chance)
	if chance <= 3:
		JumpscareSound.stream = LoudSound
		JumpscareSound.play()
		Jumpscare.show()
		await get_tree().create_timer(1).timeout
		JumpscareSound.stop()
		Jumpscare.hide()
	if wall_touches == 1:
		print("1 commenced")
		Warning.text = "I shouldn't touch the walls..."
		SpeechBox.show()
		await get_tree().create_timer(3).timeout
		SpeechBox.hide()
	elif wall_touches == 2:
		Warning.text = "I really shouldn't touch this."
		SpeechBox.show()
		await get_tree().create_timer(3).timeout
		SpeechBox.hide()
	elif wall_touches == 3:
		Warning.text = "..."
		SpeechBox.show()
		await get_tree().create_timer(3).timeout
		SpeechBox.hide()
	elif wall_touches == 4:
		LevelCounter.change_current_level(4)
		AudioPlayer.playGameOver()
		TransitionScene.change_scene_to_file("res://scenes/game_over.tscn")

func _on_letter_h_body_entered(_body: Node2D) -> void:
	has_H = true
	Letter_H.visible = false

func _on_letter_a_body_entered(_body: Node2D) -> void:
	has_A = true
	Letter_A.visible = false

func _on_letter_t_body_entered(_body: Node2D) -> void:
	has_T = true
	Letter_T.visible = false

func _on_letter_e_body_entered(_body: Node2D) -> void:
	has_E = true
	Letter_E.visible = false

func _on_finish_point_body_entered(_body: Node2D) -> void:
	if has_H && has_A && has_T && has_E:
		LevelFourFinish.visible = true


func _on_tp_area_two_body_entered(_body: Node2D) -> void:
	Letha.global_position = Vector2(25, 980)

func _on_tp_area_one_body_entered(_body: Node2D) -> void:
	Letha.global_position = Vector2(2334, 974)
