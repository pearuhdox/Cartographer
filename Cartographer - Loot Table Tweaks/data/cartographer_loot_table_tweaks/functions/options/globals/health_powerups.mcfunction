execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

scoreboard players add $powerups ca.loot_table_rules 1

execute if score $powerups ca.loot_table_rules matches 2.. run scoreboard players set $powerups ca.loot_table_rules 0

execute if score $powerups ca.loot_table_rules matches 0 run title @s actionbar [{"text":"Health Powerup Drops ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"DISABLED","color":"red","italic":false}]
execute if score $powerups ca.loot_table_rules matches 1 run title @s actionbar [{"text":"Health Powerup Drops ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"ENABLED","color":"green","italic":false}]

function cartographer_loot_table_tweaks:options/main