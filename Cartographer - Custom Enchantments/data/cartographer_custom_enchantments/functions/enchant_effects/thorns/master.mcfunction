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

scoreboard players operation $thorns ca.thorns = @s ca.thorns

scoreboard players operation $fire_aspect ca.weapon_var = @s ca.t_fire
scoreboard players operation $knockback ca.weapon_var = @s ca.t_knock

scoreboard players operation $executioner ca.weapon_var = @s ca.t_exec
scoreboard players operation $first_strike ca.weapon_var = @s ca.t_first
scoreboard players operation $hex_eater ca.weapon_var = @s ca.t_hex
scoreboard players operation $tempo_theft ca.weapon_var = @s ca.t_tempo
scoreboard players operation $cauterize ca.weapon_var = @s ca.t_cau

scoreboard players operation $duelist ca.weapon_var = @s ca.t_duelist
scoreboard players operation $hunter ca.weapon_var = @s ca.t_hunter
scoreboard players operation $smite ca.weapon_var = @s ca.t_smite

scoreboard players operation $aoe ca.thorns = @s ca.t_aoe


function #minecraft:cartographer/events/enchantments/passive/thorns

execute if entity @s[tag=ca.ae_main] if entity @s[tag=ca.ce_thorns_main] run tag @s add ca.check_ae_main
execute if entity @s[tag=ca.ae_offh] if entity @s[tag=ca.ce_thorns_offh] run tag @s add ca.check_ae_offh
execute if entity @s[tag=ca.ae_head] if entity @s[tag=ca.ce_thorns_head] run tag @s add ca.check_ae_head
execute if entity @s[tag=ca.ae_body] if entity @s[tag=ca.ce_thorns_body] run tag @s add ca.check_ae_body
execute if entity @s[tag=ca.ae_legs] if entity @s[tag=ca.ce_thorns_legs] run tag @s add ca.check_ae_legs
execute if entity @s[tag=ca.ae_feet] if entity @s[tag=ca.ce_thorns_feet] run tag @s add ca.check_ae_feet

execute if entity @s[tag=ca.si_main] if entity @s[tag=ca.ce_thorns_main] run tag @s add ca.check_si_main
execute if entity @s[tag=ca.si_offh] if entity @s[tag=ca.ce_thorns_offh] run tag @s add ca.check_si_offh
execute if entity @s[tag=ca.si_head] if entity @s[tag=ca.ce_thorns_head] run tag @s add ca.check_si_head
execute if entity @s[tag=ca.si_body] if entity @s[tag=ca.ce_thorns_body] run tag @s add ca.check_si_body
execute if entity @s[tag=ca.si_legs] if entity @s[tag=ca.ce_thorns_legs] run tag @s add ca.check_si_legs
execute if entity @s[tag=ca.si_feet] if entity @s[tag=ca.ce_thorns_feet] run tag @s add ca.check_si_feet

execute if entity @s[tag=ca.as_main] if entity @s[tag=ca.ce_thorns_main] run tag @s add ca.check_as_main
execute if entity @s[tag=ca.as_offh] if entity @s[tag=ca.ce_thorns_offh] run tag @s add ca.check_as_offh
execute if entity @s[tag=ca.as_head] if entity @s[tag=ca.ce_thorns_head] run tag @s add ca.check_as_head
execute if entity @s[tag=ca.as_body] if entity @s[tag=ca.ce_thorns_body] run tag @s add ca.check_as_body
execute if entity @s[tag=ca.as_legs] if entity @s[tag=ca.ce_thorns_legs] run tag @s add ca.check_as_legs
execute if entity @s[tag=ca.as_feet] if entity @s[tag=ca.ce_thorns_feet] run tag @s add ca.check_as_feet

#Do Damage next
scoreboard players operation $damage ca.thorns = $thorns ca.thorns
scoreboard players add $damage ca.thorns 2
scoreboard players operation $damage ca.thorns *= $10 ca.CONSTANT

scoreboard players set $success ca.attr_random_crit 0
execute if score @s ca.attr_random_crit matches 1.. run function cartographer_custom_enchantments:enchant_effects/thorns/random_crit_handler

function cartographer_custom_statuses:apply_effects/save/additive/do
function cartographer_custom_statuses:apply_self/save/additive/do
function cartographer_custom_statuses:apply_status/save/additive/do

execute unless score $aoe ca.thorns matches 1.. at @s as @e[type=#bb:hostile,tag=thorns_mark,distance=..30] at @s run function cartographer_custom_enchantments:enchant_effects/thorns/effects


execute if score $aoe ca.thorns matches 1.. run scoreboard players set $size ca.attr_aoe_size 40
execute if score $aoe ca.thorns matches 1.. run function cartographer_custom_enchantments:attribute_effects/aoe_size/adjust
execute if score $aoe ca.thorns matches 1.. run function cartographer_custom_enchantments:enchant_effects/thorns/macro with storage cartographer:macro.custom_enchantments

function cartographer_custom_statuses:apply_self/apply/create_aec

execute if score $do_linger ca.status_var matches 1.. run scoreboard players set @s ca.linger_cdl 300

playsound minecraft:enchant.thorns.hit ambient @a[distance=..8] ~ ~ ~ 1.5 1
playsound minecraft:entity.cat.hiss player @a[distance=..8] ~ ~ ~ 0.8 2

particle minecraft:crit ~ ~0.2 ~ 0.5 0.2 0.5 0.1 20 normal