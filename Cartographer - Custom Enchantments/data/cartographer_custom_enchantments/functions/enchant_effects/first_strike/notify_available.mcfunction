tag @s remove ca.used_first_strike

playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.75 1.5
playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 1 0.8

title @s times 0 45 5

execute if score @s ca.ui_loc matches 1 run title @s actionbar [{"text":"⚔ <","color":"yellow","italic":false},{"text":"First Strike Ready","color":"green","bold":false,"italic":false},{"text":"> ⚔","color":"yellow","italic":false}]

execute if score @s ca.ui_loc matches 2 run title @s title {"text":" "}
execute if score @s ca.ui_loc matches 2 run title @s subtitle [{"text":"<","color":"yellow"},{"text":"⚔","color":"green","italic":false},{"text":">","color":"yellow"}]

execute if score @s ca.ui_loc matches 0 if score $gl_ui_loc ca.gamerule matches 0 run title @s actionbar [{"text":"⚔ <","color":"yellow","italic":false},{"text":"First Strike Ready","color":"green","bold":false,"italic":false},{"text":"> ⚔","color":"yellow","italic":false}]

execute if score @s ca.ui_loc matches 0 if score $gl_ui_loc ca.gamerule matches 1 run title @s title {"text":" "}
execute if score @s ca.ui_loc matches 0 if score $gl_ui_loc ca.gamerule matches 1 run title @s subtitle [{"text":"<","color":"yellow"},{"text":"⚔","color":"green","italic":false},{"text":">","color":"yellow"}]
