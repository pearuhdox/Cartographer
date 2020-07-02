scoreboard players remove @a[scores={Resurrect=1..}] Resurrect 1

execute as @a[scores={Resurrect=60}] run effect clear @s

execute as @a[scores={Resurrect=20..}] run effect give @s minecraft:glowing 1 0 true

execute as @a[scores={Resurrect=20..}] run effect give @s minecraft:levitation 1 0 true

execute as @a[scores={Resurrect=20..}] run effect give @s minecraft:resistance 2 4 true

execute as @a[scores={Resurrect=50}] run effect give @s minecraft:instant_health 1 0

execute as @a[scores={Resurrect=40}] run effect give @s minecraft:instant_health 1 0

execute as @a[scores={Resurrect=30}] run effect give @s minecraft:instant_health 1 0

execute as @a[scores={Resurrect=1}] at @s run playsound minecraft:entity.zombie_villager.converted player @a[distance=..10] ~ ~ ~ 1 2



scoreboard players add @a[scores={Resurrect=1..}] resDisplay 1

scoreboard players set @a[scores={resDisplay=13..}] resDisplay 1

execute at @a[scores={resDisplay=1,Resurrect=1..}] run particle minecraft:totem_of_undying ~0.5 ~2.25 ~ 0 0 0 0 1 force

execute at @a[scores={resDisplay=2,Resurrect=1..}] run particle minecraft:totem_of_undying ~0.43 ~2.25 ~0.25 0 0 0 0 1 force

execute at @a[scores={resDisplay=3,Resurrect=1..}] run particle minecraft:totem_of_undying ~0.25 ~2.25 ~0.43 0 0 0 0 1 force

execute at @a[scores={resDisplay=4,Resurrect=1..}] run particle minecraft:totem_of_undying ~ ~2.25 ~0.5 0 0 0 0 1 force

execute at @a[scores={resDisplay=5,Resurrect=1..}] run particle minecraft:totem_of_undying ~-0.25 ~2.25 ~0.43 0 0 0 0 1 force

execute at @a[scores={resDisplay=6,Resurrect=1..}] run particle minecraft:totem_of_undying ~-0.43 ~2.25 ~0.25 0 0 0 0 1 force

execute at @a[scores={resDisplay=7,Resurrect=1..}] run particle minecraft:totem_of_undying ~-0.5 ~2.25 ~ 0 0 0 0 1 force

execute at @a[scores={resDisplay=8,Resurrect=1..}] run particle minecraft:totem_of_undying ~-0.43 ~2.25 ~-0.25 0 0 0 0 1 force

execute at @a[scores={resDisplay=9,Resurrect=1..}] run particle minecraft:totem_of_undying ~-0.25 ~2.25 ~-0.43 0 0 0 0 1 force

execute at @a[scores={resDisplay=10,Resurrect=1..}] run particle minecraft:totem_of_undying ~ ~2.25 ~-0.5 0 0 0 0 1 force

execute at @a[scores={resDisplay=11,Resurrect=1..}] run particle minecraft:totem_of_undying ~0.25 ~2.25 ~-0.43 0 0 0 0 1 force

execute at @a[scores={resDisplay=12,Resurrect=1..}] run particle minecraft:totem_of_undying ~0.43 ~2.25 ~-0.25 0 0 0 0 1 force