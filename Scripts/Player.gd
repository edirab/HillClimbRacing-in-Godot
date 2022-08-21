extends RigidBody2D

var wheels = []
var speed = 60000
var max_speed = 50

var fuel = 100

func _ready():
	wheels = get_tree().get_nodes_in_group("wheel")

func _physics_process(delta):
	
	if fuel > 0:
		if Input.is_action_pressed("ui_right"):
			use_fuel(delta)
			for wheel in wheels:
				if wheel.angular_velocity < max_speed:
					wheel.apply_torque_impulse(speed * delta * 60)

		if Input.is_action_pressed("ui_left"):
			use_fuel(delta)
			for wheel in wheels:
				if wheel.angular_velocity > -max_speed:
					wheel.apply_torque_impulse( -speed * delta * 60)
	print(fuel)

func refuel():
	fuel = 100

func use_fuel(delta):
	fuel -= 10 * delta
	fuel = clamp(fuel, 0, 100)

