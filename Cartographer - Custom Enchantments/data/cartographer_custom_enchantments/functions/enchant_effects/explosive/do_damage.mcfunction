summon area_effect_cloud ~ ~1 ~ {Particle:"block air",ReapplicationDelay:0,Radius:0.5f,RadiusPerTick:0.1f,RadiusOnUse:-5.0f,Duration:10,DurationOnUse:0f,Age:-1,WaitTime:0,Potion:"minecraft:awkward",Effects:[{Id:11,Amplifier:4b,Duration:4,ShowParticles:false}]}

scoreboard players set @s cdl.damage_queue 0
scoreboard players operation @s cdl.damage_queue = $damage ca.explosive

function cd:lib/mob/damage/true