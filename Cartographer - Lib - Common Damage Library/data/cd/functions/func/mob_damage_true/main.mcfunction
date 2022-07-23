# Datapack  : CDL
# Author(s) : RockNRed, PearUhDox
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : Main
# Use       : Central function for dealing true mob damage.

#If the mob is NOT invulnerable, continue.
execute unless entity @s[nbt={ActiveEffects:[{Id:11,Amplifier:4b}]}] run function cd:func/mob_damage_true/not_invulnerable

#Cleanup & reset
scoreboard players reset @s cdl.damage_queue

#Call Invul Timer for [Cartographer] Mob Abilities
scoreboard players set $invul_time_check invul 25