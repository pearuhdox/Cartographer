########################################
# File: Cartographer Core - Load / Reload Panel
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: Reruns the reload panel chat popup.
########################################

tag @a add gmr_frozen
gamerule sendCommandFeedback false

scoreboard players enable @s ca.options_trig 

execute as @a at @s run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.75

execute if score $gl_reload_msg ca.gamerule matches 0 as @a[scores={ca.reload_type=0}] at @s run function cartographer_core:load/reload/full
execute if score $gl_reload_msg ca.gamerule matches 1 as @a[scores={ca.reload_type=0}] at @s run function cartographer_core:load/reload/minimal

execute as @a[scores={ca.reload_type=1}] at @s run function cartographer_core:load/reload/full
execute as @a[scores={ca.reload_type=2}] at @s run function cartographer_core:load/reload/minimal


tag @a remove ehid_check
tag @a remove pds_check
tag @a remove cdl_check

