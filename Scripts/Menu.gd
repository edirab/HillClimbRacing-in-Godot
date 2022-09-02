extends Control


func _ready():
	pass


func _on_NewGame_pressed():
	get_tree().change_scene("res://Scenes/Levels/Level1.tscn")



func _on_Options_pressed():
	var options = load("res://Scenes/Options.tscn").instance()
	get_tree().current_scene.add_child(options)



func _on_Exit_pressed():
	get_tree().quit()
