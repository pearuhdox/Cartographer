particle minecraft:dust 1 1 1 1 ~ ~ ~ 0.15 0.15 0.15 1 3 normal

scoreboard players remove @s[scores={helper_raycast=1..}] helper_raycast 1

execute if entity @a[distance=..1.5] run scoreboard players set @s helper_raycast 0

execute if entity @s[scores={helper_raycast=1..}] positioned ^ ^ ^1 if block ~ ~ ~ #cartographer_core:can_raycast run function cartographer_mob_abilities:charge/laser_raycast