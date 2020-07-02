#Loop Passives that activate every 5 seconds.

#Quiver
execute if entity @e[tag=quiver] run execute as @e[tag=quiver] at @s run execute if entity @a[distance=..16] run function cartographer_mob_abilities:passive/quiver

#TODO: Add Reflect Melee

#TODO: Add Reflect Ranged

#TODO: Add Breaker

schedule function cartographer_mob_abilities:loop/5_second/base 5s
