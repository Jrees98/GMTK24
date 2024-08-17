extends Area2D
@export var stop_chance : int



func _on_body_entered(body):
	if randi() % 100 < int(stop_chance):
		body.purchase_lemonade()
