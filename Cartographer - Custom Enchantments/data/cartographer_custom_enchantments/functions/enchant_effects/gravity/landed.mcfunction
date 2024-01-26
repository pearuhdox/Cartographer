scoreboard players set $gravity_mob ca.ench_var 0

scoreboard players operation $gravity_lvl ca.gravity = @s ca.gravity

scoreboard players operation $gravity_dmg ca.gravity_fall = @s ca.gravity_fall
scoreboard players operation $gravity_dmg ca.gravity_fall /= $10 ca.CONSTANT

execute if score $gravity_dmg ca.gravity_fall matches ..-1 run scoreboard players set $gravity_dmg ca.gravity_fall 0

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

scoreboard players operation $fire_aspect ca.weapon_var = @s ca.g_fire
scoreboard players operation $knockback ca.weapon_var = @s ca.g_knock

scoreboard players operation $executioner ca.weapon_var = @s ca.g_exec
scoreboard players operation $first_strike ca.weapon_var = @s ca.g_first
scoreboard players operation $hex_eater ca.weapon_var = @s ca.g_hex
scoreboard players operation $tempo_theft ca.weapon_var = @s ca.g_tempo
scoreboard players operation $cauterize ca.weapon_var = @s ca.g_cau

scoreboard players operation $duelist ca.weapon_var = @s ca.g_duelist
scoreboard players operation $hunter ca.weapon_var = @s ca.g_hunter
scoreboard players operation $smite ca.weapon_var = @s ca.g_smite


data modify storage cartographer_custom_enchantments:gravity data.effect set value {}
data modify storage cartographer_custom_enchantments:gravity data.effect set from entity @s active_effects[{id:"minecraft:jump_boost"}].hidden_effect

execute store result score $jb ca.gravity_fall run data get storage cartographer_custom_enchantments:gravity data.effect.amplifier

execute if entity @s[tag=ca.ae_main] if entity @s[tag=ca.ce_gravity_main] run tag @s add ca.check_ae_main
execute if entity @s[tag=ca.ae_offh] if entity @s[tag=ca.ce_gravity_offh] run tag @s add ca.check_ae_offh
execute if entity @s[tag=ca.ae_head] if entity @s[tag=ca.ce_gravity_head] run tag @s add ca.check_ae_head
execute if entity @s[tag=ca.ae_body] if entity @s[tag=ca.ce_gravity_body] run tag @s add ca.check_ae_body
execute if entity @s[tag=ca.ae_legs] if entity @s[tag=ca.ce_gravity_legs] run tag @s add ca.check_ae_legs
execute if entity @s[tag=ca.ae_feet] if entity @s[tag=ca.ce_gravity_feet] run tag @s add ca.check_ae_feet

execute if entity @s[tag=ca.si_main] if entity @s[tag=ca.ce_gravity_main] run tag @s add ca.check_si_main
execute if entity @s[tag=ca.si_offh] if entity @s[tag=ca.ce_gravity_offh] run tag @s add ca.check_si_offh
execute if entity @s[tag=ca.si_head] if entity @s[tag=ca.ce_gravity_head] run tag @s add ca.check_si_head
execute if entity @s[tag=ca.si_body] if entity @s[tag=ca.ce_gravity_body] run tag @s add ca.check_si_body
execute if entity @s[tag=ca.si_legs] if entity @s[tag=ca.ce_gravity_legs] run tag @s add ca.check_si_legs
execute if entity @s[tag=ca.si_feet] if entity @s[tag=ca.ce_gravity_feet] run tag @s add ca.check_si_feet

execute if entity @s[tag=ca.as_main] if entity @s[tag=ca.ce_gravity_main] run tag @s add ca.check_as_main
execute if entity @s[tag=ca.as_offh] if entity @s[tag=ca.ce_gravity_offh] run tag @s add ca.check_as_offh
execute if entity @s[tag=ca.as_head] if entity @s[tag=ca.ce_gravity_head] run tag @s add ca.check_as_head
execute if entity @s[tag=ca.as_body] if entity @s[tag=ca.ce_gravity_body] run tag @s add ca.check_as_body
execute if entity @s[tag=ca.as_legs] if entity @s[tag=ca.ce_gravity_legs] run tag @s add ca.check_as_legs
execute if entity @s[tag=ca.as_feet] if entity @s[tag=ca.ce_gravity_feet] run tag @s add ca.check_as_feet

function cartographer_custom_statuses:apply_effects/save/additive/do
function cartographer_custom_statuses:apply_self/save/additive/do
function cartographer_custom_statuses:apply_status/save/additive/do



#Gravity damage is (Fall Height / 2) + 20% Attack Dmg Stat per level of Gravity

#Fall Height / 2
scoreboard players operation $mob_dmg ca.gravity_fall = $gravity_dmg ca.gravity_fall
scoreboard players operation $mob_dmg ca.gravity_fall /= $2 ca.CONSTANT

#Attack Damage Scalar
execute store result score $player_add ca.gravity_fall run attribute @s minecraft:generic.attack_damage get 10
scoreboard players operation $player_add ca.gravity_fall *= $gravity_lvl ca.gravity
scoreboard players operation $player_add ca.gravity_fall *= $20 ca.CONSTANT
scoreboard players operation $player_add ca.gravity_fall /= $100 ca.CONSTANT

scoreboard players operation $mob_dmg ca.gravity_fall += $player_add ca.gravity_fall

scoreboard players set $success ca.attr_random_crit 0
execute if score @s ca.attr_random_crit matches 1.. run function cartographer_custom_enchantments:enchant_effects/gravity/random_crit_handler

scoreboard players set $size ca.attr_aoe_size 35
function cartographer_custom_enchantments:attribute_effects/aoe_size/adjust

function cartographer_custom_enchantments:enchant_effects/gravity/macro with storage cartographer:macro.custom_enchantments


execute if score $do_linger ca.status_var matches 1.. run scoreboard players set @s ca.linger_cdl 300

execute if score $gravity_mob ca.ench_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/gravity/vfx with storage cartographer:macro.custom_enchantments

execute if score $gravity_mob ca.ench_var matches 1.. run function cartographer_custom_statuses:apply_effects/apply/create_aec

execute if score $gravity_mob ca.ench_var matches 1.. run scoreboard players set $block ca.fall_damage 1

scoreboard players set @s ca.gravity_cd 8