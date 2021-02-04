playsound minecraft:entity.firework_rocket.twinkle_far hostile @a[distance=..16] ~ ~ ~ 1 2

execute unless entity @s[tag=shocked_tick] run scoreboard players set @s damage_queue 2
execute unless entity @s[tag=shocked_tick] run function cartographer_core:helper/deal_damage/by_score
execute unless entity @s[tag=shocked_tick] run function cartographer_core:helper/deal_damage/invulnerable_tick
execute unless entity @s[tag=shocked_tick] run function cartographer_core:helper/push_third
execute unless entity @s[tag=shocked_tick] run tag @s add shocked_tick

execute as @e[type=#cartographer_core:hostile,distance=0.5..3,limit=3,sort=nearest,tag=!shocked_tick] at @s run execute unless entity @s[scores={effect_shocked=1..}] run function cartographer_custom_statuses:effects/shocked_neighbors

particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0.2 10 normal

scoreboard players remove @s effect_shocked 1
