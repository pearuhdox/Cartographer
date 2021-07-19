#Loop Passives that activate every 5 seconds.

#Quiver
execute as @s[type=#minecraft:skeletons,tag=quiver] at @s if entity @a[distance=..16] run function cartographer_mob_abilities:passive/quiver

#Permacloak
execute as @s[type=#cartographer_core:hostile,tag=permacloak] at @s run scoreboard players set @s ca.effect_cloak 5