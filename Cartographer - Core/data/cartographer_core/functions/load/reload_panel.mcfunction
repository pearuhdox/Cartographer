########################################
# File: Cartographer Core - Load / Reload Panel
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: Reruns the reload panel chat popup.
########################################

gamerule sendCommandFeedback false
schedule function cartographer_core:load/fix_gamerules 2t
schedule function cartographer_core:load/gamerule_states 3t

execute as @a at @s run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.75

execute if score $gl_reload_msg ca.gamerule matches 0 as @a at @s run function cartographer_core:load/reload/full
execute if score $gl_reload_msg ca.gamerule matches 1 as @a at @s run function cartographer_core:load/reload/minimal


schedule function cartographer_core:load/command_feedback 1t