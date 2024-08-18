extends Area2D
@export var stop_chance : int

signal lemon_entered

func _on_body_entered(body):
	if body.is_in_group("customers") and Global.cups_of_lemonade > 0:
		body.purchase_lemonade()
	
	if body.is_in_group("lemons"):
		body.queue_free()
		lemon_entered.emit()
