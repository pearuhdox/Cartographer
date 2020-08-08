
#Setup all necessary scoreboard commands.

scoreboard objectives add cooldown dummy
scoreboard objectives add ability_charge dummy
scoreboard objectives add brutal_stacks dummy
scoreboard objectives add relent_stacks dummy

#Setup all necessary helper scoreboards.

scoreboard objectives add helper_raycast dummy
scoreboard objectives add helper_random dummy
scoreboard objectives add helper_tokens dummy
scoreboard objectives add helper_diff dummy

#Start initial required looping to trigger enchant effects.

function cartographer_mob_abilities:loop/tick/base
function cartographer_mob_abilities:loop/1_second/base
function cartographer_mob_abilities:loop/3_second/base
function cartographer_mob_abilities:loop/5_second/base

#Give the players a tag for the load message.

tag @a add mob_abilities