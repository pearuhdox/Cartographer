scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false



execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

execute store result score $insomnia ca.gamerule run gamerule doInsomnia

execute if score $insomnia ca.gamerule matches 0 run gamerule doInsomnia true
execute if score $insomnia ca.gamerule matches 1 run gamerule doInsomnia false

execute store result score $insomnia ca.gamerule run gamerule doInsomnia

execute if score $insomnia ca.gamerule matches 1 run title @s actionbar [{"text":"Insomnia ","color":"aqua","italic":false},{"text":"has been ","color":"#FFE0A3","italic":false},{"text":"ENABLED","color":"green","italic":false}]
execute if score $insomnia ca.gamerule matches 0 run title @s actionbar [{"text":"Insomnia ","color":"aqua","italic":false},{"text":"has been ","color":"#FFE0A3","italic":false},{"text":"DISABLED","color":"red","italic":false}]

