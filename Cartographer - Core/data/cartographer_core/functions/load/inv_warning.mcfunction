########################################
# File: Cartographer Core - INV Missing Warning
#
# Author: PearUhDox | Date: 7/23/2022
#
# Description: Warns of a faulty installation in case the library is missing.
########################################

tellraw @a [{"text":"  ❱ ","color":"#FFE0A3"},{"text":"[!WARNING!]","color":"#BF0000","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":" Inventory Manipulation not found!","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}}]
tellraw @a {"text":"You must use Cartographer's modified and provided version. McTsts's version is not Survival mode designed and may cause issues.","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}}