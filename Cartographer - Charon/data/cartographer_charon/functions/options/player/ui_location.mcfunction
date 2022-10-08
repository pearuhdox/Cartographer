scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false

execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

scoreboard players add @s ca.ui_loc 1

execute if score @s ca.ui_loc matches 4 run scoreboard players set @s ca.ui_loc 0

execute if score @s ca.ui_loc matches 0 run title @s actionbar [{"text":"Player GUI Location ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"USE DEFAULT","color":"yellow","italic":false}]
execute if score @s ca.ui_loc matches 1 run title @s actionbar [{"text":"Player GUI Location ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"ACTION BAR","color":"yellow","italic":false}]
execute if score @s ca.ui_loc matches 2 run title @s actionbar [{"text":"Player GUI Location ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"SUBTITLE","color":"yellow","italic":false}]
execute if score @s ca.ui_loc matches 3 run title @s actionbar [{"text":"Player GUI Location ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"INVISIBLE","color":"yellow","italic":false}]

scoreboard players enable @s ca.options_trig
function cartographer_custom_enchantments:options/player/branch