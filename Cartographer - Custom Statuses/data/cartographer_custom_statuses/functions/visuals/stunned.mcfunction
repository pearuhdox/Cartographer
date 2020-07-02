scoreboard players remove @e[scores={effect_stunned=1..}] effect_stunned 1

execute as @e[scores={effect_stunned=2..}] run data merge entity @s {NoAI:1}

execute as @e[scores={effect_stunned=1}] run data merge entity @s {NoAI:0}

execute as @e[scores={effect_stunned=2..}] at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~

scoreboard players add @e[scores={effect_stunned=1..}] helper_stun_show 1

scoreboard players set @e[scores={helper_stun_show=13..}] helper_stun_show 1

execute at @e[scores={helper_stun_show=1,effect_stunned=1..}] run particle minecraft:dust 0.95 0.9 0.2 1 ~0.5 ~2.25 ~ 0 0 0 0 1 force

execute at @e[scores={helper_stun_show=2,effect_stunned=1..}] run particle minecraft:dust 0.95 0.9 0.2 1 ~0.43 ~2.25 ~0.25 0 0 0 0 1 force

execute at @e[scores={helper_stun_show=3,effect_stunned=1..}] run particle minecraft:dust 0.95 0.9 0.2 1 ~0.25 ~2.25 ~0.43 0 0 0 0 1 force

execute at @e[scores={helper_stun_show=4,effect_stunned=1..}] run particle minecraft:dust 0.95 0.9 0.2 1 ~ ~2.25 ~0.5 0 0 0 0 1 force

execute at @e[scores={helper_stun_show=5,effect_stunned=1..}] run particle minecraft:dust 0.95 0.9 0.2 1 ~-0.25 ~2.25 ~0.43 0 0 0 0 1 force

execute at @e[scores={helper_stun_show=6,effect_stunned=1..}] run particle minecraft:dust 0.95 0.9 0.2 1 ~-0.43 ~2.25 ~0.25 0 0 0 0 1 force

execute at @e[scores={helper_stun_show=7,effect_stunned=1..}] run particle minecraft:dust 0.95 0.9 0.2 1 ~-0.5 ~2.25 ~ 0 0 0 0 1 force

execute at @e[scores={helper_stun_show=8,effect_stunned=1..}] run particle minecraft:dust 0.95 0.9 0.2 1 ~-0.43 ~2.25 ~-0.25 0 0 0 0 1 force

execute at @e[scores={helper_stun_show=9,effect_stunned=1..}] run particle minecraft:dust 0.95 0.9 0.2 1 ~-0.25 ~2.25 ~-0.43 0 0 0 0 1 force

execute at @e[scores={helper_stun_show=10,effect_stunned=1..}] run particle minecraft:dust 0.95 0.9 0.2 1 ~ ~2.25 ~-0.5 0 0 0 0 1 force

execute at @e[scores={helper_stun_show=11,effect_stunned=1..}] run particle minecraft:dust 0.95 0.9 0.2 1 ~0.25 ~2.25 ~-0.43 0 0 0 0 1 force

execute at @e[scores={helper_stun_show=12,effect_stunned=1..}] run particle minecraft:dust 0.95 0.9 0.2 1 ~0.43 ~2.25 ~-0.25 0 0 0 0 1 force