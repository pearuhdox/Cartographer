execute as @s[tag=!target] at @s run tp @s ~ ~ ~ facing entity @p feet

particle minecraft:flame ~ ~1 ~ 0.1 0.1 0.1 0.3 1 normal @a

execute run tp @s ^ ^ ^1

execute unless block ~ ~ ~ #cartographer_core:can_raycast run summon fireball ~ ~1 ~ {NoGravity:1b,ExplosionPower:1,power:[0.0,-10.0,0.0]}
execute unless block ~ ~ ~ #cartographer_core:can_raycast run kill @s

execute if entity @a[distance=..1] run summon minecraft:fireball ~ ~1 ~ {NoGravity:1b,ExplosionPower:1,direction:[0.0,-10.0,0.0],power:[0.0,-10.0,0.0]}
execute if entity @a[distance=..1] run kill @s

execute as @s[tag=!target] run tag @s add target