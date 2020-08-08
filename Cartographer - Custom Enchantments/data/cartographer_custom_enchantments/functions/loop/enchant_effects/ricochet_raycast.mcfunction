particle minecraft:falling_water ~ ~ ~ 0.3 0.3 0.3 0 20 normal

scoreboard players remove @s[scores={helper_raycast=1..}] helper_raycast 1

execute if entity @s[scores={helper_raycast=1..}] if block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^1 run function cartographer_custom_enchantments:loop/enchant_effects/ricochet_raycast