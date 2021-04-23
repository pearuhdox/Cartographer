########################################
# File: Cartographer Core - Open (Lexica)
#
# Author: PearUhDox | Date: 3/23/2021
#
# Description: Opens the Lexica
########################################

execute if entity @s[tag=holding_lexica_m] run replaceitem entity @s weapon.mainhand knowledge_book{display:{Name:'{"text":"Lexica Cartographia","color":"#FFE0A3","bold":true,"italic":false}',Lore:['{"text":"Your in game guide to all things Cartographer.","color":"dark_gray","italic":false}','{"text":"A compendium that contains all discovered","color":"dark_gray","italic":false}','{"text":"knowledge of custom mechanics and features.","color":"dark_gray","italic":false}','{"text":" "}','[{"text":"[","color":"white","italic":false},{"keybind":"key.use","color":"aqua","italic":false},{"text":"] ","color":"white","italic":false},{"text":"to open this manual.","color":"dark_gray","italic":false}]','[{"text":"[","color":"white","italic":false},{"keybind":"key.use","color":"aqua","italic":false},{"text":" + ","color":"white","italic":false},{"keybind":"key.sneak","color":"aqua","italic":false},{"text":"] ","color":"white","italic":false},{"text":"to configure settings.","color":"dark_gray","italic":false}]']},HideFlags:1,Lexica:1,Enchantments:[{id:"minecraft:mending",lvl:1s}],Recipes:["minecraft:acacia_boat"]} 1
execute if entity @s[tag=holding_lexica_o] run replaceitem entity @s weapon.offhand knowledge_book{display:{Name:'{"text":"Lexica Cartographia","color":"#FFE0A3","bold":true,"italic":false}',Lore:['{"text":"Your in game guide to all things Cartographer.","color":"dark_gray","italic":false}','{"text":"A compendium that contains all discovered","color":"dark_gray","italic":false}','{"text":"knowledge of custom mechanics and features.","color":"dark_gray","italic":false}','{"text":" "}','[{"text":"[","color":"white","italic":false},{"keybind":"key.use","color":"aqua","italic":false},{"text":"] ","color":"white","italic":false},{"text":"to open this manual.","color":"dark_gray","italic":false}]','[{"text":"[","color":"white","italic":false},{"keybind":"key.use","color":"aqua","italic":false},{"text":" + ","color":"white","italic":false},{"keybind":"key.sneak","color":"aqua","italic":false},{"text":"] ","color":"white","italic":false},{"text":"to configure settings.","color":"dark_gray","italic":false}]']},HideFlags:1,Lexica:1,Enchantments:[{id:"minecraft:mending",lvl:1s}],Recipes:["minecraft:acacia_boat"]} 1

execute if entity @s[scores={lexica_sneak=1..},gamemode=creative] run function cartographer_core:load/load_message
execute if entity @s[scores={lexica_sneak=1..},gamemode=!creative] run function cartographer_core:lexica/options
execute if entity @s[scores={lexica_sneak=0}] run function cartographer_core:lexica/manual

tag @s remove holding_lexica_m
tag @s remove holding_lexica_o
tag @s remove holding_lexica
scoreboard players set @s use_lexica 0