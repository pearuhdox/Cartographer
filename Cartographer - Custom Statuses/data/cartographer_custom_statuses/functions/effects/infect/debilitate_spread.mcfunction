attribute @s minecraft:generic.movement_speed modifier add 31-4531-2600-000-01 "decay_speed" -0.15 multiply
attribute @s minecraft:generic.attack_damage modifier add 31-4531-2600-000-02 "decay_dmg" -0.15 multiply

scoreboard players operation @s ca.effect_infect += $infect_pass_time ca.var
execute if score @s ca.effect_infect matches 1..3 run scoreboard players set @s ca.effect_infect 3

tag @s add decaying

scoreboard players set $did_spread_infect ca.var 1