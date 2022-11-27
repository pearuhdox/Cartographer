execute store result score @s ca.size_max run data get entity @s Size
scoreboard players operation @s ca.size_cur = @s ca.size_max
scoreboard players operation @s ca.size_min = @s ca.size_max
scoreboard players operation @s ca.size_min /= $2 ca.CONSTANT
scoreboard players remove @s ca.size_min 1

execute if score @s ca.size_min matches ..0 run scoreboard players set @s ca.size_min 1

data modify entity @s AbsorptionAmount set from entity @s Health

tag @s add size_setup