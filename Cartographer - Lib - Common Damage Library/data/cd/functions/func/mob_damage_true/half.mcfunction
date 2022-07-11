# Datapack  : CDL
# Author(s) : RockNRed, PearUhDox
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : Half
# Use       : Ran to deal half a point of damage (0.25 of a heart.)

execute store result score $md.health cdl.temp run data get entity @s Health 100
execute if score $md.health cdl.temp matches ..49 run kill @s
execute if score $md.health cdl.temp matches 50.. store result entity @s Health float 0.01 run scoreboard players remove $md.health cdl.temp 50