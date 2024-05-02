execute unless entity @s[tag=ca.in_water] if block ~ ~1.8 ~ water run function cartographer_custom_enchantments:enchant_effects/aquadynamic/refresh_start

execute unless entity @s[tag=ca.in_water] if block ~ ~1.8 ~ bubble_column run tag @s remove ca.in_water


execute if block ~ ~1.8 ~ water run tag @s add ca.in_water

execute unless block ~ ~1.8 ~ water if entity @s[tag=ca.in_water] run function cartographer_custom_enchantments:enchant_effects/aquadynamic/cleanse
execute unless block ~ ~1.8 ~ water run tag @s remove ca.in_water