execute store result score @s ca.delta_fuse_max run data get entity @s Fuse
execute store result entity @s Fuse int 1 run scoreboard players add @s ca.delta_fuse_max 1
scoreboard players remove @s ca.delta_fuse_max 1

execute if data entity @s Silent run tag @s add ca.delta_creeper_silent

data modify entity @s Silent set value 1b
data modify entity @s Fuse set value 600

tag @s add ca.delta_creeper_setup