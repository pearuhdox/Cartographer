########################################
# File: Cartographer Core - Load / Reload Panel
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: Reruns the reload panel chat popup.
########################################

scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false

scoreboard players enable @s ca.options_trig 

execute as @a at @s run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.75

execute if score $gl_reload_msg ca.gamerule matches 0 as @a[scores={ca.reload_type=0}] at @s run function cartographer_core:load/reload/full
execute if score $gl_reload_msg ca.gamerule matches 1 as @a[scores={ca.reload_type=0}] at @s run function cartographer_core:load/reload/minimal

execute as @a[scores={ca.reload_type=1}] at @s run function cartographer_core:load/reload/full
execute as @a[scores={ca.reload_type=2}] at @s run function cartographer_core:load/reload/minimal

tag @s remove ehid_check
tag @s remove pds_check
tag @s remove cdl_check
tag @s remove inv_check
tag @s remove bbl_check