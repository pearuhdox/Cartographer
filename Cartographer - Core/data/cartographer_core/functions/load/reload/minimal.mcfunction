function cartographer_core:load/spacer

#Run for players with minimal reload
tellraw @s [{"text":"❰","color":"gold","bold":true},{"text":"⊰ Cartographer ⊱","color":"#FFE0A3","bold":true},{"text":"❱","color":"gold","bold":true},{"text":" Installed!","color":"#FFE0A3","bold":false}]

tellraw @s {"text":"-----------------------","color":"#FFE0A3","bold":true}

execute unless score $#lib_bbl ca.installed matches 1 run function cartographer_core:load/bbl_warning
execute unless score $#lib_del ca.installed matches 1 run function cartographer_core:load/delta_warning
execute unless score $#lib_dies ca.installed matches 1 run function cartographer_core:load/dies_warning
execute unless score $#lib_ehid ca.installed matches 1 run function cartographer_core:load/ehid_warning
execute unless score $#lib_mot ca.installed matches 1 run function cartographer_core:load/mot_warning

tellraw @s [{"text":"[⭐]","color":"#33FFF8","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to see who helped bring you Cartographer.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:load/credits"}},{"text":" ","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[⬇]","color":"#E8E8E8","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to visit Cartographer's home on Github.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"open_url","value":"https://github.com/pearuhdox/Cartographer"}},{"text":" ","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[✒]","color":"green","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to visit Cartographer's wiki on Github. Note that this wiki is designed to teach mappers how to use the pack, not players what is in the pack!","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"open_url","value":"https://github.com/pearuhdox/Cartographer/wiki/About-this-Wiki"}},{"text":" ","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[⚙]","color":"#E8E86D","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to configure various options in Cartographer.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.options_trig set 1"}},{"text":" [»]","color":"#F04FF0","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click for detailed information on all installed library packs.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:load/reload/show_libraries"}},{"text":" [»]","color":"#21FF6B","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click for detailed information on all installed content packs.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:load/reload/show_installed"}}]

tellraw @s {"text":"-----------------------","color":"#FFE0A3","bold":true}