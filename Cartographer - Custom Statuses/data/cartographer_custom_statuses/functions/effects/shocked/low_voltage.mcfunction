damage @s 2 cartographer_custom_statuses:status_damage

playsound minecraft:entity.firework_rocket.twinkle_far hostile @a[distance=..16] ~ ~ ~ 1 2
particle minecraft:electric_spark ~ ~1 ~ 0.35 0.35 0.35 1 10 normal

execute as @e[type=#bb:hostile,distance=0.01..3.5,limit=3,sort=nearest] at @s run function cartographer_custom_statuses:effects/shocked/group_low_voltage