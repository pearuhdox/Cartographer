function cartographer_core:helper/randomize

scoreboard players operation @s helper_evoke = @s random

#Right to Left Sweep
execute if entity @s[scores={helper_evoke=..49}] run summon minecraft:area_effect_cloud ^-2 ^ ^1 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:2,Tags:["evocation_place"]}
execute if entity @s[scores={helper_evoke=..49}] run summon minecraft:area_effect_cloud ^-3 ^ ^2 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:2,Tags:["evocation_place"]}

execute if entity @s[scores={helper_evoke=..49}] run summon minecraft:area_effect_cloud ^-2 ^ ^2 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:5,Tags:["evocation_place"]}

execute if entity @s[scores={helper_evoke=..49}] run summon minecraft:area_effect_cloud ^-1 ^ ^2 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:8,Tags:["evocation_place"]}
execute if entity @s[scores={helper_evoke=..49}] run summon minecraft:area_effect_cloud ^-2 ^ ^3 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:8,Tags:["evocation_place"]}

execute if entity @s[scores={helper_evoke=..49}] run summon minecraft:area_effect_cloud ^-1 ^ ^3 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:11,Tags:["evocation_place"]}
execute if entity @s[scores={helper_evoke=..49}] run summon minecraft:area_effect_cloud ^-1 ^ ^4 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:11,Tags:["evocation_place"]}

execute if entity @s[scores={helper_evoke=..49}] run summon minecraft:area_effect_cloud ^ ^ ^2 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:14,Tags:["evocation_place"]}
execute if entity @s[scores={helper_evoke=..49}] run summon minecraft:area_effect_cloud ^ ^ ^3 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:14,Tags:["evocation_place"]}
execute if entity @s[scores={helper_evoke=..49}] run summon minecraft:area_effect_cloud ^ ^ ^4 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:14,Tags:["evocation_place"]}

execute if entity @s[scores={helper_evoke=..49}] run summon minecraft:area_effect_cloud ^1 ^ ^3 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:17,Tags:["evocation_place"]}
execute if entity @s[scores={helper_evoke=..49}] run summon minecraft:area_effect_cloud ^1 ^ ^4 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:17,Tags:["evocation_place"]}

execute if entity @s[scores={helper_evoke=..49}] run summon minecraft:area_effect_cloud ^1 ^ ^2 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:20,Tags:["evocation_place"]}
execute if entity @s[scores={helper_evoke=..49}] run summon minecraft:area_effect_cloud ^2 ^ ^3 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:20,Tags:["evocation_place"]}

execute if entity @s[scores={helper_evoke=..49}] run summon minecraft:area_effect_cloud ^2 ^ ^2 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:23,Tags:["evocation_place"]}

execute if entity @s[scores={helper_evoke=..49}] run summon minecraft:area_effect_cloud ^2 ^ ^1 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:26,Tags:["evocation_place"]}
execute if entity @s[scores={helper_evoke=..49}] run summon minecraft:area_effect_cloud ^3 ^ ^2 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:26,Tags:["evocation_place"]}


#Left to Right Sweep
execute if entity @s[scores={helper_evoke=50..}] run summon minecraft:area_effect_cloud ^-2 ^ ^1 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:26,Tags:["evocation_place"]}
execute if entity @s[scores={helper_evoke=50..}] run summon minecraft:area_effect_cloud ^-3 ^ ^2 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:26,Tags:["evocation_place"]}

execute if entity @s[scores={helper_evoke=50..}] run summon minecraft:area_effect_cloud ^-2 ^ ^2 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:23,Tags:["evocation_place"]}

execute if entity @s[scores={helper_evoke=50..}] run summon minecraft:area_effect_cloud ^-1 ^ ^2 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:20,Tags:["evocation_place"]}
execute if entity @s[scores={helper_evoke=50..}] run summon minecraft:area_effect_cloud ^-2 ^ ^3 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:20,Tags:["evocation_place"]}

execute if entity @s[scores={helper_evoke=50..}] run summon minecraft:area_effect_cloud ^-1 ^ ^3 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:17,Tags:["evocation_place"]}
execute if entity @s[scores={helper_evoke=50..}] run summon minecraft:area_effect_cloud ^-1 ^ ^4 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:17,Tags:["evocation_place"]}

execute if entity @s[scores={helper_evoke=50..}] run summon minecraft:area_effect_cloud ^ ^ ^2 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:14,Tags:["evocation_place"]}
execute if entity @s[scores={helper_evoke=50..}] run summon minecraft:area_effect_cloud ^ ^ ^3 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:14,Tags:["evocation_place"]}
execute if entity @s[scores={helper_evoke=50..}] run summon minecraft:area_effect_cloud ^ ^ ^4 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:14,Tags:["evocation_place"]}

execute if entity @s[scores={helper_evoke=50..}] run summon minecraft:area_effect_cloud ^1 ^ ^3 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:11,Tags:["evocation_place"]}
execute if entity @s[scores={helper_evoke=50..}] run summon minecraft:area_effect_cloud ^1 ^ ^4 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:11,Tags:["evocation_place"]}

execute if entity @s[scores={helper_evoke=50..}] run summon minecraft:area_effect_cloud ^1 ^ ^2 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:8,Tags:["evocation_place"]}
execute if entity @s[scores={helper_evoke=50..}] run summon minecraft:area_effect_cloud ^2 ^ ^3 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:8,Tags:["evocation_place"]}

execute if entity @s[scores={helper_evoke=50..}] run summon minecraft:area_effect_cloud ^2 ^ ^2 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:5,Tags:["evocation_place"]}

execute if entity @s[scores={helper_evoke=50..}] run summon minecraft:area_effect_cloud ^2 ^ ^1 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:2,Tags:["evocation_place"]}
execute if entity @s[scores={helper_evoke=50..}] run summon minecraft:area_effect_cloud ^3 ^ ^2 {Particle:"block air",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,WaitTime:2,Tags:["evocation_place"]}

execute as @e[type=area_effect_cloud,tag=evocation_place] at @s run function cartographer_custom_enchantments:loop/enchant_effects/evocation_recurse_fix