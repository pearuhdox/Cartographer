effect give @s slowness 3 1
effect give @s strength 3 1
effect give @s weakness 3 0

scoreboard players operation @s ca.effect_infect += $infect_pass_time ca.var
execute if score @s ca.effect_infect matches 1..3 run scoreboard players set @s ca.effect_infect 3

scoreboard players set $did_spread_infect ca.var 1