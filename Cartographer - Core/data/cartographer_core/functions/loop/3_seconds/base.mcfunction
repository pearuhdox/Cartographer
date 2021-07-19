########################################
# File: Cartographer Core - Loop / 3 Seconds
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: 3 Second Timer. Runs all Cartographer 3 Second Timers.
# Additional functions can be added to it.
########################################

#Run all Cartographer Effects from Core Timers.

function cartographer_custom_enchantments:loop/3_second/base
function cartographer_mob_abilities:loop/3_second/base

#Run all 3 second entity effects from here.
execute as @e[type=!#cartographer_core:not_tracked] at @s run function cartographer_core:loop/entity_calls/3_seconds


#Add any extra functions here!



#Add any extra functions above.