scoreboard players set $explosion ca.dmg_type 1

scoreboard players set @a[distance=..2] cdl.damage_queue 6
execute as @a[distance=..2] at @s run function cartographer_mob_abilities:helper/epf/damage_reduce/ask_reduction
execute rotated ~ 0 positioned ^ ^ ^1 facing entity @s feet rotated ~ 0 positioned as @s as @a[distance=..2] positioned as @s run function cartographer_core:helper/damage_knockback/targeting_direction

execute as @e[type=#bb:hostile,distance=..2] at @s run function cartographer_mob_abilities:passive/duplicate_explosion_mob 

playsound minecraft:entity.generic.explode hostile @a[distance=..12] ~ ~ ~ 1 2

particle minecraft:explosion ~ ~0.75 ~ 0.25 0.25 0.25 1 5 normal

kill @s