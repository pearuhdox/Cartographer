scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false



execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

execute store result score $death_msg ca.gamerule run gamerule showDeathMessages

execute if score $death_msg ca.gamerule matches 0 run gamerule showDeathMessages true
execute if score $death_msg ca.gamerule matches 1 run gamerule showDeathMessages false

execute store result score $death_msg ca.gamerule run gamerule showDeathMessages

execute if score $death_msg ca.gamerule matches 1 run title @s actionbar [{"text":"Death Messages ","color":"aqua","italic":false},{"text":"have been ","color":"#FFE0A3","italic":false},{"text":"ENABLED","color":"green","italic":false}]
execute if score $death_msg ca.gamerule matches 0 run title @s actionbar [{"text":"Death Messages ","color":"aqua","italic":false},{"text":"have been ","color":"#FFE0A3","italic":false},{"text":"DISABLED","color":"red","italic":false}]

