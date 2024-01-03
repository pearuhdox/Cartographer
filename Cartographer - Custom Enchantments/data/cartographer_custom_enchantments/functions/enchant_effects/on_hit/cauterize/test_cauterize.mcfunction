execute unless entity @s[type=#bb:fiery] if score @s ca.cauterize_time matches 1.. run function cartographer_custom_enchantments:enchant_effects/on_hit/cauterize/branch_effect
execute if entity @s[type=#bb:fiery] run function cartographer_custom_enchantments:enchant_effects/on_hit/cauterize/effect_fiery


tag @s remove stop_track_fire