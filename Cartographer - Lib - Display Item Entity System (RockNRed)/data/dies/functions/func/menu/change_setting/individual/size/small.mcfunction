
scoreboard players set @e[tag=dies.selected_display,distance=..11,type=minecraft:item_display,sort=nearest,limit=1] dies.object.display.size 1
tag @e[tag=dies.selected_display,distance=..11,type=minecraft:item_display,sort=nearest,limit=1] add dies.no_rotate
execute as @e[tag=dies.selected_display,distance=..11,type=minecraft:item_display,sort=nearest,limit=1] at @s run function dies:func/update_pose/main

execute if score @s dies.option.player.action_feedback matches 1 run title @s actionbar ["",{"text":"Item Size ","color":"#F5CE54"},{"text":"for individual item ","color":"#4EF4A9"},{"text":"changed to ","color":"#EFDADA"},{"text":"small","color":"#4EF4A9"},{"text":".","color":"#EFDADA"}]

function dies:func/menu/update_display/main
