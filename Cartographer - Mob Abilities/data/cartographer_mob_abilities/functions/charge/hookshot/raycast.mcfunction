particle minecraft:dust 0.431 0.157 0.071 1 ~ ~ ~ 0.25 0.25 0.25 0 20 normal

scoreboard players remove @s[scores={ca.raycast=1..}] ca.raycast 1

execute if entity @s[scores={ca.raycast=1..}] if block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^1 run function cartographer_mob_abilities:charge/hookshot/raycast