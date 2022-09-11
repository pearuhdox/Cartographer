data modify storage cartographer_custom_enchantments:loyalty Item set value {}
data modify storage cartographer_custom_enchantments:loyalty Item set from entity @s Trident

data modify entity @s pickup set value 2b

tag @s add loyalty_checked
tag @s add custom_trident

execute if score @s ca.current matches 1.. run function cartographer_custom_enchantments:enchant_effects/loyalty/apply_current

execute if score $hydraulic ca.loyalty matches 1.. run function cartographer_custom_enchantments:enchant_effects/loyalty/apply_hydraulic