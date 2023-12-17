execute on attacker run tag @s add ca.distance_check

execute if entity @a[distance=..8.5,tag=ca.distance_check] run function cartographer_custom_enchantments:enchant_effects/point_blank/branch

execute on attacker run tag @s remove ca.distance_check