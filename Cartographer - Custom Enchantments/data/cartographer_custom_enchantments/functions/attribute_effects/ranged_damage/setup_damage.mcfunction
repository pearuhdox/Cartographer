execute store result storage cartographer:macro.custom_enchantments ranged_damage_tens int 0.1 run scoreboard players get $ranged_damage ca.var

scoreboard players operation $ranged_damage_mod ca.var = $ranged_damage ca.var
scoreboard players operation $ranged_damage_mod ca.var %= $10 ca.CONSTANT

execute store result storage cartographer:macro.custom_enchantments ranged_damage_ones int 1 run scoreboard players get $ranged_damage_mod ca.var

execute on attacker run tag @s add ca.custom_ranged_dmg_player

function cartographer_custom_enchantments:attribute_effects/ranged_damage/do_damage with storage cartographer:macro.custom_enchantments

tag @a remove ca.custom_ranged_dmg_player
