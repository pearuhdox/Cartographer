scoreboard players set @s ca.lifetime 1

execute unless score @s ca.attr_ranged matches 1.. run function cartographer_custom_enchantments:enchant_effects/concentration/damage/normal
execute if score @s ca.attr_ranged matches 1.. run function cartographer_custom_enchantments:enchant_effects/concentration/damage/custom