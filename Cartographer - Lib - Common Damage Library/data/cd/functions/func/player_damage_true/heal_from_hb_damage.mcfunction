# Datapack  : CDL
# Author(s) : RockNRed, gibbs
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : Heal from Health Boost Damage
# Use       : Flip score to positive to use for healing player.

execute store result score @s cdl.heal_queue run scoreboard players operation @s cdl.damage_queue *= $constant.-1 cdl.temp
function cd:lib/player/heal 