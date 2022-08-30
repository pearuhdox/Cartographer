scoreboard players remove @s ca.effect_stun_duration 1

execute as @s[scores={ca.effect_stun_duration=2..}] run data merge entity @s {NoAI:1}

execute as @s[scores={ca.effect_stun_duration=1}] run data merge entity @s {NoAI:0}

execute as @s[scores={ca.effect_stun_duration=1}] run scoreboard players set @s ca.effect_stun 0

execute as @s[scores={ca.effect_stun_duration=2..}] if entity @s if block ~ ~-0.1 ~ #cartographer_core:can_raycast run tp @s ~ ~-0.1 ~
execute as @s[scores={ca.effect_stun_duration=2..}] if entity @s if block ~ ~-0.1 ~ #cartographer_core:can_raycast run tp @s ~ ~-0.1 ~

execute as @s[tag=tokened,scores={cooldown=0,ca.effect_stun_duration=1..}] if entity @s run function cartographer_mob_abilities:helper/token/cancel_ability

scoreboard players add @s[scores={ca.effect_stun_duration=1..}] ca.stun_show 1

scoreboard players set @s[scores={ca.stun_show=13..}] ca.stun_show 1

execute if entity @s[scores={ca.stun_show=1}] anchored eyes positioned ^ ^0.5 ^ run particle minecraft:dust 0.95 0.9 0.2 1 ~0.5 ~ ~ 0 0 0 0 1 force
execute if entity @s[scores={ca.stun_show=2}] anchored eyes positioned ^ ^0.5 ^ run particle minecraft:dust 0.95 0.9 0.2 1 ~0.43 ~ ~0.25 0 0 0 0 1 force
execute if entity @s[scores={ca.stun_show=3}] anchored eyes positioned ^ ^0.5 ^ run particle minecraft:dust 0.95 0.9 0.2 1 ~0.25 ~ ~0.43 0 0 0 0 1 force
execute if entity @s[scores={ca.stun_show=4}] anchored eyes positioned ^ ^0.5 ^ run particle minecraft:dust 0.95 0.9 0.2 1 ~ ~ ~0.5 0 0 0 0 1 force
execute if entity @s[scores={ca.stun_show=5}] anchored eyes positioned ^ ^0.5 ^ run particle minecraft:dust 0.95 0.9 0.2 1 ~-0.25 ~ ~0.43 0 0 0 0 1 force
execute if entity @s[scores={ca.stun_show=6}] anchored eyes positioned ^ ^0.5 ^ run particle minecraft:dust 0.95 0.9 0.2 1 ~-0.43 ~ ~0.25 0 0 0 0 1 force
execute if entity @s[scores={ca.stun_show=7}] anchored eyes positioned ^ ^0.5 ^ run particle minecraft:dust 0.95 0.9 0.2 1 ~-0.5 ~ ~ 0 0 0 0 1 force
execute if entity @s[scores={ca.stun_show=8}] anchored eyes positioned ^ ^0.5 ^ run particle minecraft:dust 0.95 0.9 0.2 1 ~-0.43 ~ ~-0.25 0 0 0 0 1 force
execute if entity @s[scores={ca.stun_show=9}] anchored eyes positioned ^ ^0.5 ^ run particle minecraft:dust 0.95 0.9 0.2 1 ~-0.25 ~ ~-0.43 0 0 0 0 1 force
execute if entity @s[scores={ca.stun_show=10}] anchored eyes positioned ^ ^0.5 ^ run particle minecraft:dust 0.95 0.9 0.2 1 ~ ~ ~-0.5 0 0 0 0 1 force
execute if entity @s[scores={ca.stun_show=11}] anchored eyes positioned ^ ^0.5 ^ run particle minecraft:dust 0.95 0.9 0.2 1 ~0.25 ~ ~-0.43 0 0 0 0 1 force
execute if entity @s[scores={ca.stun_show=12}] anchored eyes positioned ^ ^0.5 ^ run particle minecraft:dust 0.95 0.9 0.2 1 ~0.43 ~ ~-0.25 0 0 0 0 1 force