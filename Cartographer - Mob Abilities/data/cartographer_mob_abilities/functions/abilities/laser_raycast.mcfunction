particle minecraft:dust 1 1 1 1 ~ ~ ~ 0.15 0.15 0.15 1 3 normal

scoreboard players remove @s[scores={helper_raycast=1..}] helper_raycast 1

execute if entity @a[distance=..1.5] run scoreboard players set @s helper_raycast 0

execute if entity @s[scores={helper_raycast=1..}] positioned ^ ^ ^1 if block ~ ~ ~ #cartographer_core:can_raycast run function cartographer_mob_abilities:abilities/laser_raycast

execute if entity @s[scores={helper_raycast=1..}] positioned ^ ^ ^1 unless block ~ ~ ~ #cartographer_core:can_raycast run summon creeper ~ ~ ~ {ExplosionRadius:2b,Fuse:1,ignited:1b,CustomName:'{"text":"thermal disencouragement"}'}

execute if entity @a[distance=..2] as @a[distance=..2] run summon creeper ~ ~ ~ {ExplosionRadius:2b,Fuse:1,ignited:1b,CustomName:'{"text":"thermal disencouragement"}'}