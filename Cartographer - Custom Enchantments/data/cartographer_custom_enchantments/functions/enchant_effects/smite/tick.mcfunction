scoreboard players add @s ca.smite_time 1

execute if score @s ca.smite_time matches 100 run function cartographer_custom_enchantments:enchant_effects/smite/find
execute if score @s ca.smite_time matches 100.. run scoreboard players set @s ca.smite_time 0