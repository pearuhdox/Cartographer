# Datapack  : CDL
# Author(s) : RockNRed, gibbs
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : Restore Cloud
# Use       : Ran to restore absorption to the player via an area of effect cloud.

#summoning cloud
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"minecraft:block minecraft:air",ReapplicationDelay:0,Age:-1,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:-0.5f,Duration:2,WaitTime:0,Effects:[{Id:1,Amplifier:1b,Duration:1,ShowParticles:1b,ShowIcon:1b,Ambient:0b}],Tags:["utilEffectCloud"]}

#writing effect
execute store result storage cdl:true_damage_absorption effect.Amplifier byte 1 run scoreboard players get absorption= true_abs
data modify entity @e[type=minecraft:area_effect_cloud,tag=utilEffectCloud,distance=..1,sort=nearest,limit=1] Effects[0] set from storage cdl:true_damage_absorption effect