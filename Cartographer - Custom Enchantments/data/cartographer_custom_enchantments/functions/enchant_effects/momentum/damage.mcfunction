execute store result storage cartographer:macro.custom_enchantments damage double 0.1 run scoreboard players get $damage ca.momentum
function cartographer_custom_enchantments:enchant_effects/momentum/enchant_damage_bypass with storage cartographer:macro.custom_enchantments

scoreboard players set @s co_send -7
scoreboard players set @s co_y 5

execute unless score $knockback ca.weapon_var matches 1.. at @s run function motion:motion/push

#Run On Hit Enchantments
function cartographer_custom_enchantments:enchant_effects/on_hit/melee_master