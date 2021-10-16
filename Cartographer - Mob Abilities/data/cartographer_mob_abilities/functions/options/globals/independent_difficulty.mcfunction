scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false

execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

scoreboard players add $gl_ind_diff ca.gamerule 1

execute if score $gl_ind_diff ca.gamerule matches 2 run scoreboard players set $gl_ind_diff ca.gamerule 0

execute if score $gl_ind_diff ca.gamerule matches 0 run title @s actionbar [{"text":"Independent Difficulty ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"DISABLED","color":"red","italic":false}]
execute if score $gl_ind_diff ca.gamerule matches 1 run title @s actionbar [{"text":"Independent Difficulty ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"ENABLED","color":"green","italic":false}]

function cartographer_mob_abilities:options/main