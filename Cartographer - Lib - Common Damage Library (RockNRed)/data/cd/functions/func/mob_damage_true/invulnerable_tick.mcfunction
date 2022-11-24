# Datapack  : CDL
# Author(s) : RockNRed, PearUhDox
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : Invulnerable Tick
# Use       : Ran to make a mob flash red.

data modify storage cdl:dmg_save_resist OldResist set value {}
data modify storage cdl:dmg_save_wither OldWither set value {}

data modify storage cdl:dmg_save_resist OldResist set from entity @s ActiveEffects[{Id:11}]
data modify storage cdl:dmg_save_wither OldWither set from entity @s ActiveEffects[{Id:20}]

data modify entity @s ActiveEffects append value {Id:20,Duration:2,Amplifier:100b}
data modify entity @s ActiveEffects append value {Id:11,Duration:2,Amplifier:100b}

data modify entity @s ActiveEffects[{Id:20}].HiddenEffect set from storage cdl:dmg_save_wither OldWither
data modify entity @s ActiveEffects[{Id:11}].HiddenEffect set from storage cdl:dmg_save_resist OldResist
