# Datapack  : CDL
# Author(s) : RockNRed, PearUhDox
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : As Player
# Use       : Ran on loop to stop the noise and remove the KBR from the player.

stopsound @a[distance=..8] * minecraft:enchant.thorns.hit

scoreboard players remove @s cdl.damage_timer 1
execute if score @s cdl.damage_timer matches 4 run function cd:func/player_damage_normal/disguise/as_player_branch

execute if score @s cdl.damage_timer matches 1.. run schedule function cd:func/player_damage_normal/disguise/loop 1t