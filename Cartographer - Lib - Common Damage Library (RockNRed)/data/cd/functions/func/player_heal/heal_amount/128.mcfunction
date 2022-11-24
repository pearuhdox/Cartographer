# Datapack  : CDL
# Author(s) : RockNRed
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : 128
# Use       : Heals the player for 128 health via an area of effect cloud.

#Remove tracking score
scoreboard players remove @s cdl.heal_queue 128

#Summon area of effect cloud
summon area_effect_cloud ~ ~1 ~ {Particle:"block air",ReapplicationDelay:0,Radius:0.1f,RadiusOnUse:-5.0f,Duration:10,DurationOnUse:0f,Age:-1,WaitTime:0,Potion:"minecraft:water",Effects:[{Id:6,Amplifier:6b,Duration:2}]}