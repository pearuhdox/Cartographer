execute as @e[type=#cartographer_core:hostile,scores={effect_bleed=1..}] at @s run function cartographer_custom_statuses:effects/bleeding

execute as @e[type=#cartographer_core:hostile,scores={effect_shocked=1..}] at @s run function cartographer_custom_statuses:effects/shocked

run execute as @e[type=#cartographer_core:hostile,scores={effect_cloaked=1..}] at @s run function cartographer_custom_statuses:effects/cloaked


schedule function cartographer_custom_statuses:loop/1_second/base 1s