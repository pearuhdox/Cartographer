scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false

execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

execute unless score $gl_reload_msg ca.gamerule matches 0.. run scoreboard players set $gl_reload_msg ca.gamerule 0

scoreboard players operation $gl_reload_msg_past ca.gamerule = $gl_reload_msg ca.gamerule

execute if score $gl_reload_msg_past ca.gamerule matches 0 run scoreboard players set $gl_reload_msg ca.gamerule 1
execute if score $gl_reload_msg_past ca.gamerule matches 1 run scoreboard players set $gl_reload_msg ca.gamerule 0

scoreboard players set $gl_reload_msg_past ca.gamerule -100

execute if score $gl_reload_msg ca.gamerule matches 0 run title @s actionbar [{"text":"Global Reload Message ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"DEFAULT","color":"yellow","italic":false}]
execute if score $gl_reload_msg ca.gamerule matches 1 run title @s actionbar [{"text":"Global Reload Message ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"MINIMAL","color":"yellow","italic":false}]