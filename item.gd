extends Sprite2D

@export var quantity_1 : int
@export var price_1 : float
@export var quantity_2 : int
@export var price_2 : float
@export var quantity_3 : int
@export var price_3 : float
@export var inventory_item_texture : Texture2D
@export var item_type : String

@onready var dollars_node = get_node("/root/Main/Dollars")


var item_quantity := 0

func _ready():
	$Quantity1.text = str(quantity_1)
	$Quantity2.text = str(quantity_2)
	$Quantity3.text = str(quantity_3)
	$InventoryItem.texture = inventory_item_texture
	$InventoryItem/ItemQuantity.text = str(item_quantity)
	$Price.text = "$" + str(price_1)

func _physics_process(delta):
	pass


func _on_quantity_1_pressed():
	if Global.dollars >= price_1:
		Global.dollars -= price_1
		Global.supply_cost += price_1
		dollars_node.text = str(Global.dollars)
		if item_type == "lemons":
			Global.lemons += quantity_1
			$InventoryItem/ItemQuantity.text = str(Global.lemons)
		elif item_type == "cups":
			Global.cups += quantity_1
			$InventoryItem/ItemQuantity.text = str(Global.cups)
		elif item_type == "ice":
			Global.ice += quantity_1
			$InventoryItem/ItemQuantity.text = str(Global.ice)
		elif item_type == "sugar":
			Global.sugar += quantity_1
			$InventoryItem/ItemQuantity.text = str(Global.sugar)
	print("lemons " + str(Global.lemons))
	print("cups " +  str(Global.cups))
	print("ice " + str(Global.ice))
	print("sugar " + str(Global.sugar))


func _on_quantity_2_pressed():
	if Global.dollars >= price_2:
		Global.dollars -= price_2
		Global.supply_cost += price_2
		dollars_node.text = str(Global.dollars)
		if item_type == "lemons":
			Global.lemons += quantity_2
			$InventoryItem/ItemQuantity.text = str(Global.lemons)
		elif item_type == "cups":
			Global.cups += quantity_2
			$InventoryItem/ItemQuantity.text = str(Global.cups)
		elif item_type == "ice":
			Global.ice += quantity_2
			$InventoryItem/ItemQuantity.text = str(Global.ice)
		elif item_type == "sugar":
			Global.sugar += quantity_2
			$InventoryItem/ItemQuantity.text = str(Global.sugar)
	print("lemons " + str(Global.lemons))
	print("cups " +  str(Global.cups))
	print("ice " + str(Global.ice))
	print("sugar " + str(Global.sugar))


func _on_quantity_3_pressed():
	if Global.dollars >= price_3:
		Global.dollars -= price_3
		Global.supply_cost += price_3
		dollars_node.text = str(Global.dollars)
		if item_type == "lemons":
			Global.lemons += quantity_3
			$InventoryItem/ItemQuantity.text = str(Global.lemons)
		elif item_type == "cups":
			Global.cups += quantity_3
			$InventoryItem/ItemQuantity.text = str(Global.cups)
		elif item_type == "ice":
			Global.ice += quantity_3
			$InventoryItem/ItemQuantity.text = str(Global.ice)
		elif item_type == "sugar":
			Global.sugar += quantity_3
			$InventoryItem/ItemQuantity.text = str(Global.sugar)
	print("lemons " + str(Global.lemons))
	print("cups " +  str(Global.cups))
	print("ice " + str(Global.ice))
	print("sugar " + str(Global.sugar))


func _on_quantity_1_mouse_entered():
	$Price.text = "$" + str(price_1)




func _on_quantity_2_mouse_entered():
	$Price.text = "$" + str(price_2)


func _on_quantity_3_mouse_entered():
	$Price.text = "$" + str(price_3)
