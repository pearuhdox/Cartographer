#Temporary override on enchant disabler
scoreboard players set $cu_en_ranged ca.enabler 1
scoreboard players set $cu_en_kill ca.enabler 1
scoreboard players set $cu_en_melee ca.enabler 1
scoreboard players set $cu_en_passive ca.enabler 1
scoreboard players set $cu_en_player_death ca.enabler 1
scoreboard players set $cu_en_spawner ca.enabler 1


#Reset attack speed and kbr on Echo users
execute as @a[scores={ca.echo=1..,ca.echo_charges=0..}] run attribute @s minecraft:generic.attack_speed modifier add 5-3-8-15-180504192124 "echo_effect_spd" 1024 add
execute as @a[scores={ca.echo=1..,ca.echo_charges=..-1}] run attribute @s minecraft:generic.attack_speed modifier remove 5-3-8-15-180504192124
execute as @a[scores={ca.echo=0}] run attribute @s minecraft:generic.attack_speed modifier remove 5-3-8-15-180504192124

execute as @a[scores={ca.echo=1..,ca.echo_charges=1..}] run attribute @s minecraft:generic.knockback_resistance modifier add 5-3-8-15-180504192124 "echo_effect_kbr" 0.15 add
execute as @a[scores={ca.echo=1..,ca.echo_charges=0}] run attribute @s minecraft:generic.knockback_resistance modifier remove 5-3-8-15-180504192124
execute as @a[scores={ca.echo=0}] run attribute @s minecraft:generic.knockback_resistance modifier remove 5-3-8-15-180504192124

execute as @a[scores={ca.fleetfoot=1..,ca.is_load_cro=1..}] run attribute @s minecraft:generic.movement_speed modifier add 31-321-514-000-6151520 "fleetfoot_effect_spd" 0.4 add

execute as @a[scores={ca.fleetfoot=1..,ca.is_draw_bow=1..}] run attribute @s minecraft:generic.movement_speed modifier add 31-321-514-000-6151520 "fleetfoot_effect_spd" 0.4 add

execute as @a[scores={ca.fleetfoot=1..,ca.is_hold_tri=1..}] run attribute @s minecraft:generic.movement_speed modifier add 31-321-514-000-6151520 "fleetfoot_effect_spd" 0.4 add

execute as @a[scores={ca.fleetfoot=0}] run attribute @s minecraft:generic.movement_speed modifier remove 31-321-514-000-6151520

#Current recharge attack meter
execute as @a[scores={ca.ce.cur_spd=2..}] run attribute @s minecraft:generic.attack_speed modifier add 31-321-1818-514-20 "current_effect_spd" 1024 add
execute as @a[scores={ca.ce.cur_spd=1}] run attribute @s minecraft:generic.attack_speed modifier remove 31-321-1818-514-20
scoreboard players remove @a[scores={ca.ce.cur_spd=1..}] ca.ce.cur_spd 1

#Apply the attack speed debuff for Evocation.
execute as @a[scores={ca.evo_burn=2..20}] run attribute @s minecraft:generic.attack_speed modifier add 31-522-15-3120-91514 "evo_effect_spd" -0.3 multiply
execute as @a[scores={ca.evo_burn=22..40}] run attribute @s minecraft:generic.attack_speed modifier add 31-522-15-3120-91514 "evo_effect_spd" -0.5 multiply
execute as @a[scores={ca.evo_burn=42..60}] run attribute @s minecraft:generic.attack_speed modifier add 31-522-15-3120-91514 "evo_effect_spd" -0.7 multiply

execute as @a[scores={ca.evo_burn=1}] run attribute @s minecraft:generic.attack_speed modifier remove 31-522-15-3120-91514
execute as @a[scores={ca.evo_burn=21}] run attribute @s minecraft:generic.attack_speed modifier remove 31-522-15-3120-91514
execute as @a[scores={ca.evo_burn=41}] run attribute @s minecraft:generic.attack_speed modifier remove 31-522-15-3120-91514

scoreboard players remove @a[scores={ca.evo_burn=1..}] ca.evo_burn 1
execute as @a[scores={ca.evo_burn=20}] at @s run scoreboard players set @s ca.evo_burn 0
execute as @a[scores={ca.evo_burn=40}] at @s run scoreboard players set @s ca.evo_burn 0

#Run an inventory calc the tick after using Auto Charge
execute as @a[tag=auto_charge_inv_fix] at @s run function cartographer_custom_enchantments:inventory_changed
tag @a[tag=auto_charge_inv_fix] remove auto_charge_inv_fix

# Triggers for enchants that must attempt every tick.

#Passive Trigger (if score $cu_en_passive ca.enabler matches 1.. )
execute as @a[tag=has_passive_ench] at @s run function cartographer_custom_enchantments:enchant_calls/passively

#Kill trigger (if score $cu_en_kill ca.enabler matches 1.. )
execute as @a[scores={ca.kill_entity=1..}] at @s run function cartographer_custom_enchantments:enchant_calls/when_killing_mob

#Make ranged attack triggers.
#if score $cu_en_ranged ca.enabler matches 1..
execute as @a[scores={ca.fire_bow=1..}] at @s run function cartographer_custom_enchantments:enchant_calls/when_ranged_attack_made
execute if score $cu_en_ranged ca.enabler matches 1.. as @a[scores={ca.fire_cbow=1..}] at @s run function cartographer_custom_enchantments:enchant_calls/when_ranged_attack_made
execute if score $cu_en_ranged ca.enabler matches 1.. as @a[scores={ca.throw_trident=1..}] at @s run function cartographer_custom_enchantments:enchant_calls/when_ranged_attack_made_trident

#Break Spawner Trigger (if score $cu_en_spawner ca.enabler matches 1.. )
execute as @a[scores={ca.mine_spawner=1..}] at @s run function cartographer_custom_enchantments:enchant_calls/when_break_spawner

#Player Death Trigger
execute as @a[scores={ca.death_time=0}] at @s run function cartographer_custom_enchantments:enchant_calls/when_player_dies

#Player Respawn Trigger
execute as @a[scores={ca.death_time=2..20}] at @s run function cartographer_custom_enchantments:enchant_calls/when_player_respawns

#Tempo Theft Effect - Players
execute as @a[scores={ca.temp_warp=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/tempo_theft/effect

#Infinity 3.0
execute as @a at @s run function cartographer_custom_enchantments:enchant_effects/infinity/player

#Splintering
execute if score $cu_en_passive ca.enabler matches 1.. as @a[scores={ca.splintering=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/splintering

#Charge Overcharge
execute if score $cu_en_ranged ca.enabler matches 1.. as @a[scores={ca.overcharge=1..,ca.draw_bow_time=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/overcharge/tier

#Reset Overcharge Tier
execute as @a unless score @s ca.overcharge matches 1.. run scoreboard players set @s ca.ov_tier 0

#Rally Timer
execute if score $cu_en_passive ca.enabler matches 1.. as @a[scores={ca.ral_time=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/rally/timer

#Remove Two Handed Processed Tag - Fix Inventory Two Handed Bundled Items
execute as @a[scores={ca.two_hand_del=1}] at @s run function cartographer_custom_enchantments:enchant_effects/curse_two_handed/return_offhand

tag @a[tag=processed_two_handed] remove processed_two_handed
scoreboard players remove @a[scores={ca.two_hand_del=1..}] ca.two_hand_del 1

#Remove Auto Charge Processed Tag: Rescan inventory
execute as @a[tag=doing_auto_charge] at @s run tag @s add auto_charge_inv_fix
tag @a[tag=doing_auto_charge] remove doing_auto_charge

#Timers for Adrenaline/Frenzy/Energetic Buffs
execute as @a[scores={ca.adren_time=1..},tag=!kill_buff_checked] at @s run function cartographer_custom_enchantments:enchant_effects/kill_buff_handler
execute as @a[scores={ca.frenz_time=1..},tag=!kill_buff_checked] at @s run function cartographer_custom_enchantments:enchant_effects/kill_buff_handler
execute as @a[scores={ca.energ_time=1..},tag=!kill_buff_checked] at @s run function cartographer_custom_enchantments:enchant_effects/kill_buff_handler
execute as @a[scores={ca.conceal_time=1..},tag=!kill_buff_checked] at @s run function cartographer_custom_enchantments:enchant_effects/kill_buff_handler

tag @a remove kill_buff_checked

#Check if a player has a Loyalty Placeholder
execute as @a at @s run function cartographer_custom_enchantments:enchant_effects/loyalty/player_track

#Reset Function for scores
function cartographer_custom_enchantments:loop/tick/reset


#Action bar indicators for Repeating, Echo, and Second Wind
execute if score $gl_ui_loc ca.gamerule matches 0 as @a[scores={ca.ui_loc=0}] at @s run function cartographer_custom_enchantments:helper/indicators/action_bar
execute if score $gl_ui_loc ca.gamerule matches 1 as @a[scores={ca.ui_loc=0}] at @s run function cartographer_custom_enchantments:helper/indicators/subtitle

execute as @a[scores={ca.ui_loc=1}] at @s run function cartographer_custom_enchantments:helper/indicators/action_bar
execute as @a[scores={ca.ui_loc=2}] at @s run function cartographer_custom_enchantments:helper/indicators/subtitle

tag @a[scores={ca.repeating=0}] remove showing_repeating
tag @a[scores={ca.echo=0}] remove showing_echo

#Increment combat time by 1.
scoreboard players add @a[scores={ca.combat_time=..39}] ca.combat_time 1
execute as @a unless score @s ca.combat_time matches 0.. run scoreboard players set @s ca.combat_time 0

#Just in case
execute as @a run function cartographer_custom_enchantments:calc_enchant/slot_change