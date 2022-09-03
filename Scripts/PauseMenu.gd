extends CanvasLayer


func _ready():
	$VBoxContainer.visible = false


func _on_Resume_pressed():
	get_tree().paused = false
	$VBoxContainer.visible = false

func _on_Restart_pressed():
	var scene_name = get_tree().current_scene.name
	print(name)
	get_tree().paused = false
	get_tree().reload_current_scene()

func _on_Options_pressed():
	var options_scene = load("res://Scenes/UI/Options.tscn").instance()
	get_tree().current_scene.add_child(options_scene)

func _on_Exit_pressed():
	get_tree().quit()






