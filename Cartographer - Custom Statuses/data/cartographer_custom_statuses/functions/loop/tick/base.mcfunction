#Tell Cartographer this pack is in use
scoreboard players set $custom_statuses ca.installed 1

#Tick UUID Effects
function cartographer_custom_statuses:loop/tick/uuid_tick

#Reduce AEC to Mob Timer
execute if score $timer ca.aec_to_mob matches 1.. run scoreboard players remove $timer ca.aec_to_mob 1