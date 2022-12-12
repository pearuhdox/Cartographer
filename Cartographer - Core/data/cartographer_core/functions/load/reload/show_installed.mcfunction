########################################
# File: Cartographer Core - Load / Setup
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: The dialogue box for displaying credits.
########################################

scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false



function cartographer_core:load/spacer

playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.75
tellraw @s [{"text":"❰","color":"gold","bold":true},{"text":"⊰ Cartographer ⊱","color":"#FFE0A3","bold":true},{"text":"❱","color":"gold","bold":true},{"text":"---------------------","color":"#FFE0A3","bold":true}]
tellraw @s {"text":"All currently installed content packs.","color":"#FFE0A3","bold":false,"italic":true}
tellraw @s {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

execute if score $charon ca.installed matches 1 run function cartographer_charon:load/load_message
execute if score $custom_durability ca.installed matches 1 run function cartographer_custom_durability:load/load_message
execute if score $custom_enchantments ca.installed matches 1 run function cartographer_custom_enchantments:load/load_message
execute if score $custom_statuses ca.installed matches 1 run function cartographer_custom_statuses:load/load_message
execute if score $loot_additions ca.installed matches 1 run function cartographer_loot_additions:load/load_message
execute if score $loot_table_tweaks ca.installed matches 1 run function cartographer_loot_table_tweaks:load/load_message
execute if score $mimics ca.installed matches 1 run function cartographer_mimics:load/load_message
execute if score $mob_abilities ca.installed matches 1 run function cartographer_mob_abilities:load/load_message
execute if score $repair_stations ca.installed matches 1 run function cartographer_repair_stations:load/load_message

tellraw @s {"text":"------------------------------------------","color":"#FFE0A3","bold":true}
tellraw @s [{"text":"[⏎]","color":"#33FFF8","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return to the reload panel.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:load/reload_panel"}}]
tellraw @s {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

