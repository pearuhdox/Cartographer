particle minecraft:smoke ~ ~ ~ 0.85 0.75 0.85 0.05 15 normal
particle minecraft:cloud ~ ~ ~ 0 0 0 0.1 1 force

execute if entity @s[scores={helper_raycast=1}] run particle minecraft:cloud ~ ~ ~ 0 0.3 0 0.15 15 normal

scoreboard players remove @s[scores={helper_raycast=1..}] helper_raycast 1

execute as @a[distance=..1.75,tag=!ran_over] at @s run scoreboard players set @s damage_queue 10
execute as @a[distance=..1.75,tag=!ran_over] at @s run function cartographer_core:helper/hurt_player/by_score
execute as @a[distance=..1.75,tag=!ran_over] at @s run tag @s add ran_over

#execute if entity @a[scores={custom_death=1..}] at @s run say hi

tp @s ^ ^ ^0.5

execute unless block ^ ^ ^0.5 #cartographer_core:can_raycast run scoreboard players set @s helper_raycast 0

execute as @s[scores={helper_raycast=0}] at @s positioned ~ ~-0.5 ~ run function cartographer_mob_abilities:passive/breaker

execute if entity @s[scores={helper_raycast=1..}] if block ~ ~ ~ #cartographer_core:can_raycast if block ^ ^ ^0.5 #cartographer_core:can_raycast positioned ^ ^ ^0.5 run function cartographer_mob_abilities:abilities/charge/raycast