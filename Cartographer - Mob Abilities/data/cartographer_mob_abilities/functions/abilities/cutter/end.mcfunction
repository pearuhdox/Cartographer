function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

data modify entity @s NoAI set value 0b


scoreboard players set @s mob_atk_dis 6

tag @a remove cutter_tagged

execute unless entity @s[tag=ca.acrobatic] unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:abilities/cutter/leap