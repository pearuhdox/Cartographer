function cartographer_core:load/spacer

#Full reload
tellraw @s [{"text":"❰","color":"gold","bold":true},{"text":"⊰ Cartographer ⊱","color":"#FFE0A3","bold":true},{"text":"❱","color":"gold","bold":true},{"text":"---------------------------","color":"#FFE0A3","bold":true}]
tellraw @s {"text":"A set of custom mechanics, made by mappers, for mappers.","color":"#FFE0A3","bold":false,"italic":true}
tellraw @s {"text":"------------------------------------------","color":"#FFE0A3","bold":true}
tellraw @s [{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":"Core (V1.2)","color":"#F04FF0","hoverEvent":{"action":"show_text","contents":[{"text":"Cartographer's base mechanics. No module will work without  this one!","color":"#FFE0A3","italic":true}]}},{"text":" installed!","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]

function bb:load_message
execute if entity @s[tag=!bbl_check] run function cartographer_core:load/bbl_warning
function cd:load_message
execute if entity @s[tag=!cdl_check] run function cartographer_core:load/cdl_warning
function entityid:load_message
execute if entity @s[tag=!ehid_check] run function cartographer_core:load/ehid_warning
function suso.player_data:load_message
execute if entity @s[tag=!pds_check] run function cartographer_core:load/pds_warning
function inv:load_message
execute if entity @s[tag=!inv_check] run function cartographer_core:load/pds_warning
function motion:load_message
execute if entity @s[tag=!mot_check] run function cartographer_core:load/mot_warning
tellraw @s {"text":" ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}

tellraw @s {"text":"------------------------------------------","color":"#FFE0A3","bold":true}
#
tellraw @s [{"text":"[⭐]","color":"#33FFF8","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to see who helped bring you Cartographer.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:load/credits"}},{"text":" ","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[⬇]","color":"#E8E8E8","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to visit Cartographer's home on Github.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"open_url","value":"https://github.com/pearuhdox/Cartographer"}},{"text":" ","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[✒]","color":"green","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to visit Cartographer's wiki on Github. Note that this wiki is designed to teach mappers how to use the pack, not players what is in the pack!","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"open_url","value":"https://github.com/pearuhdox/Cartographer/wiki/About-this-Wiki"}},{"text":" ","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[⚙]","color":"#E8E86D","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to configure various options in Cartographer.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.options_trig set 1"}}]
#
tellraw @s {"text":"------------------------------------------","color":"#FFE0A3","bold":true}