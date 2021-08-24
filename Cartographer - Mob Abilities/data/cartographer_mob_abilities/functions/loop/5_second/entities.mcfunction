#Loop Passives that activate every 5 seconds.

#Quiver
execute as @s[type=#minecraft:skeletons,tag=quiver] at @s if entity @a[distance=..16] run function cartographer_mob_abilities:passive/quiver