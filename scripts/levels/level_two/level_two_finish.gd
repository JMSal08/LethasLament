extends Node2D

var C_Texture: Texture2D = preload("res://assets/letters/C.png")

var D_Texture: Texture2D = preload("res://assets/letters/D.png")
var O_Texture: Texture2D = preload("res://assets/letters/O.png")
var G_Texture: Texture2D = preload("res://assets/letters/G.png")

@onready var Letter_D = $Letter_D
@onready var Letter_O = $Letter_O
@onready var Letter_G = $Letter_G

@onready var SlotOne = $SlotOne
@onready var SlotTwo = $SlotTwo
@onready var SlotThree = $SlotThree
@onready var SlotFour = $SlotFour

func _on_answer_button_pressed() -> void:
	print("pressed answer")
	if SlotOne.texture == Letter_D.texture:
		if SlotTwo.texture == Letter_O.texture:
			if SlotThree.texture == Letter_G.texture:
				print("pass")
				TransitionScene.change_scene_to_file("res://scenes/levels/level_three.tscn")


func _on_reset_button_pressed() -> void:
	SlotOne.texture = null
	SlotTwo.texture = null
	SlotThree.texture = null
	
	Letter_D.texture = D_Texture
	Letter_O.texture = O_Texture
	Letter_G.texture = G_Texture
