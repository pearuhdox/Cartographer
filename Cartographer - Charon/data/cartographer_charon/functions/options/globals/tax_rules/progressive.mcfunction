scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false

execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

scoreboard players add $prog_tax ca.gamerule 1

execute if score $prog_tax ca.gamerule matches 3.. run scoreboard players set $prog_tax ca.gamerule 0

scoreboard players set $progressive_tax charon.gmr 0
execute if score $count_tax ca.gamerule matches 0 run scoreboard players set $tax_count charon.gmr 0
execute if score $durability_tax ca.gamerule matches 0 run scoreboard players set $tax_durability charon.gmr 0
execute if score $vanish_tax ca.gamerule matches 0 run scoreboard players set $tax_vanish charon.gmr 0


execute if score $prog_tax ca.gamerule matches 0 run scoreboard players set $progressive_tax charon.gmr 0
execute if score $prog_tax ca.gamerule matches 1 run scoreboard players set $progressive_tax charon.gmr 1
execute if score $prog_tax ca.gamerule matches 2 run scoreboard players set $progressive_tax charon.gmr 2

execute if score $prog_tax ca.gamerule matches 0 run title @s actionbar [{"text":"Progressive Tax ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"OFF","color":"yellow","italic":false}]
execute if score $prog_tax ca.gamerule matches 1 run title @s actionbar [{"text":"Progressive Tax ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"NORMAL","color":"yellow","italic":false}]
execute if score $prog_tax ca.gamerule matches 2 run title @s actionbar [{"text":"Progressive Tax ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"INCLUDES VANISHING","color":"red","italic":false}]
