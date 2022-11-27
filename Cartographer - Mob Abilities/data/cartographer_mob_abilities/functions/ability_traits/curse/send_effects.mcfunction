effect clear @s speed
effect clear @s haste
effect clear @s strength
effect clear @s jump_boost
effect clear @s regeneration
effect clear @s resistance
effect clear @s fire_resistance
effect clear @s water_breathing
effect clear @s invisibility
effect clear @s night_vision
effect clear @s health_boost
effect clear @s absorption
effect clear @s luck
effect clear @s slow_falling
effect clear @s conduit_power
effect clear @s dolphins_grace
effect clear @s hero_of_the_village

summon area_effect_cloud ~ ~1 ~ {Tags:["ca.curse_reapply_cloud"],Particle:"block air",ReapplicationDelay:0,Radius:0.1f,RadiusOnUse:-5.0f,Duration:10,DurationOnUse:0,Age:-1,WaitTime:0,Potion:"minecraft:awkward",Effects:[]}

data modify entity @e[type=area_effect_cloud,tag=ca.curse_reapply_cloud,limit=1,sort=nearest] Effects set from storage cartographer_mob_abilities:curse SendEffects