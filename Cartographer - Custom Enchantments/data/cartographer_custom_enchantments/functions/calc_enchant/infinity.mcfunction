tag @s remove holding_infinity

scoreboard players set @s infinity -1
execute if data entity @s SelectedItem.tag.Infinity run scoreboard players operation @s infinity = @s ca.selecteditem
scoreboard players add @s infinity 1
execute unless score @s infinity matches 1.. if data entity @s Inventory[{Slot:-106b,tag:{Infinity:1}}] run scoreboard players set @s infinity 10

execute if score @s infinity matches 1.. run tag @s add holding_infinity

execute if score @s infinity matches 10 run tag @s[predicate=cartographer_custom_enchantments:infinity/holding_consumable,nbt=!{SelectedItem:{tag:{Infinity:1}}}] remove holding_infinity
execute if score @s infinity matches 10 run tag @s[scores={ca.food=..19},predicate=cartographer_custom_enchantments:infinity/holding_food,nbt=!{SelectedItem:{tag:{Infinity:1}}}] remove holding_infinity

execute unless score @s infinity matches 1.. run function cartographer_custom_enchantments:calc_enchant/infinity_pls