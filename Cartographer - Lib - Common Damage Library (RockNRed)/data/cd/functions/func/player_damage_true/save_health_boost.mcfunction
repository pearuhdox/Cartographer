# Datapack  : CDL
# Author(s) : RockNRed, NOT gibbs, you horrible creature. Make HB work for custom shields too >:(
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : Save Health Boost
# Use       : Saves the player's health boost in an area of effect cloud for them to pick up shortly after.

summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"minecraft:block minecraft:air",ReapplicationDelay:0,Age:-1,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:-0.5f,Duration:2,WaitTime:0,Effects:[{Id:1,Amplifier:1b,Duration:1,ShowParticles:1b,ShowIcon:1b,Ambient:0b}],Tags:["utilEffectCloud"]}
data modify entity @e[type=minecraft:area_effect_cloud,tag=utilEffectCloud,distance=..1,sort=nearest,limit=1] Effects[0] set from entity @s ActiveEffects[{Id:21}]
effect clear @s health_boost