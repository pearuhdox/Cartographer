execute store result score @s ca.size_max run data get entity @s Size
scoreboard players operation @s ca.size_cur = @s ca.size_max
scoreboard players set @s ca.size_min 1

tag @s add size_setup