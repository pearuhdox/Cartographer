execute if score $break_penalty ca.mimic_var matches 1 run summon area_effect_cloud ~ ~1 ~ {Particle:"block air",ReapplicationDelay:0,Radius:0.1f,RadiusOnUse:-5.0f,Duration:10,DurationOnUse:0,Age:-1,WaitTime:0,Potion:"minecraft:water",Effects:[{Id:4,Amplifier:0b,Duration:2,ShowParticles:0b}]}
execute if score $break_penalty ca.mimic_var matches 2.. run summon area_effect_cloud ~ ~1 ~ {Particle:"block air",ReapplicationDelay:0,Radius:0.1f,RadiusOnUse:-5.0f,Duration:10,DurationOnUse:0,Age:-1,WaitTime:0,Potion:"minecraft:water",Effects:[{Id:4,Amplifier:1b,Duration:2,ShowParticles:0b}]}
execute if score $break_penalty ca.mimic_var matches 3.. run summon area_effect_cloud ~ ~1 ~ {Particle:"block air",ReapplicationDelay:0,Radius:0.1f,RadiusOnUse:-5.0f,Duration:10,DurationOnUse:0,Age:-1,WaitTime:0,Potion:"minecraft:water",Effects:[{Id:4,Amplifier:2b,Duration:2,ShowParticles:0b}]}
