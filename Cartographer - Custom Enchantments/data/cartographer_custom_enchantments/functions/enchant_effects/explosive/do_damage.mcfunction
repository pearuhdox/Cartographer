summon area_effect_cloud ~ ~1 ~ {Particle:"block air",ReapplicationDelay:0,Radius:0.5f,RadiusPerTick:0.1f,RadiusOnUse:-5.0f,Duration:10,DurationOnUse:0,Age:-1,WaitTime:0,Potion:"minecraft:awkward",effects:[{id:"minecraft:resistance",amplifier:4b,duration:4,ShowParticles:false}]}

scoreboard players set @s ca.damage_queue 0
scoreboard players operation @s ca.damage_queue = $damage ca.explosive

function cartographer_custom_enchantments:helper/damage/enchant_damage_bypass