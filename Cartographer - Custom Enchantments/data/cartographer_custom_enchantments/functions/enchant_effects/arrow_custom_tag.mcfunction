execute if score $punch ca.var matches 1.. positioned ~ ~0.5 ~ run tp @s ~ ~ ~ facing entity @e[distance=..7,type=arrow,limit=1,sort=nearest] feet
execute if score $punch ca.var matches 1.. positioned ~ ~0.5 ~ run data modify entity @s Rotation[1] set value 0f

#Run Arrow Effect Dictionary
function #minecraft:cartographer_events/dict/arrow