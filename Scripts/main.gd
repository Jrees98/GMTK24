extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Dollars.text = "0"
	$Lemonade.text = "0"
	get_tree().paused = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Dollars.text = str(Global.dollars)
	$Lemonade.text = str(Global.cups_of_lemonade)
	

func _on_start_game_pressed():
	$StartScreen.hide()
	$Shop.show()

func _on_borrow_50_pressed():
	Global.debt_amount = 50
	Global.dollars = 50
	$Dollars.text = str(50)

func _on_borrow_75_pressed():
	Global.debt_amount = 75
	Global.dollars = 75
	$Dollars.text = str(75)

func _on_borrow_100_pressed():
	Global.debt_amount = 100
	Global.dollars = 100
	$Dollars.text = str(100)


func _on_start_round_pressed():
	get_tree().paused = false
	$Shop.hide()


func _on_table_tier_1_pressed():
	if Global.dollars >= Global.tier1_cost:
		Global.dollars -= Global.tier1_cost
		$LemonadeStand/AnimatedSprite2D.frame = 0
		Global.customer_purchase_chance = Global.tier1_purchase_chance
		print(Global.customer_purchase_chance)


func _on_table_tier_2_pressed():
	if Global.dollars >= Global.tier2_cost:
		Global.dollars -= Global.tier2_cost
		$LemonadeStand/AnimatedSprite2D.frame = 1
		Global.customer_purchase_chance = Global.tier2_purchase_chance
		print(Global.customer_purchase_chance)
	


func _on_table_tier_3_pressed():
	if Global.dollars >= Global.tier3_cost:
		Global.dollars -= Global.tier3_cost
		$LemonadeStand/AnimatedSprite2D.frame = 2
		Global.customer_purchase_chance = Global.tier3_purchase_chance
		print(Global.customer_purchase_chance)
