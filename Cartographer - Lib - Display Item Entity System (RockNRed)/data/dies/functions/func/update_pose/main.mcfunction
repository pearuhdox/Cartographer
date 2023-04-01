
execute on passengers run kill @s[tag=dies.aux_display]

execute if score @s dies.object.display.pose matches 1 run function dies:func/update_pose/poses/default/main
execute if score @s dies.object.display.pose matches 2 run function dies:func/update_pose/poses/axe_in_log/main
execute if score @s dies.object.display.pose matches 3 run function dies:func/update_pose/poses/floating_in_center/main
execute if score @s dies.object.display.pose matches 4 run function dies:func/update_pose/poses/head/main
execute if score @s dies.object.display.pose matches 5 run function dies:func/update_pose/poses/stack_of_blocks/main
execute if score @s dies.object.display.pose matches 6 run function dies:func/update_pose/poses/stack_of_items/main
execute if score @s dies.object.display.pose matches 7 run function dies:func/update_pose/poses/bow_against_wall/main
