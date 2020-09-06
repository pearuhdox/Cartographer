scoreboard players remove @s[scores={helper_raycast=1..}] helper_raycast 1

execute if entity @a[distance=..1.5] run scoreboard players set @s helper_raycast 0

execute if entity @s[scores={helper_raycast=1..}] positioned ^ ^ ^1 if block ~ ~ ~ #cartographer_core:can_raycast run function cartographer_mob_abilities:token/raycast_los

execute if entity @a[distance=..1.5] run execute as @e[tag=los_check_stand] at @s run execute as @e[tag=!los_check_stand,distance=..1,sort=nearest,type=#cartographer_core:hostile] run function cartographer_mob_abilities:token/token_enemy