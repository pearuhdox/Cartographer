
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

#Set default of independent difficulty.
execute unless score $cart_ind_diff global_options matches 0.. run scoreboard players set $cart_ind_diff global_options 0

#Start initial required looping to trigger mob effects.

function cartographer_mob_abilities:loop/tick/base
function cartographer_mob_abilities:loop/1_second/base
function cartographer_mob_abilities:loop/3_second/base
function cartographer_mob_abilities:loop/5_second/base
