tag @s add ca.trap_falling

data modify entity @s block_state.Name set value "minecraft:air"

execute if block ~1 ~-1 ~ sand run data modify entity @s block_state.Name set value "minecraft:sand"
execute if block ~1 ~-1 ~ red_sand run data modify entity @s block_state.Name set value "minecraft:red_sand"
execute if block ~1 ~-1 ~ gravel run data modify entity @s block_state.Name set value "minecraft:gravel"

execute if block ~1 ~-1 ~ white_concrete_powder run data modify entity @s block_state.Name set value "minecraft:white_concrete_powder"
execute if block ~1 ~-1 ~ orange_concrete_powder run data modify entity @s block_state.Name set value "minecraft:orange_concrete_powder"
execute if block ~1 ~-1 ~ magenta_concrete_powder run data modify entity @s block_state.Name set value "minecraft:magenta_concrete_powder"
execute if block ~1 ~-1 ~ light_blue_concrete_powder run data modify entity @s block_state.Name set value "minecraft:light_blue_concrete_powder"
execute if block ~1 ~-1 ~ yellow_concrete_powder run data modify entity @s block_state.Name set value "minecraft:yellow_concrete_powder"
execute if block ~1 ~-1 ~ lime_concrete_powder run data modify entity @s block_state.Name set value "minecraft:lime_concrete_powder"
execute if block ~1 ~-1 ~ pink_concrete_powder run data modify entity @s block_state.Name set value "minecraft:pink_concrete_powder"
execute if block ~1 ~-1 ~ gray_concrete_powder run data modify entity @s block_state.Name set value "minecraft:gray_concrete_powder"
execute if block ~1 ~-1 ~ light_gray_concrete_powder run data modify entity @s block_state.Name set value "minecraft:light_gray_concrete_powder"
execute if block ~1 ~-1 ~ cyan_concrete_powder run data modify entity @s block_state.Name set value "minecraft:cyan_concrete_powder"
execute if block ~1 ~-1 ~ purple_concrete_powder run data modify entity @s block_state.Name set value "minecraft:purple_concrete_powder"
execute if block ~1 ~-1 ~ blue_concrete_powder run data modify entity @s block_state.Name set value "minecraft:blue_concrete_powder"
execute if block ~1 ~-1 ~ brown_concrete_powder run data modify entity @s block_state.Name set value "minecraft:brown_concrete_powder"
execute if block ~1 ~-1 ~ green_concrete_powder run data modify entity @s block_state.Name set value "minecraft:green_concrete_powder"
execute if block ~1 ~-1 ~ red_concrete_powder run data modify entity @s block_state.Name set value "minecraft:red_concrete_powder"
execute if block ~1 ~-1 ~ black_concrete_powder run data modify entity @s block_state.Name set value "minecraft:black_concrete_powder"


data merge entity @s {interpolation_start:0,transformation:[1.010f, 0.000f, 0.000f,-0.505f,0.000f, 0.010f, 0.000f,-0.005f,0.000f, 0.000f, 1.010f,-0.505f,0.000f, 0.000f, 0.000f,1.000f]}