gamerule sendCommandFeedback false
schedule function cartographer_core:load/fix_gamerules 2t
schedule function cartographer_core:load/gamerule_states 3t

playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2
tag @s remove minimal_reload

title @s actionbar [{"text":"Minimal Reload ","color":"aqua","italic":false},{"text":"has been deactivated!","color":"#FFE0A3","italic":false}]

execute as @s run function cartographer_core:load/reload_panel

schedule function cartographer_core:load/command_feedback 1t