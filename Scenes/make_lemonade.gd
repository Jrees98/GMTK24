extends Button

@export var amount_to_make : int
@export var button_type : String
signal end_game
# Called when the node enters the scene tree for the first time.
func _ready():
	$".".text = str(amount_to_make)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	if button_type == "lemonade":
		if amount_to_make <= Global.lemons and amount_to_make * Global.ice_recipie <= Global.ice  and amount_to_make <= Global.cups and amount_to_make * Global.sugar_recipie <= Global.sugar:
			Global.cups_of_lemonade += amount_to_make
			Global.lemons -= amount_to_make * Global.lemon_recipie
			Global.ice -= amount_to_make * Global.ice_recipie
			Global.cups -= amount_to_make * Global.cups_recipie
			Global.sugar -= amount_to_make * Global.sugar_recipie
	elif  button_type == "debt":
		if Global.dollars >= amount_to_make and Global.rounds_played >= 1:
			Global.dollars -= amount_to_make
			Global.debt_amount -= amount_to_make
			if Global.debt_amount <= 0:
				end_game.emit()
