function #minecraft:cartographer/events/enchantments/melee/first_strike

execute unless entity @s[tag=ca.first_striked] run function cartographer_custom_enchantments:enchant_effects/first_strike/damage