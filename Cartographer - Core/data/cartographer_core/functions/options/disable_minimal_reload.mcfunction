execute store result score $cart_cmd_fdbk global_options run gamerule sendCommandFeedback
execute if score $cart_cmd_fdbk global_options matches 1 run gamerule sendCommandFeedback false 

execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2
tag @p remove minimal_reload

title @p actionbar [{"text":"Minimal Reload ","color":"aqua","italic":false},{"text":"has been deactivated!","color":"#FFE0A3","italic":false}]

execute as @p run function cartographer_core:load/reload_panel

schedule function cartographer_core:load/command_feedback 1t