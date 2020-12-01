execute if entity @a[scores={second_wind=1..,player_health=5..},tag=bracing] as @a[scores={second_wind=1..,player_health=5..},tag=bracing] at @s run function cartographer_custom_enchantments:loop/enchant_effects/second_wind_test

execute as @a[scores={echo=1,echo_charges=..1}] at @s run execute unless entity @e[distance=..10,type=#cartographer_core:hostile] run function cartographer_custom_enchantments:loop/enchant_effects/echo_restore
execute as @a[scores={echo=2,echo_charges=..3}] at @s run execute unless entity @e[distance=..10,type=#cartographer_core:hostile] run function cartographer_custom_enchantments:loop/enchant_effects/echo_restore
execute as @a[scores={echo=3,echo_charges=..5}] at @s run execute unless entity @e[distance=..10,type=#cartographer_core:hostile] run function cartographer_custom_enchantments:loop/enchant_effects/echo_restore

#Set default of ui_location to 0
execute as @a run execute unless entity @s[scores={ui_location=0..}] run scoreboard players set @s ui_location 0

function cartographer_custom_enchantments:loop/3_second/reset

schedule function cartographer_custom_enchantments:loop/3_second/base 3s