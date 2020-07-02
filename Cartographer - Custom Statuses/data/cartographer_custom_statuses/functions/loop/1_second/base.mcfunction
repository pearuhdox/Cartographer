execute if entity @e[scores={effect_bleed=1..}] run execute as @e[scores={effect_bleed=1..}] at @s run function cartographer_custom_statuses:effects/bleeding

execute if entity @e[scores={effect_shocked=1..}] run execute as @e[scores={effect_shocked=1..}] at @s run function cartographer_custom_statuses:effects/shocked


schedule function cartographer_custom_statuses:loop/1_second/base 1s