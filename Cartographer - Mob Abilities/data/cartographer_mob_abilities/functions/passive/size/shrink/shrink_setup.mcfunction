execute store result score @s ca.size_max run data get entity @s Size
scoreboard players operation @s ca.size_cur = @s ca.size_max
scoreboard players operation @s ca.size_min = @s ca.size_max
scoreboard players operation @s ca.size_min /= $2 ca.CONSTANT
scoreboard players remove @s ca.size_min 1

execute if score @s ca.size_min matches ..0 run scoreboard players set @s ca.size_min 1

attribute @s minecraft:generic.max_absorption base set 1024
data modify entity @s AbsorptionAmount set from entity @s Health
execute store result score @s ca.size_max_health run data get entity @s AbsorptionAmount

attribute @s minecraft:generic.max_health base set 40
effect give @s instant_health 10 1 true


tag @s add size_setup