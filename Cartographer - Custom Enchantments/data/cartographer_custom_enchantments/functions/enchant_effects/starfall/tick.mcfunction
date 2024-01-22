scoreboard players add @s ca.starfall_time 1

execute if score @s ca.starfall_time matches 20 run function cartographer_custom_enchantments:enchant_effects/starfall/branch
execute if score @s ca.starfall_time matches 20.. run scoreboard players set @s ca.starfall_time 0