#Remove tracking score
scoreboard players remove @s cdl.Heal_Queue 128

#Summon area of effect cloud
summon area_effect_cloud ~ ~1 ~ {Particle:"block air",ReapplicationDelay:0,Radius:0.1f,RadiusOnUse:-5.0f,Duration:10,DurationOnUse:0f,Age:-1,WaitTime:0,Potion:"minecraft:water",Effects:[{Id:6b,Amplifier:6b,Duration:2}]}