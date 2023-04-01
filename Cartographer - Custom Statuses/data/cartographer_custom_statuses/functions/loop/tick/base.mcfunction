#Tell Cartographer this pack is in use
scoreboard players set $custom_statuses ca.installed 1

#Run Player Effects
execute as @a at @s run function cartographer_custom_statuses:loop/tick/player

#Tick UUID Effects
function cartographer_custom_statuses:loop/tick/uuid_tick