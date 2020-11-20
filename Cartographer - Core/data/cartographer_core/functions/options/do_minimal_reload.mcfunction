execute as @p at @s run playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 1 0.75
tag @p add minimal_reload
tellraw @p {"text":"------------------------------------------","color":"#FFE0A3","bold":true}
tellraw @p {"text":"Minimal Reload has been activated!","color":"#54FFFF","bold":false}
tellraw @p {"text":"------------------------------------------","color":"#FFE0A3","bold":true}
