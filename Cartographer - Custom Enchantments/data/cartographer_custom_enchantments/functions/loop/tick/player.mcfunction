#Run queues of enchant calculator
execute if entity @s[tag=ca.queue_ench_check,tag=!ca.ench_do_not_check] run function cartographer_custom_enchantments:calc_enchant/run
tag @s remove ca.queue_ench_check

#Reset attack speed and kbr on Echo users
execute if score @s ca.echo matches 1.. if score @s ca.echo_charges matches 0.. run attribute @s minecraft:generic.attack_speed modifier add 5-3-8-15-180504192124 "echo_effect_spd" 1024 add
execute if score @s ca.echo matches 1.. if score @s ca.echo_charges matches -1 run attribute @s minecraft:generic.attack_speed modifier remove 5-3-8-15-180504192124
execute if score @s ca.echo matches 0 run attribute @s minecraft:generic.attack_speed modifier remove 5-3-8-15-180504192124

execute if score @s ca.echo matches 1.. if score @s ca.echo_charges matches 0.. run attribute @s minecraft:generic.knockback_resistance modifier add 5-3-8-15-180504192124 "echo_effect_kbr" 0.15 add
execute if score @s ca.echo matches 1.. if score @s ca.echo_charges matches -1 run attribute @s minecraft:generic.knockback_resistance modifier remove 5-3-8-15-180504192124
execute if score @s ca.echo matches 0 run attribute @s minecraft:generic.knockback_resistance modifier remove 5-3-8-15-180504192124

scoreboard players operation $temp ca.fleetfoot = @s ca.is_load_cro
scoreboard players operation $temp ca.fleetfoot += @s ca.is_draw_bow
scoreboard players operation $temp ca.fleetfoot += @s ca.is_hold_tri
execute if score @s ca.fleetfoot matches 1.. if score $temp ca.fleetfoot matches 1.. run attribute @s minecraft:generic.movement_speed modifier add 31-321-514-000-6151520 "fleetfoot_effect_spd" 0.4 add

execute if score @s ca.fleetfoot matches 0 run attribute @s minecraft:generic.movement_speed modifier remove 31-321-514-000-6151520
execute if score @s ca.fleetfoot matches 1.. if score @s ca.is_load_cro matches 0 unless score @s ca.is_draw_bow matches 1.. unless score @s ca.is_hold_tri matches 1.. run attribute @s minecraft:generic.movement_speed modifier remove 31-321-514-000-6151520

#Current recharge attack meter
execute if score @s ca.ce.cur_spd matches 2.. run attribute @s minecraft:generic.attack_speed modifier add 31-321-1818-514-20 "current_effect_spd" 1024 add
execute if score @s ca.ce.cur_spd matches 1 run attribute @s minecraft:generic.attack_speed modifier remove 31-321-1818-514-20
execute if score @s ca.ce.cur_spd matches 1.. run scoreboard players remove @s ca.ce.cur_spd 1

#Apply the attack speed debuff for Evocation.
execute if score @s ca.evo_burn matches 2..20 run attribute @s minecraft:generic.attack_speed modifier add 31-522-15-3120-91514 "evo_effect_spd" -0.3 multiply
execute if score @s ca.evo_burn matches 22..40 run attribute @s minecraft:generic.attack_speed modifier add 31-522-15-3120-91514 "evo_effect_spd" -0.5 multiply
execute if score @s ca.evo_burn matches 42..60 run attribute @s minecraft:generic.attack_speed modifier add 31-522-15-3120-91514 "evo_effect_spd" -0.7 multiply

execute if score @s ca.evo_burn matches 1 run attribute @s minecraft:generic.attack_speed modifier remove 31-522-15-3120-91514
execute if score @s ca.evo_burn matches 21 run attribute @s minecraft:generic.attack_speed modifier remove 31-522-15-3120-91514
execute if score @s ca.evo_burn matches 41 run attribute @s minecraft:generic.attack_speed modifier remove 31-522-15-3120-91514

execute if score @s ca.evo_burn matches 1 run scoreboard players remove @s ca.evo_burn 1
execute if score @s ca.evo_burn matches 20 run scoreboard players set @s ca.evo_burn 0
execute if score @s ca.evo_burn matches 40 run scoreboard players set @s ca.evo_burn 0

#Run an inventory calc the tick after using Auto Charge
execute if entity @s[tag=auto_charge_inv_fix] run function cartographer_custom_enchantments:inventory_changed
tag @s remove auto_charge_inv_fix

#Remove Evading tag if no evasion
execute unless score @s ca.evasion matches 1.. run tag @s remove evading

#Passive Trigger (if score $cu_en_passive ca.enabler matches 1.. )
execute if entity @s[tag=has_passive_ench] run function cartographer_custom_enchantments:enchant_calls/passively

#Kill trigger (if score $cu_en_kill ca.enabler matches 1.. )
execute if score @s ca.kill_entity matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_killing_mob

#Make ranged attack triggers.
execute if score @s ca.fire_bow matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_ranged_attack_made
execute if score $cu_en_ranged ca.enabler matches 1.. if score @s ca.fire_cbow matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_ranged_attack_made
execute if score $cu_en_ranged ca.enabler matches 1.. if score @s ca.throw_trident matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_ranged_attack_made_trident

#Break Spawner Trigger (if score $cu_en_spawner ca.enabler matches 1.. )
execute if score @s ca.mine_spawner matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_break_spawner

#Player Death Trigger
execute if score @s ca.death_time matches 0 run function cartographer_custom_enchantments:enchant_calls/when_player_dies

#Player Respawn Trigger
execute if score @s ca.death_time matches 2..20 run function cartographer_custom_enchantments:enchant_calls/when_player_respawns

#Tempo Theft Effect - Players
execute if score @s ca.temp_warp matches 1.. run function cartographer_custom_enchantments:enchant_effects/tempo_theft/effect_player

#Flash Crossbows
execute if score @s ca.flash matches 1.. if score @s ca.load_cro_time matches 1.. if predicate cartographer_custom_enchantments:hold_crossbow run function cartographer_custom_enchantments:enchant_effects/flash/crossbow_load

#Infinity 3.0
function cartographer_custom_enchantments:enchant_effects/infinity/player

#Splintering
execute if score @s ca.splintering matches 1.. run function cartographer_custom_enchantments:enchant_effects/splintering

#Charge Overcharge
execute if score @s ca.overcharge matches 1.. if score @s ca.draw_bow_time matches 1.. run function cartographer_custom_enchantments:enchant_effects/overcharge/tier

#Reset Overcharge Tier
execute unless score @s ca.overcharge matches 1.. run scoreboard players set @s ca.ov_tier 0

#Rally Timer
execute if score @s ca.ral_time matches 1.. run function cartographer_custom_enchantments:enchant_effects/rally/timer

#Remove Two Handed Processed Tag - Fix Inventory Two Handed Bundled Items
execute if predicate cartographer_custom_enchantments:curse_two_handed/empty_offhand run scoreboard players set @s ca.two_hand_del 0
execute if score @s ca.two_hand_del matches 1 run function cartographer_custom_enchantments:enchant_effects/curse_two_handed/return_offhand

tag @s remove processed_two_handed
execute if score @s ca.two_hand_del matches 1.. run scoreboard players remove @s ca.two_hand_del 1

#Remove Auto Charge Processed Tag: Rescan inventory
execute if entity @s[tag=doing_auto_charge] run tag @s add auto_charge_inv_fix
tag @s remove doing_auto_charge

#Timers for Adrenaline/Frenzy/Energetic Buffs
execute if entity @s[tag=!kill_buff_checked] run function cartographer_custom_enchantments:loop/tick/branch/kill_buff_check
tag @s remove kill_buff_checked

#Check if a player has a Loyalty Placeholder
function cartographer_custom_enchantments:enchant_effects/loyalty/player_track

#Reset Function for scores
function cartographer_custom_enchantments:loop/tick/reset

#Remove Tag that checks if player already lost an Echo charge.
tag @s remove ca.echo_charge_taken

#Action bar indicators for Repeating, Echo, and Second Wind
execute if score @s ca.ui_loc matches 0 if score $gl_ui_loc ca.gamerule matches 0 run function cartographer_custom_enchantments:helper/indicators/action_bar
execute if score @s ca.ui_loc matches 0 if score $gl_ui_loc ca.gamerule matches 1 run function cartographer_custom_enchantments:helper/indicators/subtitle

execute if score @s ca.ui_loc matches 1 run function cartographer_custom_enchantments:helper/indicators/action_bar
execute if score @s ca.ui_loc matches 2 run function cartographer_custom_enchantments:helper/indicators/subtitle

execute if score @s ca.repeating matches 0 run tag @s remove showing_repeating
execute if score @s ca.echo matches 0 run tag @s remove showing_echo

#Just in case
function cartographer_custom_enchantments:calc_enchant/slot_change