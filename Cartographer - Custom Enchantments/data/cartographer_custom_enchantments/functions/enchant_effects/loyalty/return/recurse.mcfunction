#Grab the first item from the inventory
data modify storage cartographer_custom_enchantments:loyalty_inventory Temp set value {}
data modify storage cartographer_custom_enchantments:loyalty_inventory Temp set from storage cartographer_custom_enchantments:loyalty_inventory Inventory[0]

#Delete the first item from the inventory
data remove storage cartographer_custom_enchantments:loyalty_inventory Inventory[0]

#Is the item not a Loyalty Stone? If it is not, get rid of it.
execute unless data storage cartographer_custom_enchantments:loyalty_inventory Temp.tag.StoredTrident.id run data modify storage cartographer_custom_enchantments:loyalty_inventory Temp set value {}

#If it is a stone, we do additional operations (reduce its remaining time or give it back)
execute if data storage cartographer_custom_enchantments:loyalty_inventory Temp.tag.StoredTrident.id run function cartographer_custom_enchantments:enchant_effects/loyalty/return/reduce_time


#Recurse until out of inventory items to check
execute if data storage cartographer_custom_enchantments:loyalty_inventory Inventory[0].id run function cartographer_custom_enchantments:enchant_effects/loyalty/return/recurse