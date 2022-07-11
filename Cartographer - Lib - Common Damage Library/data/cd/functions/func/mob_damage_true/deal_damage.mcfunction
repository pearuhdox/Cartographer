# Datapack  : CDL
# Author(s) : RockNRed, PearUhDox
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : Deal Damage
# Use       : Ran to damage a mob with true damage.

#Return the health equal to removing the health of the mob minus the damage. Take from Absorption first.
execute store result score $md.health cdl.temp run data get entity @s Health 100
execute store result score $md.abs cdl.temp run data get entity @s AbsorptionAmount 100

#Get the amount of damage we reduce from Absorption
scoreboard players operation $md.abs cdl.temp -= @s cdl.damage_queue
execute if score $md.abs cdl.temp matches 0.. run function cd:func/mob_damage_true/damage/absorbed
execute if score $md.abs cdl.temp matches ..-1 run function cd:func/mob_damage_true/damage/not_absorbed