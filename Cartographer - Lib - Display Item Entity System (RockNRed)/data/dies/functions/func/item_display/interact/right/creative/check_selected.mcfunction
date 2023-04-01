
execute on vehicle run tag @s add dies.toggle
execute on vehicle if entity @s[tag=!dies.selected_display,tag=dies.toggle] run function dies:func/item_display/tag_nearby
execute on vehicle if entity @s[tag=dies.selected_display,tag=dies.toggle] run function dies:func/item_display/unselect
