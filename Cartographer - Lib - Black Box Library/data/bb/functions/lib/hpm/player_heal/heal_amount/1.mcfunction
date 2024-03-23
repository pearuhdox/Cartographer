
scoreboard players remove @s bbl.heal_queue 1

#Summon area of effect cloud
summon area_effect_cloud ~ ~ ~ {Particle:"block air",ReapplicationDelay:0,Radius:0.1f,RadiusPerTick:0f,RadiusOnUse:-5.0f,Duration:10,DurationOnUse:0f,Age:-1,WaitTime:0,effects:[{id:"minecraft:regeneration",amplifier:7b,duration:1,show_particles:0b}]}
