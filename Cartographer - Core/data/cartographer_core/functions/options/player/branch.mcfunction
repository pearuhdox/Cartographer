
scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false



playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.75

execute as @s run function cartographer_core:load/spacer

scoreboard players enable @s ca.options_trig

tellraw @s [{"text":"❰","color":"gold","bold":true},{"text":"⊰ Player Options ⊱","color":"yellow","bold":true},{"text":"❱","color":"gold","bold":true},{"text":"-------------------------","color":"#FFE0A3","bold":true}]
tellraw @s {"text":"Tweak various settings of the pack!","color":"#FFE0A3","bold":false,"italic":true}
tellraw @s {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

tellraw @s [{"text":"Click on an option to toggle it!","color":"#FFF4D9","italic":true}]
tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s [{"text":"[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Core and Gamerules","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Tweak Vanilla and Core gamerules.","color":"#FFF4D9","italic":true}]}}]

tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]
tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Player Reload Message","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Toggle the reload message preset.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.options_trig set 100"}}]


tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]
tellraw @p {"text":"------------------------------------------","color":"#FFE0A3","bold":true}
tellraw @p [{"text":"[⏎]","color":"#33FFF8","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return to Options.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.options_trig set 2"}}]
tellraw @p {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

