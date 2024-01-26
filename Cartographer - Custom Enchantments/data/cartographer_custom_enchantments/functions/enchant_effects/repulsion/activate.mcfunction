scoreboard players set $fire_aspect ca.weapon_var 0
scoreboard players set $knockback ca.weapon_var 0

scoreboard players set $executioner ca.weapon_var 0
scoreboard players set $first_strike ca.weapon_var 0
scoreboard players set $hex_eater ca.weapon_var 0
scoreboard players set $tempo_theft ca.weapon_var 0
scoreboard players set $cauterize ca.weapon_var 0

scoreboard players set $duelist ca.weapon_var 0
scoreboard players set $hunter ca.weapon_var 0
scoreboard players set $smite ca.weapon_var 0

scoreboard players set $repulsion_mob ca.ench_var 0

scoreboard players operation $repulsion_lvl ca.repulsion = @s ca.repulsion

scoreboard players operation $fire_aspect ca.weapon_var = @s ca.re_fire
scoreboard players operation $knockback ca.weapon_var = @s ca.re_knock

scoreboard players operation $executioner ca.weapon_var = @s ca.re_exec
scoreboard players operation $first_strike ca.weapon_var = @s ca.re_first
scoreboard players operation $hex_eater ca.weapon_var = @s ca.re_hex
scoreboard players operation $tempo_theft ca.weapon_var = @s ca.re_tempo
scoreboard players operation $cauterize ca.weapon_var = @s ca.re_cau

scoreboard players operation $duelist ca.weapon_var = @s ca.re_duelist
scoreboard players operation $hunter ca.weapon_var = @s ca.re_hunter
scoreboard players operation $smite ca.weapon_var = @s ca.re_smite

execute if entity @s[tag=ca.ae_main] if entity @s[tag=ca.ce_repulsion_main] run tag @s add ca.check_ae_main
execute if entity @s[tag=ca.ae_offh] if entity @s[tag=ca.ce_repulsion_offh] run tag @s add ca.check_ae_offh

execute if entity @s[tag=ca.si_main] if entity @s[tag=ca.ce_repulsion_main] run tag @s add ca.check_si_main
execute if entity @s[tag=ca.si_offh] if entity @s[tag=ca.ce_repulsion_offh] run tag @s add ca.check_si_offh

execute if entity @s[tag=ca.as_main] if entity @s[tag=ca.ce_repulsion_main] run tag @s add ca.check_as_main
execute if entity @s[tag=ca.as_offh] if entity @s[tag=ca.ce_repulsion_offh] run tag @s add ca.check_as_offh

function cartographer_custom_statuses:apply_effects/save/additive/do
function cartographer_custom_statuses:apply_self/save/additive/do
function cartographer_custom_statuses:apply_status/save/additive/do


scoreboard players set $size ca.attr_aoe_size 45
function cartographer_custom_enchantments:attribute_effects/aoe_size/adjust

function cartographer_custom_enchantments:enchant_effects/repulsion/macro with storage cartographer:macro.custom_enchantments

execute if score $do_linger ca.status_var matches 1.. run scoreboard players set @s ca.linger_cdl 300

execute if score $repulsion_mob ca.ench_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/repulsion/vfx

execute if score $repulsion_mob ca.ench_var matches 1.. run function cartographer_custom_statuses:apply_effects/apply/create_aec