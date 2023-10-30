#execute store result score $x_rot ca.recoil run data get entity @s Rotation[0]
execute store result score $y_rot ca.recoil run data get entity @s Rotation[1]

#{id:"minecraft:invisibility",amplifier:0b,duration:2000,ShowParticles:0b}

summon minecraft:creeper 4206900 100 4206900 {PersistenceRequired:1b,active_effects:[],Tags:["ca.recoil_movement","ca.needs_move"],Fuse:2,ignited:1,ExplosionRadius:1,Silent:1b,NoAI:1b}


#Provide a bit of slow falling if fully above the ground by 1 block
execute if block ~ ~-1 ~ #cartographer_core:can_raycast run summon area_effect_cloud ~ ~1 ~ {Particle:"block air",ReapplicationDelay:0,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:-5.0f,Duration:10,DurationOnUse:0,Age:-1,WaitTime:0,effects:[{id:"minecraft:slow_falling",amplifier:0b,duration:5,ShowParticles:0b}]}

#Provide levitation to counter balance if falling already
execute unless predicate bb:cant_crit run tp @s ~ ~0.25 ~
execute unless predicate bb:cant_crit run summon area_effect_cloud ~ ~1 ~ {Particle:"block air",ReapplicationDelay:0,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:-5.0f,Duration:10,DurationOnUse:0,Age:-1,WaitTime:0,effects:[{id:"minecraft:levitation",amplifier:14b,duration:3,ShowParticles:0b},{id:"minecraft:slow_falling",amplifier:0b,duration:3,ShowParticles:0b}]}

execute unless predicate bb:cant_crit if score @s ca.recoil matches 4 run summon area_effect_cloud ~ ~1 ~ {Particle:"block air",ReapplicationDelay:0,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:-5.0f,Duration:10,DurationOnUse:0,Age:-1,WaitTime:0,effects:[{id:"minecraft:levitation",amplifier:19b,duration:3,ShowParticles:0b},{id:"minecraft:slow_falling",amplifier:0b,duration:3,ShowParticles:0b}]}
execute unless predicate bb:cant_crit if score @s ca.recoil matches 5.. run summon area_effect_cloud ~ ~1 ~ {Particle:"block air",ReapplicationDelay:0,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:-5.0f,Duration:10,DurationOnUse:0,Age:-1,WaitTime:0,effects:[{id:"minecraft:levitation",amplifier:24b,duration:3,ShowParticles:0b},{id:"minecraft:slow_falling",amplifier:0b,duration:3,ShowParticles:0b}]}


#If the player has levels 4 or 5 of recoil, add levitation to add extra height
execute if score @s ca.recoil matches 4 run summon area_effect_cloud ~ ~1 ~ {Particle:"block air",ReapplicationDelay:0,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:-5.0f,Duration:10,DurationOnUse:0,Age:-1,WaitTime:0,effects:[{id:"minecraft:levitation",amplifier:4b,duration:3,ShowParticles:0b},{id:"minecraft:slow_falling",amplifier:0b,duration:5,ShowParticles:0b}]}
execute if score @s ca.recoil matches 5.. run summon area_effect_cloud ~ ~1 ~ {Particle:"block air",ReapplicationDelay:0,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:-5.0f,Duration:10,DurationOnUse:0,Age:-1,WaitTime:0,effects:[{id:"minecraft:levitation",amplifier:5b,duration:3,ShowParticles:0b},{id:"minecraft:slow_falling",amplifier:0b,duration:5,ShowParticles:0b}]}