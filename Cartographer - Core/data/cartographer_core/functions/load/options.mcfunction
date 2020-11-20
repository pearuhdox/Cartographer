execute as @p at @s run playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 1 0.75

tellraw @a [{"text":"Core Options: ","color":"#FFE0A3","italic":false},{"text":"[Minimal Reload]","color":"#54FFFF","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Minimizes the reload information. When active, reload will show one line instead of the entire message. This option is set per player.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:options/do_minimal_reload"}}]

tellraw @p {"text":"------------------------------------------","color":"#FFE0A3","bold":true}
