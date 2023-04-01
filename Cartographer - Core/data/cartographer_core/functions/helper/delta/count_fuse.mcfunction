#execute if score @s ca.delta_fuse matches 1 run data modify entity @s Silent set value 1b
execute if score @s ca.delta_fuse matches 1 run playsound minecraft:entity.creeper.primed hostile @a[distance=..16] ~ ~ ~ 1 0.45

execute if score @s ca.delta_fuse = @s ca.delta_fuse_max run function cartographer_core:helper/delta/setup_death

scoreboard players add @s ca.delta_fuse 1
