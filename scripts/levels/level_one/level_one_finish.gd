extends Node2D

var C_Texture: Texture2D = preload("res://assets/letters/C.png")
var A_Texture: Texture2D = preload("res://assets/letters/A.png")
var T_Texture: Texture2D = preload("res://assets/letters/T.png")

@onready var Letter_T = $Letter_T
@onready var Letter_A = $Letter_A
@onready var Letter_C = $Letter_C

@onready var SlotOne = $SlotOne
@onready var SlotTwo = $SlotTwo
@onready var SlotThree = $SlotThree

func _on_answer_button_pressed() -> void:
	print("pressed answer")
	if SlotOne.texture == C_Texture:
		if SlotTwo.texture == A_Texture:
			if SlotThree.texture == T_Texture:
				print("pass")
				AudioPlayer.playLevelTwo()
				TransitionScene.change_scene_to_file("res://scenes/levels/level_two.tscn")


func _on_reset_button_pressed() -> void:
	SlotOne.texture = null
	SlotTwo.texture = null
	SlotThree.texture = null
	
	Letter_T.texture = T_Texture
	Letter_A.texture = A_Texture
	Letter_C.texture = C_Texture
