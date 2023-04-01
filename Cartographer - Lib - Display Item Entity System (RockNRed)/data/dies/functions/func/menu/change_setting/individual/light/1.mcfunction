
function dies:func/menu/update_display/main

scoreboard players set $target_light_level dies.master 1
execute as @e[tag=dies.selected_display,distance=..11,type=minecraft:item_display,sort=nearest,limit=1] at @s run function dies:func/item_display/update/light_level

execute if score @s dies.option.player.action_feedback matches 1 run title @s actionbar ["",{"text":"Light Level ","color":"#F5CE54"},{"text":"for individual item ","color":"#4EF4A9"},{"text":"changed to ","color":"#EFDADA"},{"text":"1","color":"#4EF4A9"},{"text":".","color":"#EFDADA"}]
