extends Node2D

@onready var Letter_M = $Letter_M
@onready var Letter_O = $Letter_O
@onready var Letter_T = $Letter_T
@onready var Letter_H = $Letter_H
@onready var Letter_E = $Letter_E
@onready var Letter_R = $Letter_R

@onready var FinishPointMarker = $FinishPointMarker


var has_M = false
var has_O = false
var has_T = false
var has_H = false
var has_E = false
var has_R = false

func _process(_delta: float) -> void:
	if has_M && has_O && has_T && has_H && has_E && has_R:
		FinishPointMarker.visible = true

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
