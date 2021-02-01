particle minecraft:dust 0.5 0 0 0.75 ~ ~ ~ 0.3 0.3 0.3 0 30 normal

scoreboard players remove @s[scores={helper_raycast=1..}] helper_raycast 1

execute unless entity @s[scores={helper_raycast=1..}] positioned ^ ^ ^ run summon armor_stand ~ ~-0.5 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["hookshot_target","ability_marker"]}
execute unless block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^ run summon armor_stand ~ ~-0.5 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["hookshot_target","ability_marker"]}

execute unless entity @s[scores={helper_raycast=1..}] positioned ^ ^ ^ run execute as @e[type=armor_stand,tag=hookshot_target,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[type=#cartographer_core:hostile,tag=hookshot,tag=is_casting,limit=1,sort=nearest] feet
execute unless block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^ run execute as @e[type=armor_stand,tag=hookshot_target,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[type=#cartographer_core:hostile,tag=hookshot,tag=is_casting,limit=1,sort=nearest] feet

execute if entity @s[scores={helper_raycast=1..}] if block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^1 run function cartographer_mob_abilities:charge/hookshot_raycast