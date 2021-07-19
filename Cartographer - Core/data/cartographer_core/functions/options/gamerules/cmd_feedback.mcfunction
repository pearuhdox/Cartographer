#gamerule sendCommandFeedback false

execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

execute store result score $cmd_fdbk ca.gamerule run gamerule sendCommandFeedback

execute if score $cmd_fdbk ca.gamerule matches 0 run gamerule sendCommandFeedback true
execute if score $cmd_fdbk ca.gamerule matches 1 run gamerule sendCommandFeedback false

execute store result score $cmd_fdbk ca.gamerule run gamerule sendCommandFeedback

execute if score $cmd_fdbk ca.gamerule matches 1 run title @s actionbar [{"text":"Command Feedback ","color":"aqua","italic":false},{"text":"has been ","color":"#FFE0A3","italic":false},{"text":"ENABLED","color":"green","italic":false}]
execute if score $cmd_fdbk ca.gamerule matches 0 run title @s actionbar [{"text":"Command Feedback ","color":"aqua","italic":false},{"text":"has been ","color":"#FFE0A3","italic":false},{"text":"DISABLED","color":"red","italic":false}]

function cartographer_core:options/gamerules

