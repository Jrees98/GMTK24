extends Area2D
@export var stop_chance : int

signal lemon_entered

func _on_body_entered(body):
	if body.is_in_group("customers") and Global.cups_of_lemonade > 0 and Global.can_purchase:
		var random_number = randf_range(1,100)
		if random_number <= Global.customer_purchase_chance:
			body.purchase_lemonade()
	
