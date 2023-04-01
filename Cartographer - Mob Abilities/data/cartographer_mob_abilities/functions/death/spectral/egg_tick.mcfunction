particle minecraft:witch ~ ~ ~ 0.1 0 0.1 0.1 1 normal

execute if score @s ca.lifetime matches 20.. run function cartographer_mob_abilities:death/spectral/master

scoreboard players add @s ca.lifetime 1