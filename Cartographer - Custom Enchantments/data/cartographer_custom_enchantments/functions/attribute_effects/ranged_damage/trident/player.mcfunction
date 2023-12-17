scoreboard players operation $val ca.attr_ranged = @s ca.attr_ranged
scoreboard players operation $val ca.attr_ranged_perc = @s ca.attr_ranged_perc

execute if score $val ca.attr_ranged matches ..0 run scoreboard players set $val ca.attr_ranged 1
scoreboard players operation $val ca.attr_ranged *= $val ca.attr_ranged_perc
scoreboard players operation $val ca.attr_ranged /= $100 ca.CONSTANT


function cartographer_custom_enchantments:attribute_effects/ranged_damage/trident/get_enchants

execute anchored eyes positioned ^ ^ ^1 facing entity @s eyes as @e[type=trident,tag=ca.custom_just_fired,distance=..12] run function cartographer_custom_enchantments:attribute_effects/ranged_damage/trident/replace