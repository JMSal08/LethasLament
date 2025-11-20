extends Node2D

@onready var LoudSound = preload("res://scenes/audio/audio_files/RAHHH.mp3")

@onready var Letter_M = $Letter_M
@onready var Letter_O = $Letter_O
@onready var Letter_T = $Letter_T
@onready var Letter_H = $Letter_H
@onready var Letter_E = $Letter_E
@onready var Letter_R = $Letter_R

@onready var FinishPointMarker = $FinishPointMarker
@onready var LevelFiveFinish = $LevelFiveFinish

@onready var Jumpscare = $Jumpscare
@onready var JumpscareSound = $Jumpscare/JumpscareSound


var wall_touches = 0
var RNG = RandomNumberGenerator.new()

var has_M = false
var has_O = false
var has_T = false
var has_H = false
var has_E = false
var has_R = false

func _process(_delta: float) -> void:
	if has_M && has_O && has_T && has_H && has_E && has_R:
		FinishPointMarker.visible = true
		
func _on_wall_hitboxes_body_entered(_body: Node2D) -> void:
	wall_touches += 1
	print("Wall Touches: ", wall_touches)
	var chance = RNG.randi_range(1, 20)
	print("Chance: " , chance)
	if chance <= 5:
		JumpscareSound.stream = LoudSound
		JumpscareSound.play()
		Jumpscare.show()
		await get_tree().create_timer(1).timeout
		JumpscareSound.stop()
		Jumpscare.hide()
	if wall_touches == 4:
		LevelCounter.change_current_level(5)
		AudioPlayer.playGameOver()
		TransitionScene.change_scene_to_file("res://scenes/game_over.tscn")

func _on_letter_m_body_entered(_body: Node2D) -> void:
	has_M = true
	Letter_M.visible = false

func _on_letter_o_body_entered(_body: Node2D) -> void:
	has_O = true
	Letter_O.visible = false

func _on_letter_t_body_entered(_body: Node2D) -> void:
	has_T = true
	Letter_T.visible = false

func _on_letter_h_body_entered(_body: Node2D) -> void:
	has_H = true
	Letter_H.visible = false

func _on_letter_e_body_entered(_body: Node2D) -> void:
	has_E = true
	Letter_E.visible = false

func _on_letter_r_body_entered(_body: Node2D) -> void:
	has_R = true
	Letter_R.visible = false

func _on_finish_point_body_entered(_body: Node2D) -> void:
	if has_M && has_O && has_T && has_H && has_E && has_R:
		LevelFiveFinish.visible = true
