effect give @s slowness 3 0
effect give @s weakness 3 0

damage @s 1.5 cartographer_custom_statuses:status_damage
damage @s 0.00000000001 cartographer_custom_statuses:status_damage

summon area_effect_cloud ~ ~ ~ {Tags:["ca.infect_effect_spread"],Particle:"block air",ReapplicationDelay:0,Radius:0.1f,RadiusOnUse:-5.0f,Duration:10,DurationOnUse:0f,Age:-1,WaitTime:0,Potion:"minecraft:awkward",effects:[]}
execute as @e[type=area_effect_cloud,tag=ca.infect_effect_spread,limit=1,sort=nearest] at @s run data modify entity @s effects set from storage cartographer_custom_statuses:infection active_effects

scoreboard players operation @s ca.effect_infect += $infect_pass_time ca.var
execute if score @s ca.effect_infect matches 1..3 run scoreboard players set @s ca.effect_infect 3

scoreboard players set $did_spread_infect ca.var 1