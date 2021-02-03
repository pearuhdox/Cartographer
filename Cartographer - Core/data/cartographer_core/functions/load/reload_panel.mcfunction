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

execute as @p at @s run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.75

execute as @p[tag=!minimal_reload] run function cartographer_core:load/spacer

#Run for players without minimal reload
tellraw @p[tag=!minimal_reload] [{"text":"❰","color":"gold","bold":true},{"text":"⊰ Cartographer ⊱","color":"#FFE0A3","bold":true},{"text":"❱","color":"gold","bold":true},{"text":"---------------------------","color":"#FFE0A3","bold":true}]
tellraw @p[tag=!minimal_reload] {"text":"A set of custom mechanics, made by mappers, for mappers.","color":"#FFE0A3","bold":false,"italic":true}
tellraw @p[tag=!minimal_reload] {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

#Run for players with minimal reload
tellraw @p[tag=minimal_reload] [{"text":"❰","color":"gold","bold":true},{"text":"⊰ Cartographer ⊱","color":"#FFE0A3","bold":true},{"text":"❱","color":"gold","bold":true},{"text":" Installed!","color":"#FFE0A3","bold":false}]
tellraw @p[tag=minimal_reload] [{"text":"[Disable Minimal Reload]","color":"#54FFFF","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Disables minimal reload, reverting back to the default reload message.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:options/disable_minimal_reload"}},{"text":" ","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[Credits]","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to see who helped bring you Cartographer.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:load/credits"}}]

#Without minimal reload
tellraw @p[tag=!minimal_reload] [{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":"Core (V1.2)","color":"#F04FF0","hoverEvent":{"action":"show_text","contents":[{"text":"Cartographer's base mechanics. No module will work without  this one!","color":"#FFE0A3","italic":true}]}},{"text":" installed!","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]
tellraw @p[tag=!minimal_reload] {"text":" ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}

execute if entity @p[tag=!minimal_reload] run function cartographer_custom_enchantments:load/load_message
execute if entity @p[tag=!minimal_reload] run function cartographer_custom_statuses:load/load_message
execute if entity @a[tag=!minimal_reload] run function cartographer_loot_additions:load/load_message
execute if entity @p[tag=!minimal_reload] run function cartographer_mimics:load/load_message
execute if entity @p[tag=!minimal_reload] run function cartographer_mob_abilities:load/load_message
execute if entity @a[tag=!minimal_reload] run function cartographer_pot_injector:load/load_message
execute if entity @p[tag=!minimal_reload] run function cartographer_repair_stations:load/load_message

tellraw @p[tag=!minimal_reload] {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

tellraw @p[tag=!minimal_reload] [{"text":"[Credits]","color":"#33FFF8","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to see who helped bring you Cartographer.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:load/credits"}},{"text":" ","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[Website]","color":"#E8E8E8","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to visit Cartographer's home on Github.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"open_url","value":"https://github.com/pearuhdox/Cartographer"}},{"text":" ","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[Wiki]","color":"green","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to visit Cartographer's wiki on Github. Note that this wiki is designed to teach mappers how to use the pack, not players what is in the pack!","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"open_url","value":"https://github.com/pearuhdox/Cartographer/wiki/About-this-Wiki"}},{"text":" ","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[Options]","color":"#E8E86D","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to configure various options in Cartographer.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:load/options"}}]

tellraw @p[tag=!minimal_reload] {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

schedule function cartographer_core:load/command_feedback 1t