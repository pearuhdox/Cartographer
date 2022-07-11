#Run for players with minimal reload
tellraw @s [{"text":"❰","color":"gold","bold":true},{"text":"⊰ Cartographer ⊱","color":"#FFE0A3","bold":true},{"text":"❱","color":"gold","bold":true},{"text":" Installed!","color":"#FFE0A3","bold":false}]

tellraw @s {"text":"-----------------------","color":"#FFE0A3","bold":true}

tellraw @s [{"text":"[⭐]","color":"#33FFF8","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to see who helped bring you Cartographer.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:load/credits"}},{"text":" ","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[⬇]","color":"#E8E8E8","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to visit Cartographer's home on Github.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"open_url","value":"https://github.com/pearuhdox/Cartographer"}},{"text":" ","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[✒]","color":"green","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to visit Cartographer's wiki on Github. Note that this wiki is designed to teach mappers how to use the pack, not players what is in the pack!","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"open_url","value":"https://github.com/pearuhdox/Cartographer/wiki/About-this-Wiki"}},{"text":" ","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[⚙]","color":"#E8E86D","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to configure various options in Cartographer.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.options_trig set 1"}}]

tellraw @s {"text":"-----------------------","color":"#FFE0A3","bold":true}

function cartographer_charon:load/load_check
function cartographer_custom_durability:load/load_check
function cartographer_custom_enchantments:load/load_check
function cartographer_custom_statuses:load/load_check
function cartographer_loot_additions:load/load_check
function cartographer_mimics:load/load_check
function cartographer_mob_abilities:load/load_check
function cartographer_potion_util:load/load_check
function cartographer_repair_stations:load/load_check