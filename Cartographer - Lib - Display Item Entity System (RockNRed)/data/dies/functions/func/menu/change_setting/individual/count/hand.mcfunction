
function dies:func/menu/update_display/main

data modify entity @e[tag=dies.selected_display,distance=..11,type=minecraft:item_display,limit=1] item.Count set from entity @s SelectedItem.Count

execute if score @s dies.option.player.action_feedback matches 1 run title @s actionbar ["",{"text":"Count ","color":"#F5CE54"},{"text":"for individual item ","color":"#4EF4A9"},{"text":"changed to ","color":"#EFDADA"},{"text":"hand stack size","color":"#4EF4A9"},{"text":".","color":"#EFDADA"}]
