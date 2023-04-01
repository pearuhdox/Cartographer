########################################
# File: Cartographer Core - Load / Reload Panel
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: Reruns the reload panel chat popup.
########################################

scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false

scoreboard players enable @a ca.options_trig 

execute as @a at @s run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.75

function cartographer_charon:load/load_check
function cartographer_custom_durability:load/load_check
function cartographer_custom_enchantments:load/load_check
function cartographer_custom_statuses:load/load_check
function cartographer_loot_additions:load/load_check
function cartographer_loot_table_tweaks:load/load_check
function cartographer_mimics:load/load_check
function cartographer_mob_abilities:load/load_check
function cartographer_repair_stations:load/load_check

function bb:load_check
function cd:load_check
function delta:load_check
function entityid:load_check
function suso.player_data:load_check
function inv:load_check
function motion:load_check
function dies:load_check

scoreboard players set $z_detect_packs ca.installed 0

scoreboard players operation $z_detect_packs ca.installed += $charon ca.installed
scoreboard players operation $z_detect_packs ca.installed += $custom_durability ca.installed
scoreboard players operation $z_detect_packs ca.installed += $custom_enchantments ca.installed
scoreboard players operation $z_detect_packs ca.installed += $custom_statuses ca.installed
scoreboard players operation $z_detect_packs ca.installed += $loot_additions ca.installed
scoreboard players operation $z_detect_packs ca.installed += $mimics ca.installed
scoreboard players operation $z_detect_packs ca.installed += $mob_abilities ca.installed
scoreboard players operation $z_detect_packs ca.installed += $repair_stations ca.installed

scoreboard players set $#lib_all_found ca.installed 0
execute if score $#lib_dies ca.installed matches 1 if score $#lib_del ca.installed matches 1 if score $#lib_bbl ca.installed matches 1 if score $#lib_ehid ca.installed matches 1 if score $#lib_inv ca.installed matches 1 if score $#lib_pds ca.installed matches 1 if score $#lib_mot ca.installed matches 1 run scoreboard players set $#lib_all_found ca.installed 1


execute if score $gl_reload_msg ca.gamerule matches 0 as @a[scores={ca.reload_type=0}] at @s run function cartographer_core:load/reload/full
execute if score $gl_reload_msg ca.gamerule matches 1 as @a[scores={ca.reload_type=0}] at @s run function cartographer_core:load/reload/minimal

execute as @a[scores={ca.reload_type=1}] at @s run function cartographer_core:load/reload/full
execute as @a[scores={ca.reload_type=2}] at @s run function cartographer_core:load/reload/minimal