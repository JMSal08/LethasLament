extends Node2D

var C_Texture: Texture2D = preload("res://assets/letters/C.png")
var O_Texture: Texture2D = preload("res://assets/letters/O.png")

@onready var Letter_C = $Letter_C
@onready var Letter_R = $Letter_O
@onready var Letter_O = $Letter_O
@onready var Letter_W = $Letter_C

@onready var SlotOne = $SlotOne
@onready var SlotTwo = $SlotTwo
@onready var SlotThree = $SlotThree
@onready var SlotFour = $SlotFour

func _on_answer_button_pressed() -> void:
	print("pressed answer")
	if SlotOne.texture == Letter_C.texture:
		if SlotTwo.texture == Letter_O.texture:
			if SlotThree.texture == Letter_O.texture:
				if SlotFour.texture == Letter_O.texture:
					print("pass")
					TransitionScene.change_scene_to_file("res://scenes/levels/level_three.tscn")


func _on_reset_button_pressed() -> void:
	SlotOne.texture = null
	SlotTwo.texture = null
	SlotThree.texture = null
	SlotFour.texture = null
	
	Letter_C.texture = C_Texture
	Letter_R.texture = O_Texture
	Letter_O.texture = O_Texture
	Letter_W.texture = C_Texture
