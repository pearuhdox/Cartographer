execute store result score $cart_cmd_fdbk global_options run gamerule sendCommandFeedback
execute if score $cart_cmd_fdbk global_options matches 1 run gamerule sendCommandFeedback false 

execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

scoreboard players add $cart_ind_diff global_options 1
execute if score $cart_ind_diff global_options matches 2.. run scoreboard players set $cart_ind_diff global_options 0

execute if score $cart_ind_diff global_options matches 1 run title @p actionbar [{"text":"Independent Difficulty ","color":"aqua","italic":false},{"text":"has been ","color":"#FFE0A3","italic":false},{"text":"enabled","color":"dark_green"},{"text":"!","color":"#FFE0A3"}]
execute if score $cart_ind_diff global_options matches 0 run title @p actionbar [{"text":"Independent Difficulty ","color":"aqua","italic":false},{"text":"has been ","color":"#FFE0A3","italic":false},{"text":"disabled","color":"dark_green"},{"text":"!","color":"#FFE0A3"}]

schedule function cartographer_core:load/command_feedback 1t