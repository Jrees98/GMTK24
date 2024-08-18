extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().paused = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Dollars.text = str(Global.dollars)
	$Lemonade.text = str(Global.cups_of_lemonade)
	






func _on_start_game_pressed():
	get_tree().paused = false
	$StartScreen.hide()
