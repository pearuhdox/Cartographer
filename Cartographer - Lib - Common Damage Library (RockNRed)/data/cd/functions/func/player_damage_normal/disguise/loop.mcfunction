# Datapack  : CDL
# Author(s) : RockNRed, PearUhDox
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : Loop
# Use       : Ran to loop a function to remove KBR and sound when the player takes damage.

execute as @a[scores={cdl.damage_timer=1..}] at @s run function cd:func/player_damage_normal/disguise/as_player