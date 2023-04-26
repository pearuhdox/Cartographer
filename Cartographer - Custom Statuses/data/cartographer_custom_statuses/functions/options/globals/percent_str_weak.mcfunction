scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false

execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

scoreboard players add $percent_str_weak ca.gamerule 1

execute if score $percent_str_weak ca.gamerule matches 2 run scoreboard players set $percent_str_weak ca.gamerule 0


execute if score $percent_str_weak ca.gamerule matches 1 run title @s actionbar [{"text":"Strength/Weakness Scaling ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"PERCENTAGE","color":"yellow","italic":false}]
execute if score $percent_str_weak ca.gamerule matches 0 run title @s actionbar [{"text":"Strength/Weakness Scaling ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"VANILLA","color":"yellow","italic":false}]