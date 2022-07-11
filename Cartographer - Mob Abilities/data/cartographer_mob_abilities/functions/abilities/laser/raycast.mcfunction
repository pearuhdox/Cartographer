particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.15 0.15 0.15 1 3 normal

scoreboard players remove @s[scores={ca.raycast=1..}] ca.raycast 1

execute if entity @a[distance=..1.5] run scoreboard players set @s ca.raycast 0

execute if entity @s[scores={ca.raycast=1..}] if score $laser ca.ability_dmg matches 0..12 positioned ^ ^ ^1 unless block ~ ~ ~ #bb:can_raycast run summon creeper ~ ~ ~ {ExplosionRadius:2b,Fuse:1,ignited:1b,CustomName:'{"text":"thermal disencouragement"}'}
execute if entity @s[scores={ca.raycast=1..}] if score $laser ca.ability_dmg matches 13..24 positioned ^ ^ ^1 unless block ~ ~ ~ #bb:can_raycast run summon creeper ~ ~ ~ {ExplosionRadius:2b,Fuse:1,ignited:1b,CustomName:'{"text":"thermal disencouragement"}'}
execute if entity @s[scores={ca.raycast=1..}] if score $laser ca.ability_dmg matches 25.. positioned ^ ^ ^1 unless block ~ ~ ~ #bb:can_raycast run summon creeper ~ ~ ~ {ExplosionRadius:2b,Fuse:1,ignited:1b,CustomName:'{"text":"thermal disencouragement"}'}

execute as @a[distance=..2] if score $laser ca.ability_dmg matches 0..12 run summon creeper ~ ~ ~ {ExplosionRadius:2b,Fuse:2,ignited:1b,Tags:["laser_explosion"],CustomName:'{"text":"thermal disencouragement"}'}
execute as @a[distance=..2] if score $laser ca.ability_dmg matches 13..24 run summon creeper ~ ~ ~ {ExplosionRadius:3b,Fuse:2,ignited:1b,Tags:["laser_explosion"],CustomName:'{"text":"thermal disencouragement"}'}
execute as @a[distance=..2] if score $laser ca.ability_dmg matches 25.. run summon creeper ~ ~ ~ {ExplosionRadius:4b,Fuse:2,ignited:1b,Tags:["laser_explosion"],CustomName:'{"text":"thermal disencouragement"}'}

execute as @e[type=creeper,tag=laser_explosion] at @s run function cartographer_mob_abilities:abilities/laser/set_and_run_traits

execute if entity @s[scores={ca.raycast=1..}] positioned ^ ^ ^1 if block ~ ~ ~ #bb:can_raycast run function cartographer_mob_abilities:abilities/laser/raycast