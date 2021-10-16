scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false



execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

scoreboard players add @s ca.reload_type 1

execute if score @s ca.reload_type matches 3 run scoreboard players set @s ca.reload_type 0

execute if score @s ca.reload_type matches 0 run title @s actionbar [{"text":"[Player] Reload Message ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"USE GLOBAL","color":"yellow","italic":false}]
execute if score @s ca.reload_type matches 1 run title @s actionbar [{"text":"[Player] Reload Message ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"DEFAULT","color":"yellow","italic":false}]
execute if score @s ca.reload_type matches 2 run title @s actionbar [{"text":"[Player] Reload Message ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"MINIMAL","color":"yellow","italic":false}]

scoreboard players enable @s ca.options_trig
function cartographer_core:options/player/branch

