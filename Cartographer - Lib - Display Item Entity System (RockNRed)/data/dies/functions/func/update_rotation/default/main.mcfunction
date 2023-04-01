
execute if score @s dies.object.frame_facing matches 0 run function dies:func/update_rotation/default/ceiling
execute if score @s dies.object.frame_facing matches 1 run function dies:func/update_rotation/default/floor

execute if score @s dies.object.frame_facing matches 2..5 run function dies:func/update_rotation/default/wall

