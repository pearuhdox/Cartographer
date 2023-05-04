execute if score $fire_aspect ca.evocation matches 1 run data modify entity @s Fire set value 81
execute if score $fire_aspect ca.evocation matches 2 run data modify entity @s Fire set value 161
execute if score $fire_aspect ca.evocation matches 3.. run data modify entity @s Fire set value 221

execute if score $frostbite ca.evocation matches 1 run scoreboard players set @s ca.frost_tier 1
execute if score $frostbite ca.evocation matches 2 run scoreboard players set @s ca.frost_tier 2
execute if score $frostbite ca.evocation matches 3 run scoreboard players set @s ca.frost_tier 3
execute if score $frostbite ca.evocation matches 4 run scoreboard players set @s ca.frost_tier 4
execute if score $frostbite ca.evocation matches 5.. run scoreboard players set @s ca.frost_tier 5
execute if score $frostbite ca.evocation matches 1.. run scoreboard players set @s ca.frost_time 81

execute if data storage cartographer_custom_statuses:apply_effects data.Effects[0] at @s run function cartographer_custom_statuses:apply_effects/apply/create_aec
execute if data storage cartographer_custom_statuses:status_inflict data.Effects[0] at @s run function cartographer_custom_statuses:status_inflict/apply/set_statuses
