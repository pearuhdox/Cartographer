scoreboard players add @s ca.auto_charge_count 1

data modify storage cartographer_custom_enchantments:auto_charge Item set value {}

#Recharging
execute if score @s ca.auto_charge matches 1 run data modify storage cartographer_custom_enchantments:auto_charge Item set from entity @s Inventory[{Slot:0b}]
execute if score @s ca.auto_charge matches 2 run data modify storage cartographer_custom_enchantments:auto_charge Item set from entity @s Inventory[{Slot:1b}]
execute if score @s ca.auto_charge matches 3 run data modify storage cartographer_custom_enchantments:auto_charge Item set from entity @s Inventory[{Slot:2b}]
execute if score @s ca.auto_charge matches 4 run data modify storage cartographer_custom_enchantments:auto_charge Item set from entity @s Inventory[{Slot:3b}]
execute if score @s ca.auto_charge matches 5 run data modify storage cartographer_custom_enchantments:auto_charge Item set from entity @s Inventory[{Slot:4b}]
execute if score @s ca.auto_charge matches 6 run data modify storage cartographer_custom_enchantments:auto_charge Item set from entity @s Inventory[{Slot:5b}]
execute if score @s ca.auto_charge matches 7 run data modify storage cartographer_custom_enchantments:auto_charge Item set from entity @s Inventory[{Slot:6b}]
execute if score @s ca.auto_charge matches 8 run data modify storage cartographer_custom_enchantments:auto_charge Item set from entity @s Inventory[{Slot:7b}]
execute if score @s ca.auto_charge matches 9 run data modify storage cartographer_custom_enchantments:auto_charge Item set from entity @s Inventory[{Slot:8b}]
execute if score @s ca.auto_charge matches 10 run data modify storage cartographer_custom_enchantments:auto_charge Item set from entity @s Inventory[{Slot:-106b}]

execute store result score $req ca.auto_charge_count run data get storage cartographer_custom_enchantments:auto_charge Item.tag.KillCount

execute if score @s ca.auto_charge_count >= $req ca.auto_charge_count run function cartographer_custom_enchantments:enchant_effects/auto_charge/master