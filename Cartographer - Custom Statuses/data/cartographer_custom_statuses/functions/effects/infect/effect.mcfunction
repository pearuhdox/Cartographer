execute if score @s ca.effect_infect matches 1 run scoreboard players remove @s ca.effect_infect 1

execute if entity @s[tag=ca.infected] if score @s ca.effect_infect matches 1.. run function cartographer_custom_statuses:effects/infect/do_effect
execute unless entity @s[tag=ca.infected] run function cartographer_custom_statuses:effects/infect/create_marker

execute if score @s ca.effect_infect matches 0 run tag @s remove ca.infected
execute if score @s ca.effect_infect matches 0 on passengers if entity @s[type=marker,tag=ca.death_marker] run kill @s