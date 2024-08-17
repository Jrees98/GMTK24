extends Marker2D

@export var customer_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_spawner_timer_timeout():
	var customer = customer_scene.instantiate()
	add_child(customer)
	var random_time_interval = randf_range(1,5)
	$spawner_timer.wait_time = random_time_interval
