extends Node2D

@onready var Letter_C = $Letter_C
@onready var Letter_R
@onready var Letter_O = $Letter_O
@onready var Letter_W

var has_C = false
var has_R = false
var has_O = false
var has_W = false

func _on_letter_c_body_entered(_body: Node2D) -> void:
	has_C = true
	Letter_C.visible = false
	print("Got C")


func _on_letter_o_body_entered(_body: Node2D) -> void:
	has_O = false
	Letter_O.visible = false
	print("Got O")
