summon area_effect_cloud ~ ~ ~ {Particle:"entity_effect",ReapplicationDelay:80,Radius:1.5f,RadiusPerTick:0f,RadiusOnUse:-0.5f,Duration:600,Color:16413078,Potion:"minecraft:awkward",effects:[{id:"minecraft:regeneration",amplifier:1b,duration:75}]}

tag @s add loot_add_custom
playsound minecraft:block.decorated_pot.shatter player @a ~ ~ ~ 1.2 0.75