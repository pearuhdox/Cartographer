
execute if score @s dies.object.frame_facing matches 0 positioned ~ ~-.5 ~ run function dies:func/new_item/set_light
execute if score @s dies.object.frame_facing matches 1..5 positioned ~ ~ ~ run function dies:func/new_item/set_light
