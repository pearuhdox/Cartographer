scoreboard players add @s ca.starfall_time 1

execute if score @s ca.starfall_time matches 100 run function cartographer_custom_enchantments:enchant_effects/starfall/find
execute if score @s ca.starfall_time matches 100.. run scoreboard players set @s ca.starfall_time 0