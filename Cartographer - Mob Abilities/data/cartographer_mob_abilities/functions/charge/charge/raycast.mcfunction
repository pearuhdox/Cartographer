particle minecraft:crit ~ ~ ~ 0.85 0.75 0.85 0.05 25 normal
particle minecraft:cloud ~ ~ ~ 0 0 0 0 1 force

scoreboard players remove @s[scores={ca.raycast=1..}] ca.raycast 1

execute if entity @s[scores={ca.raycast=1..}] if block ^ ^ ^0.5 #bb:can_raycast positioned ^ ^ ^0.5 run function cartographer_mob_abilities:charge/charge/raycast