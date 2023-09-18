effect give @s slowness 3 0
effect give @s weakness 3 0

damage @s 1.5 cartographer_custom_statuses:status_damage
damage @s 0.00000000001 cartographer_custom_statuses:status_damage

scoreboard players operation @s ca.effect_infect += $infect_pass_time ca.var
execute if score @s ca.effect_infect matches 1..3 run scoreboard players set @s ca.effect_infect 3

scoreboard players set $did_spread_infect ca.var 1