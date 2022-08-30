extends Area2D

var level_completed = false

func _ready():
	pass


func _on_CheckerFlag_body_entered(body):
	
	if body.is_in_group("player") && !level_completed:
		level_completed = true
		print("Level completed!")
		get_tree().get_current_scene().level_completed()
		
		if $LevelFinishedTimer.is_stopped():
			$LevelFinishedTimer.start()	


func _on_LevelFinishedTimer_timeout():
	
	var level_name = get_tree().get_current_scene().name
	print(level_name)
	if (level_name == "Level1"):
		get_tree().change_scene("res://Scenes/Levels/Level2.tscn")
	elif (level_name == "Level2"):
		print("Level3 is not done yet")
