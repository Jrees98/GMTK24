extends Marker2D

@export var customer_scene: PackedScene
@export var move_right = false
var move_direction : int
# Called when the node enters the scene tree for the first time.
func _ready():
	if move_right:
		move_direction = 1
	else:
		move_direction = -1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$spawner_timer.wait_time = Global.customer_spawn_rate


func _on_spawner_timer_timeout():
	var customer = customer_scene.instantiate()
	add_child(customer)
	customer.add_to_group("customers")
	customer.set_direction(Vector2(move_direction,0))
	customer.moving = true
	var random_time_interval = randf_range(1,5)

