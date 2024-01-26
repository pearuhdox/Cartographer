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

scoreboard players set $quake_mob ca.ench_var 0

scoreboard players operation $quake_lvl ca.quake = @s ca.quake

scoreboard players operation $fire_aspect ca.weapon_var = @s ca.qu_fire
scoreboard players operation $knockback ca.weapon_var = @s ca.qu_knock

scoreboard players operation $executioner ca.weapon_var = @s ca.qu_exec
scoreboard players operation $first_strike ca.weapon_var = @s ca.qu_first
scoreboard players operation $hex_eater ca.weapon_var = @s ca.qu_hex
scoreboard players operation $tempo_theft ca.weapon_var = @s ca.qu_tempo
scoreboard players operation $cauterize ca.weapon_var = @s ca.qu_cau

scoreboard players operation $duelist ca.weapon_var = @s ca.qu_duelist
scoreboard players operation $hunter ca.weapon_var = @s ca.qu_hunter
scoreboard players operation $smite ca.weapon_var = @s ca.qu_smite

scoreboard players operation $cauterize ca.quake = @s ca.cauterize

execute if entity @s[tag=ca.ae_main] if entity @s[tag=ca.ce_quake_main] run tag @s add ca.check_ae_main
execute if entity @s[tag=ca.ae_offh] if entity @s[tag=ca.ce_quake_offh] run tag @s add ca.check_ae_offh
execute if entity @s[tag=ca.ae_head] if entity @s[tag=ca.ce_quake_head] run tag @s add ca.check_ae_head
execute if entity @s[tag=ca.ae_body] if entity @s[tag=ca.ce_quake_body] run tag @s add ca.check_ae_body
execute if entity @s[tag=ca.ae_legs] if entity @s[tag=ca.ce_quake_legs] run tag @s add ca.check_ae_legs
execute if entity @s[tag=ca.ae_feet] if entity @s[tag=ca.ce_quake_feet] run tag @s add ca.check_ae_feet

execute if entity @s[tag=ca.si_main] if entity @s[tag=ca.ce_quake_main] run tag @s add ca.check_si_main
execute if entity @s[tag=ca.si_offh] if entity @s[tag=ca.ce_quake_offh] run tag @s add ca.check_si_offh
execute if entity @s[tag=ca.si_head] if entity @s[tag=ca.ce_quake_head] run tag @s add ca.check_si_head
execute if entity @s[tag=ca.si_body] if entity @s[tag=ca.ce_quake_body] run tag @s add ca.check_si_body
execute if entity @s[tag=ca.si_legs] if entity @s[tag=ca.ce_quake_legs] run tag @s add ca.check_si_legs
execute if entity @s[tag=ca.si_feet] if entity @s[tag=ca.ce_quake_feet] run tag @s add ca.check_si_feet

execute if entity @s[tag=ca.as_main] if entity @s[tag=ca.ce_quake_main] run tag @s add ca.check_as_main
execute if entity @s[tag=ca.as_offh] if entity @s[tag=ca.ce_quake_offh] run tag @s add ca.check_as_offh
execute if entity @s[tag=ca.as_head] if entity @s[tag=ca.ce_quake_head] run tag @s add ca.check_as_head
execute if entity @s[tag=ca.as_body] if entity @s[tag=ca.ce_quake_body] run tag @s add ca.check_as_body
execute if entity @s[tag=ca.as_legs] if entity @s[tag=ca.ce_quake_legs] run tag @s add ca.check_as_legs
execute if entity @s[tag=ca.as_feet] if entity @s[tag=ca.ce_quake_feet] run tag @s add ca.check_as_feet

function cartographer_custom_statuses:apply_effects/save/additive/do
function cartographer_custom_statuses:apply_self/save/additive/do
function cartographer_custom_statuses:apply_status/save/additive/do


scoreboard players operation $damage ca.quake = @s ca.quake
scoreboard players add $damage ca.quake 2
scoreboard players operation $damage ca.quake *= $10 ca.CONSTANT

scoreboard players set $success ca.attr_random_crit 0
execute if score @s ca.attr_random_crit matches 1.. run function cartographer_custom_enchantments:enchant_effects/quake/random_crit_handler


scoreboard players set $size ca.attr_aoe_size 55
function cartographer_custom_enchantments:attribute_effects/aoe_size/adjust

function cartographer_custom_enchantments:enchant_effects/quake/macro with storage cartographer:macro.custom_enchantments

execute if score $do_linger ca.status_var matches 1.. run scoreboard players set @s ca.linger_cdl 300

execute if score $quake_mob ca.ench_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/quake/vfx with storage cartographer:macro.custom_enchantments

execute if score $quake_mob ca.ench_var matches 1.. run function cartographer_custom_statuses:apply_effects/apply/create_aec