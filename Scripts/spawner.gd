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
	pass


func _on_spawner_timer_timeout():
	var spawn_chance = randf_range(1,100)
	if spawn_chance <= Global.customer_spawn_rate:
		var customer = customer_scene.instantiate()
		add_child(customer)
		customer.add_to_group("customers")
		customer.set_direction(Vector2(move_direction,0))
		customer.moving = true
		var random_move_speed = randf_range(50,200)
		customer.speed = random_move_speed



