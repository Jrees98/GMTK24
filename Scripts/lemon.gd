extends RigidBody2D
var velocity = Vector2(-1,0)
var speed = Global.lemon_speed

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	linear_velocity = velocity * speed
