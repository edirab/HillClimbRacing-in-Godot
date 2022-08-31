extends Area2D

var player_ref

func _ready():
	player_ref = get_tree().get_current_scene().get_node("Player")



func _on_Nitro_body_entered(body):
	if body.is_in_group("player"):
		print("Player picked up nitro")
		var player = get_node("../Player")
		player.max_speed = 150
		player.fuel_depleating_speed = 20
		
		if $NitroActionTimer.is_stopped():
			$NitroActionTimer.start()



func _on_NitroActionTimer_timeout():
	$NitroActionTimer.stop()
	print("Player picked up nitro")
	var player = get_node("../Player")
	player.max_speed = 50
	player.fuel_depleating_speed = 10
