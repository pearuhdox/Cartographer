execute if score @s ca.drop_box matches 1 run setblock ~ ~ ~ minecraft:shulker_box replace
execute if score @s ca.drop_box matches 2 run setblock ~ ~ ~ minecraft:white_shulker_box replace
execute if score @s ca.drop_box matches 3 run setblock ~ ~ ~ minecraft:orange_shulker_box replace
execute if score @s ca.drop_box matches 4 run setblock ~ ~ ~ minecraft:magenta_shulker_box replace
execute if score @s ca.drop_box matches 5 run setblock ~ ~ ~ minecraft:light_blue_shulker_box replace
execute if score @s ca.drop_box matches 6 run setblock ~ ~ ~ minecraft:yellow_shulker_box replace
execute if score @s ca.drop_box matches 7 run setblock ~ ~ ~ minecraft:lime_shulker_box replace
execute if score @s ca.drop_box matches 8 run setblock ~ ~ ~ minecraft:pink_shulker_box replace
execute if score @s ca.drop_box matches 9 run setblock ~ ~ ~ minecraft:gray_shulker_box replace
execute if score @s ca.drop_box matches 10 run setblock ~ ~ ~ minecraft:light_gray_shulker_box replace
execute if score @s ca.drop_box matches 11 run setblock ~ ~ ~ minecraft:cyan_shulker_box replace
execute if score @s ca.drop_box matches 12 run setblock ~ ~ ~ minecraft:purple_shulker_box replace
execute if score @s ca.drop_box matches 13 run setblock ~ ~ ~ minecraft:blue_shulker_box replace
execute if score @s ca.drop_box matches 14 run setblock ~ ~ ~ minecraft:brown_shulker_box replace
execute if score @s ca.drop_box matches 15 run setblock ~ ~ ~ minecraft:green_shulker_box replace
execute if score @s ca.drop_box matches 16 run setblock ~ ~ ~ minecraft:red_shulker_box replace
execute if score @s ca.drop_box matches 17 run setblock ~ ~ ~ minecraft:black_shulker_box replace

data modify block ~ ~ ~ Items set from entity @s item.tag.BlockEntityTag.Items

playsound minecraft:block.shulker_box.open block @a[distance=..10] ~ ~ ~ 0.6 2

kill @s