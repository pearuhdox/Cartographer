gamerule sendCommandFeedback false
schedule function cartographer_core:load/fix_gamerules 2t
schedule function cartographer_core:load/gamerule_states 3t

execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

execute store result score $keep_inv ca.gamerule run gamerule keepInventory

execute if score $keep_inv ca.gamerule matches 0 run gamerule keepInventory true
execute if score $keep_inv ca.gamerule matches 1 run gamerule keepInventory false

execute store result score $keep_inv ca.gamerule run gamerule keepInventory

execute if score $keep_inv ca.gamerule matches 1 run title @s actionbar [{"text":"Keep Inventory ","color":"aqua","italic":false},{"text":"has been ","color":"#FFE0A3","italic":false},{"text":"ENABLED","color":"green","italic":false}]
execute if score $keep_inv ca.gamerule matches 0 run title @s actionbar [{"text":"Keep Inventory ","color":"aqua","italic":false},{"text":"has been ","color":"#FFE0A3","italic":false},{"text":"DISABLED","color":"red","italic":false}]

schedule function cartographer_core:load/command_feedback 1t