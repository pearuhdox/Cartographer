#All looping effects that are entity calls (1 seconds)
execute as @s[type=#bb:hostile] at @s run function cartographer_mob_abilities:loop/1_second/branches/hostile

execute as @s[type=armor_stand] at @s run function cartographer_mob_abilities:loop/1_second/branches/armor_stand
