scoreboard players operation $evocation ca.evocation = $eruption ca.evocation
effect give @s mining_fatigue 2 4 true

summon minecraft:area_effect_cloud ^ ^ ^1 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:5,Tags:["evocation_place"]}

summon minecraft:area_effect_cloud ^ ^ ^2 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:8,Tags:["evocation_place"]}

summon minecraft:area_effect_cloud ^-1 ^ ^2 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:11,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^1 ^ ^2 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:11,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^ ^ ^3 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:11,Tags:["evocation_place"]}

summon minecraft:area_effect_cloud ^-1 ^ ^3 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:14,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^1 ^ ^3 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:14,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^ ^ ^4 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:14,Tags:["evocation_place"]}

summon minecraft:area_effect_cloud ^-2 ^ ^3 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:17,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^2 ^ ^3 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:17,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^-1 ^ ^4 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:17,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^1 ^ ^4 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:17,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^ ^ ^5 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:17,Tags:["evocation_place"]}

summon minecraft:area_effect_cloud ^-3 ^ ^4 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:20,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^3 ^ ^4 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:20,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^-2 ^ ^5 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:20,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^2 ^ ^5 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:20,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^-1 ^ ^6 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:20,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^1 ^ ^6 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:20,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^ ^ ^6 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:20,Tags:["evocation_place"]}

scoreboard players set @e[type=area_effect_cloud] ca.raycast 41

execute as @e[type=area_effect_cloud,tag=evocation_place] at @s run function cartographer_custom_enchantments:enchant_effects/evocation/recurse_fix