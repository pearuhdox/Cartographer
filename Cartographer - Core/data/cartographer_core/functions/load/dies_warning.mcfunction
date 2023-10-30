########################################
# File: Cartographer Core - BBL Missing Warning
#
# Author: PearUhDox | Date: 1/11/2022
#
# Description: Warns of a faulty installation in case the library is missing.
########################################

tellraw @s [{"text":"  ❱ ","color":"#FFE0A3"},{"text":"[!WARNING!]","color":"#BF0000","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":" Dynamic Item Existence System not found!","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}}]
tellraw @s {"text":"If you are using RockNRed's stand alone version, you may ignore this warning.","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}}
tellraw @s {"text":"If not, install it! Cartographer will fail to work properly without it!","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}}

playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 0.5
playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 0.625
playsound minecraft:entity.cat.death player @s ~ ~ ~ 1.5 0.8