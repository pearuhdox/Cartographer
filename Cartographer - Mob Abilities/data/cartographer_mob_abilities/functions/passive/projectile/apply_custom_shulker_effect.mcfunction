execute if data storage cartographer_mob_abilities:projectile shulker.effects[0] if entity @s[predicate=cartographer_mob_abilities:levitation_shulker_hit] run summon area_effect_cloud ~ ~1 ~ {Particle:"block air",ReapplicationDelay:1,Radius:1.0f,RadiusPerTick:0f,RadiusOnUse:-10f,Duration:20,DurationOnUse:20f,Age:1,Tags:["custom_shulker_dispensary"],Potion:"minecraft:awkward"}
execute if data storage cartographer_mob_abilities:projectile shulker.effects[0] if entity @s[predicate=cartographer_mob_abilities:levitation_shulker_hit] run data modify entity @e[type=area_effect_cloud,tag=custom_shulker_dispensary,sort=nearest,limit=1,distance=..1] Effects set from storage cartographer_mob_abilities:projectile shulker.effects

execute if entity @s[predicate=cartographer_mob_abilities:levitation_shulker_hit] run effect clear @s levitation

scoreboard players set $shoot_custom_bullet ca.var 0