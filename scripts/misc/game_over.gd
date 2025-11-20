extends Control



func _on_retry_button_pressed() -> void:
	var current_level = LevelCounter.current_level
	if current_level == 1:
		print("Retry to level one")
		AudioPlayer.playLevelOne()
		TransitionScene.change_scene_to_file("res://scenes/levels/level_one.tscn")
	elif current_level == 2:
		print("Retry to level two")
		AudioPlayer.playLevelTwo()
		TransitionScene.change_scene_to_file("res://scenes/levels/level_two.tscn")
	elif current_level == 3:
		print("Retry to level three")
		AudioPlayer.playLevelThree()
		TransitionScene.change_scene_to_file("res://scenes/levels/level_three.tscn")
	elif current_level == 4:
		print("Retry to level four")
		AudioPlayer.playLevelFour()
		TransitionScene.change_scene_to_file("res://scenes/levels/level_four.tscn")
	elif current_level == 5:
		print("Retry to level five")
		AudioPlayer.playLevelFive()
		TransitionScene.change_scene_to_file("res://scenes/levels/level_five.tscn")
	else:
		AudioPlayer.playLevelOne()
		print("Else statement: retry to level one")
		TransitionScene.change_scene_to_file("res://scenes/levels/level_one.tscn")

func _on_back_to_main_pressed() -> void:
	TransitionScene.change_scene_to_file("res://scenes/main_menu.tscn")
