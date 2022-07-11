# Datapack  : CDL
# Author(s) : RockNRed, gibbs
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : 1-15
# Use       : Ran to handle intervals 1-15 of subsequent files to apply max health modifiers to deal true damage.

execute if score @s cdl.damage_queue matches ..5 run function cd:func/player_damage_true/damage_intervals/1-5
execute if score @s cdl.damage_queue matches 06..10 run function cd:func/player_damage_true/damage_intervals/6-10
execute if score @s cdl.damage_queue matches 11..15 run function cd:func/player_damage_true/damage_intervals/11-15