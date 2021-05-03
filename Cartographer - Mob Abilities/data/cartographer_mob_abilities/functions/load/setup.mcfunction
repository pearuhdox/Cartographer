
#Setup all necessary scoreboard commands.

scoreboard objectives add cooldown dummy
scoreboard objectives add ability_charge dummy
scoreboard objectives add brutal_stacks dummy
scoreboard objectives add relent_stacks dummy
scoreboard objectives add devious_stacks dummy
scoreboard objectives add sacrifice_stacks dummy
scoreboard objectives add wither_storms dummy
scoreboard objectives add storm_height dummy
scoreboard objectives add smash_bounce dummy

scoreboard objectives add devious_time dummy
scoreboard objectives add abs_health dummy

scoreboard objectives add dupe_health dummy
scoreboard objectives add copies dummy

scoreboard objectives add exalted dummy

scoreboard objectives add reflect_past dummy
scoreboard objectives add reflect_check dummy
scoreboard objectives add reflect_diff dummy

#Setup all necessary helper scoreboards.

scoreboard objectives add helper_raycast dummy
scoreboard objectives add helper_random dummy
scoreboard objectives add helper_tokens dummy
scoreboard objectives add helper_diff dummy
scoreboard objectives add helper_lifetime dummy

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

#Create the LoS checking armor stand.
kill 002f80c0-0001-f879-0000-009c001e7bfc
schedule function cartographer_mob_abilities:load/create_uuids 3t

#Set default of independent difficulty.
execute unless score $cart_ind_diff global_options matches 0.. run scoreboard players set $cart_ind_diff global_options 0

#Reset all token data on all players.
tag @a remove token_reset
