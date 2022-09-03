extends CanvasLayer


func _ready():
	$PanelBackground/VolumeSlider.value = Globals.volume


func _on_VolumeSlider_value_changed(value):
	Globals.volume = $PanelBackground/VolumeSlider.value
	var scene_name = get_tree().current_scene.name
	print(scene_name)
	var value_db = linear2db(value)
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("SFX"), value_db)
	

func _on_BackButton_pressed():
	queue_free()

