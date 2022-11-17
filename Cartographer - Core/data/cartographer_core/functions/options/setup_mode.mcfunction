#gamerule sendCommandFeedback false

execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2
execute as @p at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.35 1

scoreboard players add $setup_mode ca.gamerule 1
execute if score $setup_mode ca.gamerule matches 2.. run scoreboard players set $setup_mode ca.gamerule 0

execute if score $setup_mode ca.gamerule matches 1 run title @s actionbar [{"text":"SETUP MODE ","color":"aqua","italic":false},{"text":"has been ","color":"#FFE0A3","italic":false},{"text":"ENABLED","color":"green","italic":false}]
execute if score $setup_mode ca.gamerule matches 0 run title @s actionbar [{"text":"SETUP MODE ","color":"aqua","italic":false},{"text":"has been ","color":"#FFE0A3","italic":false},{"text":"DISABLED","color":"red","italic":false}]

function cartographer_core:options/main

