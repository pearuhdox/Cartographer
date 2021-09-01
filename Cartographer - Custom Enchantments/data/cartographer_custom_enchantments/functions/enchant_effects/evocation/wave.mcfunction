summon minecraft:area_effect_cloud ^ ^ ^2 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:5,Tags:["evocation_place"]}

summon minecraft:area_effect_cloud ^ ^ ^3 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:8,Tags:["evocation_place"]}

summon minecraft:area_effect_cloud ^-1 ^ ^3 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:11,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^1 ^ ^3 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:11,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^ ^ ^4 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:11,Tags:["evocation_place"]}

summon minecraft:area_effect_cloud ^-1 ^ ^4 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:14,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^1 ^ ^4 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:14,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^ ^ ^5 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:14,Tags:["evocation_place"]}

summon minecraft:area_effect_cloud ^-2 ^ ^4 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:17,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^2 ^ ^4 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:17,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^-1 ^ ^5 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:17,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^1 ^ ^5 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:17,Tags:["evocation_place"]}
summon minecraft:area_effect_cloud ^ ^ ^6 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:17,Tags:["evocation_place"]}

execute if entity @s[scores={ca.evocation=1..,ca.frostbite=1..}] run scoreboard players operation @e[type=area_effect_cloud,tag=evocation_place,distance=..10] ca.frostbite = @s[scores={ca.evocation=1..}] ca.frostbite
execute if entity @s[scores={ca.evocation=1..,ca.infection=1..}] run scoreboard players operation @e[type=area_effect_cloud,tag=evocation_place,distance=..10] ca.infection = @s[scores={ca.evocation=1..}] ca.infection
execute if entity @s[scores={ca.evocation=1..,ca.stunning=1..}] run scoreboard players operation @e[type=area_effect_cloud,tag=evocation_place,distance=..10] ca.stunning = @s[scores={ca.evocation=1..}] ca.stunning
execute if entity @s[scores={ca.evocation=1..,ca.bleeding=1..}] run scoreboard players operation @e[type=area_effect_cloud,tag=evocation_place,distance=..10] ca.bleeding = @s[scores={ca.evocation=1..}] ca.bleeding
execute if entity @s[scores={ca.evocation=1..,ca.electrocute=1..}] run scoreboard players operation @e[type=area_effect_cloud,tag=evocation_place,distance=..10] ca.electrocute = @s[scores={ca.evocation=1..}] ca.electrocute
execute if entity @s[scores={ca.evocation=1..,ca.fire_aspect=1..}] run scoreboard players operation @e[type=area_effect_cloud,tag=evocation_place,distance=..10] ca.fire_aspect = @s[scores={ca.evocation=1..}] ca.fire_aspect
execute if entity @s[scores={ca.evocation=1..,ca.exposing=1..}] run scoreboard players operation @e[type=area_effect_cloud,tag=evocation_place,distance=..10] ca.exposing = @s[scores={ca.evocation=1..}] ca.exposing
execute if entity @s[scores={ca.evocation=1..,ca.knockback=1..}] run scoreboard players operation @e[type=area_effect_cloud,tag=evocation_place,distance=..10] ca.knockback = @s[scores={ca.evocation=1..}] ca.knockback

scoreboard players set @e[type=area_effect_cloud] ca.raycast 41

execute as @e[type=area_effect_cloud,tag=evocation_place] at @s run function cartographer_custom_enchantments:enchant_effects/evocation/recurse_fix