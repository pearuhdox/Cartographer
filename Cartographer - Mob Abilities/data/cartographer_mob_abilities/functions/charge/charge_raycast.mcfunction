particle minecraft:crit ~ ~ ~ 0.85 0.75 0.85 0.05 25 normal
particle minecraft:cloud ~ ~ ~ 0 0 0 0 1 force

scoreboard players remove @s[scores={helper_raycast=1..}] helper_raycast 1

execute if entity @s[scores={helper_raycast=1..}] if block ^ ^ ^0.5 #cartographer_core:can_raycast positioned ^ ^ ^0.5 run function cartographer_mob_abilities:charge/charge_raycast