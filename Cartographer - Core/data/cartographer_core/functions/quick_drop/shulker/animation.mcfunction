execute if score @s ca.quick_drop_anim matches 2 run data merge entity @s {interpolation_duration:5,start_interpolation:0,transformation:[1.0000f,-0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,-0.0000f,0.5000f,-0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}



execute if score @s ca.quick_drop_anim matches 2 run playsound minecraft:block.stone.place block @a[distance=..10] ~ ~ ~ 1 0.75
execute if score @s ca.quick_drop_anim matches 2 run particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0.07 5 normal

execute if score @s ca.quick_drop_anim matches 2..4 run particle minecraft:effect ~ ~0.5 ~ 0.4 0.2 0.4 0 5 normal

scoreboard players add @s ca.quick_drop_anim 1

execute if score @s ca.quick_drop_anim matches 6.. run function cartographer_core:quick_drop/shulker/place