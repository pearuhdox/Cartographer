scoreboard players operation $cau_time ca.ench_var /= $20 ca.CONSTANT

scoreboard players set $cau_oil ca.ench_var 0
execute if score $custom_statuses ca.installed matches 1.. run scoreboard players operation $cau_oil ca.ench_var = @s ca.effect_oiled_level
scoreboard players add $cau_oil ca.ench_var 1
scoreboard players operation $cau_time ca.ench_var *= $cau_oil ca.ench_var

scoreboard players add $cau_time ca.ench_var 1

scoreboard players set $cau_mult ca.ench_var 15
scoreboard players operation $cau_mult ca.ench_var *= $cauterize ca.weapon_var

scoreboard players operation $cau_time ca.ench_var *= $cau_mult ca.ench_var
scoreboard players operation $cau_time ca.ench_var /= $100 ca.CONSTANT
execute if score $cau_time ca.ench_var matches 0 run scoreboard players set $cau_time ca.ench_var 1

scoreboard players operation @s ca.damage_queue = $cau_time ca.ench_var
function cartographer_custom_enchantments:helper/damage/macro_setup
function cartographer_custom_enchantments:helper/damage/enchant_damage_bypass with storage cartographer:macro.custom_enchantments


#Add the tag for brittle to cleanse fire (1 tick delay).
tag @s add ca.cleanse_fire