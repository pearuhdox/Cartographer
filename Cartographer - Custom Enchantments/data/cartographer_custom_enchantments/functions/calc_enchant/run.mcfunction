#Run Reset First
function cartographer_custom_enchantments:calc_enchant/reset

scoreboard players set $hold_bow ca.ench_var 0
scoreboard players set $hold_crossbow ca.ench_var 0
scoreboard players set $hold_snowball ca.ench_var 0
scoreboard players set $hold_potion ca.ench_var 0
scoreboard players set $hold_ranged ca.ench_var 0
scoreboard players set $hold_ranged_t ca.ench_var 0
scoreboard players set $hold_trident ca.ench_var 0
scoreboard players set $hold_armor_o ca.ench_var 0
scoreboard players set $hold_armor_m ca.ench_var 0

scoreboard players set $hold_ranged_m ca.ench_var 0

scoreboard players set $hold_ranged_o ca.ench_var 0


scoreboard players set $hold_recoil ca.ench_var 0

execute if predicate cartographer_core:has_bow run scoreboard players set $hold_bow ca.ench_var 1
execute if predicate cartographer_core:has_crossbow run scoreboard players set $hold_crossbow ca.ench_var 1
execute if predicate cartographer_core:has_trident run scoreboard players set $hold_trident ca.ench_var 1
execute if predicate cartographer_core:has_snowball run scoreboard players set $hold_snowball ca.ench_var 1
execute if predicate cartographer_core:has_potion run scoreboard players set $hold_potion ca.ench_var 1
execute if predicate cartographer_core:has_lingering_potion run scoreboard players set $hold_potion ca.ench_var 1
execute if predicate cartographer_custom_enchantments:hold_armor_offhand run scoreboard players set $hold_armor_o ca.ench_var 1
execute if predicate cartographer_custom_enchantments:hold_armor_mainhand run scoreboard players set $hold_armor_m ca.ench_var 1

execute if predicate cartographer_custom_enchantments:hold_ranged_weapon run scoreboard players set $hold_ranged_m ca.ench_var 1
execute if predicate cartographer_custom_enchantments:hold_ranged_weapon_offhand run scoreboard players set $hold_ranged_o ca.ench_var 1

execute if score $hold_bow ca.ench_var matches 1.. run scoreboard players set $hold_ranged ca.ench_var 1
execute if score $hold_crossbow ca.ench_var matches 1.. run scoreboard players set $hold_ranged ca.ench_var 1
execute if score $hold_snowball ca.ench_var matches 1.. run scoreboard players set $hold_ranged ca.ench_var 1
execute if score $hold_potion ca.ench_var matches 1.. run scoreboard players set $hold_ranged ca.ench_var 1

execute if score $hold_snowball ca.ench_var matches 1.. run scoreboard players set $hold_recoil ca.ench_var 1
execute if score $hold_crossbow ca.ench_var matches 1.. run scoreboard players set $hold_recoil ca.ench_var 1


execute if score $hold_bow ca.ench_var matches 1.. run scoreboard players set $hold_ranged_t ca.ench_var 1
execute if score $hold_crossbow ca.ench_var matches 1.. run scoreboard players set $hold_ranged_t ca.ench_var 1
execute if score $hold_trident ca.ench_var matches 1.. run scoreboard players set $hold_ranged_t ca.ench_var 1
execute if score $hold_snowball ca.ench_var matches 1.. run scoreboard players set $hold_ranged_t ca.ench_var 1
execute if score $hold_potion ca.ench_var matches 1.. run scoreboard players set $hold_ranged_t ca.ench_var 1


#Intercept the Calculate Enchant Call (Third Party Interaction)
function #minecraft:cartographer/events/calc_enchant_intercept

#Find Custom Items on the Equipped Slots
function cartographer_custom_enchantments:calc_enchant/find_custom


#For each custom item found, run the proper calculation function.
execute if entity @s[tag=ca.check_head] run function cartographer_custom_enchantments:calc_enchant/slot_calc/head
execute if entity @s[tag=ca.check_body] run function cartographer_custom_enchantments:calc_enchant/slot_calc/chest
execute if entity @s[tag=ca.check_legs] run function cartographer_custom_enchantments:calc_enchant/slot_calc/legs
execute if entity @s[tag=ca.check_feet] run function cartographer_custom_enchantments:calc_enchant/slot_calc/feet
execute unless score $hold_armor_m ca.ench_var matches 1.. run function cartographer_custom_enchantments:calc_enchant/slot_calc/mainhand
execute unless score $hold_armor_o ca.ench_var matches 1.. run function cartographer_custom_enchantments:calc_enchant/slot_calc/offhand

execute if score $gl_enc_wr ca.gamerule matches 1.. if score $hold_armor_m ca.ench_var matches 1.. run function cartographer_custom_enchantments:descriptions/write/main

execute if score @s ca.thorns matches 1.. run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/thorns/master
execute if score @s ca.gravity matches 1.. run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/gravity/master
execute if score @s ca.starfall matches 1.. run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/starfall/master
execute if score @s ca.quake matches 1.. run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/quake/master
execute if score @s ca.momentum matches 1.. run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/momentum/master
execute if score @s ca.repulsion matches 1.. run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/repulsion/master
execute if score @s ca.deadeye matches 1.. run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/deadeye/master

execute if score @s ca.hydraulic matches 1.. run function cartographer_custom_enchantments:calc_enchant/hydraulic

function cartographer_custom_enchantments:calc_enchant/sapper

function cartographer_custom_enchantments:calc_enchant/set_max

execute if entity @s[tag=!doing_auto_charge] run function cartographer_custom_enchantments:calc_enchant/auto_charge
function cartographer_custom_enchantments:calc_enchant/combat_resetters

function cartographer_custom_enchantments:calc_enchant/curse_malevolence/start

function cartographer_custom_enchantments:calc_enchant/curse_rusting/start

function cartographer_custom_enchantments:calc_enchant/reconstruction/start

function cartographer_custom_enchantments:calc_enchant/has_passive

#Uncompress Items taken out of the offhand and put in the normal inventory
function cartographer_custom_enchantments:enchant_effects/curse_two_handed/inv_fix

#Reset any infinity cooldowns if the items move
function cartographer_custom_enchantments:calc_enchant/infinity_cdl
function cartographer_custom_enchantments:calc_enchant/infinity_kc
function cartographer_custom_enchantments:calc_enchant/infinity_ch

scoreboard players set $cu_en_ranged ca.enabler 1
scoreboard players set $cu_en_kill ca.enabler 1
scoreboard players set $cu_en_melee ca.enabler 1
scoreboard players set $cu_en_passive ca.enabler 1
scoreboard players set $cu_en_player_death ca.enabler 1
scoreboard players set $cu_en_spawner ca.enabler 1

#Remove the ca.repeating and ca.echo tags so it shows an updated ammo count.
tag @s remove showing_repeating
tag @s remove showing_echo
tag @s remove showing_evocation
tag @s remove showing_sweeping
tag @s remove showing_thrusting
tag @s remove showing_slamming