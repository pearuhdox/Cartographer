scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false

execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

scoreboard players add $drop_rate_preset ca.gamerule 1

execute if score $drop_rate_preset ca.gamerule matches 3.. run scoreboard players set $drop_rate_preset ca.gamerule 0

#Default
execute if score $drop_rate_preset ca.gamerule matches 0 run scoreboard players set $drop_coeff charon.gmr 5
execute if score $drop_rate_preset ca.gamerule matches 0 run scoreboard players set $inv_coeff charon.gmr 9
execute if score $drop_rate_preset ca.gamerule matches 0 run scoreboard players set $scale_coeff charon.gmr 0

#Gentle
execute if score $drop_rate_preset ca.gamerule matches 1 run scoreboard players set $drop_coeff charon.gmr 6
execute if score $drop_rate_preset ca.gamerule matches 1 run scoreboard players set $inv_coeff charon.gmr 6
execute if score $drop_rate_preset ca.gamerule matches 1 run scoreboard players set $scale_coeff charon.gmr 1

#Harsh
execute if score $drop_rate_preset ca.gamerule matches 2 run scoreboard players set $drop_coeff charon.gmr 3
execute if score $drop_rate_preset ca.gamerule matches 2 run scoreboard players set $inv_coeff charon.gmr 18
execute if score $drop_rate_preset ca.gamerule matches 2 run scoreboard players set $scale_coeff charon.gmr 0



execute if score $drop_rate_preset ca.gamerule matches 0 run title @s actionbar [{"text":"Item Drop Rates ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"DEFAULT","color":"yellow","italic":false}]
execute if score $drop_rate_preset ca.gamerule matches 1 run title @s actionbar [{"text":"Item Drop Rates ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"GENTLE","color":"green","italic":false}]
execute if score $drop_rate_preset ca.gamerule matches 2 run title @s actionbar [{"text":"Item Drop Rates ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"HARSH","color":"red","italic":false}]