particle minecraft:dust 0.2 0.2 0.2 0.75 ~ ~ ~ 0.3 0.3 0.3 0 30 normal

summon area_effect_cloud ~ ~-0.2 ~ {Particle:"entity_effect",Radius:0.85f,RadiusPerTick:0f,RadiusOnUse:-1f,WaitTime:0,Duration:100,Color:5526612,Tags:["hook"],Potion:"minecraft:awkward",Effects:[{Id:2b,Amplifier:6b,Duration:20},{Id:9b,Amplifier:99b,Duration:20,ShowParticles:0b},{Id:18b,Amplifier:2b,Duration:20}]}

scoreboard players add @e[tag=hook,type=area_effect_cloud] cooldown 1

scoreboard players remove @s[scores={helper_raycast=1..}] helper_raycast 1

execute if entity @a[distance=..1.5] run scoreboard players set @s helper_raycast 0

execute if entity @a[distance=..1.5] if block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^1 run function cartographer_mob_abilities:abilities/hookshot_raycast

execute as @a[distance=..2,tag=!hooked] at @s run scoreboard players set @s damage_queue 7
execute as @a[distance=..2,tag=!hooked] at @s run function cartographer_core:helper/hurt_player/by_score
execute as @a[distance=..2,tag=!hooked] at @s run tag @s add hooked

execute if entity @a[distance=..2] as @a[distance=..2] run effect give @a[distance=..2] nausea 1 99 true

execute if entity @s[scores={helper_raycast=1..}] if block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^1 run function cartographer_mob_abilities:abilities/hookshot_raycast