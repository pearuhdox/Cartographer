# Datapack  : CDL
# Author(s) : RockNRed, PearUhDox
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : Not Invulnerable
# Use       : Ran to calculate if a mob would die to the damage they're taking before actually dealing the damage.

#Get current health and scale * 100
execute store result score $md.health cdl.temp run data get entity @s Health 100
scoreboard players operation @s cdl.damage_queue *= $constant.100 cdl.temp

#Add the Absorption of the mob to stored health value
execute store result score $md.abs cdl.temp run data get entity @s AbsorptionAmount 100
scoreboard players operation $md.health cdl.temp += $md.abs cdl.temp

#Check if the damage kills or overkills the mob, and /kill if so
scoreboard players operation $md.health cdl.temp -= @s cdl.damage_queue
execute if score $md.health cdl.temp matches ..0 run kill @s

#If the were to survive the damage, deal damage acordingly.
execute if score $md.health cdl.temp matches 1.. run function cd:func/mob_damage_true/deal_damage