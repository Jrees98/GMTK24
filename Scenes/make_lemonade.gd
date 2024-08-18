extends Button

@export var amount_to_make : int
# Called when the node enters the scene tree for the first time.
func _ready():
	$".".text = str(amount_to_make)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	if amount_to_make <= Global.lemons and amount_to_make <= Global.ice and amount_to_make <= Global.cups and amount_to_make <= Global.sugar:
		Global.cups_of_lemonade += amount_to_make
		Global.lemons -= amount_to_make
		Global.ice -= amount_to_make
		Global.cups -= amount_to_make
		Global.sugar -= amount_to_make
