########################################
# File: Cartographer Core - Load / Options
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: Runs the dialogue box for options.
########################################

scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false



execute as @p at @s run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.75

execute as @p run function cartographer_core:load/spacer

tellraw @a[tag=!minimal_reload] [{"text":"❰","color":"gold","bold":true},{"text":"⊰ Cartographer ⊱","color":"#FFE0A3","bold":true},{"text":"❱","color":"gold","bold":true},{"text":"---------------------------","color":"#FFE0A3","bold":true}]
tellraw @a[tag=!minimal_reload] {"text":"A list of options that can be configured in Cartographer.","color":"#FFE0A3","bold":false,"italic":true}
tellraw @a[tag=!minimal_reload] {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

tellraw @p [{"text":"Core Options: ","color":"#FFE0A3","italic":false},{"text":"[Minimal Reload]","color":"#54FFFF","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Minimizes the reload information. When active, reload will show one line instead of the entire message. This option is set per player.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:options/do_minimal_reload"}},{"text":" ","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[Toggle Lexica Prompts]","color":"aqua","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Toggles chat prompts for advancement handbooks. This setting is set per player.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:options/disable_handbook_prompts"}}]
tellraw @p {"text":" ","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}}

execute if entity @p run function cartographer_custom_enchantments:load/options
#execute if entity @p run function cartographer_custom_statuses:load/options
#execute if entity @p run function cartographer_loot_additions:load/options
#execute if entity @p run function cartographer_mimics:load/options
execute if entity @p run function cartographer_mob_abilities:load/options
#execute if entity @p run function cartographer_potion_util:load/options
#execute if entity @p run function cartographer_repair_stations:load/options

tellraw @p {"text":"------------------------------------------","color":"#FFE0A3","bold":true}
tellraw @p [{"text":"[Return]","color":"#33FFF8","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return to the reload panel.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:load/reload_panel"}}]
tellraw @p {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

