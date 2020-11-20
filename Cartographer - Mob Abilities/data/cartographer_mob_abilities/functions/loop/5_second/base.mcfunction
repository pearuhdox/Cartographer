#Loop Passives that activate every 5 seconds.

#Quiver
execute if entity @e[tag=quiver] run execute as @e[tag=quiver] at @s run execute if entity @a[distance=..16] run function cartographer_mob_abilities:passive/quiver

#Permacloak
execute if entity @e[tag=permacloak] run execute as @e[tag=permacloak] at @s run scoreboard players set @s effect_cloaked 5


schedule function cartographer_mob_abilities:loop/5_second/base 5s
