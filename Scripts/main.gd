extends Node2D

var making_lemonade : bool
var customer_scene = "res://Scenes/customer.tscn"

# Called when the node enters the scene tree for the first time.
func _ready():
	making_lemonade = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Dollars.text = "Dollars: " + str(Global.dollars)
	$Lemons.text = "Lemons: " + str(Global.lemons_in_stock)
	$Lemonade.text = "Cups of Lemonade: " + str(Global.cups_of_lemonade)
	






func _on_lemonade_timer_timeout():
	if $ProgressBar.value == 100:
		$ProgressBar/lemonade_timer.stop()
		Global.cups_of_lemonade += 1
		$ProgressBar.value = 0
		making_lemonade = false
	else:
		$ProgressBar.value += 50


func make_lemonade():
	making_lemonade = true
	$ProgressBar/lemonade_timer.start()
	Global.lemons_in_stock -= 3


func _on_check_lemons_timeout():
	if Global.lemons_in_stock >= 3 and making_lemonade == false:
		make_lemonade()

func _on_upgrade_belt_pressed():
	Global.lemon_speed = Global.lemon_speed * 2


func _on_upgrade_farm_pressed():
	Global.lemon_spawn_rate /= 2
	print(Global.lemon_spawn_rate)


func _on_upgrade_marketing_pressed():
	print(Global.customer_spawn_rate)
	Global.customer_spawn_rate /= 2

func _on_upgrade_lemonade_production_pressed():
	$ProgressBar/lemonade_timer.wait_time /= 2
	print($ProgressBar/lemonade_timer.wait_time)


func _on_upgrade_price_pressed():
	Global.lemonade_cost += 1
	print(Global.lemonade_cost)
