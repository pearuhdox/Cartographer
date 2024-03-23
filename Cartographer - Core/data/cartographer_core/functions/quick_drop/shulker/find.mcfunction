execute if score @s ca.drop_box matches 1.. run scoreboard players set $color ca.drop_box 1

execute if score @s ca.drop_box_white matches 1.. run scoreboard players set $color ca.drop_box 2
execute if score @s ca.drop_box_orange matches 1.. run scoreboard players set $color ca.drop_box 3
execute if score @s ca.drop_box_magenta matches 1.. run scoreboard players set $color ca.drop_box 4
execute if score @s ca.drop_box_light_blue matches 1.. run scoreboard players set $color ca.drop_box 5
execute if score @s ca.drop_box_yellow matches 1.. run scoreboard players set $color ca.drop_box 6
execute if score @s ca.drop_box_lime matches 1.. run scoreboard players set $color ca.drop_box 7
execute if score @s ca.drop_box_pink matches 1.. run scoreboard players set $color ca.drop_box 8
execute if score @s ca.drop_box_gray matches 1.. run scoreboard players set $color ca.drop_box 9
execute if score @s ca.drop_box_light_gray matches 1.. run scoreboard players set $color ca.drop_box 10
execute if score @s ca.drop_box_cyan matches 1.. run scoreboard players set $color ca.drop_box 11
execute if score @s ca.drop_box_purple matches 1.. run scoreboard players set $color ca.drop_box 12
execute if score @s ca.drop_box_blue matches 1.. run scoreboard players set $color ca.drop_box 13
execute if score @s ca.drop_box_brown matches 1.. run scoreboard players set $color ca.drop_box 14
execute if score @s ca.drop_box_green matches 1.. run scoreboard players set $color ca.drop_box 15
execute if score @s ca.drop_box_red matches 1.. run scoreboard players set $color ca.drop_box 16
execute if score @s ca.drop_box_black matches 1.. run scoreboard players set $color ca.drop_box 17


execute if score @s ca.drop_box matches 1.. as @e[type=item,distance=..5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:shulker_box"}}] at @s run function cartographer_core:quick_drop/shulker/tag

execute if score @s ca.drop_box_white matches 1.. as @e[type=item,distance=..5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:white_shulker_box"}}] at @s run function cartographer_core:quick_drop/shulker/tag
execute if score @s ca.drop_box_orange matches 1.. as @e[type=item,distance=..5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:orange_shulker_box"}}] at @s run function cartographer_core:quick_drop/shulker/tag
execute if score @s ca.drop_box_magenta matches 1.. as @e[type=item,distance=..5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:magenta_shulker_box"}}] at @s run function cartographer_core:quick_drop/shulker/tag
execute if score @s ca.drop_box_light_blue matches 1.. as @e[type=item,distance=..5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:light_blue_shulker_box"}}] at @s run function cartographer_core:quick_drop/shulker/tag
execute if score @s ca.drop_box_yellow matches 1.. as @e[type=item,distance=..5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:yellow_shulker_box"}}] at @s run function cartographer_core:quick_drop/shulker/tag
execute if score @s ca.drop_box_lime matches 1.. as @e[type=item,distance=..5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:lime_shulker_box"}}] at @s run function cartographer_core:quick_drop/shulker/tag
execute if score @s ca.drop_box_pink matches 1.. as @e[type=item,distance=..5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:pink_shulker_box"}}] at @s run function cartographer_core:quick_drop/shulker/tag
execute if score @s ca.drop_box_gray matches 1.. as @e[type=item,distance=..5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:gray_shulker_box"}}] at @s run function cartographer_core:quick_drop/shulker/tag
execute if score @s ca.drop_box_light_gray matches 1.. as @e[type=item,distance=..5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:light_gray_shulker_box"}}] at @s run function cartographer_core:quick_drop/shulker/tag
execute if score @s ca.drop_box_cyan matches 1.. as @e[type=item,distance=..5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:cyan_shulker_box"}}] at @s run function cartographer_core:quick_drop/shulker/tag
execute if score @s ca.drop_box_purple matches 1.. as @e[type=item,distance=..5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:purple_shulker_box"}}] at @s run function cartographer_core:quick_drop/shulker/tag
execute if score @s ca.drop_box_blue matches 1.. as @e[type=item,distance=..5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:blue_shulker_box"}}] at @s run function cartographer_core:quick_drop/shulker/tag
execute if score @s ca.drop_box_brown matches 1.. as @e[type=item,distance=..5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:brown_shulker_box"}}] at @s run function cartographer_core:quick_drop/shulker/tag
execute if score @s ca.drop_box_green matches 1.. as @e[type=item,distance=..5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:green_shulker_box"}}] at @s run function cartographer_core:quick_drop/shulker/tag
execute if score @s ca.drop_box_red matches 1.. as @e[type=item,distance=..5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:red_shulker_box"}}] at @s run function cartographer_core:quick_drop/shulker/tag
execute if score @s ca.drop_box_black matches 1.. as @e[type=item,distance=..5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:black_shulker_box"}}] at @s run function cartographer_core:quick_drop/shulker/tag

function cartographer_core:quick_drop/shulker/raycast_start