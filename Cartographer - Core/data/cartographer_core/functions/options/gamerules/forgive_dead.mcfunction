gamerule sendCommandFeedback false
schedule function cartographer_core:load/fix_gamerules 2t
schedule function cartographer_core:load/gamerule_states 3t

execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

execute store result score $forgive ca.gamerule run gamerule forgiveDeadPlayers

execute if score $forgive ca.gamerule matches 0 run gamerule forgiveDeadPlayers true
execute if score $forgive ca.gamerule matches 1 run gamerule forgiveDeadPlayers false

execute store result score $forgive ca.gamerule run gamerule forgiveDeadPlayers

execute if score $forgive ca.gamerule matches 1 run title @s actionbar [{"text":"Forgive Dead Players ","color":"aqua","italic":false},{"text":"has been ","color":"#FFE0A3","italic":false},{"text":"ENABLED","color":"green","italic":false}]
execute if score $forgive ca.gamerule matches 0 run title @s actionbar [{"text":"Forgive Dead Players ","color":"aqua","italic":false},{"text":"has been ","color":"#FFE0A3","italic":false},{"text":"DISABLED","color":"red","italic":false}]

schedule function cartographer_core:load/command_feedback 1t