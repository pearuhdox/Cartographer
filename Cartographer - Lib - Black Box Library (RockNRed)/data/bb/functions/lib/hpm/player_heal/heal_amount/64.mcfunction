
scoreboard players remove @s bbl.heal_queue 64

#Summon area of effect cloud
summon area_effect_cloud ~ ~ ~ {Particle:"block air",ReapplicationDelay:0,Radius:0.1f,RadiusOnUse:-5.0f,Duration:10,DurationOnUse:0f,Age:-1,WaitTime:0,Potion:"minecraft:water",effects:[{id:"minecraft:instant_health",amplifier:5b,duration:2}]}
