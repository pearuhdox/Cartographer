execute if entity @a[scores={second_wind=1..,player_health=5..},tag=bracing] as @a[scores={second_wind=1..,player_health=5..},tag=bracing] at @s run function cartographer_custom_enchantments:loop/enchant_effects/second_wind_test

#Set default of ui_location to 0
execute as @a run execute unless entity @s[scores={ui_location=0..}] run scoreboard players set @s ui_location 0

function cartographer_custom_enchantments:loop/3_second/reset