playsound minecraft:entity.enderman.teleport player @a[distance=..12] ~ ~ ~ 0.5 1

particle minecraft:portal ~ ~ ~ 0 0 0 1 20 normal

particle minecraft:witch ~ ~ ~ 0.6 0.1 0.6 0.1 24 normal

execute as @a[distance=..2] at @s run damage @s 5.0 cartographer_mob_abilities:ability_projectile by @e[type=#bb:hostile,limit=1,sort=nearest,distance=..3]

kill @s