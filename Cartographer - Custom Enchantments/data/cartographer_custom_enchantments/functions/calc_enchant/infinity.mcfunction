tag @s remove holding_infinity

scoreboard players set @s ca.infinity -1
execute if data entity @s SelectedItem.tag.Infinity run scoreboard players operation @s ca.infinity = @s ca.selecteditem
scoreboard players add @s ca.infinity 1
execute unless score @s ca.infinity matches 1.. if data entity @s Inventory[{Slot:-106b,tag:{CustomEnchantments:[{id:"infinity",lvl:1b}]}}] run scoreboard players set @s ca.infinity 10

execute if score @s ca.infinity matches 1.. run tag @s add holding_infinity

execute if score @s ca.infinity matches 10 run tag @s[predicate=cartographer_custom_enchantments:infinity/holding_consumable,nbt=!{SelectedItem:{tag:{CustomEnchantments:[{id:"infinity",lvl:1b}]}}}] remove holding_infinity
execute if score @s ca.infinity matches 10 run tag @s[scores={ca.food=..19},predicate=cartographer_custom_enchantments:infinity/holding_food,nbt=!{SelectedItem:{tag:{CustomEnchantments:[{id:"infinity",lvl:1b}]}}}] remove holding_infinity

execute unless score @s ca.infinity matches 1.. run function cartographer_custom_enchantments:calc_enchant/infinity_pls