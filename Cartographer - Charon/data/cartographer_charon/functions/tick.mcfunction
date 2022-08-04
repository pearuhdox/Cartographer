execute as @a at @s run function cartographer_charon:player_tick
execute as 00000001-0000-0007-0000-001b0000000b at @s if entity @a[distance=..10] run function cartographer_charon:vill/tick

#This is run here because item frames are not tracked by Cartographer systems
execute as @e[type=glow_item_frame,tag=charon.bundle_drop,tag=!new] at @s run function cartographer_charon:death_drop/passive