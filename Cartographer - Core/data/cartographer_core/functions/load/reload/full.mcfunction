function cartographer_core:load/spacer

#Full reload
tellraw @s [{"text":"❰","color":"gold","bold":true},{"text":"⊰ Cartographer ⊱","color":"#FFE0A3","bold":true},{"text":"❱","color":"gold","bold":true},{"text":"---------------------","color":"#FFE0A3","bold":true}]
tellraw @s {"text":"A set of custom mechanics, made by mappers, for mappers.","color":"#FFE0A3","bold":false,"italic":true}
tellraw @s {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

tellraw @s [{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":"Version: ","color":"#C4FFFF","bold":false},{"text":"December 2022 Release for MC 1.19.3","color":"white","underlined":true}]

tellraw @s {"text":" ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}

tellraw @s [{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":"Cartographer Core","color":"#F04FF0","hoverEvent":{"action":"show_text","contents":[{"text":"Cartographer's Libraries, Setup, and Helper Functions. Nothing will work without Core and all Libraries properly loaded!","color":"#FFE0A3","italic":true}]}},{"text":" installed!","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]

execute if score $#lib_all_found ca.installed matches 1 run tellraw @s [{"text":"  ❱ ","color":"#FFE0A3"},{"text":"All Library Packs","color":"#F04FF0","hoverEvent":{"action":"show_text","contents":[{"text":"Library packs made and provided by gibbsly, Suso, RockNRed, McTsts, CooleyBrekka, and PearUhDox.","color":"#FFE0A3","italic":true}]}},{"text":" installed! ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[»]","color":"#FFFFFF","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click for detailed information on all installed library packs.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:load/reload/show_libraries"}}]
execute unless score $#lib_all_found ca.installed matches 1 run tellraw @s [{"text":"  ❱ ","color":"#FFE0A3"},{"text":"Missing Library Packs! ","color":"red"},{"text":"[»]","color":"#FFFFFF","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click for detailed information on all installed packs.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:load/reload/show_libraries"}}]

execute unless score $#lib_bbl ca.installed matches 1 run function cartographer_core:load/bbl_warning
execute unless score $#lib_del ca.installed matches 1 run function cartographer_core:load/delta_warning
execute unless score $#lib_dies ca.installed matches 1 run function cartographer_core:load/dies_warning
execute unless score $#lib_ehid ca.installed matches 1 run function cartographer_core:load/ehid_warning
execute unless score $#lib_inv ca.installed matches 1 run function cartographer_core:load/inv_warning
execute unless score $#lib_pds ca.installed matches 1 run function cartographer_core:load/pds_warning
execute unless score $#lib_mot ca.installed matches 1 run function cartographer_core:load/mot_warning

tellraw @s {"text":" ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}

tellraw @s [{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":"Cartographer Content","color":"#21FF6B","hoverEvent":{"action":"show_text","contents":[{"text":"Cartographer's content and mechanic packs.","color":"#FFE0A3","italic":true}]}},{"text":" installed!","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]
execute if score $z_detect_packs ca.installed matches 1.. run tellraw @s [{"text":"  ❱ ","color":"#FFE0A3"},{"text":"Content Packs Detected!","color":"#21FF6B","hoverEvent":{"action":"show_text","contents":[{"text":"Content packs made by PearUhDox, with assistance from Asometric, Suso, and RockNRed.","color":"#FFE0A3","italic":true}]}},{"text":" installed! ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[»]","color":"#FFFFFF","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click for detailed information on all installed content packs.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:load/reload/show_installed"}}]
execute unless score $z_detect_packs ca.installed matches 1.. run tellraw @s [{"text":"  ❱ ","color":"#FFE0A3"},{"text":"No Content Packs Detected! ","color":"red"}]


tellraw @s {"text":"------------------------------------------","color":"#FFE0A3","bold":true}
#
tellraw @s [{"text":"[⭐]","color":"#33FFF8","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to see who helped bring you Cartographer.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:load/credits"}},{"text":" ","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[⬇]","color":"#E8E8E8","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to visit Cartographer's home on Github.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"open_url","value":"https://github.com/pearuhdox/Cartographer"}},{"text":" ","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[✒]","color":"green","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to visit Cartographer's wiki on Github. Note that this wiki is designed to teach mappers how to use the pack, not players what is in the pack!","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"open_url","value":"https://github.com/pearuhdox/Cartographer/wiki/About-this-Wiki"}},{"text":" ","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"[⚙]","color":"#E8E86D","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to configure various options in Cartographer.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.options_trig set 1"}}]
#
tellraw @s {"text":"------------------------------------------","color":"#FFE0A3","bold":true}


execute if score @s menu matches 1 run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.75
scoreboard players set @s menu 0