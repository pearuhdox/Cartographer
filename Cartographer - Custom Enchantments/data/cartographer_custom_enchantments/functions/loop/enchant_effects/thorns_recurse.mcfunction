scoreboard players remove @s thorns 1

execute as @e[type=#cartographer_core:hostile,distance=0.2..5] at @s run scoreboard players add @s damage_queue 1

execute if entity @s[scores={thorns=1..}] run function cartographer_custom_enchantments:loop/enchant_effects/thorns_recurse