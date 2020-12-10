particle minecraft:sneeze ~ ~1 ~ 0.1 0.1 0.1 0.05 1 normal @a

execute as @s at @s run tp @s ^ ^ ^1.25

execute unless block ~ ~1 ~ #cartographer_core:can_raycast as @s at @s run summon area_effect_cloud ~ ~1.4 ~ {Particle:"soul",NoGravity:1b,Radius:1.5f,RadiusPerTick:0f,RadiusOnUse:-2f,Duration:160,DurationOnUse:0f,Age:0,WaitTime:10,Tags:["trap_deployed"],Effects:[{Id:2b,Amplifier:2b,Duration:40},{Id:7b,Amplifier:1b,Duration:1}],CustomName:'{"text":"a soul trap"}'}
execute unless block ~ ~1 ~ #cartographer_core:can_raycast as @s at @s run kill @s
execute unless block ~ ~1 ~ #cartographer_core:can_raycast as @s at @s run playsound minecraft:block.glass.break hostile @a[distance=..10] ~ ~ ~ 1 0.5
execute unless block ~ ~1 ~ #cartographer_core:can_raycast as @s at @s run particle minecraft:sneeze ~ ~1.5 ~ 0.25 0.25 0.25 0.1 20 normal

execute as @s[tag=!target] run tag @s add target