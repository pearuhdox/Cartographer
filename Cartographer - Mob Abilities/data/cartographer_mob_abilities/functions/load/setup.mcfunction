
#Setup all necessary scoreboard commands.
scoreboard objectives add ca.pldata.id dummy

scoreboard objectives add ca.ability_dmg dummy
scoreboard objectives add cooldown dummy
scoreboard objectives add ability_charge dummy
scoreboard objectives add brutal_stacks dummy
scoreboard objectives add relent_stacks dummy
scoreboard objectives add devious_stacks dummy
scoreboard objectives add sacrifice_stacks dummy
scoreboard objectives add wither_storms dummy
scoreboard objectives add storm_height dummy
scoreboard objectives add recast_count dummy

scoreboard objectives add devious_time dummy
scoreboard objectives add abs_health dummy

scoreboard objectives add dupe_health dummy
scoreboard objectives add copies dummy

scoreboard objectives add exalted dummy

scoreboard objectives add reflect_past dummy
scoreboard objectives add reflect_check dummy
scoreboard objectives add reflect_diff dummy

scoreboard objectives add augment_time dummy

scoreboard objectives add token_kill_check totalKillCount

scoreboard objectives add invul dummy

scoreboard objectives add ca.orbit_timer dummy

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

#Setup all necessary helper scoreboards.
scoreboard objectives add ca.tokens dummy
scoreboard objectives add ca.heat dummy

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

#Create the UUID armor stands.
kill 002f80c0-0001-f879-0000-009c001e7bfc
kill 002f80c0-0001-f879-003a-2a2300005860

schedule function cartographer_mob_abilities:load/create_uuids 3t

#Setup LoE data space
function cartographer_mob_abilities:load/integration/active/clear

#Set default of independent difficulty.
execute unless score $gl_ind_diff ca.gamerule matches 0.. run scoreboard players set $gl_ind_diff ca.gamerule 0

#Reset all token data on all players.
tag @a remove token_reset
