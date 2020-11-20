execute as @e[tag=wither_storm] at @s run execute as @a[distance=..25,limit=1,sort=random] at @s run spreadplayers ~ ~ 2 5 false @e[tag=wither_storm_skull,tag=!spread]

schedule function cartographer_mob_abilities:abilities/wither_storm_drop 10t