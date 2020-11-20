execute if entity @s[scores={evocation=1..}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["evocation_raycast_1","evocation_ray"]}

execute if entity @s[scores={evocation=2..}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["evocation_raycast_2","evocation_ray"]}

execute if entity @s[scores={evocation=3..}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["evocation_raycast_3","evocation_ray"]}

execute as @e[type=armor_stand,tag=evocation_raycast_1] at @s run tp @s ~ ~ ~ facing entity @e[limit=1,type=#cartographer_core:hostile,sort=nearest,tag=!evocation_target,distance=..10] feet

tag @e[type=#cartographer_core:hostile,sort=nearest,tag=!evocation_target,limit=1,distance=..10] add evocation_target

execute as @e[type=armor_stand,tag=evocation_raycast_2] at @s run tp @s ~ ~ ~ facing entity @e[limit=1,type=#cartographer_core:hostile,sort=nearest,tag=!evocation_target,distance=..10] feet

execute unless entity @e[type=#cartographer_core:hostile,tag=evocation_target,distance=..10] run kill @e[tag=evocation_raycast_1]

tag @e[type=#cartographer_core:hostile,sort=nearest,tag=!evocation_target,limit=1,distance=..10] add evocation_target
tag @e[type=#cartographer_core:hostile,sort=nearest,tag=!evocation_target,limit=1,distance=..10] add evocation_target_2

execute unless entity @e[type=#cartographer_core:hostile,tag=evocation_target_2,distance=..10] run kill @e[tag=evocation_raycast_2]

execute as @e[type=armor_stand,tag=evocation_raycast_3] at @s run tp @s ~ ~ ~ facing entity @e[limit=1,type=#cartographer_core:hostile,sort=nearest,tag=!evocation_target,distance=..10] feet

tag @e[type=#cartographer_core:hostile,sort=nearest,tag=!evocation_target,limit=1,distance=..10] add evocation_target
tag @e[type=#cartographer_core:hostile,sort=nearest,tag=!evocation_target,limit=1,distance=..10] add evocation_target_3

execute unless entity @e[type=#cartographer_core:hostile,tag=evocation_target_3,distance=..10] run kill @e[tag=evocation_raycast_3]

scoreboard players set @e[tag=evocation_ray] helper_raycast 10

execute as @e[tag=evocation_ray] at @s run tp @s ^ ^ ^2

execute as @e[tag=evocation_ray] at @s run function cartographer_custom_enchantments:loop/enchant_effects/evocation_raycast

kill @e[tag=evocation_ray]

tag @e[tag=evocation_target] remove evocation_target
tag @e[tag=evocation_target] remove evocation_target_2
tag @e[tag=evocation_target] remove evocation_target_3