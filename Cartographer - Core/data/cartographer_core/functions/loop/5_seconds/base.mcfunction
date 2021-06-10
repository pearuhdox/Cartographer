########################################
# File: Cartographer Core - Loop / 5 Seconds
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: 5 Second Timer. Runs all Cartographer 5 Second Timers.
# Additional functions can be added to it.
########################################

#Run all Cartographer Effects from Core Timers.
schedule function cartographer_mimics:loop/5_second/base 5s
schedule function cartographer_mob_abilities:loop/5_second/base 5s

#Run all 5 second entity effects here.
execute as @e[type=!#cartographer_core:not_tracked] at @s run function cartographer_core:loop/entity_calls/5_seconds

#Add any extra functions here!



#Add any extra functions above.

schedule function cartographer_core:loop/5_seconds/base 5s