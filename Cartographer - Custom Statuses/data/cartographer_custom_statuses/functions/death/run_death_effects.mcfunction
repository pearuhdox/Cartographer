#Move Down a bit so that death location is better placed.
execute if block ~ ~-0.5 ~ #cartographer_core:can_raycast run tp @s ~ ~-1 ~

#Infection Spread Effect - 1.19.4 Updated
execute if score @s ca.effect_infect matches 1.. at @s run function cartographer_custom_statuses:death/infect/spread

#Shackled Death Trigger
execute if score @s ca.effect_shackled matches 1.. at @s run function cartographer_custom_statuses:death/shackled/call

#Shackled Death Trigger
execute if score @s ca.effect_brittle_duration matches 1.. at @s run function cartographer_custom_statuses:death/brittle/call

kill @s