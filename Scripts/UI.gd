extends CanvasLayer


func _ready():
	pass



func _on_PauseButon_pressed():
	# var pauseMenu = load("res://Scenes/UI/PauseMenu.tscn").instance()
	get_tree().paused = true
	var pause_menu = get_tree().current_scene.find_node("PauseMenu") #.VBoxContainer.
	pause_menu.get_node("VBoxContainer").visible = true
	# get_tree().current_scene.add_child(pauseMenu)
