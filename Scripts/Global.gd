extends Node
var cups_of_lemonade := 0
var dollars : float

var debt_amount := 0.00
var lemonade_cost := 1.50
var lemonade_supply_cost := 1

var customer_spawn_rate := 35
var customer_purchase_chance : int
var customer_move_speed = 100

var debt_selected := false

var lemons : int
var lemon_recipie = 1
var cups : int
var cups_recipie = 1
var ice : int
var ice_recipie = 3
var sugar : int
var sugar_recipie = 2

var tier1_cost := 20.00
var tier2_cost := 40.00
var tier3_cost := 60.00

var tier1_purchase_chance : int
var tier2_purchase_chance : int
var tier3_purchase_chance : int

var rounds_played := 0

var supply_cost := 0.00
var lemonade_sold : int

var can_purchase : bool

var minimum_payment : int

# Called when the node enters the scene tree for the first time.
func _ready():
	tier1_purchase_chance = tier1_cost
	tier2_purchase_chance = tier2_cost
	tier3_purchase_chance = tier3_cost


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
