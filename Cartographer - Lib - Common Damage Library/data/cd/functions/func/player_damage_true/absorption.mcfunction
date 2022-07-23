# Datapack  : CDL
# Author(s) : RockNRed, gibbs
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : Absorption
# Use       : Ran to apply a new absorption amount to the player.

#Get absorption amount
execute store result score $player.absorption cdl.temp run data get entity @s AbsorptionAmount

#Saving absorption and clearing it
data modify storage cdl:true_damage_absorption effect set from entity @s ActiveEffects[{Id:22}]
effect clear @s minecraft:absorption

#Total calculation
scoreboard players operation $player.absorption cdl.temp -= @s cdl.damage_queue

#Damage conditions
execute if score $player.absorption cdl.temp matches ..0 run scoreboard players operation @s cdl.damage_queue += $player.absorption cdl.temp
execute if score $player.absorption cdl.temp matches 1.. run function cd:func/player_damage_true/absorption/restore