#Set Values
scoreboard players set $flame ca.var 0
scoreboard players set $punch ca.var 0
scoreboard players set $concentration ca.var 0

scoreboard players set $ranged_damage ca.var 0
scoreboard players set $point_blank ca.attr_ranged 0
scoreboard players set $sharpshot ca.attr_ranged 0

scoreboard players set $cauterize ca.var 0
scoreboard players set $tempo_theft ca.var 0
scoreboard players set $first_strike ca.var 0
scoreboard players set $executioner ca.var 0
scoreboard players set $hex_eater ca.var 0
scoreboard players set $smite ca.var 0
scoreboard players set $hunter ca.var 0
scoreboard players set $duelist ca.var 0


scoreboard players set $p_flame ca.var 0
scoreboard players set $p_punch ca.var 0
scoreboard players set $p_concentration ca.var 0

scoreboard players set $p_point_blank ca.var 0
scoreboard players set $p_sharpshot ca.var 0
scoreboard players set $p_ranged_damage ca.var 0

scoreboard players set $potion_size ca.var 0

scoreboard players set $p_cauterize ca.var 0
scoreboard players set $p_tempo_theft ca.var 0
scoreboard players set $p_first_strike ca.var 0
scoreboard players set $p_executioner ca.var 0
scoreboard players set $p_hex_eater ca.var 0
scoreboard players set $p_smite ca.var 0
scoreboard players set $p_hunter ca.var 0
scoreboard players set $p_duelist ca.var 0

scoreboard players set $p_curse_misfortune ca.var 0


function cartographer_custom_enchantments:enchant_calls/thrown_potion/get_enchants

scoreboard players set $potion_hit ca.var 1
scoreboard players set $potion_hit_mob ca.var 0

execute store result storage cartographer:macro.custom_enchantments potion_size double 0.1 run scoreboard players add $potion_size ca.var 1
scoreboard players remove $potion_size ca.var 1
execute store result storage cartographer:macro.custom_enchantments potion_size_half double 0.05 run scoreboard players get $potion_size ca.var

function cartographer_custom_enchantments:enchant_calls/thrown_potion/setup_marker_macro with storage cartographer:macro.custom_enchantments

#Check this for cleaning Concentration Stacks
execute if score $p_concentration ca.var matches 1.. unless score $potion_hit_mob ca.var matches 1.. as @a if score @s ca.player_id = $player_id ca.registry run function cartographer_custom_enchantments:enchant_effects/concentration/reset

#Reset so we no longer interfere with ranged attacks
scoreboard players set $potion_hit ca.var 0
