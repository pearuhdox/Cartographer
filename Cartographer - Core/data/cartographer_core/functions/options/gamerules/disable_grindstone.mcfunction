gamerule sendCommandFeedback false
schedule function cartographer_core:load/fix_gamerules 2t
schedule function cartographer_core:load/gamerule_states 3t

execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

execute unless score $no_grindstone ca.gamerule matches 0.. run scoreboard players set $no_grindstone ca.gamerule 0

scoreboard players operation $no_grindstone_past ca.gamerule = $no_grindstone ca.gamerule

execute if score $no_grindstone_past ca.gamerule matches 0 run scoreboard players set $no_grindstone ca.gamerule 1
execute if score $no_grindstone_past ca.gamerule matches 1 run scoreboard players set $no_grindstone ca.gamerule 0

scoreboard players set $no_grindstone_past ca.gamerule -100

execute if score $no_grindstone ca.gamerule matches 0 run title @s actionbar [{"text":"Grindstones ","color":"aqua","italic":false},{"text":"have been ","color":"#FFE0A3","italic":false},{"text":"ENABLED","color":"green","italic":false}]
execute if score $no_grindstone ca.gamerule matches 1 run title @s actionbar [{"text":"Grindstones ","color":"aqua","italic":false},{"text":"have been ","color":"#FFE0A3","italic":false},{"text":"DISABLED","color":"red","italic":false}]

schedule function cartographer_core:load/command_feedback 1t