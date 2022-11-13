execute if score @s ca.ricochet matches 1.. run function cartographer_custom_enchantments:enchant_effects/ricochet/fix_data
execute if score @s ca.ricochet matches 0 run function cartographer_custom_enchantments:enchant_effects/ricochet/end_chain

scoreboard players remove @s ca.ricochet 1