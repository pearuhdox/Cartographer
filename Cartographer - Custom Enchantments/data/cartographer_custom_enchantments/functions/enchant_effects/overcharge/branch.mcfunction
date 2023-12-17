execute if score $lvl ca.overcharge matches 1.. run scoreboard players set @s ca.lifetime 1

scoreboard players operation @s ca.ov_tier = $tier ca.overcharge
scoreboard players operation @s ca.overcharge = $lvl ca.overcharge

execute if score @s ca.attr_ranged matches 1.. run function cartographer_custom_enchantments:enchant_effects/overcharge/damage/custom
execute unless score @s ca.attr_ranged matches 1.. run function cartographer_custom_enchantments:enchant_effects/overcharge/damage/normal


execute if score $ranged ca.ov_tier matches 1.. run tag @s add custom_arrow