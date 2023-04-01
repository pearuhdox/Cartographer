
execute if score @s dies.object.frame_facing matches 0 run scoreboard players remove @s dies.object.display.rotation 1
execute if score @s dies.object.frame_facing matches 1 run scoreboard players add @s dies.object.display.rotation 1
execute if score @s dies.object.frame_facing matches 2 run scoreboard players add @s dies.object.display.rotation 1
execute if score @s dies.object.frame_facing matches 3 run scoreboard players remove @s dies.object.display.rotation 1
execute if score @s dies.object.frame_facing matches 4 run scoreboard players remove @s dies.object.display.rotation 1
execute if score @s dies.object.frame_facing matches 5 run scoreboard players add @s dies.object.display.rotation 1

execute if score @s dies.object.display.rotation matches ..0 run scoreboard players set @s dies.object.display.rotation 8
execute if score @s dies.object.display.rotation matches 9.. run scoreboard players set @s dies.object.display.rotation 1

execute if entity @s[tag=dies.no_rotate] run scoreboard players set @s dies.object.display.rotation 1
tag @s remove dies.no_rotate

execute if score @s dies.object.display.pose matches 1 run function dies:func/update_rotation/default/main
execute if score @s dies.object.display.pose matches 2 run function dies:func/update_rotation/axe_in_log/main
execute if score @s dies.object.display.pose matches 3 run function dies:func/update_rotation/floating_in_center/main
execute if score @s dies.object.display.pose matches 4 run function dies:func/update_rotation/head/main
execute if score @s dies.object.display.pose matches 5 run function dies:func/update_rotation/stack_of_blocks/main
execute if score @s dies.object.display.pose matches 6 run function dies:func/update_rotation/stack_of_items/main
execute if score @s dies.object.display.pose matches 7 run function dies:func/update_rotation/bow_against_wall/main

function dies:func/item_display/update/size
execute on passengers run function dies:func/item_display/update/size
