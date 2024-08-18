extends CharacterBody2D
var lemonade_cost = 1
var speed : int 
var direction = Vector2.ZERO
var moving : bool
func _ready():
	$TextBubble/Label.text = ""

func _physics_process(delta):
	if moving:
		move_forward()
	lemonade_cost = Global.lemonade_cost

func move_forward():
	$TextBubble.visible = false
	$TextBubble/Label.text = ""
	$AnimatedSprite2D.play("walk")
	velocity.x = direction.x * speed
	move_and_slide()

func purchase_lemonade():
	#$TextBubble.visible = true
	moving = false
	velocity = Vector2.ZERO
	$AnimatedSprite2D.play("idle_north")
	$PurchasedLemonade.start()
	Global.dollars += lemonade_cost
	Global.cups_of_lemonade -= 1
	$AudioStreamPlayer2D.play()
	$TextBubble/Label.text = "What a hot day!"
	print(Global.dollars)

func set_direction(dir: Vector2):
	direction = dir
	$AnimatedSprite2D.flip_h = direction.x > 0



func _on_purchased_lemonade_timeout():
	moving = true
	move_forward()
