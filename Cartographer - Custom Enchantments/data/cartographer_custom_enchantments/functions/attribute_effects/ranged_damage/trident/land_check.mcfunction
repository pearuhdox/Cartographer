scoreboard players set $cu_tri_land ca.var 0

execute on vehicle on vehicle if entity @s[type=snowball] run scoreboard players set $cu_tri_land ca.var 1

execute if score $cu_tri_land ca.var matches 0 run function cartographer_custom_enchantments:attribute_effects/ranged_damage/trident/landed