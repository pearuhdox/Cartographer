particle minecraft:crit ~ ~ ~ 0.75 0.75 0.75 0.25 50 normal

scoreboard players remove @s[scores={helper_raycast=1..}] helper_raycast 1

execute if entity @s[scores={helper_raycast=1..}] if block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^1 run function cartographer_mob_abilities:charge/charge_raycast