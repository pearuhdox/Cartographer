scoreboard players remove @s[scores={helper_raycast=1..}] helper_raycast 1

execute if entity @a[distance=..1.2] as 002f80c0-0001-f879-0000-009c001e7bfc at @s as @e[type=#cartographer_core:hostile,tag=has_active,limit=1,sort=nearest,distance=..1] at @s run tag @s add can_see_player
execute if entity @a[distance=..1.2] run scoreboard players set @s helper_raycast 0
#execute if entity @a[distance=..1.2] run effect give @a glowing 1 0 

#particle end_rod ~ ~ ~ 0 0 0 0 1 force

#particle end_rod ^0.2 ^ ^ 0 0 0 0 1 force
#particle end_rod ^-0.2 ^ ^ 0 0 0 0 1 force
#particle end_rod ^0.4 ^ ^ 0 0 0 0 1 force
#particle end_rod ^-0.4 ^ ^ 0 0 0 0 1 force

#particle end_rod ^0.2 ^ ^0.5 0 0 0 0 1 force
#particle end_rod ^-0.2 ^ ^0.5 0 0 0 0 1 force
#particle end_rod ^0.4 ^ ^0.5 0 0 0 0 1 force
#particle end_rod ^-0.4 ^ ^0.5 0 0 0 0 1 force

execute if entity @s[scores={helper_raycast=1..}] positioned ^0.2 ^ ^0.5 unless block ~ ~ ~ #cartographer_core:can_raycast run scoreboard players set @s helper_raycast 0
execute if entity @s[scores={helper_raycast=1..}] positioned ^-0.2 ^ ^0.5 unless block ~ ~ ~ #cartographer_core:can_raycast run scoreboard players set @s helper_raycast 0
execute if entity @s[scores={helper_raycast=1..}] positioned ^0.4 ^ ^0.5 unless block ~ ~ ~ #cartographer_core:can_raycast run scoreboard players set @s helper_raycast 0
execute if entity @s[scores={helper_raycast=1..}] positioned ^-0.4 ^ ^0.5 unless block ~ ~ ~ #cartographer_core:can_raycast run scoreboard players set @s helper_raycast 0

execute if entity @s[scores={helper_raycast=1..}] positioned ^0.2 ^ ^1 unless block ~ ~ ~ #cartographer_core:can_raycast run scoreboard players set @s helper_raycast 0
execute if entity @s[scores={helper_raycast=1..}] positioned ^-0.2 ^ ^1 unless block ~ ~ ~ #cartographer_core:can_raycast run scoreboard players set @s helper_raycast 0
execute if entity @s[scores={helper_raycast=1..}] positioned ^0.4 ^ ^1 unless block ~ ~ ~ #cartographer_core:can_raycast run scoreboard players set @s helper_raycast 0
execute if entity @s[scores={helper_raycast=1..}] positioned ^-0.4 ^ ^1 unless block ~ ~ ~ #cartographer_core:can_raycast run scoreboard players set @s helper_raycast 0

execute if entity @s[scores={helper_raycast=1..}] positioned ^ ^ ^1 if block ~ ~ ~ #cartographer_core:can_raycast run function cartographer_mob_abilities:helper/los_check/raycast

#debug particle
#particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0 1 normal