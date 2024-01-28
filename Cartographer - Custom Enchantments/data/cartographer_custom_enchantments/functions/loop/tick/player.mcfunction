#Place The Trident Hit Checker Above Enchant Calculator to solve loyalty check bug
execute if score $cu_en_ranged ca.enabler matches 1.. if score @s ca.throw_trident matches 1.. unless score @s ca.deal_mel_dmg matches 1.. unless score @s ca.deal_mel_dmg2 matches 1.. unless score @s ca.deal_mel_dmg3 matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_ranged_attack_made_trident

#Simulate Fall Damage
execute if score @s ca.fall_damage matches 1.. run function cartographer_custom_enchantments:enchant_calls/player_fell
scoreboard players set @s ca.fall_damage 0

#Run the Heal Queue system on players
execute if score @s ca.sapper_banking matches 1.. run function cartographer_custom_enchantments:enchant_effects/sapper/heal_time
execute if score @s ca.lifesteal_banking matches 1.. run function cartographer_custom_enchantments:enchant_effects/lifesteal/heal_time
execute if score @s ca.rally_banking matches 1.. run function cartographer_custom_enchantments:enchant_effects/rally/heal_time

execute if score @s ca.rally_cooldown matches 1.. run scoreboard players remove @s ca.rally_cooldown 1

function cartographer_custom_enchantments:helper/healing_bank/check_healing


#Identify if Slot was Changed
function cartographer_custom_enchantments:calc_enchant/slot_change

#Run queues of enchant calculator
execute unless score @s ca.core_delay_check matches 1.. if entity @s[tag=ca.core_check_inv] run function cartographer_custom_enchantments:calc_enchant/run

#Reset attack speed and kbr on Echo users
execute if score @s ca.echo matches 1.. if score @s ca.echo_charges matches 0.. run attribute @s minecraft:generic.attack_speed modifier add 5-3-8-15-180504192124 "echo_effect_spd" 1024 add
execute if score @s ca.echo matches 1.. if score @s ca.echo_charges matches -1 run attribute @s minecraft:generic.attack_speed modifier remove 5-3-8-15-180504192124
execute if score @s ca.echo matches 0 run attribute @s minecraft:generic.attack_speed modifier remove 5-3-8-15-180504192124

execute if score @s ca.echo matches 1.. if score @s ca.echo_charges matches 0.. run attribute @s minecraft:generic.knockback_resistance modifier add 5-3-8-15-180504192124 "echo_effect_kbr" 0.15 add
execute if score @s ca.echo matches 1.. if score @s ca.echo_charges matches -1 run attribute @s minecraft:generic.knockback_resistance modifier remove 5-3-8-15-180504192124
execute if score @s ca.echo matches 0 run attribute @s minecraft:generic.knockback_resistance modifier remove 5-3-8-15-180504192124

#Penalty for Echo at 0 charges
execute if score @s ca.echo matches 1.. if score @s ca.echo_charges matches ..0 run attribute @s minecraft:generic.attack_speed modifier add 5-3-8-15-180504192125 "echo_effect_penalty" -0.2 multiply
execute if score @s ca.echo matches 1.. if score @s ca.echo_charges matches 1.. run attribute @s minecraft:generic.attack_speed modifier remove 5-3-8-15-180504192125
execute if score @s ca.echo matches 0 run attribute @s minecraft:generic.attack_speed modifier remove 5-3-8-15-180504192125


scoreboard players set @s ca.fleetfoot_use 0
scoreboard players operation @s ca.fleetfoot_use = @s ca.is_load_cro
scoreboard players operation @s ca.fleetfoot_use += @s ca.is_draw_bow
scoreboard players operation @s ca.fleetfoot_use += @s ca.is_hold_tri

execute if score @s ca.fleetfoot matches 1.. if score @s ca.fleetfoot_use matches 1.. run tag @s add ca.fleetfooting
execute if score @s ca.fleetfoot matches 1.. if score @s ca.fleetfoot_use matches 1.. unless score @s ca.fleetfoot_cdl matches 1.. run attribute @s minecraft:generic.movement_speed modifier add 31-321-514-000-6151520 "fleetfoot_effect_spd" 0.33 add

execute if score @s ca.fleetfoot matches 0 run attribute @s minecraft:generic.movement_speed modifier remove 31-321-514-000-6151520

execute if score @s ca.fleetfoot matches 1.. if score @s ca.is_load_cro matches 0 unless score @s ca.is_draw_bow matches 1.. unless score @s ca.is_hold_tri matches 1.. run attribute @s minecraft:generic.movement_speed modifier remove 31-321-514-000-6151520
execute if score @s ca.fleetfoot matches 1.. if score @s ca.is_draw_bow matches 1 unless score @s ca.is_load_cro matches 1.. unless score @s ca.is_hold_tri matches 1.. run attribute @s minecraft:generic.movement_speed modifier remove 31-321-514-000-6151520
execute if score @s ca.fleetfoot matches 1.. if score @s ca.is_hold_tri matches 0 unless score @s ca.is_draw_bow matches 1.. unless score @s ca.is_load_cro matches 1.. run attribute @s minecraft:generic.movement_speed modifier remove 31-321-514-000-6151520

execute if entity @s[tag=ca.fleetfooting] if score @s ca.fleetfoot_use matches 0 unless score @s ca.fleetfoot_cdl matches 1.. run scoreboard players add @s ca.fleetfoot_cdl 20
execute if entity @s[tag=ca.fleetfooting] if score @s ca.fleetfoot_use matches 0 run tag @s remove ca.fleetfooting


execute if score @s ca.fleetfoot_cdl matches 21.. run scoreboard players set @s ca.fleetfoot_cdl 20

execute if score @s ca.fleetfoot_cdl matches 1.. run scoreboard players remove @s ca.fleetfoot_cdl 1
execute if score @s ca.fleetfoot_cdl matches ..-1 run scoreboard players add @s ca.fleetfoot_cdl 1

#Custom Loyalty recharge attack meter
execute if score @s ca.loyalty_speed matches 2.. run attribute @s minecraft:generic.attack_speed modifier add 31-321-1818-514-20 "loyalty_effect_spd" 1024 add
execute if score @s ca.loyalty_speed matches 1 run attribute @s minecraft:generic.attack_speed modifier remove 31-321-1818-514-20
execute if score @s ca.loyalty_speed matches 1.. run scoreboard players remove @s ca.loyalty_speed 1

#Custom Riptide Dash
execute if score @s ca.riptide_time matches 1.. run function cartographer_custom_enchantments:enchant_effects/riptide/tick
execute if score @s ca.riptide_count_time matches 1.. run function cartographer_custom_enchantments:enchant_effects/riptide/count_tick

#Run The Notification that First Strike is available
execute if entity @s[tag=ca.used_first_strike] unless score @s ca.combat_timer matches 0 run function cartographer_custom_enchantments:enchant_effects/first_strike/reset
execute if entity @s[tag=ca.used_first_strike] if score @s ca.combat_timer matches 0 run function cartographer_custom_enchantments:enchant_effects/first_strike/notify_available

#Run an inventory calc the tick after using Auto Charge
execute if entity @s[tag=auto_charge_inv_fix] run function cartographer_custom_enchantments:inventory_changed
tag @s remove auto_charge_inv_fix

#Remove Evading tag if no evasion
execute unless score @s ca.evasion matches 1.. run tag @s remove evading

#Passive Trigger (if score $cu_en_passive ca.enabler matches 1.. )
execute if entity @s[tag=has_passive_ench] run function cartographer_custom_enchantments:enchant_calls/passively

#Do Crossbow Reload Check
execute if score @s ca.is_load_cro matches 1.. if entity @s[nbt={SelectedItem:{tag:{Charged:1b}}}] run function cartographer_custom_enchantments:enchant_calls/load_crossbow

#Ramp up Loyalty Time
execute if score @s ca.loyalty_time matches 1.. run scoreboard players add @s ca.loyalty_time 1

#If a second has been reached, run the Loyalty Inventory Check System
execute if score @s ca.loyalty_time matches 5.. run function cartographer_custom_enchantments:enchant_effects/loyalty/return/get_inventory

#Recoil Time
execute if score @s ca.recoil_time matches 1.. run function cartographer_custom_enchantments:enchant_effects/recoil/time
execute unless block ~ ~-0.2 ~ #cartographer_core:can_raycast unless score @s ca.recoil_time matches 1.. unless score @s ca.recoil_count matches 1.. run function cartographer_custom_enchantments:enchant_effects/recoil/count_fix

#Kill trigger (if score $cu_en_kill ca.enabler matches 1.. )
execute if score @s ca.kill_entity matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_killing_mob

#Run Repulsion
execute if score @s ca.repulsion matches 1.. unless score @s ca.repulsion_time matches 1.. if score @s ca.load_cro_time matches 5.. run function cartographer_custom_enchantments:enchant_effects/repulsion/activate
execute if score @s ca.repulsion_time matches 1.. unless score @s ca.load_cro_time matches 5.. run scoreboard players remove @s ca.repulsion_time 1

#Make ranged attack triggers.
execute if score @s ca.fire_bow matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_ranged_attack_made
execute if score @s ca.fire_cbow matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_ranged_attack_made
execute if score @s ca.use_snowball matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_ranged_attack_made

#Break Spawner Trigger (if score $cu_en_spawner ca.enabler matches 1.. )
execute if score @s ca.mine_spawner matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_break_spawner

#Player Death Trigger
execute if score @s ca.death_time matches 0 run function cartographer_custom_enchantments:enchant_calls/when_player_dies

#Player Respawn Trigger
execute if score @s ca.death_time matches 2..20 run function cartographer_custom_enchantments:enchant_calls/when_player_respawns

#Tempo Theft Effect - Players
execute if score @s ca.temp_warp matches 1.. run function cartographer_custom_enchantments:enchant_effects/on_hit/tempo_theft/effect_player

#Shielding
execute if score @s ca.shielding matches 1.. run function cartographer_custom_enchantments:enchant_effects/shielding/clock
execute unless score @s ca.shielding matches 1.. if entity @s[tag=ca.using_shielding] if predicate cartographer_core:has_absorption run function cartographer_custom_enchantments:enchant_effects/shielding/stopped_using

#Cauterize Check
tag @s remove ca.has_cauterize
execute if score @s ca.cauterize matches 1.. run tag @s add ca.has_cauterize
execute if score @s ca.off_cauterize matches 1.. run tag @s add ca.has_cauterize
execute if score @s ca.qu_cau matches 1.. run tag @s add ca.has_cauterize
execute if score @s ca.sm_cau matches 1.. run tag @s add ca.has_cauterize
execute if score @s ca.re_cau matches 1.. run tag @s add ca.has_cauterize
execute if score @s ca.mo_cau matches 1.. run tag @s add ca.has_cauterize
execute if score @s ca.g_cau matches 1.. run tag @s add ca.has_cauterize
execute if score @s ca.t_cau matches 1.. run tag @s add ca.has_cauterize

#Hex Eater Check
tag @s remove ca.has_hex_eater
execute if score @s ca.hex_eater matches 1.. run tag @s add ca.has_hex_eater
execute if score @s ca.off_hex_eater matches 1.. run tag @s add ca.has_hex_eater
execute if score @s ca.qu_hex matches 1.. run tag @s add ca.has_hex_eater
execute if score @s ca.sm_hex matches 1.. run tag @s add ca.has_hex_eater
execute if score @s ca.re_hex matches 1.. run tag @s add ca.has_hex_eater
execute if score @s ca.mo_hex matches 1.. run tag @s add ca.has_hex_eater
execute if score @s ca.g_hex matches 1.. run tag @s add ca.has_hex_eater
execute if score @s ca.t_hex matches 1.. run tag @s add ca.has_hex_eater

#Momentum Cancel
execute unless score @s ca.momentum matches 1.. run scoreboard players set @s ca.momentum_charge 0
execute unless score @s ca.momentum matches 1.. run scoreboard players set @s ca.momentum_tier 0
execute unless score @s ca.momentum matches 1.. run function cartographer_custom_enchantments:enchant_effects/momentum/del_attributes
execute if score @s ca.momentum matches 1.. run function cartographer_custom_enchantments:enchant_effects/momentum/charge

#Wavedash Time
execute if score @s ca.wavedash_time matches 1.. run scoreboard players remove @s ca.wavedash_time 1

#Sprint Dash and Disengage
execute if score @s ca.sprint_dash matches 1.. run function cartographer_custom_enchantments:enchant_effects/sprint_dash/test
scoreboard players set @s ca.sprint_dash_use 0
execute if score @s ca.sprint_dash_time matches 1.. run scoreboard players remove @s ca.sprint_dash_time 1

execute if score @s ca.disengage matches 1.. if score @s ca.disengage_time matches 1.. run function cartographer_custom_enchantments:enchant_effects/disengage/test
scoreboard players set @s ca.disengage_use 0

execute unless score @s ca.disengage_time matches 0.. run scoreboard players set @s ca.disengage_time 0

#Lethality
execute if predicate bb:cant_crit run function cartographer_custom_enchantments:enchant_effects/lethality/reset
execute unless predicate bb:cant_crit if score @s ca.lethality matches 1.. run function cartographer_custom_enchantments:enchant_effects/lethality/apply

#Unwieldly Curse
execute if predicate bb:cant_crit run function cartographer_custom_enchantments:enchant_effects/curse_unwieldly/reset
execute unless predicate bb:cant_crit if score @s ca.curse_unwieldly matches 1.. run function cartographer_custom_enchantments:enchant_effects/curse_unwieldly/apply

#Impact
execute unless predicate bb:cant_crit unless predicate cartographer_custom_enchantments:is_sprinting run function cartographer_custom_enchantments:enchant_effects/impact/reset
execute if predicate bb:cant_crit if predicate cartographer_custom_enchantments:is_sprinting if score @s ca.impact matches 1.. run function cartographer_custom_enchantments:enchant_effects/impact/apply

#Infinity 3.0
function cartographer_custom_enchantments:enchant_effects/infinity/player

function cartographer_custom_enchantments:enchant_effects/infinity/cdl_handler/tick_down

#Charge Overcharge
execute if score @s ca.overcharge matches 1.. if score @s ca.draw_bow_time matches 1.. run function cartographer_custom_enchantments:enchant_effects/overcharge/tier

#Reset Overcharge Tier
execute unless score @s ca.overcharge matches 1.. run scoreboard players set @s ca.ov_tier 0

#Rally Timer
execute if score @s ca.rally_time matches 1.. run function cartographer_custom_enchantments:enchant_effects/rally/timer

#Run Two Handed
execute if score @s ca.curse_two_hnd matches 1.. run function cartographer_custom_enchantments:enchant_effects/curse_two_handed/master
execute unless score @s ca.curse_two_hnd matches 1.. if score @s ca.two_hand_time matches 1.. run scoreboard players remove @s ca.two_hand_time 1
execute if score @s ca.curse_two_hnd matches 0 if score @s ca.two_hand_time matches 0 if data entity @s Inventory[{Slot:-106b}].tag.Compressed run function cartographer_custom_enchantments:enchant_effects/curse_two_handed/unpackage

tag @s remove processed_two_handed
execute if score @s ca.two_hand_del matches 1.. run scoreboard players remove @s ca.two_hand_del 1

#Remove Auto Charge Processed Tag: Rescan inventory
execute if entity @s[tag=doing_auto_charge] run tag @s add auto_charge_inv_fix
tag @s remove doing_auto_charge

#Timers for Adrenaline/Frenzy/Energetic Buffs
execute if entity @s[tag=!kill_buff_checked] run function cartographer_custom_enchantments:loop/tick/branch/kill_buff_check
tag @s remove kill_buff_checked

#Curse of Clumsiness
execute if score @s ca.curse_clumsiness matches 1.. if score @s ca.clumsy_fall matches 300.. run function cartographer_custom_enchantments:enchant_effects/curse_clumsiness/damage
scoreboard players set @s ca.clumsy_fall 0

#Curse of Drowning
execute if score @s ca.curse_drowning matches 1.. if block ~ ~ ~ water run function cartographer_custom_enchantments:enchant_effects/curse_drowning/time

#Environmental Curse Damage
execute if score @s ca.curse_environ_dmg matches 1..10 run function cartographer_custom_enchantments:enchant_effects/curse_environment/check_enchant
execute if score @s ca.curse_flammability matches 1.. if score @s ca.curse_environ_dmg matches 1..40 if block ~ ~ ~ #cartographer_core:fiery run function cartographer_custom_enchantments:enchant_effects/curse_environment/flammability

scoreboard players set @s ca.curse_environ_dmg 0

#Check Evasion
execute if entity @s[scores={ca.dmg_resist_evaded=1..,ca.evasion=1..},tag=evading] run function cartographer_custom_enchantments:enchant_effects/evasion/trigger
execute if entity @s[scores={ca.dmg_resist_check=1..,ca.evasion=1..}] run function cartographer_custom_enchantments:enchant_effects/evasion/prime

#Run Gravity Here
execute if score @s ca.gravity matches 1.. unless score @s ca.gravity_cd matches 1.. run function cartographer_custom_enchantments:enchant_effects/gravity/tick
execute if score @s ca.gravity_cd matches 1.. run scoreboard players remove @s ca.gravity_cd 1

#Run Starfall Here
execute if score @s ca.starfall matches 1.. run function cartographer_custom_enchantments:enchant_effects/starfall/tick

#Reduce Ranged Weapon Recently Fired Counter
execute if score @s ca.recently_fired_weapon matches 1.. run scoreboard players remove @s ca.recently_fired_weapon 1

#Current Time Reducer
execute if score @s ca.current_time matches 1.. run scoreboard players remove @s ca.current_time 1

#Concentrate Stack Reducer
execute if score @s ca.concentrate_time matches 1.. run scoreboard players remove @s ca.concentrate_time 1
execute if score @s ca.concentrate_time matches 1 run function cartographer_custom_enchantments:enchant_effects/concentration/reduce

#Check if sneaking for Swift Sneak
execute if score @s ca.death_time matches 60.. if score @s[tag=ca.added_swift_sneak] ca.sneak matches 0 if score @s ca.swift_sneak matches 1.. run function cartographer_custom_enchantments:enchant_effects/swift_sneak/remove
execute if score @s ca.death_time matches 60.. if score @s[tag=!ca.added_swift_sneak] ca.sneak matches 1.. if score @s ca.swift_sneak matches 1.. run function cartographer_custom_enchantments:enchant_effects/swift_sneak/add

#Check if under Soul Sand for Soul Speed
execute if score @s ca.death_time matches 60.. unless block ~ ~-0.8 ~ #minecraft:soul_speed_blocks unless score @s[tag=ca.added_soul_speed] ca.sneak matches 1.. if score @s ca.soul_speed matches 1.. run function cartographer_custom_enchantments:enchant_effects/soul_speed/remove
execute if score @s ca.death_time matches 60.. unless block ~ ~-0.8 ~ #minecraft:soul_speed_blocks unless score @s[tag=ca.added_soul_speed] ca.sprint matches 1.. if score @s ca.soul_speed matches 1.. run function cartographer_custom_enchantments:enchant_effects/soul_speed/remove
execute if score @s ca.death_time matches 60.. unless block ~ ~-0.8 ~ #minecraft:soul_speed_blocks unless score @s[tag=ca.added_soul_speed] ca.walk matches 1.. if score @s ca.soul_speed matches 1.. run function cartographer_custom_enchantments:enchant_effects/soul_speed/remove

# Add SS if conditions are right unless blocked by tag
execute if score @s ca.death_time matches 60.. if block ~ ~-0.8 ~ #minecraft:soul_speed_blocks if score @s[tag=!ca.added_soul_speed,tag=!ca.block_soul_speed] ca.sneak matches 1.. if score @s ca.soul_speed matches 1.. run function cartographer_custom_enchantments:enchant_effects/soul_speed/add
execute if score @s ca.death_time matches 60.. if block ~ ~-0.8 ~ #minecraft:soul_speed_blocks if score @s[tag=!ca.added_soul_speed,tag=!ca.block_soul_speed] ca.sprint matches 1.. if score @s ca.soul_speed matches 1.. run function cartographer_custom_enchantments:enchant_effects/soul_speed/add
execute if score @s ca.death_time matches 60.. if block ~ ~-0.8 ~ #minecraft:soul_speed_blocks if score @s[tag=!ca.added_soul_speed,tag=!ca.block_soul_speed] ca.walk matches 1.. if score @s ca.soul_speed matches 1.. run function cartographer_custom_enchantments:enchant_effects/soul_speed/add

#Remove SS if blocked by tag - End of Priority
execute if entity @s[tag=ca.block_soul_speed,tag=ca.added_soul_speed] run function cartographer_custom_enchantments:enchant_effects/soul_speed/remove

#Check if walking for Frost Walker
execute if score @s ca.frost_walker matches 1.. run function cartographer_custom_enchantments:enchant_effects/frost_walker/find_block

execute if score @s ca.death_time matches 60.. unless score @s[tag=ca.added_frost_walker,tag=!ca.enable_frost_walker] ca.sneak matches 1.. if score @s ca.frost_walker matches 1.. run function cartographer_custom_enchantments:enchant_effects/frost_walker/remove
execute if score @s ca.death_time matches 60.. unless score @s[tag=ca.added_frost_walker,tag=!ca.enable_frost_walker] ca.sprint matches 1.. if score @s ca.frost_walker matches 1.. run function cartographer_custom_enchantments:enchant_effects/frost_walker/remove
execute if score @s ca.death_time matches 60.. unless score @s[tag=ca.added_frost_walker,tag=!ca.enable_frost_walker] ca.walk matches 1.. if score @s ca.frost_walker matches 1.. run function cartographer_custom_enchantments:enchant_effects/frost_walker/remove

execute if score @s ca.death_time matches 60.. if score @s[tag=!ca.added_frost_walker,tag=ca.enable_frost_walker] ca.sneak matches 1.. if score @s ca.frost_walker matches 1.. run function cartographer_custom_enchantments:enchant_effects/frost_walker/add
execute if score @s ca.death_time matches 60.. if score @s[tag=!ca.added_frost_walker,tag=ca.enable_frost_walker] ca.sprint matches 1.. if score @s ca.frost_walker matches 1.. run function cartographer_custom_enchantments:enchant_effects/frost_walker/add
execute if score @s ca.death_time matches 60.. if score @s[tag=!ca.added_frost_walker,tag=ca.enable_frost_walker] ca.walk matches 1.. if score @s ca.frost_walker matches 1.. run function cartographer_custom_enchantments:enchant_effects/frost_walker/add

tag @s remove ca.enable_frost_walker

#Run Custom Unbreaking
execute if entity @s[tag=ca.run_armor_unbreaking] run function cartographer_custom_enchantments:enchant_effects/unbreaking/find



#Reset Function for scores
function cartographer_custom_enchantments:loop/tick/reset

#Remove Tag that checks if player already lost an Echo charge.
tag @s remove ca.echo_charge_taken
tag @s remove ca.evocation_charge_taken

#Action bar indicators for Repeating, Echo, and Second Wind
execute if score @s ca.ui_loc matches 0 if score $gl_ui_loc ca.gamerule matches 0 run function cartographer_custom_enchantments:helper/indicators/action_bar/master
execute if score @s ca.ui_loc matches 0 if score $gl_ui_loc ca.gamerule matches 1 run function cartographer_custom_enchantments:helper/indicators/subtitle/master

execute if score @s ca.ui_loc matches 1 run function cartographer_custom_enchantments:helper/indicators/action_bar/master
execute if score @s ca.ui_loc matches 2 run function cartographer_custom_enchantments:helper/indicators/subtitle/master

execute if score @s ca.repeating matches 0 run tag @s remove showing_repeating
execute if score @s ca.echo matches 0 run tag @s remove showing_echo
execute if score @s ca.evocation matches 0 run tag @s remove showing_evocation
execute if score @s ca.sweeping matches 0 run tag @s remove showing_sweeping
execute if score @s ca.sweeping matches 0 run tag @s remove showing_thrusting
execute if score @s ca.sweeping matches 0 run tag @s remove showing_slamming

execute store result score $current_return ca.loyalty run clear @s structure_void{TridentRemnantDelete:1b}
execute if score $current_return ca.loyalty matches 1.. run function cartographer_custom_enchantments:enchant_effects/loyalty/time_refund

tag @s remove ca.made_ranged_attack

execute unless score @s ca.conceal_time matches 0.. run scoreboard players set @s ca.conceal_time 0

execute if score @s ca.loyalty_refund_cooldown matches 1.. run scoreboard players remove @s ca.loyalty_refund_cooldown 1