extends Node2D

@onready var LevelOneFinish = $LevelOneFinish
@onready var FinishPointMarker = $FinishPointMarker

@onready var Letter_C = $Letter_C
@onready var Letter_A = $Letter_A
@onready var Letter_T = $Letter_T

var has_C = false
var has_A = false
var has_T = false

func _process(_delta: float) -> void:
	if has_C && has_A && has_T:
		FinishPointMarker.visible = true

func _on_letter_c_body_entered(_body: Node2D) -> void:
	has_C = true
	Letter_C.visible = false
	print("Got C")

func _on_letter_a_body_entered(_body: Node2D) -> void:
	has_A = true
	Letter_A.visible = false
	print("Got A")

func _on_letter_t_body_entered(_body: Node2D) -> void:
	has_T = true
	Letter_T.visible = false
	print("Got T")

func _on_finish_point_body_entered(_body: Node2D) -> void:
	if has_C && has_A && has_T:
		print("Got em all")
		LevelOneFinish.show()
