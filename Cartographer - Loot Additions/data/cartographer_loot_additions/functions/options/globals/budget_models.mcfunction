scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false

execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

scoreboard players add $gl_budget_models ca.gamerule 1

execute if score $gl_budget_models ca.gamerule matches 2 run scoreboard players set $gl_budget_models ca.gamerule 0

execute if score $gl_budget_models ca.gamerule matches 0 run title @s actionbar [{"text":"Budget Models ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"DISABLED","color":"red","italic":false}]
execute if score $gl_budget_models ca.gamerule matches 1 run title @s actionbar [{"text":"Budget Models ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"ENABLED","color":"green","italic":false}]

function cartographer_loot_additions:options/main