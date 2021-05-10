########################################
# File: Cartographer Core - Loop / 1 Second
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: One Second Timer. Runs all Cartographer 1 Second Timers.
# Additional functions can be added to it.
########################################

#Run all Cartographer Effects from Core Timers.

schedule function cartographer_custom_enchantments:loop/1_second/base 1s
schedule function cartographer_custom_statuses:loop/1_second/base 1s
schedule function cartographer_mob_abilities:loop/1_second/base 1s
schedule function cartographer_repair_stations:loop/1_second/base 1s

#Out of Combat Test is done in Enchantments. Set this up here.
tag @a add out_of_combat

#Run all 1 second entity effects from here.
execute as @e[type=!#cartographer_core:not_tracked] at @s run function cartographer_core:loop/entity_calls/1_second


#Add any extra functions here!


#Add any extra functions above.

schedule function cartographer_core:loop/1_second/base 1s