scoreboard players set @a[distance=..2] cdl.Damage_Queue 4
execute as @a[distance=..2] at @s run function cd:lib/player/damage/normal
execute as @e[type=#cartographer_core:hostile,distance=..2] at @s run function cartographer_mob_abilities:passive/duplicate_explosion_mob 

playsound minecraft:entity.generic.explode hostile @a[distance=..12] ~ ~ ~ 1 2

particle minecraft:explosion ~ ~0.75 ~ 0.25 0.25 0.25 1 5 normal

kill @s