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

scoreboard players operation $quake_lvl ca.quake = $quake ca.var

scoreboard players operation $fire_aspect ca.weapon_var = $flame ca.var
scoreboard players operation $knockback ca.weapon_var = $punch ca.var

scoreboard players operation $executioner ca.weapon_var = $executioner ca.var
scoreboard players operation $first_strike ca.weapon_var = $first_strike ca.var
scoreboard players operation $hex_eater ca.weapon_var = $hex_eater ca.var
scoreboard players operation $tempo_theft ca.weapon_var = $tempo_theft ca.var
scoreboard players operation $cauterize ca.weapon_var = $cauterize ca.var

scoreboard players operation $duelist ca.weapon_var = $duelist ca.var
scoreboard players operation $hunter ca.weapon_var = $hunter ca.var
scoreboard players operation $smite ca.weapon_var = $smite ca.var

scoreboard players operation $cauterize ca.quake = @s ca.cauterize

#execute if entity @s[tag=ca.ae_main] if entity @s[tag=ca.ce_quake_main] run tag @s add ca.check_ae_main
#execute if entity @s[tag=ca.ae_offh] if entity @s[tag=ca.ce_quake_offh] run tag @s add ca.check_ae_offh
#execute if entity @s[tag=ca.ae_head] if entity @s[tag=ca.ce_quake_head] run tag @s add ca.check_ae_head
#execute if entity @s[tag=ca.ae_body] if entity @s[tag=ca.ce_quake_body] run tag @s add ca.check_ae_body
#execute if entity @s[tag=ca.ae_legs] if entity @s[tag=ca.ce_quake_legs] run tag @s add ca.check_ae_legs
#execute if entity @s[tag=ca.ae_feet] if entity @s[tag=ca.ce_quake_feet] run tag @s add ca.check_ae_feet

#execute if entity @s[tag=ca.si_main] if entity @s[tag=ca.ce_quake_main] run tag @s add ca.check_si_main
#execute if entity @s[tag=ca.si_offh] if entity @s[tag=ca.ce_quake_offh] run tag @s add ca.check_si_offh
#execute if entity @s[tag=ca.si_head] if entity @s[tag=ca.ce_quake_head] run tag @s add ca.check_si_head
#execute if entity @s[tag=ca.si_body] if entity @s[tag=ca.ce_quake_body] run tag @s add ca.check_si_body
#execute if entity @s[tag=ca.si_legs] if entity @s[tag=ca.ce_quake_legs] run tag @s add ca.check_si_legs
#execute if entity @s[tag=ca.si_feet] if entity @s[tag=ca.ce_quake_feet] run tag @s add ca.check_si_feet

#execute if entity @s[tag=ca.as_main] if entity @s[tag=ca.ce_quake_main] run tag @s add ca.check_as_main
#execute if entity @s[tag=ca.as_offh] if entity @s[tag=ca.ce_quake_offh] run tag @s add ca.check_as_offh
#execute if entity @s[tag=ca.as_head] if entity @s[tag=ca.ce_quake_head] run tag @s add ca.check_as_head
#execute if entity @s[tag=ca.as_body] if entity @s[tag=ca.ce_quake_body] run tag @s add ca.check_as_body
#execute if entity @s[tag=ca.as_legs] if entity @s[tag=ca.ce_quake_legs] run tag @s add ca.check_as_legs
#execute if entity @s[tag=ca.as_feet] if entity @s[tag=ca.ce_quake_feet] run tag @s add ca.check_as_feet

#function cartographer_custom_statuses:apply_effects/save/additive/do
#function cartographer_custom_statuses:apply_self/save/additive/do
#function cartographer_custom_statuses:apply_status/save/additive/do

scoreboard players operation $damage ca.quake = $quake ca.var
scoreboard players add $damage ca.quake 2
scoreboard players operation $damage ca.quake *= $10 ca.CONSTANT

scoreboard players operation @s ca.attr_random_crit = $attr_random_crit ca.var
scoreboard players operation @s ca.attr_aoe_size = $attr_aoe_size ca.var

scoreboard players set $success ca.attr_random_crit 0
execute if score @s ca.attr_random_crit matches 1.. run function cartographer_custom_enchantments:enchant_effects/quake/random_crit_handler


scoreboard players set $size ca.attr_aoe_size 40
function cartographer_custom_enchantments:attribute_effects/aoe_size/adjust

scoreboard players set @a[tag=ca.pot_attacker] ca.quake_use_check 3