extends Area2D

var nitro_max_speed = 120
var player_ref
var is_picked_up = false

func _ready():
	player_ref = get_tree().get_current_scene().get_node("Player")


func _on_Nitro_body_entered(body):
	if body.is_in_group("player") && !is_picked_up:
		print("Player picked up nitro")
		is_picked_up = true
		player_ref.max_speed = nitro_max_speed
		player_ref.fuel_depleating_speed = 20
		
		if $NitroActionTimer.is_stopped():
			$NitroActionTimer.start()


func _on_NitroActionTimer_timeout():
	$NitroActionTimer.stop()
	print("Timeout! Nitro is out")
	player_ref.max_speed = 50
	player_ref.fuel_depleating_speed = 10
