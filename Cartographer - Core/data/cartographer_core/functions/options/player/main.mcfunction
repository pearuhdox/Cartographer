
scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false



playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.75

execute as @s run function cartographer_core:load/spacer

scoreboard players enable @s ca.options_trig

tellraw @s [{"text":"❰","color":"gold","bold":true},{"text":"⊰ Player Options ⊱","color":"yellow","bold":true},{"text":"❱","color":"gold","bold":true},{"text":"-------------------------","color":"#FFE0A3","bold":true}]
tellraw @s {"text":"Tweak various player options...","color":"#FFE0A3","bold":false,"italic":true}
tellraw @s {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

tellraw @s [{"text":"Click on an option to see more information!","color":"#FFF4D9","italic":true}]
tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s [{"text":"[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"text":"Core and Gamerules","color":"#F04FF0","bold":false,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Tweak Vanilla and Core gamerules.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.options_trig set 3"}}]

tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

execute if entity @p run function cartographer_custom_enchantments:options/player/header
#execute if entity @p run function cartographer_custom_statuses:options/header
#execute if entity @p run function cartographer_loot_additions:load/options/header
#execute if entity @p run function cartographer_mimics:load/options/header
#execute if entity @p run function cartographer_mob_abilities:options/header
#execute if entity @p run function cartographer_potion_util:load/options/header
#execute if entity @p run function cartographer_repair_stations:load/options/header

tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]
tellraw @p {"text":"------------------------------------------","color":"#FFE0A3","bold":true}
tellraw @p [{"text":"[⏎]","color":"#33FFF8","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return to the reload panel.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:load/reload_panel"}}]
tellraw @p {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

