# Datapack  : CDL
# Author(s) : RockNRed, gibbs
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : 16-30
# Use       : Ran to handle intervals 16-30 of subsequent files to apply max health modifiers to deal true damage.

execute if score @s cdl.damage_queue matches 16..20 run function cd:func/player_damage_true/damage_intervals/16-20
execute if score @s cdl.damage_queue matches 21..25 run function cd:func/player_damage_true/damage_intervals/21-25
execute if score @s cdl.damage_queue matches 26..30 run function cd:func/player_damage_true/damage_intervals/26-30