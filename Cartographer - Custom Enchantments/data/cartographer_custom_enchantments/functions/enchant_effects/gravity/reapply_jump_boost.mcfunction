summon area_effect_cloud ~ ~ ~ {Tags:["ca.gravity_jb_fixer"],Particle:"block air",ReapplicationDelay:0,Radius:0.1f,RadiusPerTick:0f,RadiusOnUse:-5.0f,Duration:10,DurationOnUse:0f,Age:-1,WaitTime:0,effects:[{id:"minecraft:jump_boost",amplifier:0b,duration:1,ShowParticles:0b}]}
data modify entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=ca.gravity_jb_fixer] effects[0] set from storage cartographer_custom_enchantments:gravity data.effect