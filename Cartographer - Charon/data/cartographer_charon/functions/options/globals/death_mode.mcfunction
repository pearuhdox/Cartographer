scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false

execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

scoreboard players add $death_mode ca.gamerule 1

execute if score $death_mode ca.gamerule matches 4.. run scoreboard players set $death_mode ca.gamerule 0

scoreboard players set $death_drop charon.gmr 0
scoreboard players set $collector charon.gmr 0
scoreboard players set $trader charon.gmr 0
scoreboard players set $cage charon.gmr 0

execute if score $death_mode ca.gamerule matches 0 run scoreboard players set $death_drop charon.gmr 1
execute if score $death_mode ca.gamerule matches 1 run scoreboard players set $collector charon.gmr 1
execute if score $death_mode ca.gamerule matches 2 run scoreboard players set $trader charon.gmr 1
execute if score $death_mode ca.gamerule matches 3 run scoreboard players set $cage charon.gmr 1

execute if score $death_mode ca.gamerule matches 0 run title @s actionbar [{"text":"Death Mode ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"DEATH DROP","color":"yellow","italic":false}]
execute if score $death_mode ca.gamerule matches 1 run title @s actionbar [{"text":"Death Mode ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"COLLECTOR","color":"yellow","italic":false}]
execute if score $death_mode ca.gamerule matches 2 run title @s actionbar [{"text":"Death Mode ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"TRADER","color":"yellow","italic":false}]
execute if score $death_mode ca.gamerule matches 3 run title @s actionbar [{"text":"Death Mode ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"CAGE","color":"yellow","italic":false}]