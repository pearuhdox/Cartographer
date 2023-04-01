data modify storage cartographer_mob_abilities:summoner data set value {}
data modify storage cartographer_mob_abilities:summoner data set from entity @s Item

playsound minecraft:entity.allay.hurt hostile @a[distance=..16] ~ ~ ~ 0.5 0.65
playsound minecraft:entity.turtle.egg_break hostile @a[distance=..16] ~ ~ ~ 1 0.5

particle minecraft:soul ~ ~0.5 ~ 0.3 0.5 0.3 0.1 15 normal

function cartographer_mob_abilities:death/spectral/find_type

function cartographer_mob_abilities:death/spectral/summon

execute as @e[tag=ca.spectre,tag=!spectre_checked,limit=1,sort=nearest] at @s run function cartographer_mob_abilities:death/spectral/data

kill @s