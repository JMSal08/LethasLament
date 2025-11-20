extends Node2D

@onready var M_Texture: Texture2D = preload("res://assets/letters/M.png")
@onready var O_Texture: Texture2D = preload("res://assets/letters/O.png")
@onready var T_Texture: Texture2D = preload("res://assets/letters/T.png")
@onready var H_Texture: Texture2D = preload("res://assets/letters/H.png")
@onready var E_Texture: Texture2D = preload("res://assets/letters/E.png")
@onready var R_Texture: Texture2D = preload("res://assets/letters/R.png")

@onready var Letter_M = $Letter_M
@onready var Letter_O = $Letter_O
@onready var Letter_T = $Letter_T
@onready var Letter_H = $Letter_H
@onready var Letter_E = $Letter_E
@onready var Letter_R = $Letter_R

@onready var SlotOne = $SlotOne
@onready var SlotTwo = $SlotTwo
@onready var SlotThree = $SlotThree
@onready var SlotFour = $SlotFour
@onready var SlotFive = $SlotFive
@onready var SlotSix = $SlotSix

func _on_answer_button_pressed() -> void:
	if SlotOne.texture == M_Texture:
		if SlotTwo.texture == O_Texture:
			if SlotThree.texture == T_Texture:
				if SlotFour.texture == H_Texture:
					if SlotFive.texture == E_Texture:
						if SlotSix.texture == R_Texture:
							AudioPlayer.playCutscene()
							get_tree().change_scene_to_file("res://scenes/misc/finish_screen.tscn")

func _on_reset_button_pressed() -> void:
	SlotOne.texture = null
	SlotTwo.texture = null
	SlotThree.texture = null
	SlotFour.texture = null
	SlotFive.texture = null
	SlotSix.texture = null

	Letter_M.texture = M_Texture
	Letter_O.texture = O_Texture
	Letter_T.texture = T_Texture
	Letter_H.texture = H_Texture
	Letter_E.texture = E_Texture
	Letter_R.texture = R_Texture
