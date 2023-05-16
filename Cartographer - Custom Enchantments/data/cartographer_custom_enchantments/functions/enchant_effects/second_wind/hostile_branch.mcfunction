scoreboard players set $entity_sw_mark_test ca.ench_var 0

execute on target if entity @s[tag=ca.second_wind_fatal_target] run scoreboard players set $entity_sw_mark_test ca.ench_var 1

execute if score $entity_sw_mark_test ca.ench_var matches 1.. run effect give @s glowing 11 4
execute if score $entity_sw_mark_test ca.ench_var matches 1.. run tag @s add ca.second_wind_marked

scoreboard players add $sw_mob_count ca.ench_var 1
