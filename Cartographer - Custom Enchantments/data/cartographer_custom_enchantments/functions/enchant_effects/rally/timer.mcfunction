scoreboard players remove @s ca.rally_time 1

execute if score @s ca.rally_time matches 0 run function cartographer_custom_enchantments:enchant_effects/rally/end

execute if entity @s[tag=ca.rallied] run function cartographer_custom_enchantments:enchant_effects/rally/calculate

execute if score @s ca.rally_damage matches 1.. if score @s ca.rally_bank matches 1.. run function cartographer_custom_enchantments:enchant_effects/rally/restore_health

particle minecraft:dust 0.8 0 0 1 ~ ~0.2 ~ 0.4 0.1 0.4 0 1 normal

execute if entity @s[x_rotation=-90..60] run particle minecraft:dust 0.8 0 0 1 ~ ~0.2 ~ 0.4 0.1 0.4 0 1 normal
execute if entity @s[x_rotation=61..80] run particle minecraft:dust 0.8 0 0 1 ~ ~0.2 ~ 0.1 0 0.1 0 1 normal