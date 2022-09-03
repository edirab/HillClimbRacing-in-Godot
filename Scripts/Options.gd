extends CanvasLayer


func _ready():
	$PanelBackground/VolumeSlider.value = Globals.volume


func _on_VolumeSlider_value_changed(value):
	Globals.volume = $PanelBackground/VolumeSlider.value
	var scene_name = get_tree().current_scene.name
	print(scene_name)
	
	if name == "MainMenu":
		print("Options opened from main menu")
	else:
		print("Options opened from main menu")
		pass


func _on_BackButton_pressed():
	queue_free()

