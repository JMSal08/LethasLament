extends Node2D

var H_Texture: Texture2D = preload("res://assets/letters/H.png")
var A_Texture: Texture2D = preload("res://assets/letters/A.png")
var T_Texture: Texture2D = preload("res://assets/letters/T.png")
var E_Texture: Texture2D = preload("res://assets/letters/E.png")

@onready var Letter_E = $Letter_E
@onready var Letter_H = $Letter_H
@onready var Letter_T = $Letter_T
@onready var Letter_A = $Letter_A

@onready var SlotOne = $SlotOne
@onready var SlotTwo = $SlotTwo
@onready var SlotThree = $SlotThree
@onready var SlotFour = $SlotFour

func _on_answer_button_pressed() -> void:
	print("pressed answer")
	if SlotOne.texture == H_Texture:
		print("1")
		if SlotTwo.texture == A_Texture:
			print("1")
			if SlotThree.texture == T_Texture:
				print("1")
				if SlotFour.texture == E_Texture:
					print("pass")
					AudioPlayer.playLevelFive()
					TransitionScene.change_scene_to_file("res://scenes/levels/level_five.tscn")

func _on_reset_button_pressed() -> void:
	SlotOne.texture = null
	SlotTwo.texture = null
	SlotThree.texture = null
	SlotFour.texture = null
	
	Letter_E.texture = E_Texture
	Letter_H.texture = H_Texture
	Letter_T.texture = T_Texture
	Letter_A.texture = A_Texture
