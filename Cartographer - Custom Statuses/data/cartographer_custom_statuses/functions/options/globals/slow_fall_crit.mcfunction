scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false

execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

scoreboard players add $slow_fall_crit ca.gamerule 1

execute if score $slow_fall_crit ca.gamerule matches 2 run scoreboard players set $slow_fall_crit ca.gamerule 0


execute if score $slow_fall_crit ca.gamerule matches 1 run title @s actionbar [{"text":"Blindness Crits ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"ENABLED","color":"green","italic":false}]
execute if score $slow_fall_crit ca.gamerule matches 0 run title @s actionbar [{"text":"Blindness Crits ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"DISABLED","color":"red","italic":false}]