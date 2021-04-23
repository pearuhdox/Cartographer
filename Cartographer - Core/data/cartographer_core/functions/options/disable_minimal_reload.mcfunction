gamerule sendCommandFeedback false
schedule function cartographer_core:load/fix_gamerules 2t
schedule function cartographer_core:load/gamerule_states 3t

playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

scoreboard players set $gl_reload_msg ca.gamerule 0

title @s actionbar [{"text":"Global Reload Message ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"DEFAULT","color":"yellow","italic":false}]

execute as @s run function cartographer_core:load/reload_panel

schedule function cartographer_core:load/command_feedback 1t