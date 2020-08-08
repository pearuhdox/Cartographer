execute if entity @a[scores={second_wind=1..,player_health=5..},tag=bracing] as @a[scores={second_wind=1..,player_health=5..},tag=bracing] at @s run function cartographer_custom_enchantments:loop/enchant_effects/second_wind_test

function cartographer_custom_enchantments:loop/3_second/reset

schedule function cartographer_custom_enchantments:loop/3_second/base 3s