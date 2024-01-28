execute if score @s ca.satiation matches 1.. run function #minecraft:cartographer/events/enchantments/passive/satiation

tag @s add ca.satiation_schedule

schedule function cartographer_custom_enchantments:enchant_effects/satiation/schedule 1t