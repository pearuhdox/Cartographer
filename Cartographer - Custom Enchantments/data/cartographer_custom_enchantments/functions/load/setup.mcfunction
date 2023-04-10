
#Setup all necessary scoreboard commands.

scoreboard objectives add ca.adrenaline dummy
scoreboard objectives add ca.agility dummy
scoreboard objectives add ca.aquadynamic dummy
scoreboard objectives add ca.auto_charge dummy
scoreboard objectives add ca.s_cleansing dummy
scoreboard objectives add ca.f_cleansing dummy
scoreboard objectives add ca.w_cleansing dummy
scoreboard objectives add ca.p_cleansing dummy
scoreboard objectives add ca.wi_cleansing dummy
scoreboard objectives add ca.exposing dummy
scoreboard objectives add ca.concealed dummy
scoreboard objectives add ca.electrode dummy
scoreboard objectives add ca.current dummy
scoreboard objectives add ca.infection dummy
scoreboard objectives add ca.deadeye dummy
scoreboard objectives add ca.duelist dummy
scoreboard objectives add ca.echo dummy
scoreboard objectives add ca.evocation dummy
scoreboard objectives add ca.energetic dummy
scoreboard objectives add ca.eruption dummy
scoreboard objectives add ca.evasion dummy
scoreboard objectives add ca.executioner dummy
scoreboard objectives add ca.flash dummy
scoreboard objectives add ca.fleetfoot dummy
scoreboard objectives add ca.frenzy dummy
scoreboard objectives add ca.frost dummy
scoreboard objectives add ca.frostbite dummy
scoreboard objectives add ca.hunter dummy
scoreboard objectives add ca.hydraulic dummy
scoreboard objectives add ca.infinity dummy
scoreboard objectives add ca.lifesteal dummy
scoreboard objectives add ca.overcharge dummy
scoreboard objectives add ca.electrocute dummy
scoreboard objectives add ca.expose dummy
scoreboard objectives add ca.point_blank dummy
scoreboard objectives add ca.possession dummy
scoreboard objectives add ca.possess dummy
scoreboard objectives add ca.infect dummy
scoreboard objectives add ca.first_strike dummy
scoreboard objectives add ca.rally dummy
scoreboard objectives add ca.repeating dummy
scoreboard objectives add ca.regen dummy
scoreboard objectives add ca.bleed dummy
scoreboard objectives add ca.ricochet dummy
scoreboard objectives add ca.sapper dummy
scoreboard objectives add ca.satiation dummy
scoreboard objectives add ca.second_wind dummy
scoreboard objectives add ca.sharpshot dummy
scoreboard objectives add ca.singe dummy
scoreboard objectives add ca.cauterize dummy
scoreboard objectives add ca.splintering dummy
scoreboard objectives add ca.spurs dummy
scoreboard objectives add ca.stunning dummy
scoreboard objectives add ca.surging_strike dummy
scoreboard objectives add ca.transfig dummy
scoreboard objectives add ca.tempest dummy
scoreboard objectives add ca.tempo_theft dummy
scoreboard objectives add ca.trueshot dummy
scoreboard objectives add ca.bleeding dummy
scoreboard objectives add ca.explosive dummy
scoreboard objectives add ca.thorns dummy
scoreboard objectives add ca.respiration dummy
scoreboard objectives add ca.recoil dummy
scoreboard objectives add ca.collapse dummy

scoreboard objectives add ca.resetter_check_kill dummy

scoreboard objectives add ca.swift_sneak dummy
scoreboard objectives add ca.soul_speed dummy
scoreboard objectives add ca.frost_walker dummy

scoreboard objectives add ca.efficiency dummy

scoreboard objectives add ca.off_duelist dummy
scoreboard objectives add ca.off_hunter dummy
scoreboard objectives add ca.off_singe dummy
scoreboard objectives add ca.off_frostbite dummy
scoreboard objectives add ca.off_exposing dummy
scoreboard objectives add ca.off_stunning dummy
scoreboard objectives add ca.off_infection dummy
scoreboard objectives add ca.off_electrocute dummy
scoreboard objectives add ca.off_bleeding dummy
scoreboard objectives add ca.off_fire_aspect dummy
scoreboard objectives add ca.off_possession dummy

scoreboard objectives add ca.wavedash dummy
scoreboard objectives add ca.wavedash_time dummy

scoreboard objectives add ca.write_ench dummy

scoreboard objectives add ca.t_fire dummy
scoreboard objectives add ca.t_frost dummy
scoreboard objectives add ca.t_stun dummy
scoreboard objectives add ca.t_bleed dummy
scoreboard objectives add ca.t_shock dummy
scoreboard objectives add ca.t_expose dummy
scoreboard objectives add ca.t_infection dummy
scoreboard objectives add ca.t_knock dummy
scoreboard objectives add ca.t_poss dummy
scoreboard objectives add ca.t_exec dummy

scoreboard objectives add ca.s_adren dummy
scoreboard objectives add ca.s_frenzy dummy
scoreboard objectives add ca.s_energ dummy
scoreboard objectives add ca.s_con dummy

scoreboard objectives add ca.loyalty dummy
scoreboard objectives add ca.fire_aspect dummy
scoreboard objectives add ca.knockback dummy
scoreboard objectives add ca.punch dummy
scoreboard objectives add ca.flame dummy
scoreboard objectives add ca.power dummy
scoreboard objectives add ca.multishot dummy

scoreboard objectives add ca.ammo_main dummy
scoreboard objectives add ca.ammo_off dummy

scoreboard objectives add ca.flash_time dummy
scoreboard objectives add ca.saved_flash dummy

scoreboard objectives add ca.loyalty_time dummy
scoreboard objectives add ca.loyalty_speed dummy
scoreboard objectives add ca.loyalty_refund_cooldown dummy

scoreboard objectives add ca.curse_mal dummy
scoreboard objectives add ca.curse_regret dummy
scoreboard objectives add ca.curse_two_hnd dummy
scoreboard objectives add ca.curse_encum dummy

scoreboard objectives add ca.rally_mark_dur dummy
scoreboard objectives add ca.rally_mark_amt dummy
scoreboard objectives add ca.rally_cooldown dummy
scoreboard objectives add ca.rally_banking dummy
scoreboard objectives remove ca.rally_bank

scoreboard objectives add ca.ov_tier dummy
scoreboard objectives add ca.ov_dmg dummy

scoreboard objectives add ca.cauter_dmg dummy
scoreboard objectives add ca.cau_burn_time dummy
scoreboard objectives add ca.cau_prv_time dummy

scoreboard objectives add ca.brittle_time dummy
scoreboard objectives add ca.brittle_hlth dummy

scoreboard objectives add ca.recoil_time dummy
scoreboard objectives add ca.recoil_count dummy
scoreboard objectives add ca.recoil_mode dummy

scoreboard objectives add ca.ricochet_cooldown dummy

scoreboard objectives add ca.armor_count dummy

scoreboard objectives add ca.transfig_time dummy
scoreboard objectives add ca.transfig_id dummy

#Setup ca.evasion bias score.
scoreboard objectives add ca.evasion_bias dummy

scoreboard objectives add ca.recently_fired_weapon dummy

#Setup dummy player score for Second Wind calculations.
scoreboard players set SecondWindHelper ca.second_wind 10

#Setup Second Wind cooldown timer and bank.
scoreboard objectives add ca.sw_time dummy
scoreboard objectives add ca.sw_tier dummy
scoreboard objectives add ca.dmg_resist_sw minecraft.custom:minecraft.damage_resisted

scoreboard objectives add ca.dmg_resist_check minecraft.custom:minecraft.damage_taken
scoreboard objectives add ca.dmg_resist_evaded minecraft.custom:minecraft.damage_resisted

scoreboard objectives add ca.sw_fall minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add ca.sw_tenths dummy

#Setup all necessary helper scoreboards.
scoreboard objectives add ca.rpt_cdl dummy

#Kill Score
scoreboard objectives remove ca.kill_entity
scoreboard objectives add ca.kill_entity dummy

scoreboard objectives add ca.evade_chance dummy
scoreboard objectives add ca.take_dmg minecraft.custom:minecraft.damage_taken
scoreboard objectives add ca.resist_dmg minecraft.custom:minecraft.damage_resisted
scoreboard objectives add ca.regen_bank dummy
scoreboard objectives add ca.deal_mel_dmg minecraft.custom:minecraft.damage_dealt
scoreboard objectives add ca.deal_mel_dmg2 minecraft.custom:minecraft.damage_dealt_absorbed
scoreboard objectives add ca.deal_mel_dmg3 minecraft.custom:minecraft.damage_dealt_resisted

scoreboard objectives add ca.melee_chance dummy
scoreboard objectives add ca.mine_spawner minecraft.mined:minecraft.spawner
scoreboard objectives add ca.lifetime dummy
scoreboard objectives add ca.death_time minecraft.custom:minecraft.time_since_death
scoreboard objectives add ca.sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add ca.walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add ca.sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add ca.echo_charges dummy
scoreboard objectives add ca.ammo dummy
scoreboard objectives add ca.conceal_time dummy
scoreboard objectives add ca.evo_burn dummy

scoreboard objectives add ca.frost_time dummy
scoreboard objectives add ca.frost_tier dummy

scoreboard objectives add ca.exec_low dummy
scoreboard objectives add ca.exec_max dummy

scoreboard objectives add ca.fire_bow minecraft.used:minecraft.bow
scoreboard objectives add ca.fire_cbow minecraft.used:minecraft.crossbow
scoreboard objectives add ca.arrow_dmg dummy
scoreboard objectives add ca.throw_trident minecraft.used:minecraft.trident

scoreboard objectives add ca.use_pearl minecraft.used:minecraft.ender_pearl
scoreboard objectives add ca.use_splashpot minecraft.used:minecraft.splash_potion
scoreboard objectives add ca.use_lingerpot minecraft.used:minecraft.lingering_potion

scoreboard objectives add ca.trans_cdl dummy
scoreboard objectives add ca.trans_bias dummy

scoreboard objectives add ca.ce.true_x dummy
scoreboard objectives add ca.ce.true_y dummy
scoreboard objectives add ca.ce.true_z dummy
scoreboard objectives add ca.ce.true_dmg dummy

scoreboard objectives add ca.swim minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add ca.water_walk minecraft.custom:minecraft.walk_under_water_one_cm

scoreboard objectives add ca.reflect_v dummy

scoreboard objectives add ca.ui_location dummy

scoreboard objectives add ca.susu dummy
scoreboard objectives add ca.selecteditem dummy
scoreboard objectives add ca.food food

scoreboard objectives add ca.attack_val dummy
scoreboard objectives add ca.vol_dmg dummy
scoreboard objectives add ca.temp_warp dummy

scoreboard objectives add ca.inf_var dummy

scoreboard objectives add ca.loyal_check dummy

scoreboard objectives add ca.two_hand_del dummy
scoreboard objectives add ca.two_hand_time dummy

scoreboard objectives add ca.dummy dummy
scoreboard objectives add ca.var dummy

scoreboard objectives add ca.adren_time dummy
scoreboard objectives add ca.frenz_time dummy
scoreboard objectives add ca.energ_time dummy

scoreboard objectives add ca.cur_dmg dummy
scoreboard objectives add ca.max_dmg dummy
scoreboard objectives add ca.dmg_to_deal dummy

scoreboard objectives add ca.rotation dummy

scoreboard objectives add ca.ind_val dummy

scoreboard objectives add ca.heal_bank_hp dummy

scoreboard objectives add ca.sapper_banking dummy
scoreboard objectives add ca.lifesteal_banking dummy

scoreboard objectives add ca.enchant_var dummy

#Setup LoE data space
function cartographer_custom_enchantments:load/integration/active/clear

#Set all needed player constants.
execute as @a unless entity @s[scores={ca.echo_charges=-1..}] run scoreboard players set @a ca.echo_charges 0
execute as @a unless entity @s[scores={ca.conceal_time=0..}] run scoreboard players set @a ca.conceal_time 0

#Place extra shulker boxes for Custom Enchantments
#Auto Charge
setblock 4206901 0 4206900 purple_shulker_box replace

#Repeating
setblock 4206900 0 4206901 purple_shulker_box replace

#Infinity
setblock 4206899 0 4206900 purple_shulker_box replace

#Two Handed
setblock 4206900 1 4206900 purple_shulker_box replace

#Loyalty Ghost
setblock 4206900 0 4206899 purple_shulker_box replace

#Initialize Global Value
execute unless score $gl_ui_loc ca.gamerule matches 0.. run scoreboard players set $gl_ui_loc ca.gamerule 0