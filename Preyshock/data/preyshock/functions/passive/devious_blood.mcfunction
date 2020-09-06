scoreboard players set @e[type=#cartographer_core:hostile,tag=has_active,distance=..16] cooldown 0

effect give @e[type=#cartographer_core:hostile,tag=!has_active,distance=..16] speed 10 0

execute as @e[type=#cartographer_core:hostile,distance=..16] at @s run particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0.5 0.5 0.5 0 15 normal

effect give @e[type=#cartographer_core:hostile,type=#cartographer_core:undead,distance=..16] instant_damage 1 0
effect give @e[type=#cartographer_core:hostile,type=!#cartographer_core:undead,distance=..16] instant_health 1 0


playsound minecraft:entity.zombie_villager.cure hostile @a[distance=..16] ~ ~ ~ 0.3 2

particle minecraft:block minecraft:magenta_wool ~ ~1 ~ 0.5 0.5 0.5 1 25 normal

kill @s