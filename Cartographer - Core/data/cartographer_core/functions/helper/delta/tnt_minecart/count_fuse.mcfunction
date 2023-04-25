#execute if score @s ca.delta_fuse matches 1 run playsound minecraft:entity.creeper.primed hostile @a[distance=..16] ~ ~ ~ 1 0.5


execute if score @s ca.delta_fuse = @s ca.delta_fuse_max run function cartographer_core:helper/delta/tnt/setup_death

scoreboard players add @s ca.delta_fuse 1

execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~-1 ~ #cartographer_core:can_raycast if block ~ ~-2 ~ #cartographer_core:can_raycast if block ~ ~-3 ~ #cartographer_core:can_raycast if block ~ ~-4 ~ #cartographer_core:can_raycast run tag @s add ca.falling_tnt_cart