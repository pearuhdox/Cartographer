scoreboard players set @s ca.lifetime 1


execute unless score @s ca.attr_ranged matches 1.. run function cartographer_custom_enchantments:enchant_effects/focus/damage/normal
execute if score @s ca.attr_ranged matches 1.. run function cartographer_custom_enchantments:enchant_effects/focus/damage/custom

tag @s add custom_arrow