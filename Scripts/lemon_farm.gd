extends Marker2D
@export var lemon_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Spawn_rate.wait_time = Global.lemon_spawn_rate



func _on_spawn_rate_timeout():
	var lemon = lemon_scene.instantiate()
	add_child(lemon)
	lemon.add_to_group("lemons")
