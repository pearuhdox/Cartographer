execute unless entity @s[tag=shocked_tick] run scoreboard players set @s cdl.damage_queue 2
execute unless entity @s[tag=shocked_tick] run function cd:lib/mob/damage/normal

function cartographer_core:helper/randomize
execute if entity @s run scoreboard players operation @s random += @s ca.pity_shock

execute if block ~ ~ ~ water run scoreboard players add @s random 30
execute if entity @s[scores={random=101..}] run scoreboard players set @s random 100

execute if entity @s[scores={random=71..85}] unless entity @s[tag=shocked_tick] as @e[type=#bb:hostile,distance=..3,limit=3,sort=nearest,tag=!shocked_tick] at @s run function cartographer_custom_statuses:effects/shocked/group_knockback
execute if entity @s[scores={random=86..100}] unless entity @s[tag=shocked_tick] run scoreboard players set @e[type=#bb:hostile,distance=..3,limit=3,sort=nearest,tag=!shocked_tick] ca.effect_stun 11

execute if entity @s[scores={random=..70}] unless entity @s[tag=shocked_tick] run scoreboard players add @s ca.pity_shock 10
execute if entity @s[scores={random=71..}] unless entity @s[tag=shocked_tick] run scoreboard players set @s ca.pity_shock 0

execute if entity @s[scores={random=..71}] unless entity @s[tag=shocked_tick] run particle minecraft:electric_spark ~ ~1 ~ 0.35 0.35 0.35 1 10 normal
execute if entity @s[scores={random=71..}] unless entity @s[tag=shocked_tick] run particle minecraft:wax_off ~ ~1 ~ 0.6 0.35 0.6 7 20 normal
execute if entity @s[scores={random=71..}] unless entity @s[tag=shocked_tick] run particle minecraft:flash ~ ~1 ~ 0 0 0 0 1 normal

execute if entity @s[scores={random=..71}] unless entity @s[tag=shocked_tick] run playsound minecraft:entity.firework_rocket.twinkle_far hostile @a[distance=..16] ~ ~ ~ 1 2
execute if entity @s[scores={random=71..}] unless entity @s[tag=shocked_tick] run playsound minecraft:entity.firework_rocket.twinkle_far hostile @a[distance=..16] ~ ~ ~ 1 0.85


execute unless entity @s[tag=shocked_tick] run tag @s add shocked_tick

execute as @e[type=#bb:hostile,distance=0.5..3,limit=3,sort=nearest,tag=!shocked_tick] at @s unless entity @s[scores={ca.effect_shock=1..}] run function cartographer_custom_statuses:effects/shocked_neighbors

particle minecraft:electric_spark ~ ~1 ~ 0.5 0.5 0.5 0.2 10 normal

scoreboard players remove @s ca.effect_shock 1

tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" affected by Shocked.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]
