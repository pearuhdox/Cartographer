
execute unless entity @p[distance=..13] run function dies:func/item_display/unselect

execute if score @s dies.object.frame_facing matches 0 positioned ~ ~-.6 ~ run function dies:func/item_display/loop/anim
execute if score @s dies.object.frame_facing matches 1 positioned ~ ~-.3 ~ run function dies:func/item_display/loop/anim
execute if score @s dies.object.frame_facing matches 2..5 positioned ~ ~ ~ run function dies:func/item_display/loop/anim
