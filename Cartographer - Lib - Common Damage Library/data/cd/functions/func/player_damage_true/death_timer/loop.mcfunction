# Datapack  : CDL
# Author(s) : RockNRed, gibbs
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : Loop
# Use       : Ran to countdown the KBR disguise timer.

execute as @a[scores={cdl.damage_timer=1..}] at @s run function cd:func/player_damage_true/death_timer/as_player