execute as @s[tag=!target] at @s run tp @s ~ ~ ~ facing entity @p feet

particle minecraft:flame ~ ~1 ~ 0.1 0.1 0.1 0.3 1 normal @a

execute run tp @s ^ ^ ^1

execute if score @s ca.ability_dmg matches 0..8 unless block ~ ~ ~ #cartographer_core:can_raycast run summon fireball ~ ~1 ~ {NoGravity:1b,ExplosionPower:1,power:[0.0,-10.0,0.0]}
execute if score @s ca.ability_dmg matches 9..16 unless block ~ ~ ~ #cartographer_core:can_raycast run summon fireball ~ ~1 ~ {NoGravity:1b,ExplosionPower:2,power:[0.0,-10.0,0.0]}
execute if score @s ca.ability_dmg matches 17..24 unless block ~ ~ ~ #cartographer_core:can_raycast run summon fireball ~ ~1 ~ {NoGravity:1b,ExplosionPower:3,power:[0.0,-10.0,0.0]}
execute if score @s ca.ability_dmg matches 25.. unless block ~ ~ ~ #cartographer_core:can_raycast run summon fireball ~ ~1 ~ {NoGravity:1b,ExplosionPower:4,power:[0.0,-10.0,0.0]}
execute unless block ~ ~ ~ #cartographer_core:can_raycast run kill @s

execute if score @s ca.ability_dmg matches 0..8 if entity @a[distance=..1] run summon minecraft:fireball ~ ~1 ~ {NoGravity:1b,ExplosionPower:1,power:[0.0,-10.0,0.0]}
execute if score @s ca.ability_dmg matches 9..16 if entity @a[distance=..1] run summon minecraft:fireball ~ ~1 ~ {NoGravity:1b,ExplosionPower:2,power:[0.0,-10.0,0.0]}
execute if score @s ca.ability_dmg matches 17..24 if entity @a[distance=..1] run summon minecraft:fireball ~ ~1 ~ {NoGravity:1b,ExplosionPower:3,power:[0.0,-10.0,0.0]}
execute if score @s ca.ability_dmg matches 25.. if entity @a[distance=..1] run summon minecraft:fireball ~ ~1 ~ {NoGravity:1b,ExplosionPower:4,power:[0.0,-10.0,0.0]}
execute if entity @a[distance=..1] run kill @s

execute as @s[tag=!target] run tag @s add target