extends Node2D

@onready var Letha = $Letha

@onready var LevelFourFinish = $LevelFourFinish
@onready var FinishPointMarker = $FinishPointMarker

@onready var Letter_H = $Letter_H
@onready var Letter_A = $Letter_A
@onready var Letter_T = $Letter_T
@onready var Letter_E = $Letter_E

var has_H = false
var has_A = false
var has_T = false
var has_E = false

func _process(_delta: float) -> void:
	if has_H && has_A && has_T && has_E:
		FinishPointMarker.visible = true


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
