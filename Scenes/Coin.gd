extends Area2D

export(int) var value = 5



func _on_Coin_body_entered(body):
	if body.is_in_group("player"):
		get_tree().get_current_scene().add_coins(value)
		$AnimationPlayer.play("pickup")
		$CollisionShape2D.set_deferred("disabled", true)
		


func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()
