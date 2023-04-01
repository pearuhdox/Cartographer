
execute as @e[tag=dies.selected_display,distance=..11,type=minecraft:item_display,sort=nearest,limit=1] at @s run function dies:func/menu/change_setting/individual/pose/stack_of_blocks/as_display

execute if score @s dies.option.player.action_feedback matches 1 run title @s actionbar ["",{"text":"Pose ","color":"#F5CE54"},{"text":"for individual item ","color":"#4EF4A9"},{"text":"changed to ","color":"#EFDADA"},{"text":"stack of blocks","color":"#4EF4A9"},{"text":".","color":"#EFDADA"}]

function dies:func/menu/update_display/main
