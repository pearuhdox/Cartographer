scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false

execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

scoreboard players add $xp_rate ca.gamerule 1

execute if score $xp_rate ca.gamerule matches 6.. run scoreboard players set $xp_rate ca.gamerule 0

scoreboard players set $xp_percent charon.gmr 0

execute if score $xp_rate ca.gamerule matches 0 run scoreboard players set $xp_percent charon.gmr -1
execute if score $xp_rate ca.gamerule matches 1 run scoreboard players set $xp_percent charon.gmr 100
execute if score $xp_rate ca.gamerule matches 2 run scoreboard players set $xp_percent charon.gmr 75
execute if score $xp_rate ca.gamerule matches 3 run scoreboard players set $xp_percent charon.gmr 50
execute if score $xp_rate ca.gamerule matches 4 run scoreboard players set $xp_percent charon.gmr 25
execute if score $xp_rate ca.gamerule matches 5 run scoreboard players set $xp_percent charon.gmr 0

execute if score $xp_rate ca.gamerule matches 0 run title @s actionbar [{"text":"Experience Rate ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"DROP NONE","color":"green","italic":false}]
execute if score $xp_rate ca.gamerule matches 1 run title @s actionbar [{"text":"Experience Rate ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"DROP ALL | SAVE 100%","color":"yellow","italic":false}]
execute if score $xp_rate ca.gamerule matches 2 run title @s actionbar [{"text":"Experience Rate ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"DROP ALL | SAVE 75%","color":"yellow","italic":false}]
execute if score $xp_rate ca.gamerule matches 3 run title @s actionbar [{"text":"Experience Rate ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"DROP ALL | SAVE 50%","color":"yellow","italic":false}]
execute if score $xp_rate ca.gamerule matches 4 run title @s actionbar [{"text":"Experience Rate ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"DROP ALL | SAVE 25%","color":"yellow","italic":false}]
execute if score $xp_rate ca.gamerule matches 5 run title @s actionbar [{"text":"Experience Rate ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"DROP ALL | SAVE NONE","color":"red","italic":false}]