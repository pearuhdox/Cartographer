particle minecraft:block minecraft:cobweb ~ ~ ~ 0.3 0.3 0.3 0 30 normal

scoreboard players remove @s[scores={helper_raycast=1..}] helper_raycast 1

execute if entity @a[distance=..1.5] if block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^1 run function cartographer_mob_abilities:abilities/webshot_raycast

execute as @a[distance=..2,tag=!webbed] run scoreboard players set @s damage_queue 6
execute as @a[distance=..2,tag=!webbed] run function cartographer_core:helper/hurt_player/by_score
execute as @a[distance=..2,tag=!webbed] run tag @s add webbed

execute if entity @a[distance=..2] as @a[distance=..2] at @s run setblock ~ ~ ~ minecraft:cobweb keep

execute if entity @s[scores={helper_raycast=1..}] if block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^1 run function cartographer_mob_abilities:abilities/webshot_raycast