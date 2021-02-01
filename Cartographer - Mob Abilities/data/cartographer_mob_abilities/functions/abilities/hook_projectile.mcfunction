particle minecraft:block chain ~ ~1 ~ 0.3 0.3 0.3 0 25 normal

execute if entity @s[scores={helper_lifetime=..6}] as @s at @s run tp @s ^ ^ ^2
execute if entity @s[scores={helper_lifetime=21..}] as @s at @s run tp @s ^ ^ ^1

execute if entity @s[scores={helper_lifetime=..6}] as @s at @s run playsound minecraft:block.chain.place hostile @a[distance=..12] ~ ~ ~ 1 0.5
execute if entity @s[scores={helper_lifetime=21..}] as @s at @s run playsound minecraft:block.chain.place hostile @a[distance=..12] ~ ~ ~ 1 0.5

execute if entity @a[distance=..1.5] at @s run tp @e[type=armor_stand,tag=hookshot_target,limit=1,sort=nearest] ~ ~ ~
execute if entity @s[scores={helper_lifetime=..7}] if entity @a[distance=..1.5] run scoreboard players set @s helper_lifetime 8

execute if entity @e[type=armor_stand,tag=hookshot_target,sort=nearest,limit=1,distance=..2] as @s at @s run tp @s @e[type=armor_stand,tag=hookshot_target,limit=1,sort=nearest]
execute if entity @s[scores={helper_lifetime=..7}] if entity @e[type=armor_stand,tag=hookshot_target,sort=nearest,limit=1,distance=..2] as @s at @s run scoreboard players set @s helper_lifetime 21
execute if entity @e[type=armor_stand,tag=hookshot_target,sort=nearest,limit=1,distance=..2] as @s at @s run kill @e[type=armor_stand,tag=hookshot_target,limit=1,sort=nearest,distance=..2]

execute if entity @a[distance=..1.5] as @s at @s run tp @p ~ ~ ~
execute if entity @a[distance=..1.5,nbt=!{ActiveEffects:[{Id:25b}]}] run playsound minecraft:block.iron_trapdoor.close hostile @a[distance=..16] ~ ~ ~ 2 1.5
execute if entity @a[distance=..1.5,nbt=!{ActiveEffects:[{Id:25b}]}] run tag @p add hooked
execute if entity @a[distance=..1.5,nbt=!{ActiveEffects:[{Id:25b}]}] run scoreboard players set @p damage_queue 4
execute if entity @a[distance=..1.5,nbt=!{ActiveEffects:[{Id:25b}]}] run execute as @p at @p run function cartographer_core:helper/hurt_player/by_score
execute if entity @a[distance=..1.5] as @s at @s run effect give @p levitation 1 0 true

execute if entity @s[scores={helper_lifetime=33..}] run kill @s
execute unless block ~ ~1 ~ #cartographer_core:can_raycast run kill @s

execute positioned ^ ^ ^2 if entity @e[type=#cartographer_core:hostile,distance=..1] run effect clear @p levitation
execute positioned ^ ^ ^2 if entity @e[type=#cartographer_core:hostile,distance=..1] run kill @s

execute positioned ^ ^ ^1.5 if entity @e[type=#cartographer_core:hostile,distance=..1] run effect clear @p levitation
execute positioned ^ ^ ^1.5 if entity @e[type=#cartographer_core:hostile,distance=..1] run kill @s

execute positioned ^ ^ ^1 if entity @e[type=#cartographer_core:hostile,distance=..1] run effect clear @p levitation
execute positioned ^ ^ ^1 if entity @e[type=#cartographer_core:hostile,distance=..1] run kill @s

execute positioned ^ ^ ^0.5 if entity @e[type=#cartographer_core:hostile,distance=..1] run effect clear @p levitation
execute positioned ^ ^ ^0.5 if entity @e[type=#cartographer_core:hostile,distance=..1] run kill @s