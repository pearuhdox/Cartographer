# Datapack  : CDL
# Author(s) : RockNRed, PearUhDox
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : Not Absorbed
# Use       : Ran to damage a mob's normal health.

scoreboard players operation $md.abs cdl.temp *= $constant.-1 cdl.temp
data modify entity @s AbsorptionAmount set value 0
execute store result entity @s Health float 0.01 run scoreboard players operation $md.health cdl.temp -= $md.abs cdl.temp