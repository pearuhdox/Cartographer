scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false

execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

execute unless score $no_anvil ca.gamerule matches 0.. run scoreboard players set $no_anvil ca.gamerule 0

scoreboard players operation $no_anvil_past ca.gamerule = $no_anvil ca.gamerule

execute if score $no_anvil_past ca.gamerule matches 0 run scoreboard players set $no_anvil ca.gamerule 1
execute if score $no_anvil_past ca.gamerule matches 1 run scoreboard players set $no_anvil ca.gamerule 0

scoreboard players set $no_anvil_past ca.gamerule -100

execute if score $no_anvil ca.gamerule matches 0 run title @s actionbar [{"text":"Anvils ","color":"aqua","italic":false},{"text":"have been ","color":"#FFE0A3","italic":false},{"text":"ENABLED","color":"green","italic":false}]
execute if score $no_anvil ca.gamerule matches 1 run title @s actionbar [{"text":"Anvils ","color":"aqua","italic":false},{"text":"have been ","color":"#FFE0A3","italic":false},{"text":"DISABLED","color":"red","italic":false}]

