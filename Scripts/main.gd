extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Dollars.text = "0"
	$Lemonade.text = "0"
	#get_tree().paused = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Dollars.text = str(Global.dollars)
	$Lemonade.text = str(Global.cups_of_lemonade)
	

func _on_start_game_pressed():
	if Global.debt_selected:
		$StartScreen.hide()
		$Shop.show()

func _on_borrow_50_pressed():
	Global.debt_amount = 50.00
	Global.dollars = 50.00
	$Dollars.text = str(50.00)
	Global.debt_selected = true

func _on_borrow_75_pressed():
	Global.debt_amount = 75.00
	Global.dollars = 75.00
	$Dollars.text = str(75.00)
	Global.debt_selected = true

func _on_borrow_100_pressed():
	Global.debt_amount = 100.00
	Global.dollars = 100.00
	$Dollars.text = str(100.00)
	Global.debt_selected = true


func _on_start_round_pressed(): # START ROUND HERE
	Global.rounds_played += 1
	$RoundTimer.start()
	get_tree().paused = false
	$Shop.hide()
	$Spawner/spawner_timer.start()
	$Spawner2/spawner_timer.start()
	Global.can_purchase = true
	if Global.rounds_played > 7:
		end_game()



func _on_table_tier_1_pressed():
	if Global.dollars >= Global.tier1_cost:
		Global.dollars -= Global.tier1_cost
		$LemonadeStand/AnimatedSprite2D.frame = 0
		Global.customer_purchase_chance = Global.tier1_purchase_chance
		Global.minimum_payment = 0
		$Shop/ShopsHBox/TableTier1.queue_free()


func _on_table_tier_2_pressed():
	if Global.dollars >= Global.tier2_cost:
		Global.dollars -= Global.tier2_cost
		$LemonadeStand/AnimatedSprite2D.frame = 1
		Global.customer_purchase_chance = Global.tier2_purchase_chance
		Global.minimum_payment = 0
		$Shop/ShopsHBox/TableTier2.queue_free()
		$Shop/ShopsHBox/TableTier1.queue_free()


func _on_table_tier_3_pressed():
	if Global.dollars >= Global.tier3_cost:
		Global.dollars -= Global.tier3_cost
		$LemonadeStand/AnimatedSprite2D.frame = 2
		Global.customer_purchase_chance = Global.tier3_purchase_chance
		Global.minimum_payment = 0
		$Shop/ShopsHBox/TableTier3.queue_free()
		$Shop/ShopsHBox/TableTier2.queue_free()
		$Shop/ShopsHBox/TableTier1.queue_free()
		$Shop/Booth.text = "Best Booth Purchased! \n60% conversion Rate"

func _on_round_timer_timeout():  # ROUND TIMER ENDING
	$IncomeStatement.show()
	$Spawner/spawner_timer.stop()
	$Spawner2/spawner_timer.stop()
	Global.can_purchase = false
	calculate_incomestatement()
	Global.dollars -= Global.minimum_payment


func _on_button_pressed():  # THIS IS BUTTON FOR INCOME STATEMENT NEXT ROUND
	$IncomeStatement.hide()
	$Shop.show()
	Global.supply_cost = 0
	Global.lemonade_sold = 0

func calculate_incomestatement():
	$IncomeStatement/ColorRect/VBoxContainer/Revenue.text = "Revenue: $" + str(Global.lemonade_sold * Global.lemonade_cost)
	$IncomeStatement/ColorRect/VBoxContainer/OustandingDebt.text = "Oustanding Debt: $" + str(Global.debt_amount)

func end_game():
	$EndGame.show()
	$Shop.hide()
	if Global.debt_amount <= 0:
		$EndGame/Label.text = "YOU WIN!"
	else:
		$EndGame/Label.text = "YOU LOSE! \nYOU DID NOT PAY YOUR DEBT ON TIME."
func _on_make_lemonade_end_game():
	end_game()


func _on_make_lemonade_3_end_game():
	end_game()


func _on_make_lemonade_2_end_game():
	end_game()


func _on_table_tier_1_mouse_entered():
	$Shop/BoothPrice.text = "$" + str(Global.tier1_cost)


func _on_table_tier_2_mouse_entered():
	$Shop/BoothPrice.text = "$" + str(Global.tier2_cost)


func _on_table_tier_3_mouse_entered():
	$Shop/BoothPrice.text = "$" + str(Global.tier3_cost)
