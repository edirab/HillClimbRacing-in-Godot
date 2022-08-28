extends Area2D


func _ready():
	pass



func _on_CheckerFlag_body_entered(body):
	if body.is_in_group("player"):
		print("Level completed!")
