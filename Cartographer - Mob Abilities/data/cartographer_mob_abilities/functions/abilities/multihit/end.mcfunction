function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit


scoreboard players set @s mob_atk_dis 10

tag @a remove multihit_tagged
scoreboard players set @a ca.multihit_animation 0

execute unless entity @s[tag=ca.acrobatic] unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:abilities/multihit/leap