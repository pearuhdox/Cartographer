execute unless score @s ca.shielding_time matches ..-1 run function cartographer_custom_enchantments:enchant_effects/shielding/apply_shield

execute if score @s ca.shielding_time matches ..-1 if entity @s[nbt={AbsorptionAmount:0.0f}] run function cartographer_custom_enchantments:enchant_effects/shielding/lost_shield