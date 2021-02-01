particle minecraft:smoke ~ ~ ~ 0.75 0.75 0.75 0.05 50 normal

scoreboard players remove @s[scores={helper_raycast=1..}] helper_raycast 1

execute as @a[distance=..2,tag=!ran_over] at @s run scoreboard players set @s damage_queue 10
execute as @a[distance=..2,tag=!ran_over] at @s run function cartographer_core:helper/hurt_player/by_score
execute as @a[distance=..2,tag=!ran_over] at @s run tag @s add ran_over

#execute if entity @a[scores={custom_death=1..}] at @s run say hi

tp @s ^ ^ ^1

execute if entity @s[scores={helper_raycast=1..}] if block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^1 run function cartographer_mob_abilities:abilities/charge_raycast