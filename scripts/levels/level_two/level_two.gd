extends Node2D

@onready var Letha = $Letha
@onready var SpeechBox = $SpeechBox
@onready var Warning = $SpeechBox/Warning

@onready var LevelTwoFinish = $LevelTwoFinish

@onready var Letter_D = $Letter_D
@onready var Letter_O = $Letter_O
@onready var Letter_G = $Letter_G

var wall_touches = 0

var has_D = false
var has_O = false
var has_G = false

func _on_wall_hitboxes_body_entered(_body: Node2D) -> void:
	wall_touches += 1
	print(wall_touches)
	if wall_touches == 3:
		print("3 commenced")
		Warning.text = "I shouldn't touch the walls..."
		SpeechBox.show()
		await get_tree().create_timer(3).timeout
		SpeechBox.hide()
		Warning.text = ""
	elif wall_touches == 5:
		Warning.text = "I seriously shouldn't."
		SpeechBox.show()
		await get_tree().create_timer(3).timeout
		SpeechBox.hide()
	elif wall_touches >= 7:
		Warning.text = "..."
		SpeechBox.show()
		await get_tree().create_timer(3).timeout
		SpeechBox.hide()

func _on_letter_d_body_entered(_body: Node2D) -> void:
	has_D = true
	Letter_D.visible = false
	print("Got D")

func _on_letter_o_body_entered(_body: Node2D) -> void:
	has_O = true
	Letter_O.visible = false
	print("Got O")


func _on_letter_g_body_entered(_body: Node2D) -> void:
	has_G = true
	Letter_G.visible = false
	print("Got G")


func _on_finish_point_body_entered(_body: Node2D) -> void:
	if has_D && has_O && has_G:
		print("Got em all")
		LevelTwoFinish.show()


func _on_tp_area_one_body_entered(_body: Node2D) -> void:
	Letha.global_position = Vector2(2329, 852)


func _on_tp_area_two_body_entered(_body: Node2D) -> void:
	Letha.global_position = Vector2(29, 829)
