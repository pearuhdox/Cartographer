execute as @e[type=#cartographer_core:item_frames,distance=..2,sort=nearest,limit=1,nbt=!{Item:{}}] at @s run function cartographer_loot_additions:placed_glow/despawn

#say item check
tag @s add la_checked