# Datapack  : CDL
# Author(s) : RockNRed
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : Main
# Use       : Ran to heal a mob.

#Get current health and scale * 100
execute store result score $md.health cdl.temp run data get entity @s Health 100
scoreboard players operation @s cdl.heal_queue *= $constant.100 cdl.temp

#Heal the mob
execute store result entity @s Health float 0.01 run scoreboard players operation $md.health cdl.temp += @s cdl.heal_queue

#Set heal queue to 0.
scoreboard players reset @s cdl.heal_queue