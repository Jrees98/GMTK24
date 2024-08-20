extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$"../Lemonade".text = str(Global.cups_of_lemonade)
	$"../Dollars".text = str(Global.dollars)
	$"../Shop/Lemons/InventoryItem/ItemQuantity".text = str(Global.lemons)
	$"../Shop/Cups/InventoryItem/ItemQuantity".text = str(Global.cups)
	$"../Shop/Ice/InventoryItem/ItemQuantity".text = str(Global.ice)
	$"../Shop/Sugar/InventoryItem/ItemQuantity".text = str(Global.sugar)
	$"../DaysPlayed".text = "Day: " + str(Global.rounds_played)
	$"../Shop/DebtLeftValue".text = str(Global.debt_amount)
