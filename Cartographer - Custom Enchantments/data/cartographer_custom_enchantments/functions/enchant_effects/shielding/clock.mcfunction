execute if score @s ca.shielding_time matches 5 run function cartographer_custom_enchantments:enchant_effects/shielding/apply

execute unless score @s ca.shielding_cdl matches 1.. unless entity @s[tag=ca.shielding_full] run scoreboard players add @s ca.shielding_time 1
execute if score @s ca.shielding_cdl matches 1.. run scoreboard players remove @s ca.shielding_cdl 1

execute if score @s ca.take_damage matches 1.. run function cartographer_custom_enchantments:enchant_effects/shielding/damage
execute if score @s ca.take_damage_a matches 1.. unless score @s ca.take_damage matches 1.. run function cartographer_custom_enchantments:enchant_effects/shielding/damage_shield

tag @s add ca.using_shielding