effect give @e[type=#cartographer_core:hostile,distance=..16] absorption 60 0 true

execute as @e[type=#cartographer_core:hostile,distance=..16] at @s run particle minecraft:dust 0 0 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 15 normal

effect give @e[type=#cartographer_core:hostile,type=#cartographer_core:undead,distance=..16] instant_damage 1 0
effect give @e[type=#cartographer_core:hostile,type=!#cartographer_core:undead,distance=..16] instant_health 1 0


playsound minecraft:entity.zombie_villager.cure hostile @a[distance=..16] ~ ~ ~ 0.3 2

particle minecraft:block minecraft:black_wool ~ ~1 ~ 0.5 0.5 0.5 1 25 normal

kill @s