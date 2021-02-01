#Loop Passives that activate every 5 seconds.

#Quiver
execute as @e[type=#minecraft:skeletons,tag=quiver] at @s run execute if entity @a[distance=..16] run function cartographer_mob_abilities:passive/quiver

#Permacloak
execute as @e[type=#cartographer_core:hostile,tag=permacloak] at @s run scoreboard players set @s effect_cloaked 5