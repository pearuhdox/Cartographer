#Cage Attack
summon minecraft:area_effect_cloud ^ ^ ^1.25 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:5,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^-1 ^ ^1.25 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:5,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^1 ^ ^1.25 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:5,Tags:["evocation_place"]}


summon minecraft:area_effect_cloud ^ ^ ^3.25 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:5,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^ ^ ^4.25 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:5,Tags:["evocation_place"]}

summon minecraft:area_effect_cloud ^1 ^ ^3.25 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:5,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^1 ^ ^4.25 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:5,Tags:["evocation_place"]}

summon minecraft:area_effect_cloud ^2 ^ ^3.25 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:5,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^2 ^ ^4.25 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:5,Tags:["evocation_place"]}

summon minecraft:area_effect_cloud ^-1 ^ ^3.25 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:5,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^-1 ^ ^4.25 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:5,Tags:["evocation_place"]}

summon minecraft:area_effect_cloud ^-2 ^ ^3.25 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:5,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^-2 ^ ^4.25 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:5,Tags:["evocation_place"]}

summon minecraft:area_effect_cloud ^3 ^ ^2.25 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:5,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^3 ^ ^3.25 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:5,Tags:["evocation_place"]}

summon minecraft:area_effect_cloud ^-3 ^ ^2.25 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:5,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^-3 ^ ^3.25 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:5,Tags:["evocation_place"]}

summon minecraft:area_effect_cloud ^4 ^ ^1.25 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:5,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^4 ^ ^2.25 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:5,Tags:["evocation_place"]}

summon minecraft:area_effect_cloud ^-4 ^ ^1.25 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:5,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^-4 ^ ^2.25 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:5,Tags:["evocation_place"]}



execute if entity @s[scores={ca.evocation=1..,ca.frostbite=1..}] run scoreboard players operation @e[type=area_effect_cloud,tag=evocation_place,distance=..10] ca.frostbite = @s[scores={ca.evocation=1..}] ca.frostbite
execute if entity @s[scores={ca.evocation=1..,ca.fire_aspect=1..}] run scoreboard players operation @e[type=area_effect_cloud,tag=evocation_place,distance=..10] ca.fire_aspect = @s[scores={ca.evocation=1..}] ca.fire_aspect
execute if entity @s[scores={ca.evocation=1..,ca.knockback=1..}] run scoreboard players operation @e[type=area_effect_cloud,tag=evocation_place,distance=..10] ca.knockback = @s[scores={ca.evocation=1..}] ca.knockback

scoreboard players set @e[type=area_effect_cloud] ca.raycast 41

execute as @e[type=area_effect_cloud,tag=evocation_place] at @s run function cartographer_custom_enchantments:enchant_effects/evocation/recurse_fix