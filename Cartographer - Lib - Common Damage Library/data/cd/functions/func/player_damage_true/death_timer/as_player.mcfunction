# Datapack  : CDL
# Author(s) : RockNRed, gibbs
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : As Player
# Use       : Ran as the player to countdown the KBR disguise timer.

scoreboard players remove @s cdl.damage_timer 1
execute if score @s cdl.damage_timer matches 1.. run schedule function cd:func/player_damage_normal/disguise/loop 1t