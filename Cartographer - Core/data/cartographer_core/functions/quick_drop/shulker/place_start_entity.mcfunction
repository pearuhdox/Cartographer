data merge entity @s {Tags:["ca.quick_drop_box_animation","ca.new"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.1f]},item:{id:"minecraft:shulker_box",Count:1b}}

data modify entity @s item set from storage cartographer_core:quick_drop shulker

scoreboard players operation @s ca.drop_box = $color ca.drop_box

scoreboard players set @s ca.quick_drop_anim 1

scoreboard players set $box ca.quick_drop_anim 11
