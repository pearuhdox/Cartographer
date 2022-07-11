execute unless entity @s[type=#bb:fiery] store result score @s ca.cau_burn_time run data get entity @s Fire

execute unless entity @s[type=#bb:fiery] if score $melee ca.cauterize matches 1.. if entity @s[tag=!skip_cauterize] unless score @s ca.cau_burn_time matches -1 unless score @s ca.cau_burn_time matches 20 run function cartographer_custom_enchantments:enchant_effects/cauterize/branch_effect

execute unless entity @s[type=#bb:fiery] if score $ranged ca.cauterize matches 1.. if score @s ca.cau_prv_time matches 1.. run function cartographer_custom_enchantments:enchant_effects/cauterize/branch_effect
execute unless entity @s[type=#bb:fiery] if score $ranged ca.cauterize matches 1.. unless entity @s[tag=stop_track_fire] store result score @s ca.cau_prv_time run data get entity @s Fire

execute unless entity @s[type=#bb:fiery] if score $other ca.cauterize matches 1.. if score @s ca.cau_burn_time matches 1.. run function cartographer_custom_enchantments:enchant_effects/cauterize/branch_effect
execute unless entity @s[type=#bb:fiery] if score $other ca.cauterize matches 1.. unless entity @s[tag=stop_track_fire] store result score @s ca.cau_prv_time run data get entity @s Fire

execute if entity @s[type=#bb:fiery] run function cartographer_custom_enchantments:enchant_effects/cauterize/branch_effect

tag @s remove stop_track_fire