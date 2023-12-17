execute if score @s ca.explosive matches 1.. run function cartographer_custom_enchantments:enchant_effects/explosive/master

execute if score @s ca.concentration matches 1.. unless entity @s[tag=ca.concentration_hit] on origin if score @s ca.concentrate_stack matches 1.. run function cartographer_custom_enchantments:enchant_effects/concentration/reset

scoreboard players set @s ca.frost 0
scoreboard players set @s ca.explosive 0
scoreboard players set @s ca.tempo_theft 0
scoreboard players set @s ca.ov_tier 0
scoreboard players set @s ca.ov_tier 0

tag @s remove custom_arrow