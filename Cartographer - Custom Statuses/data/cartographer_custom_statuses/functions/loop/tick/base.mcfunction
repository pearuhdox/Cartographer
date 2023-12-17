#Tell Cartographer this pack is in use
scoreboard players set $custom_statuses ca.installed 1

#Reduce AEC to Mob Timer
execute if score $timer ca.aec_to_mob matches 1.. run scoreboard players remove $timer ca.aec_to_mob 1

#UUID Tick For Death Effects
function cartographer_custom_statuses:loop/tick/uuid_tick
