execute unless score $laser_blocked ca.var matches 1.. run summon area_effect_cloud ~ ~1 ~ {Particle:"block air",ReapplicationDelay:0,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:-5.0f,Duration:10,DurationOnUse:0f,Age:-1,WaitTime:0,Effects:[{Id:11b,Amplifier:4b,Duration:5,ShowParticles:0b},{Id:28b,Amplifier:0b,Duration:10,ShowParticles:0b},{Id:25b,Amplifier:34b,Duration:2,ShowParticles:0b}]}

scoreboard players operation @s cdl.damage_queue = $damage ca.ability_dmg

execute if score $laser_blocked ca.var matches 1.. run scoreboard players operation @s cdl.damage_queue /= $4 ca.CONSTANT

scoreboard players set @s ca.laser_damage 0
tag @s add ca.hit_by_laser

function cd:lib/player/normal

tag @s add ability_tagged

#Run the next section in "player get hurt EHID section"