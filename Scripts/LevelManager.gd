extends Node2D

var coins_collected = 0

func add_coins(amount):
	coins_collected += amount
	$UI/CoinCounter/Counter.text = str(coins_collected)

func update_fuel_UI(value):
	$UI/Fuel/ProgressBar.value = value
	var styleBox = $UI/Fuel/ProgressBar.get("custom_styles/fg")
	styleBox.bg_color.h = lerp(0, 0.3, value / 100)

