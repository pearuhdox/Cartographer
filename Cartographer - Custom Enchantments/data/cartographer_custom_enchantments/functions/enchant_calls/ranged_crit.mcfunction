scoreboard players operation $damage_calc ca.attr_random_crit = $ranged_damage ca.var
scoreboard players operation @s ca.attr_random_crit = $random_crit ca.var

function cartographer_custom_enchantments:attribute_effects/random_crit/ranged

scoreboard players reset @s ca.attr_random_crit

scoreboard players operation $ranged_damage ca.var = $damage_calc ca.attr_random_crit