execute if score $slot ca.inf_cdl_var matches 0 run data modify storage cartographer_custom_enchantments:infinity transformed.Slot set value 0b
execute if score $slot ca.inf_cdl_var matches 1 run data modify storage cartographer_custom_enchantments:infinity transformed.Slot set value 1b
execute if score $slot ca.inf_cdl_var matches 2 run data modify storage cartographer_custom_enchantments:infinity transformed.Slot set value 2b
execute if score $slot ca.inf_cdl_var matches 3 run data modify storage cartographer_custom_enchantments:infinity transformed.Slot set value 3b
execute if score $slot ca.inf_cdl_var matches 4 run data modify storage cartographer_custom_enchantments:infinity transformed.Slot set value 4b
execute if score $slot ca.inf_cdl_var matches 5 run data modify storage cartographer_custom_enchantments:infinity transformed.Slot set value 5b
execute if score $slot ca.inf_cdl_var matches 6 run data modify storage cartographer_custom_enchantments:infinity transformed.Slot set value 6b
execute if score $slot ca.inf_cdl_var matches 7 run data modify storage cartographer_custom_enchantments:infinity transformed.Slot set value 7b
execute if score $slot ca.inf_cdl_var matches 8 run data modify storage cartographer_custom_enchantments:infinity transformed.Slot set value 8b

execute if score $slot ca.inf_cdl_var matches 0 run data modify storage cartographer_custom_enchantments:infinity with_cdl[{Slot:0b}] set from storage cartographer_custom_enchantments:infinity transformed
execute if score $slot ca.inf_cdl_var matches 1 run data modify storage cartographer_custom_enchantments:infinity with_cdl[{Slot:1b}] set from storage cartographer_custom_enchantments:infinity transformed
execute if score $slot ca.inf_cdl_var matches 2 run data modify storage cartographer_custom_enchantments:infinity with_cdl[{Slot:2b}] set from storage cartographer_custom_enchantments:infinity transformed
execute if score $slot ca.inf_cdl_var matches 3 run data modify storage cartographer_custom_enchantments:infinity with_cdl[{Slot:3b}] set from storage cartographer_custom_enchantments:infinity transformed
execute if score $slot ca.inf_cdl_var matches 4 run data modify storage cartographer_custom_enchantments:infinity with_cdl[{Slot:4b}] set from storage cartographer_custom_enchantments:infinity transformed
execute if score $slot ca.inf_cdl_var matches 5 run data modify storage cartographer_custom_enchantments:infinity with_cdl[{Slot:5b}] set from storage cartographer_custom_enchantments:infinity transformed
execute if score $slot ca.inf_cdl_var matches 6 run data modify storage cartographer_custom_enchantments:infinity with_cdl[{Slot:6b}] set from storage cartographer_custom_enchantments:infinity transformed
execute if score $slot ca.inf_cdl_var matches 7 run data modify storage cartographer_custom_enchantments:infinity with_cdl[{Slot:7b}] set from storage cartographer_custom_enchantments:infinity transformed
execute if score $slot ca.inf_cdl_var matches 8 run data modify storage cartographer_custom_enchantments:infinity with_cdl[{Slot:8b}] set from storage cartographer_custom_enchantments:infinity transformed


data modify storage i:internal working_it set from storage cartographer_custom_enchantments:infinity with_cdl

execute if score $slot ca.inf_cdl_var matches 0 store result score @s ca.inf_cdl_0 run data get storage cartographer_custom_enchantments:infinity transformed.tag.StoredItem.tag.InfinityCooldown
execute if score $slot ca.inf_cdl_var matches 1 store result score @s ca.inf_cdl_1 run data get storage cartographer_custom_enchantments:infinity transformed.tag.StoredItem.tag.InfinityCooldown
execute if score $slot ca.inf_cdl_var matches 2 store result score @s ca.inf_cdl_2 run data get storage cartographer_custom_enchantments:infinity transformed.tag.StoredItem.tag.InfinityCooldown
execute if score $slot ca.inf_cdl_var matches 3 store result score @s ca.inf_cdl_3 run data get storage cartographer_custom_enchantments:infinity transformed.tag.StoredItem.tag.InfinityCooldown
execute if score $slot ca.inf_cdl_var matches 4 store result score @s ca.inf_cdl_4 run data get storage cartographer_custom_enchantments:infinity transformed.tag.StoredItem.tag.InfinityCooldown
execute if score $slot ca.inf_cdl_var matches 5 store result score @s ca.inf_cdl_5 run data get storage cartographer_custom_enchantments:infinity transformed.tag.StoredItem.tag.InfinityCooldown
execute if score $slot ca.inf_cdl_var matches 6 store result score @s ca.inf_cdl_6 run data get storage cartographer_custom_enchantments:infinity transformed.tag.StoredItem.tag.InfinityCooldown
execute if score $slot ca.inf_cdl_var matches 7 store result score @s ca.inf_cdl_7 run data get storage cartographer_custom_enchantments:infinity transformed.tag.StoredItem.tag.InfinityCooldown
execute if score $slot ca.inf_cdl_var matches 8 store result score @s ca.inf_cdl_8 run data get storage cartographer_custom_enchantments:infinity transformed.tag.StoredItem.tag.InfinityCooldown

execute if score $slot ca.inf_cdl_var matches 0 run scoreboard players add @s ca.inf_cdl_0 1
execute if score $slot ca.inf_cdl_var matches 1 run scoreboard players add @s ca.inf_cdl_1 1
execute if score $slot ca.inf_cdl_var matches 2 run scoreboard players add @s ca.inf_cdl_2 1
execute if score $slot ca.inf_cdl_var matches 3 run scoreboard players add @s ca.inf_cdl_3 1
execute if score $slot ca.inf_cdl_var matches 4 run scoreboard players add @s ca.inf_cdl_4 1
execute if score $slot ca.inf_cdl_var matches 5 run scoreboard players add @s ca.inf_cdl_5 1
execute if score $slot ca.inf_cdl_var matches 6 run scoreboard players add @s ca.inf_cdl_6 1
execute if score $slot ca.inf_cdl_var matches 7 run scoreboard players add @s ca.inf_cdl_7 1
execute if score $slot ca.inf_cdl_var matches 8 run scoreboard players add @s ca.inf_cdl_8 1

scoreboard players set $success ca.inf_cdl_var 1