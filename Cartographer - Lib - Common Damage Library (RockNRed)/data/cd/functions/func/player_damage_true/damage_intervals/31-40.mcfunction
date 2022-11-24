# Datapack  : CDL
# Author(s) : RockNRed, gibbs
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : 31-40
# Use       : Ran to handle intervals 31-40 of subsequent files to apply max health modifiers to deal true damage.

execute if score @s cdl.damage_queue matches 31..35 run function cd:func/player_damage_true/damage_intervals/31-35
execute if score @s cdl.damage_queue matches 36.. run function cd:func/player_damage_true/damage_intervals/36-40