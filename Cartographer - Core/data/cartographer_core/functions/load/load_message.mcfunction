########################################
# File: Cartographer Core - Load / Load Message
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: The initial load message created by Cartographer on reload.
########################################

#scoreboard players set $gmr_freeze ca.mutex 1
#gamerule sendCommandFeedback false



execute as @a at @s run playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 1 0.75

execute as @a[tag=!minimal_reload] run function cartographer_core:load/spacer

#Run for players without minimal reload
tellraw @a[tag=!minimal_reload] [{"text":"❰","color":"gold","bold":true},{"text":"⊰ Cartographer ⊱","color":"#FFE0A3","bold":true},{"text":"❱","color":"gold","bold":true},{"text":"---------------------------","color":"#FFE0A3","bold":true}]
tellraw @a[tag=!minimal_reload] {"text":"A set of custom mechanics, made by mappers, for mappers.","color":"#FFE0A3","bold":false,"italic":true}
tellraw @a[tag=!minimal_reload] {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

#Run for players with minimal reload
tellraw @a[tag=minimal_reload] [{"text":"❰","color":"gold","bold":true},{"text":"⊰ Cartographer ⊱","color":"#FFE0A3","bold":true},{"text":"❱","color":"gold","bold":true},{"text":" Installed!","color":"#FFE0A3","bold":false}]
tellraw @a[tag=minimal_reload] [{"text":"[Disable Minimal Reload]","color":"#54FFFF","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Disables minimal reload, reverting back to the default reload message.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:options/disable_minimal_reload"}},{"text":" ","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[Credits]","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to see who helped bring you Cartographer.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:load/credits"}}]

#Without minimal reload
tellraw @a[tag=!minimal_reload] [{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":"Core (V1.2)","color":"#F04FF0","hoverEvent":{"action":"show_text","contents":[{"text":"Cartographer's base mechanics. No module will work without  this one!","color":"#FFE0A3","italic":true}]}},{"text":" installed!","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]
execute if entity @p[tag=!minimal_reload] run function entityid:load_message
execute if entity @p[tag=!minimal_reload,tag=!ehid_check] run function cartographer_core:load/ehid_warning
execute if entity @p[tag=!minimal_reload] run function suso.player_data:load_message
execute if entity @p[tag=!minimal_reload,tag=!pds_check] run function cartographer_core:load/pds_warning
execute if entity @p[tag=!minimal_reload] run function cd:load_message
execute if entity @p[tag=!minimal_reload,tag=!cdl_check] run function cartographer_core:load/cdl_warning
tellraw @a[tag=!minimal_reload] {"text":" ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}

tag @s remove ehid_check
tag @s remove pds_check
tag @s remove cdl_check
tag @s remove inv_check
tag @s remove bbl_check

execute if entity @a[tag=!minimal_reload] run function cartographer_custom_enchantments:load/load_message
execute if entity @a[tag=!minimal_reload] run function cartographer_custom_statuses:load/load_message
execute if entity @a[tag=!minimal_reload] run function cartographer_loot_additions:load/load_message
execute if entity @a[tag=!minimal_reload] run function cartographer_mimics:load/load_message
execute if entity @a[tag=!minimal_reload] run function cartographer_mob_abilities:load/load_message
execute if entity @a[tag=!minimal_reload] run function cartographer_potion_util:load/load_message
execute if entity @a[tag=!minimal_reload] run function cartographer_repair_stations:load/load_message

tellraw @a[tag=!minimal_reload] {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

tellraw @a[tag=!minimal_reload] [{"text":"[⭐]","color":"#33FFF8","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to see who helped bring you Cartographer.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:load/credits"}},{"text":" ","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[⬇]","color":"#E8E8E8","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to visit Cartographer's home on Github.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"open_url","value":"https://github.com/pearuhdox/Cartographer"}},{"text":" ","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[✒]","color":"green","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to visit Cartographer's wiki on Github. Note that this wiki is designed to teach mappers how to use the pack, not players what is in the pack!","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"open_url","value":"https://github.com/pearuhdox/Cartographer/wiki/About-this-Wiki"}},{"text":" ","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[⚙]","color":"#E8E86D","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to configure various options in Cartographer.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:load/options"}}]

tellraw @a[tag=!minimal_reload] {"text":"------------------------------------------","color":"#FFE0A3","bold":true}