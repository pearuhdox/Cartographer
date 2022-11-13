function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

data modify entity @s NoAI set value 0b

scoreboard players add @s ca.sweep_side 1
execute if score @s ca.sweep_side matches 3.. run scoreboard players set @s ca.sweep_side 1

tag @a remove sweep_tagged

execute unless entity @s[tag=ca.acrobatic] run function cartographer_mob_abilities:abilities/sweep/leap