data modify storage cartographer_custom_statuses:player_equip inv set value {}
data modify storage cartographer_custom_statuses:player_equip inv set from storage cartographer_core:player_inventory Inventory

data modify storage cartographer_custom_statuses:player_equip head set value {}
data modify storage cartographer_custom_statuses:player_equip body set value {}
data modify storage cartographer_custom_statuses:player_equip legs set value {}
data modify storage cartographer_custom_statuses:player_equip feet set value {}
data modify storage cartographer_custom_statuses:player_equip offh set value {}
data modify storage cartographer_custom_statuses:player_equip main set value {}

data modify storage cartographer_custom_statuses:player_equip head set from storage cartographer_custom_statuses:player_equip inv[{Slot:103b}]
data modify storage cartographer_custom_statuses:player_equip body set from storage cartographer_custom_statuses:player_equip inv[{Slot:102b}]
data modify storage cartographer_custom_statuses:player_equip legs set from storage cartographer_custom_statuses:player_equip inv[{Slot:101b}]
data modify storage cartographer_custom_statuses:player_equip feet set from storage cartographer_custom_statuses:player_equip inv[{Slot:100b}]
data modify storage cartographer_custom_statuses:player_equip offh set from storage cartographer_custom_statuses:player_equip inv[{Slot:-106b}]
data modify storage cartographer_custom_statuses:player_equip main set from storage cartographer_core:player_inventory SelectedItem

#Run extra checks added via tag hook here
#function #minecraft:inventory_calculate/extras

tag @s remove ca.override_melee
tag @s remove ca.override_ranged
tag @s remove ca.override_basic
tag @s remove ca.override_crit
tag @s remove ca.override_sprint
tag @s remove ca.override_sneak
tag @s remove ca.override_linger



tag @s remove ca.override_melee_h
tag @s remove ca.override_melee_b
tag @s remove ca.override_melee_l
tag @s remove ca.override_melee_f
tag @s remove ca.override_melee_m
tag @s remove ca.override_melee_o

tag @s remove ca.override_ranged_h
tag @s remove ca.override_ranged_b
tag @s remove ca.override_ranged_l
tag @s remove ca.override_ranged_f
tag @s remove ca.override_ranged_m
tag @s remove ca.override_ranged_o

tag @s remove ca.override_basic_h
tag @s remove ca.override_basic_b
tag @s remove ca.override_basic_l
tag @s remove ca.override_basic_f
tag @s remove ca.override_basic_m
tag @s remove ca.override_basic_o

tag @s remove ca.override_crit_h
tag @s remove ca.override_crit_b
tag @s remove ca.override_crit_l
tag @s remove ca.override_crit_f
tag @s remove ca.override_crit_m
tag @s remove ca.override_crit_o

tag @s remove ca.override_sprint_h
tag @s remove ca.override_sprint_b
tag @s remove ca.override_sprint_l
tag @s remove ca.override_sprint_f
tag @s remove ca.override_sprint_m
tag @s remove ca.override_sprint_o

tag @s remove ca.override_sneak_h
tag @s remove ca.override_sneak_b
tag @s remove ca.override_sneak_l
tag @s remove ca.override_sneak_f
tag @s remove ca.override_sneak_m
tag @s remove ca.override_sneak_o

tag @s remove ca.override_linger_h
tag @s remove ca.override_linger_b
tag @s remove ca.override_linger_l
tag @s remove ca.override_linger_f
tag @s remove ca.override_linger_m
tag @s remove ca.override_linger_o

tag @s remove ca.si_head
tag @s remove ca.si_body
tag @s remove ca.si_legs
tag @s remove ca.si_feet
tag @s remove ca.si_offh
tag @s remove ca.si_main

tag @s remove ca.ae_head
tag @s remove ca.ae_body
tag @s remove ca.ae_legs
tag @s remove ca.ae_feet
tag @s remove ca.ae_offh
tag @s remove ca.ae_main

tag @s remove ca.allow_melee_inflict
tag @s remove ca.allow_offhand_inflict

tag @s remove ca.no_status_melee

tag @s remove ca.si_potion


scoreboard players set $no_melee ca.status_var 0
scoreboard players set $no_offhand ca.status_var 0

scoreboard players set $do_ae ca.status_var 0
scoreboard players set $do_si ca.status_var 0
scoreboard players set $temp ca.status_var 0

scoreboard players set $do_effects ca.status_var 0


scoreboard players set $do_override_h ca.status_var 0
scoreboard players set $do_override_b ca.status_var 0
scoreboard players set $do_override_l ca.status_var 0
scoreboard players set $do_override_f ca.status_var 0
scoreboard players set $do_override_o ca.status_var 0
scoreboard players set $do_override_m ca.status_var 0


scoreboard players set $temp ca.status_var 0
execute store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip main.tag.custom_statuses run tag @s add ca.si_potion


scoreboard players set $temp ca.status_var 0
execute store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip head.tag.apply_status run tag @s add ca.si_head
scoreboard players operation $do_si ca.status_var += $temp ca.status_var

scoreboard players set $temp ca.status_var 0
execute store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip body.tag.apply_status run tag @s add ca.si_body
scoreboard players operation $do_si ca.status_var += $temp ca.status_var

scoreboard players set $temp ca.status_var 0
execute store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip legs.tag.apply_status run tag @s add ca.si_legs
scoreboard players operation $do_si ca.status_var += $temp ca.status_var

scoreboard players set $temp ca.status_var 0
execute store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip feet.tag.apply_status run tag @s add ca.si_feet
scoreboard players operation $do_si ca.status_var += $temp ca.status_var

scoreboard players set $temp ca.status_var 0
execute store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip offh.tag.apply_status run tag @s add ca.si_offh
scoreboard players operation $do_si ca.status_var += $temp ca.status_var

scoreboard players set $temp ca.status_var 0
execute store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip main.tag.apply_status run tag @s add ca.si_main
scoreboard players operation $do_si ca.status_var += $temp ca.status_var



scoreboard players set $temp ca.status_var 0
execute store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip head.tag.apply_effects run tag @s add ca.ae_head
scoreboard players operation $do_ae ca.status_var += $temp ca.status_var

scoreboard players set $temp ca.status_var 0
execute store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip body.tag.apply_effects run tag @s add ca.ae_body
scoreboard players operation $do_ae ca.status_var += $temp ca.status_var

scoreboard players set $temp ca.status_var 0
execute store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip legs.tag.apply_effects run tag @s add ca.ae_legs
scoreboard players operation $do_ae ca.status_var += $temp ca.status_var

scoreboard players set $temp ca.status_var 0
execute store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip feet.tag.apply_effects run tag @s add ca.ae_feet
scoreboard players operation $do_ae ca.status_var += $temp ca.status_var

scoreboard players set $temp ca.status_var 0
execute store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip offh.tag.apply_effects run tag @s add ca.ae_offh
scoreboard players operation $do_ae ca.status_var += $temp ca.status_var

scoreboard players set $temp ca.status_var 0
execute store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip main.tag.apply_effects run tag @s add ca.ae_main
scoreboard players operation $do_ae ca.status_var += $temp ca.status_var


scoreboard players set $temp ca.status_var 0
execute store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip head.tag.apply_self run tag @s add ca.as_head
scoreboard players operation $do_ae ca.status_var += $temp ca.status_var

scoreboard players set $temp ca.status_var 0
execute store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip body.tag.apply_self run tag @s add ca.as_body
scoreboard players operation $do_ae ca.status_var += $temp ca.status_var

scoreboard players set $temp ca.status_var 0
execute store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip legs.tag.apply_self run tag @s add ca.as_legs
scoreboard players operation $do_ae ca.status_var += $temp ca.status_var

scoreboard players set $temp ca.status_var 0
execute store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip feet.tag.apply_self run tag @s add ca.as_feet
scoreboard players operation $do_ae ca.status_var += $temp ca.status_var

scoreboard players set $temp ca.status_var 0
execute store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip offh.tag.apply_self run tag @s add ca.as_offh
scoreboard players operation $do_ae ca.status_var += $temp ca.status_var

scoreboard players set $temp ca.status_var 0
execute store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip main.tag.apply_self run tag @s add ca.as_main
scoreboard players operation $do_ae ca.status_var += $temp ca.status_var

scoreboard players operation $do_effects ca.status_var += $do_ae ca.status_var
scoreboard players operation $do_effects ca.status_var += $do_as ca.status_var
scoreboard players operation $do_effects ca.status_var += $do_si ca.status_var

execute store result score $do_override_h ca.status_var run data get storage cartographer_custom_statuses:player_equip head.tag.HasOverride
execute store result score $do_override_b ca.status_var run data get storage cartographer_custom_statuses:player_equip body.tag.HasOverride
execute store result score $do_override_l ca.status_var run data get storage cartographer_custom_statuses:player_equip legs.tag.HasOverride
execute store result score $do_override_f ca.status_var run data get storage cartographer_custom_statuses:player_equip feet.tag.HasOverride
execute store result score $do_override_o ca.status_var run data get storage cartographer_custom_statuses:player_equip offh.tag.HasOverride
execute store result score $do_override_m ca.status_var run data get storage cartographer_custom_statuses:player_equip main.tag.HasOverride


execute if data storage cartographer_custom_statuses:player_equip main.tag.AllowMeleeInflict run tag @s add ca.allow_melee_inflict
execute if data storage cartographer_custom_statuses:player_equip main.tag.AllowOffhandInflict run tag @s add ca.allow_offhand_inflict


execute if score $do_override_h ca.status_var matches 1.. run function cartographer_custom_statuses:calculate/overrides/head
execute if score $do_override_b ca.status_var matches 1.. run function cartographer_custom_statuses:calculate/overrides/body
execute if score $do_override_l ca.status_var matches 1.. run function cartographer_custom_statuses:calculate/overrides/legs
execute if score $do_override_f ca.status_var matches 1.. run function cartographer_custom_statuses:calculate/overrides/feet
execute if score $do_override_o ca.status_var matches 1.. run function cartographer_custom_statuses:calculate/overrides/offhand
execute if score $do_override_m ca.status_var matches 1.. run function cartographer_custom_statuses:calculate/overrides/mainhand


execute if predicate cartographer_core:inventory/hold_armor_mainhand unless entity @s[tag=ca.allow_melee_inflict] run tag @s add ca.no_status_melee
execute if predicate cartographer_core:inventory/hold_ranged_weapon_no_trident unless entity @s[tag=ca.allow_melee_inflict] run tag @s add ca.no_status_melee

execute if predicate cartographer_core:inventory/hold_armor_offhand unless entity @s[tag=ca.allow_offhand_inflict] run scoreboard players set $no_offhand ca.status_var 1

execute if score $no_offhand ca.status_var matches 1.. run tag @s remove ca.si_offh
execute if score $no_offhand ca.status_var matches 1.. run tag @s remove ca.ae_offh

execute if score $gl_enc_wr ca.gamerule matches 1.. if score $hold_armor_m ca.ench_var matches 1.. run function cartographer_custom_enchantments:descriptions/write/main

execute if score $gl_enc_wr ca.gamerule matches 1.. if entity @s[tag=ca.si_main] run function cartographer_custom_statuses:descriptions/write/main
execute if score $gl_enc_wr ca.gamerule matches 1.. if entity @s[tag=ca.ae_main] run function cartographer_custom_statuses:descriptions/write/main
execute if score $gl_enc_wr ca.gamerule matches 1.. if entity @s[tag=ca.si_potion] run function cartographer_custom_statuses:descriptions/write/main
