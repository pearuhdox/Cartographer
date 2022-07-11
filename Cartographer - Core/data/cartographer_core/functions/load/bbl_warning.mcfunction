########################################
# File: Cartographer Core - BBL Missing Warning
#
# Author: PearUhDox | Date: 1/11/2022
#
# Description: Warns of a faulty installation in case the library is missing.
########################################

tellraw @a [{"text":"  ❱ ","color":"#FFE0A3"},{"text":"[!WARNING!]","color":"#BF0000","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":" Black Box Library not found!","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}}]
tellraw @a {"text":"If you are using RockNRed's stand alone version, you may ignore this warning.","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}}
tellraw @a {"text":"If not, install it! Cartographer will fail to work properly without it!","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}}
