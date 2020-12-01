execute store result score $cart_cmd_fdbk global_options run gamerule sendCommandFeedback
execute if score $cart_cmd_fdbk global_options matches 1 run gamerule sendCommandFeedback false 

execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

scoreboard players add @p ui_location 1
scoreboard players set @p[scores={ui_location=3..}] ui_location 0

title @p[scores={ui_location=0}] actionbar [{"text":"Toggle Charge Info ","color":"aqua","italic":false},{"text":"has been set to ","color":"#FFE0A3","italic":false},{"text":"Action Bar","color":"dark_green"},{"text":"!","color":"#FFE0A3"}]
title @p[scores={ui_location=1}] actionbar [{"text":"Toggle Charge Info ","color":"aqua","italic":false},{"text":"has been set to ","color":"#FFE0A3","italic":false},{"text":"Subtitle","color":"dark_green"},{"text":"!","color":"#FFE0A3"}]
title @p[scores={ui_location=2}] actionbar [{"text":"Toggle Charge Info ","color":"aqua","italic":false},{"text":"has been set to ","color":"#FFE0A3","italic":false},{"text":"Invisible","color":"dark_green"},{"text":"!","color":"#FFE0A3"}]

schedule function cartographer_core:load/command_feedback 1t