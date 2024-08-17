extends CharacterBody2D

@export var speed = 400

var moving : bool
func _ready():
	moving = true

func _physics_process(delta):
	if moving:
		move_forward()

func move_forward():
	$AnimatedSprite2D.play("walk")
	velocity.x = -speed
	move_and_slide()

func purchase_lemonade():
	moving = false
	velocity = Vector2.ZERO
	$AnimatedSprite2D.play("idle_north")
	$PurchasedLemonade.start()
	Global.dollars += 5
	print(Global.dollars)




func _on_purchased_lemonade_timeout():
	moving = true
	move_forward()
