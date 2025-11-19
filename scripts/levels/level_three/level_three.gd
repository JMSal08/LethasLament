extends Node2D

@onready var Letter_L = $Letter_L
@onready var Letter_O = $Letter_O
@onready var Letter_V = $Letter_V
@onready var Letter_E = $Letter_E

@onready var FinishPointMarker = $FinishPointMarker

var has_L = false
var has_O = false
var has_V = false
var has_E = false


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
		pass
