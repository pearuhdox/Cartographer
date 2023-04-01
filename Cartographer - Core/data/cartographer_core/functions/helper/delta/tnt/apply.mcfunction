execute store result score @s ca.delta_fuse_max run data get entity @s Fuse
execute store result entity @s Fuse int 1 run scoreboard players add @s ca.delta_fuse_max 1
scoreboard players remove @s ca.delta_fuse_max 1

data modify entity @s Silent set value 1b

tag @s add ca.delta_tnt_setup