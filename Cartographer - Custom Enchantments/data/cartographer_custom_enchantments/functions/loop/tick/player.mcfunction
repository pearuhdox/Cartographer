#Place The Trident Hit Checker Above Enchant Calculator to solve loyalty check bug
execute if score $cu_en_ranged ca.enabler matches 1.. if score @s ca.throw_trident matches 1.. unless score @s ca.deal_mel_dmg matches 1.. unless score @s ca.deal_mel_dmg2 matches 1.. unless score @s ca.deal_mel_dmg3 matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_ranged_attack_made_trident


#Run the Heal Queue system on players
execute if score @s ca.sapper_banking matches 1.. run function cartographer_custom_enchantments:enchant_effects/sapper/heal_time
execute if score @s ca.lifesteal_banking matches 1.. run function cartographer_custom_enchantments:enchant_effects/lifesteal/heal_time
execute if score @s ca.rally_banking matches 1.. run function cartographer_custom_enchantments:enchant_effects/rally/heal_time

execute if score @s ca.rally_cooldown matches 1.. run scoreboard players remove @s ca.rally_cooldown 1

function cartographer_custom_enchantments:helper/healing_bank/check_healing

#,tag=ca.queue_ench_check,tag=!ca.ench_do_not_check


#Identify if Slot was Changed
function cartographer_custom_enchantments:calc_enchant/slot_change

#Run queues of enchant calculator
execute unless score @s ca.core_delay_check matches 1.. if entity @s[tag=ca.core_check_inv] run function cartographer_custom_enchantments:calc_enchant/run
tag @s remove ca.queue_ench_check

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


scoreboard players operation $temp ca.fleetfoot = @s ca.is_load_cro
scoreboard players operation $temp ca.fleetfoot += @s ca.is_draw_bow
scoreboard players operation $temp ca.fleetfoot += @s ca.is_hold_tri
execute if score @s ca.fleetfoot matches 1.. if score $temp ca.fleetfoot matches 1.. run attribute @s minecraft:generic.movement_speed modifier add 31-321-514-000-6151520 "fleetfoot_effect_spd" 0.4 add

execute if score @s ca.fleetfoot matches 0 run attribute @s minecraft:generic.movement_speed modifier remove 31-321-514-000-6151520
execute if score @s ca.fleetfoot matches 1.. if score @s ca.is_load_cro matches 0 unless score @s ca.is_draw_bow matches 1.. unless score @s ca.is_hold_tri matches 1.. run attribute @s minecraft:generic.movement_speed modifier remove 31-321-514-000-6151520

#Apply the attack speed debuff for Evocation.
execute if score @s[tag=ca.evocation_penalty] ca.atk_time matches 2.. run attribute @s minecraft:generic.attack_speed modifier add 31-522-15-3120-91514 "evo_effect_spd" -1 multiply
execute if score @s[tag=ca.evocation_penalty] ca.atk_time matches 1 run attribute @s minecraft:generic.attack_speed modifier remove 31-522-15-3120-91514
execute if score @s[tag=ca.evocation_penalty] ca.atk_time matches 1 run scoreboard players set @s ca.evo_burn 26

execute if score @s[tag=ca.evocation_penalty] ca.evo_burn matches 2.. run attribute @s minecraft:generic.attack_speed modifier add 31-522-15-3120-91514 "evo_effect_spd" -1 multiply
execute if score @s[tag=ca.evocation_penalty] ca.evo_burn matches 1 run attribute @s minecraft:generic.attack_speed modifier remove 31-522-15-3120-91514
execute if score @s[tag=ca.evocation_penalty] ca.evo_burn matches 1 run tag @s remove ca.evocation_penalty
execute if score @s ca.evo_burn matches 1.. run scoreboard players remove @s ca.evo_burn 1

#Custom Loyalty recharge attack meter
execute if score @s ca.loyalty_speed matches 2.. run attribute @s minecraft:generic.attack_speed modifier add 31-321-1818-514-20 "loyalty_effect_spd" 1024 add
execute if score @s ca.loyalty_speed matches 1 run attribute @s minecraft:generic.attack_speed modifier remove 31-321-1818-514-20
execute if score @s ca.loyalty_speed matches 1.. run scoreboard players remove @s ca.loyalty_speed 1

#Run The Notification that First Strike is available
execute if entity @s[tag=ca.used_first_strike] if score @s ca.combat_timer matches 0 run function cartographer_custom_enchantments:enchant_effects/first_strike/notify_available

#Run an inventory calc the tick after using Auto Charge
execute if entity @s[tag=auto_charge_inv_fix] run function cartographer_custom_enchantments:inventory_changed
tag @s remove auto_charge_inv_fix

#Remove Evading tag if no evasion
execute unless score @s ca.evasion matches 1.. run tag @s remove evading

#Passive Trigger (if score $cu_en_passive ca.enabler matches 1.. )
execute if entity @s[tag=has_passive_ench] run function cartographer_custom_enchantments:enchant_calls/passively

#Ramp up Loyalty Time
execute if score @s ca.loyalty_time matches 1.. run scoreboard players add @s ca.loyalty_time 1

#If a second has been reached, run the Loyalty Inventory Check System
execute if score @s ca.loyalty_time matches 5.. run function cartographer_custom_enchantments:enchant_effects/loyalty/return/get_inventory

#Recoil Time
execute if score @s ca.recoil_time matches 1.. run function cartographer_custom_enchantments:enchant_effects/recoil/time
execute unless block ~ ~-0.2 ~ #cartographer_core:can_raycast unless score @s ca.recoil_time matches 1.. unless score @s ca.recoil_count matches 1.. run function cartographer_custom_enchantments:enchant_effects/recoil/count_fix


#Kill trigger (if score $cu_en_kill ca.enabler matches 1.. )
execute if score @s ca.kill_entity matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_killing_mob

#Make ranged attack triggers.
execute if score @s ca.fire_bow matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_ranged_attack_made
execute if score $cu_en_ranged ca.enabler matches 1.. if score @s ca.fire_cbow matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_ranged_attack_made

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

#Check if a player has a Loyalty Placeholder
function cartographer_custom_enchantments:enchant_effects/loyalty/player_track

#Check Evasion
execute if entity @s[scores={ca.dmg_resist_evaded=1..,ca.evasion=1..},tag=evading] run function cartographer_custom_enchantments:enchant_effects/evasion/trigger
execute if entity @s[scores={ca.dmg_resist_check=1..,ca.evasion=1..}] run function cartographer_custom_enchantments:enchant_effects/evasion/prime

#Reduce Ranged Weapon Recently Fired Counter
execute if score @s ca.recently_fired_weapon matches 1.. run scoreboard players remove @s ca.recently_fired_weapon 1

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

execute store result score $current_return ca.loyalty run clear @s structure_void{TridentRemnantDelete:1b}
execute if score $current_return ca.loyalty matches 1.. run function cartographer_custom_enchantments:enchant_effects/loyalty/time_refund

tag @s remove ca.made_ranged_attack

execute if score @s ca.loyalty_refund_cooldown matches 1.. run scoreboard players remove @s ca.loyalty_refund_cooldown 1