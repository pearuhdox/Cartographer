
scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false



playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.75

execute as @s run function cartographer_core:load/spacer

scoreboard players enable @s ca.lexica_trig

tellraw @s [{"text":"❰","color":"gold","bold":true},{"text":"⊰ Options ⊱","color":"yellow","bold":true},{"text":"❱","color":"gold","bold":true},{"text":"---------------------","color":"#FFE0A3","bold":true}]
tellraw @s {"text":"Tweak various settings of the pack!","color":"#FFE0A3","bold":false,"italic":true}
tellraw @s {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

tellraw @s [{"text":"Click on an option to see more information!","color":"#FFF4D9","italic":true}]
tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s [{"text":"[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"text":"Enable / Disable Setup Mode","color":"green","bold":false,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Enable / Disable Setup Mode. While Enabled, allows operator settup for Loot Additions and Charon placeables. Disabling improves performance and is recommended for finished maps.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:options/setup_mode"}}]
tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]


tellraw @s [{"text":"[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"text":"Core and Gamerules","color":"#F04FF0","bold":false,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Tweak Cartographer Core gamerules that affect all packs.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:options/gamerules"}}]

tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

function cartographer_charon:options/header
function cartographer_custom_enchantments:options/header
function cartographer_custom_statuses:options/header
function cartographer_loot_table_tweaks:options/header
function cartographer_mob_abilities:options/header
function cartographer_mimics:options/header


tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]
tellraw @p {"text":"------------------------------------------","color":"#FFE0A3","bold":true}
tellraw @p [{"text":"[⏎]","color":"#33FFF8","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return to the reload panel.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:load/reload_panel"}}]
tellraw @p {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

