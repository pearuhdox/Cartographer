
#Setup all necessary scoreboard commands.
scoreboard objectives add ca.pldata.id dummy

scoreboard objectives add ca.ability_dmg dummy
scoreboard objectives add cooldown dummy
scoreboard objectives add ability_charge dummy
scoreboard objectives add ability_pause dummy
scoreboard objectives add brutal_stacks dummy
scoreboard objectives add relent_stacks dummy
scoreboard objectives add devious_stacks dummy
scoreboard objectives add sacrifice_stacks dummy
scoreboard objectives add storms dummy
scoreboard objectives add storm_height dummy
scoreboard objectives add recast_count dummy

scoreboard objectives add devious_time dummy
scoreboard objectives add abs_health dummy

scoreboard objectives add dupe_health dummy
scoreboard objectives add copies dummy

scoreboard objectives add exalted dummy

scoreboard objectives add ca.death_traits dummy

scoreboard objectives add ca.trap_traits dummy

scoreboard objectives add ca.linger_cooldown dummy

scoreboard objectives add ca.deathbomb_fuse dummy
scoreboard objectives add ca.deathbomb_fuse_max dummy

scoreboard objectives add ca.size_max dummy
scoreboard objectives add ca.size_min dummy
scoreboard objectives add ca.size_cur dummy
scoreboard objectives add ca.size_changed_stacks dummy

scoreboard objectives add ca.sweep_animation dummy
scoreboard objectives add ca.sweep_side dummy

scoreboard objectives add ca.carapace_stacks dummy

scoreboard objectives add ca.mob_kb dummy

scoreboard objectives add reflect_past dummy
scoreboard objectives add reflect_check dummy
scoreboard objectives add reflect_diff dummy

scoreboard objectives add augment_time dummy

scoreboard objectives add token_kill_check totalKillCount

scoreboard objectives add invul dummy

scoreboard objectives add ca.orbit_timer dummy

scoreboard objectives add ca.laser_damage minecraft.custom:minecraft.damage_resisted

scoreboard objectives add ca.needle_convert dummy

scoreboard objectives add ca.sb_convert dummy

scoreboard objectives add ca.sc_time dummy

scoreboard objectives add ca.acrobat_passive_cooldown dummy

scoreboard objectives add ca.elytra_deploy_time dummy

scoreboard objectives add ca.mob_var dummy

scoreboard objectives add ca.acro_cooldown dummy

scoreboard objectives add ca.trigger_trait_cooldown dummy

scoreboard objectives add ca.glacial_slow dummy
scoreboard objectives add ca.horrified dummy
scoreboard objectives add ca.overload_pos dummy
scoreboard objectives add ca.celest_steal dummy
scoreboard objectives add ca.aftershock dummy
scoreboard objectives add ca.evocate_time dummy

scoreboard objectives add ca.touch_check dummy

scoreboard objectives add ca.skin_timer dummy

scoreboard objectives add ca.hooked dummy
scoreboard objectives add ca.hook_despawn dummy

scoreboard objectives add ca.cs_id dummy
scoreboard objectives add ca.cs_dur dummy
scoreboard objectives add ca.cs_pot dummy

scoreboard objectives add ca.ambi_cool dummy

scoreboard objectives add ca.legion_id dummy

scoreboard objectives add ca.arm_time dummy

scoreboard objectives add ca.mob_move_time dummy
scoreboard objectives add ca.mob_move_mode dummy

scoreboard objectives add ca.sidearm_windup dummy

scoreboard objectives add ca.soul_chain_id dummy

#Setup EPF Checkers
scoreboard objectives add ca.ma_epf_proj dummy
scoreboard objectives add ca.ma_epf_blast dummy
scoreboard objectives add ca.ma_epf_fire dummy
scoreboard objectives add ca.ma_epf_prot dummy

scoreboard objectives add ca.ma_epf_data dummy
scoreboard objectives add ca.dmg_type dummy

#Setup all necessary helper scoreboards.
scoreboard objectives add ca.tokens dummy
scoreboard objectives add ca.heat dummy

scoreboard objectives add ca.accelerate_stacks dummy

scoreboard objectives add ca.raycast dummy
scoreboard objectives add helper_random dummy
scoreboard objectives add helper_tokens dummy
scoreboard objectives add helper_diff dummy
scoreboard objectives add ca.lifetime dummy

scoreboard objectives add hook_id dummy
scoreboard players set $master hook_id 0
scoreboard objectives add hook_travel dummy

scoreboard objectives add sight_dist dummy

scoreboard objectives add flag dummy

scoreboard objectives add mob_move_dis dummy
scoreboard objectives add mob_atk_dis dummy

scoreboard objectives add mob_move_red dummy
scoreboard objectives add mob_atk_red dummy

scoreboard objectives add mob_sturdy dummy

scoreboard objectives add ca.rift_cooldown dummy

scoreboard objectives add ca.aim dummy

scoreboard objectives add ca.summon_id dummy

scoreboard objectives add ca.proj_registry dummy
scoreboard objectives add ca.xyz_convert dummy

#Create the UUID armor stands.
kill 002f80c0-0001-f879-0000-009c001e7bfc
kill 002f80c0-0001-f879-003a-2a2300005860

#Create the UUID for Hook Markering
# 31182015-8151-5111-3118-110000000000
#[I;823664661,-2125377263,823660800,0]
summon marker 4206900 50 4206900 {UUID:[I;823664661,-2125377263,823660800,0],Tags:["ca.hook_positioner"]}

#Create UUID Marker for Needle Positioning
# 0000001f-00de-140d-0000-0000000276ef
summon marker 4206900 50 4206900 {UUID:[I;31,14554125,0,161519],Tags:["ca.needle_positioner"]}

schedule function cartographer_mob_abilities:load/create_uuids 3t

#Setup LoE data space
function cartographer_mob_abilities:load/integration/active/clear

#Set default of independent difficulty.
execute unless score $gl_ind_diff ca.gamerule matches 0.. run scoreboard players set $gl_ind_diff ca.gamerule 0

#Reset all token data on all players.
tag @a remove token_reset
