scoreboard players operation $infect_mod ca.status_var = @s ca.effect_infect
scoreboard players operation $infect_mod ca.status_var %= $20 ca.CONSTANT

execute if entity @s[tag=ca.infect_warmup] if score $infect_mod ca.status_var matches 2 run function cartographer_custom_statuses:effects/infect/do_effect
execute unless entity @s[tag=ca.infect_warmup] run function cartographer_custom_statuses:effects/infect/create_marker

execute if score @s ca.effect_infect matches 1.. run scoreboard players remove @s ca.effect_infect 1

execute if score @s ca.effect_infect matches 0 run function cartographer_custom_statuses:effects/infect/clean_effects
execute if score @s ca.effect_infect matches 0 on passengers if entity @s[type=marker,tag=ca.death_marker] run kill @s