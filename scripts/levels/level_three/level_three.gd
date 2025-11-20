extends Node2D

@onready var LevelThreeFinish = $LevelThreeFinish
@onready var SpeechBox = $SpeechBox
@onready var Warning = $SpeechBox/Warning

@onready var Letter_L = $Letter_L
@onready var Letter_O = $Letter_O
@onready var Letter_V = $Letter_V
@onready var Letter_E = $Letter_E

@onready var FinishPointMarker = $FinishPointMarker

var has_L = false
var has_O = false
var has_V = false
var has_E = false

var wall_touches = 0

func _on_wall_hitboxes_body_entered(_body: Node2D) -> void:
	wall_touches += 1
	print(wall_touches)
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
		LevelCounter.change_current_level(3)
		AudioPlayer.playGameOver()
		TransitionScene.change_scene_to_file("res://scenes/game_over.tscn")

func _process(_delta: float) -> void:
	if has_L && has_O && has_V && has_E:
		FinishPointMarker.visible = true

func _on_letter_l_body_entered(_body: Node2D) -> void:
	has_L = true
	Letter_L.visible = false
	print("Got L")

func _on_letter_o_body_entered(_body: Node2D) -> void:
	has_O = true
	Letter_O.visible = false
	print("Got O")

func _on_letter_v_body_entered(_body: Node2D) -> void:
	has_V = true
	Letter_V.visible = false
	print("Got V")

func _on_letter_e_body_entered(_body: Node2D) -> void:
	has_E = true
	Letter_E.visible = false
	print("Got E")

func _on_finish_point_body_entered(_body: Node2D) -> void:
	if has_L && has_O && has_V && has_E:
		LevelThreeFinish.visible = true
