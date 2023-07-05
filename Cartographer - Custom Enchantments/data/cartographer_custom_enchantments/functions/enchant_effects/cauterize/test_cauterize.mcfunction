execute unless entity @s[type=#bb:fiery] if score @s ca.cau_prv_time matches 1.. run function cartographer_custom_enchantments:enchant_effects/cauterize/branch_effect
execute unless entity @s[type=#bb:fiery] store result score @s ca.cau_prv_time run data get entity @s Fire

execute if entity @s[type=#bb:fiery] run function cartographer_custom_enchantments:enchant_effects/cauterize/effect_fiery

tag @s remove stop_track_fire