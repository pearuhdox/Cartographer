scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false



execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

execute store result score $imd_res ca.gamerule run gamerule doImmediateRespawn

execute if score $imd_res ca.gamerule matches 0 run gamerule doImmediateRespawn true
execute if score $imd_res ca.gamerule matches 1 run gamerule doImmediateRespawn false

execute store result score $imd_res ca.gamerule run gamerule doImmediateRespawn

execute if score $imd_res ca.gamerule matches 1 run title @s actionbar [{"text":"Immediate Respawn ","color":"aqua","italic":false},{"text":"has been ","color":"#FFE0A3","italic":false},{"text":"ENABLED","color":"green","italic":false}]
execute if score $imd_res ca.gamerule matches 0 run title @s actionbar [{"text":"Immediate Respawn ","color":"aqua","italic":false},{"text":"has been ","color":"#FFE0A3","italic":false},{"text":"DISABLED","color":"red","italic":false}]

