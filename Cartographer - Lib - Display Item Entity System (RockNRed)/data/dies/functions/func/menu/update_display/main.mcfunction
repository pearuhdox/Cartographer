
function dies:func/menu/individual

execute as @e[tag=dies.selected_display,distance=..11,type=minecraft:item_display,sort=nearest,limit=1] at @s run function dies:func/menu/update_display/as_display
