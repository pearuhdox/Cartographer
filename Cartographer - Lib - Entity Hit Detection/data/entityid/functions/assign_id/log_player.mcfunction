#adding value to end of array and writing id onto it
data modify storage entityid:players all append value 0
execute store result storage entityid:players all[-1] int 1 run scoreboard players get @s entityid