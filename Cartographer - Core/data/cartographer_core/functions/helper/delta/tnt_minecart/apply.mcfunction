execute store result score @s ca.delta_fuse_max run data get entity @s TNTFuse
execute store result entity @s TNTFuse int 1 run scoreboard players add @s ca.delta_fuse_max 1
scoreboard players remove @s ca.delta_fuse_max 1

tag @s add ca.delta_tnt_cart_setup

say test