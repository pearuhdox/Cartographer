
#Setup all necessary scoreboard commands.

scoreboard objectives add ca.stun_show dummy

#Setup custom status effect scoreboards.
scoreboard objectives add ca.luck_coeff dummy
scoreboard objectives add ca.luck+ dummy
scoreboard objectives add ca.luck- dummy

scoreboard objectives add ca.stun_resist dummy
scoreboard objectives add ca.stun_res_ct dummy
scoreboard objectives add ca.stun_res_time dummy

scoreboard objectives add ca.effect_stun dummy
scoreboard objectives add ca.effect_stun_duration dummy

scoreboard objectives add ca.effect_bleed dummy
scoreboard objectives add ca.effect_bleed_chance dummy

scoreboard objectives add ca.bleed_time dummy

scoreboard objectives add ca.effect_shock dummy
scoreboard objectives add ca.effect_shock_chance dummy

scoreboard objectives add ca.effect_infect dummy
scoreboard objectives add ca.effect_infect_chance dummy

scoreboard objectives add ca.effect_charmed dummy
scoreboard objectives add ca.charm_time dummy
scoreboard objectives add ca.charm_immune dummy


scoreboard objectives add ca.effect_cloak dummy

scoreboard objectives add ca.silent_check dummy

scoreboard objectives add ca.time_convert dummy
scoreboard objectives add ca.id_convert dummy

scoreboard objectives add ca.effect_exposed_level dummy
scoreboard objectives add ca.effect_exposed_duration dummy
scoreboard objectives add ca.effect_exposed_chance dummy

scoreboard objectives add ca.exposed_cdl dummy
scoreboard objectives add ca.exposed_hp dummy

scoreboard objectives add ca.effect_oiled_level dummy
scoreboard objectives add ca.effect_oiled_duration dummy
scoreboard objectives add ca.effect_oiled_chance dummy

scoreboard objectives add ca.effect_shackled dummy
scoreboard objectives add ca.effect_shackled_chance dummy

scoreboard objectives add ca.shackled_hp dummy
scoreboard objectives add ca.shackled_cdl dummy

scoreboard objectives add ca.effect_brittle_level dummy
scoreboard objectives add ca.effect_brittle_duration dummy
scoreboard objectives add ca.effect_brittle_chance dummy

scoreboard objectives add ca.brittle_stored dummy
scoreboard objectives add ca.brittle_cdl dummy
scoreboard objectives add ca.brittle_hp dummy

scoreboard objectives add ca.effect_fire dummy

scoreboard objectives add ca.decay_min dummy
scoreboard objectives add ca.decay_max dummy

scoreboard objectives add ca.voltage_shocked dummy

scoreboard objectives add ca.effect_morph dummy
scoreboard objectives add ca.morph_time dummy
scoreboard objectives add ca.morph_id dummy
scoreboard objectives add ca.morph_immune dummy

scoreboard objectives add ca.death_registry dummy
scoreboard objectives add ca.aec_to_mob dummy

scoreboard objectives add ca.status_var dummy
scoreboard objectives add ca.stat_calc_var dummy

scoreboard objectives add ca.strength_lvl dummy
scoreboard objectives add ca.strength_dur dummy

scoreboard objectives add ca.weak_lvl dummy
scoreboard objectives add ca.weak_dur dummy

scoreboard objectives add ca.player_entropy dummy

scoreboard objectives add ca.cs_shoot_bow minecraft.used:minecraft.bow
scoreboard objectives add ca.cs_shoot_cross minecraft.used:minecraft.crossbow
scoreboard objectives add ca.cs_throw_trident minecraft.used:minecraft.trident
scoreboard objectives add ca.cs_throw_snowball minecraft.used:minecraft.snowball

scoreboard objectives add ca.cu_st_dmg minecraft.custom:minecraft.damage_dealt

scoreboard objectives add ca.write_status dummy

scoreboard objectives add ca.linger_cdl dummy

#Setup LoE data space
function cartographer_custom_statuses:load/integration/active/clear

#Start initial required looping to trigger enchant effects.