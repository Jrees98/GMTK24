extends Node
var cups_of_lemonade := 0
var dollars := 0.00

var debt_amount := 0.00
var lemonade_cost := 1.00

var customer_spawn_rate := 35
var customer_purchase_chance : int
var customer_move_speed = 100

var lemons : int
var cups : int
var ice : int
var sugar : int

var tier1_cost := 20
var tier2_cost := 40
var tier3_cost := 60

var tier1_purchase_chance : int
var tier2_purchase_chance : int
var tier3_purchase_chance : int

var rounds_played : int

# Called when the node enters the scene tree for the first time.
func _ready():
	tier1_purchase_chance = tier1_cost
	tier2_purchase_chance = tier2_cost
	tier3_purchase_chance = tier3_cost


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
