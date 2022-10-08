scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false

execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

scoreboard players add $fixed_home charon.gmr 1

execute if score $fixed_home charon.gmr matches 3.. run scoreboard players set $fixed_home charon.gmr 0

execute if score $fixed_home charon.gmr matches 0 run title @s actionbar [{"text":"Void Home Ruleset ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"DISABLED","color":"red","italic":false}]
execute if score $fixed_home charon.gmr matches 1 run title @s actionbar [{"text":"Void Home Ruleset ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"Only Void Deaths","color":"yellow","italic":false}]
execute if score $fixed_home charon.gmr matches 2 run title @s actionbar [{"text":"Void Home Ruleset ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"All Deaths","color":"yellow","italic":false}]
