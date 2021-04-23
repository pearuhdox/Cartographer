gamerule sendCommandFeedback false
schedule function cartographer_core:load/fix_gamerules 2t
schedule function cartographer_core:load/gamerule_states 3t

execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

execute store result score $day_cycle ca.gamerule run gamerule doDaylightCycle

execute if score $day_cycle ca.gamerule matches 0 run gamerule doDaylightCycle true
execute if score $day_cycle ca.gamerule matches 1 run gamerule doDaylightCycle false

execute if score $day_cycle ca.gamerule matches 1 run title @s actionbar [{"text":"Daylight Cycle ","color":"aqua","italic":false},{"text":"has been ","color":"#FFE0A3","italic":false},{"text":"ENABLED","color":"green","italic":false}]
execute if score $day_cycle ca.gamerule matches 0 run title @s actionbar [{"text":"Daylight Cycle ","color":"aqua","italic":false},{"text":"has been ","color":"#FFE0A3","italic":false},{"text":"DISABLED","color":"red","italic":false}]

schedule function cartographer_core:load/command_feedback 1t