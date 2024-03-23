function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

scoreboard players set @s mob_atk_dis 10

scoreboard players add @s ca.cutter_side 1
execute if score @s ca.cutter_side matches 3.. run scoreboard players set @s ca.cutter_side 1

tag @a remove cutter_tagged

execute unless entity @s[tag=ca.acrobatic] unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:abilities/cutter/leap