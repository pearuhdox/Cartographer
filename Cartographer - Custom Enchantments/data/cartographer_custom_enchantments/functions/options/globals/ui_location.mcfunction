scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false

execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

scoreboard players add $gl_ui_loc ca.gamerule 1

execute if score $gl_ui_loc ca.gamerule matches 3 run scoreboard players set $gl_ui_loc ca.gamerule 0


execute if score $gl_ui_loc ca.gamerule matches 0 run title @s actionbar [{"text":"Global GUI Location ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"ACTION BAR","color":"yellow","italic":false}]
execute if score $gl_ui_loc ca.gamerule matches 1 run title @s actionbar [{"text":"Global GUI Location ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"SUBTITLE","color":"yellow","italic":false}]
execute if score $gl_ui_loc ca.gamerule matches 2 run title @s actionbar [{"text":"Global GUI Location ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"INVISIBLE","color":"yellow","italic":false}]