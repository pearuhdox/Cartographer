# Datapack  : CDL
# Author(s) : RockNRed
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : Loop
# Use       : Ran on loop to remove KBR from a mob after it is damaged.

execute as @e[tag=cdl.damaging_mob,nbt={HurtTime:4s}] at @s run function cd:func/mob_damage_normal/as_mob
execute if entity @e[tag=cdl.damaging_mob] run schedule function cd:func/mob_damage_normal/loop 1t