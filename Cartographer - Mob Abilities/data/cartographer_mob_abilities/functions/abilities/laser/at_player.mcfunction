scoreboard players set $laser_resist ca.mob_var 0
execute if predicate cartographer_core:has_resistance_5 run scoreboard players set $laser_resist ca.mob_var 1

summon area_effect_cloud ~ ~1 ~ {Particle:"block air",ReapplicationDelay:0,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:-5.0f,Duration:10,DurationOnUse:0,Age:-1,WaitTime:0,Effects:[{Id:11,Amplifier:9b,Duration:5,ShowParticles:0b},{Id:28,Amplifier:0b,Duration:10,ShowParticles:0b},{Id:25,Amplifier:34b,Duration:2,ShowParticles:0b}]}

scoreboard players operation @s ca.damage_queue = $damage ca.ability_dmg
execute if score $laser_blocked ca.var matches 1.. run scoreboard players operation @s ca.damage_queue /= $4 ca.CONSTANT
execute if score $laser_resist ca.mob_var matches 1.. run scoreboard players set @s ca.damage_queue 0

function cartographer_mob_abilities:abilities/laser/laser_damage

scoreboard players set @s ca.laser_damage 0
tag @s add ability_tagged
