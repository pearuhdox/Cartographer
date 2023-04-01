
execute as @e[tag=dies.selected_display] at @s run function dies:func/item_display/loop/as_display

execute if entity @e[tag=dies.selected_display,type=item_display] run schedule function dies:func/item_display/loop/main 1t
