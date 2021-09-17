execute if block ^ ^ ^0.3 #cartographer_core:containers run tag @s add found_container

execute if block ^ ^ ^0.3 #cartographer_core:containers run summon item_frame ^ ^ ^0.3 {Facing:1b,Invisible:1b,Fixed:1b,Tags:["placeholder_seed_chest"],Item:{}}

execute if block ^ ^ ^0.3 #cartographer_core:containers as @e[type=item_frame,tag=placeholder_seed_chest] at @s run summon area_effect_cloud ~ ~0.2 ~ {Particle:"block air",CustomNameVisible:1b,ReapplicationDelay:0,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:100,DurationOnUse:0f,Age:0,WaitTime:0,Tags:["seeded_chest"],CustomName:'{"text":"Seeded Chest"}'}

execute as @e[distance=..1.5,sort=nearest,limit=1,type=area_effect_cloud,tag=seeded_chest] at @s run function cartographer_loot_additions:chest/set_seed

kill @e[type=item_frame,tag=placeholder_seed_chest]

scoreboard players remove @s ca.raycast 1
execute if entity @s[scores={ca.raycast=1..}] unless block ^ ^ ^0.3 #cartographer_core:containers as @s positioned ^ ^ ^0.3 run function cartographer_loot_additions:chest/find_recurse