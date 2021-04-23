
#Setup all necessary scoreboard commands.

scoreboard objectives add cooldown dummy
scoreboard objectives add ability_charge dummy
scoreboard objectives add brutal_stacks dummy
scoreboard objectives add relent_stacks dummy
scoreboard objectives add wither_storms dummy
scoreboard objectives add storm_height dummy

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

#Create the LoS checking armor stand.
kill 002f80c0-0001-f879-0000-009c001e7bfc
schedule function cartographer_mob_abilities:load/create_uuids 3t

#Set default of independent difficulty.
execute unless score $cart_ind_diff global_options matches 0.. run scoreboard players set $cart_ind_diff global_options 0

#Reset all token data on all players.
tag @a remove token_reset

#Start initial required looping to trigger mob effects.

function cartographer_mob_abilities:loop/tick/base
function cartographer_mob_abilities:loop/1_second/base
function cartographer_mob_abilities:loop/3_second/base
function cartographer_mob_abilities:loop/5_second/base
