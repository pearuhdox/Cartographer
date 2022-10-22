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
tellraw @s [{"text":"❰","color":"gold","bold":true},{"text":"⊰ Cartographer ⊱","color":"#FFE0A3","bold":true},{"text":"❱","color":"gold","bold":true},{"text":"---------------------------","color":"#FFE0A3","bold":true}]
tellraw @s {"text":"All currently installed library packs.","color":"#FFE0A3","bold":false,"italic":true}
tellraw @s {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

execute if score $#lib_bbl ca.installed matches 1 run tellraw @s [{"text":"  ❱ ","color":"#FFE0A3"},{"text":"Black Box Library by RockNRed (V1.0)","color":"#F04FF0","hoverEvent":{"action":"show_text","contents":[{"text":"A library module by RockNRed and PearUhDox. Handles miscellaneous functions and utilites.","color":"#FFE0A3","italic":true}]}},{"text":" installed!","color":"#FFE0A3"}]
execute if score $#lib_cdl ca.installed matches 1 run tellraw @s [{"text":"  ❱ ","color":"#FFE0A3"},{"text":"Common Damage Library by RockNRed (V1.2)","color":"#F04FF0","hoverEvent":{"action":"show_text","contents":[{"text":"A library module by RockNRed, PearUhDox, and gibbsly. Handles dealing damage and healing to players and mobs.","color":"#FFE0A3","italic":true}]}},{"text":" installed!","color":"#FFE0A3"}]
execute if score $#lib_ehid ca.installed matches 1 run tellraw @s [{"text":"  ❱ ","color":"#FFE0A3"},{"text":"Entity Hit Detection by gibbsly (V1.0)","color":"#F04FF0","hoverEvent":{"action":"show_text","contents":[{"text":"A library module by gibbsly. Runs entity hit and player hit detection.","color":"#FFE0A3","italic":true}]}},{"text":" installed!","color":"#FFE0A3"}]
execute if score $#lib_inv ca.installed matches 1 run tellraw @s [{"text":"  ❱ ","color":"#FFE0A3"},{"text":"Inventory Manipulation by McTsts (V1.0)","color":"#F04FF0","hoverEvent":{"action":"show_text","contents":[{"text":"A library module by McTsts. Allows for player inventory saving and loading.","color":"#FFE0A3","italic":true}]}},{"text":" installed!","color":"#FFE0A3"}]
execute if score $#lib_pds ca.installed matches 1 run tellraw @s [{"text":"  ❱ ","color":"#FFE0A3"},{"text":"Player Data Storage by Suso (V1.0)","color":"#F04FF0","hoverEvent":{"action":"show_text","contents":[{"text":"A library module by Suso. Allows for player NBT handling.","color":"#FFE0A3","italic":true}]}},{"text":" installed!","color":"#FFE0A3"}]
execute if score $#lib_mot ca.installed matches 1 run tellraw @s [{"text":"  ❱ ","color":"#FFE0A3"},{"text":"Mob Motion by Suso & CooleyBrekka (V1.0)","color":"#F04FF0","hoverEvent":{"action":"show_text","contents":[{"text":"A library module by Suso. Follows the interface defined by CooleyBrekka. Allows for updating and giving mobs fluid motion.","color":"#FFE0A3","italic":true}]}},{"text":" installed!","color":"#FFE0A3"}]

tellraw @s {"text":"------------------------------------------","color":"#FFE0A3","bold":true}
tellraw @s [{"text":"[⏎]","color":"#33FFF8","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return to the reload panel.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:load/reload_panel"}}]
tellraw @s {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

