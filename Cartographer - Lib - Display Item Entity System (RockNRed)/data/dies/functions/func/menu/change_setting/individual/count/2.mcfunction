
function dies:func/menu/update_display/main

execute as @e[tag=dies.selected_display,distance=..11,type=minecraft:item_display,sort=nearest,limit=1] at @s run data modify entity @s item.Count set value 2b

execute if score @s dies.option.player.action_feedback matches 1 run title @s actionbar ["",{"text":"Count ","color":"#F5CE54"},{"text":"for individual item ","color":"#4EF4A9"},{"text":"changed to ","color":"#EFDADA"},{"text":"2","color":"#4EF4A9"},{"text":".","color":"#EFDADA"}]
