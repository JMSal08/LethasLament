extends Node2D

var L_Texture: Texture2D = preload("res://assets/letters/L.png")
var O_Texture: Texture2D = preload("res://assets/letters/O.png")
var V_Texture: Texture2D = preload("res://assets/letters/V.png")
var E_Texture: Texture2D = preload("res://assets/letters/E.png")

@onready var Letter_L = $Letter_L
@onready var Letter_O = $Letter_O
@onready var Letter_V = $Letter_V
@onready var Letter_E = $Letter_E

@onready var SlotOne = $SlotOne
@onready var SlotTwo = $SlotTwo
@onready var SlotThree = $SlotThree
@onready var SlotFour = $SlotFour
func _on_answer_button_pressed() -> void:
	print("pressed answer")
	if SlotOne.texture == L_Texture:
		if SlotTwo.texture == O_Texture:
			if SlotThree.texture == V_Texture:
				if SlotFour.texture == E_Texture:
					print("pass")
					AudioPlayer.playLevelFour()
					TransitionScene.change_scene_to_file("res://scenes/levels/level_four.tscn")

func _on_reset_button_pressed() -> void:
	SlotOne.texture = null
	SlotTwo.texture = null
	SlotThree.texture = null
	SlotFour.texture = null
	
	Letter_L.texture = L_Texture
	Letter_O.texture = O_Texture
	Letter_V.texture = V_Texture
	Letter_E.texture = E_Texture
