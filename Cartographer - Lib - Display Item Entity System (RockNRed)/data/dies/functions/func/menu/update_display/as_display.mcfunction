
execute if score @s dies.object.frame_facing matches 0 positioned ~ ~-.3 ~ run particle minecraft:electric_spark ~ ~ ~ .2 .2 .2 .001 50
execute if score @s dies.object.frame_facing matches 1..5 positioned ~ ~.4 ~ run particle minecraft:electric_spark ~ ~ ~ .2 .2 .2 .001 50
