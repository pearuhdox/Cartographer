# Datapack  : CDL
# Author(s) : RockNRed, PearUhDox
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : Absorbed
# Use       : Ran to remove absorption from a mob.

execute store result score $md.abs cdl.temp run data get entity @s AbsorptionAmount 100
execute store result entity @s AbsorptionAmount float 0.01 run scoreboard players operation $md.abs cdl.temp -= @s cdl.damage_queue
