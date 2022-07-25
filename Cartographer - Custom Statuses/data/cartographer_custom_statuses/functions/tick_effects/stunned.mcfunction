execute unless entity @s[tag=thorns_no_tenacity] unless entity @s[tag=shocked_tick] run execute store result score @s ca.stun_resist run attribute @s minecraft:generic.knockback_resistance get 20
execute unless entity @s[tag=thorns_no_tenacity] run scoreboard players operation @s ca.stun_res_ct = $20 ca.CONSTANT
execute unless entity @s[tag=thorns_no_tenacity] run scoreboard players operation @s ca.stun_res_ct -= @s ca.stun_resist


scoreboard players remove @s ca.effect_stun 1

execute unless entity @s[tag=no_tenacity] if score @s ca.stun_resist matches 2.. run scoreboard players add @s ca.stun_res_time 1
execute unless entity @s[tag=no_tenacity] if score @s ca.stun_resist matches 2.. if score @s ca.stun_res_time = @s ca.stun_res_ct run scoreboard players operation @s ca.effect_stun -= @s ca.stun_resist
execute unless entity @s[tag=no_tenacity] if score @s ca.stun_resist matches 2.. if score @s ca.stun_res_time = @s ca.stun_res_ct run scoreboard players set @s ca.stun_res_time 0
execute unless entity @s[tag=no_tenacity] if score @s ca.stun_resist matches 2.. if score @s ca.effect_stun matches ..0 run scoreboard players set @s ca.effect_stun 1

execute unless entity @s[tag=no_tenacity] if score @s ca.stun_res_ct matches ..0 run scoreboard players set @s ca.effect_stun 1

execute as @s[scores={ca.effect_stun=2..}] run data merge entity @s {NoAI:1}

execute as @s[scores={ca.effect_stun=1}] run data merge entity @s {NoAI:0}

execute as @s[scores={ca.effect_stun=1}] run tag @s remove thorns_no_tenacity
execute as @s[scores={ca.effect_stun=1}] run scoreboard players set @s ca.effect_stun 0

execute as @s[scores={ca.effect_stun=2..}] at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~

execute as @e[tag=tokened,scores={cooldown=0,ca.effect_stun=1..}] at @s run function cartographer_mob_abilities:helper/token/cancel_ability

scoreboard players add @s[scores={ca.effect_stun=1..}] ca.stun_show 1

scoreboard players set @s[scores={ca.stun_show=13..}] ca.stun_show 1

execute at @s[scores={ca.stun_show=1,ca.effect_stun=1..}] run particle minecraft:dust 0.95 0.9 0.2 1 ~0.5 ~2.25 ~ 0 0 0 0 1 force
execute at @s[scores={ca.stun_show=2,ca.effect_stun=1..}] run particle minecraft:dust 0.95 0.9 0.2 1 ~0.43 ~2.25 ~0.25 0 0 0 0 1 force
execute at @s[scores={ca.stun_show=3,ca.effect_stun=1..}] run particle minecraft:dust 0.95 0.9 0.2 1 ~0.25 ~2.25 ~0.43 0 0 0 0 1 force
execute at @s[scores={ca.stun_show=4,ca.effect_stun=1..}] run particle minecraft:dust 0.95 0.9 0.2 1 ~ ~2.25 ~0.5 0 0 0 0 1 force
execute at @s[scores={ca.stun_show=5,ca.effect_stun=1..}] run particle minecraft:dust 0.95 0.9 0.2 1 ~-0.25 ~2.25 ~0.43 0 0 0 0 1 force
execute at @s[scores={ca.stun_show=6,ca.effect_stun=1..}] run particle minecraft:dust 0.95 0.9 0.2 1 ~-0.43 ~2.25 ~0.25 0 0 0 0 1 force
execute at @s[scores={ca.stun_show=7,ca.effect_stun=1..}] run particle minecraft:dust 0.95 0.9 0.2 1 ~-0.5 ~2.25 ~ 0 0 0 0 1 force
execute at @s[scores={ca.stun_show=8,ca.effect_stun=1..}] run particle minecraft:dust 0.95 0.9 0.2 1 ~-0.43 ~2.25 ~-0.25 0 0 0 0 1 force
execute at @s[scores={ca.stun_show=9,ca.effect_stun=1..}] run particle minecraft:dust 0.95 0.9 0.2 1 ~-0.25 ~2.25 ~-0.43 0 0 0 0 1 force
execute at @s[scores={ca.stun_show=10,ca.effect_stun=1..}] run particle minecraft:dust 0.95 0.9 0.2 1 ~ ~2.25 ~-0.5 0 0 0 0 1 force
execute at @s[scores={ca.stun_show=11,ca.effect_stun=1..}] run particle minecraft:dust 0.95 0.9 0.2 1 ~0.25 ~2.25 ~-0.43 0 0 0 0 1 force
execute at @s[scores={ca.stun_show=12,ca.effect_stun=1..}] run particle minecraft:dust 0.95 0.9 0.2 1 ~0.43 ~2.25 ~-0.25 0 0 0 0 1 force