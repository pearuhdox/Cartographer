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

execute if entity @s[scores={evocation=1..,frostbite=1..}] run scoreboard players operation @e[type=area_effect_cloud,tag=evocation_place,distance=..10] frostbite = @s[scores={evocation=1..}] frostbite
execute if entity @s[scores={evocation=1..,decay=1..}] run scoreboard players operation @e[type=area_effect_cloud,tag=evocation_place,distance=..10] decay = @s[scores={evocation=1..}] decay
execute if entity @s[scores={evocation=1..,stunning=1..}] run scoreboard players operation @e[type=area_effect_cloud,tag=evocation_place,distance=..10] stunning = @s[scores={evocation=1..}] stunning
execute if entity @s[scores={evocation=1..,vicious=1..}] run scoreboard players operation @e[type=area_effect_cloud,tag=evocation_place,distance=..10] vicious = @s[scores={evocation=1..}] vicious
execute if entity @s[scores={evocation=1..,overload=1..}] run scoreboard players operation @e[type=area_effect_cloud,tag=evocation_place,distance=..10] overload = @s[scores={evocation=1..}] overload
execute if entity @s[scores={evocation=1..,fire_aspect=1..}] run scoreboard players operation @e[type=area_effect_cloud,tag=evocation_place,distance=..10] fire_aspect = @s[scores={evocation=1..}] fire_aspect
execute if entity @s[scores={evocation=1..,committed=1..}] run scoreboard players operation @e[type=area_effect_cloud,tag=evocation_place,distance=..10] committed = @s[scores={evocation=1..}] committed
execute if entity @s[scores={evocation=1..,knockback=1..}] run scoreboard players operation @e[type=area_effect_cloud,tag=evocation_place,distance=..10] knockback = @s[scores={evocation=1..}] knockback

execute as @e[type=area_effect_cloud,tag=evocation_place] at @s run function cartographer_custom_enchantments:enchant_effects/evocation/recurse_fix

execute as @e[type=area_effect_cloud,tag=evocation_place] at @s run function cartographer_custom_enchantments:enchant_effects/evocation/swapper