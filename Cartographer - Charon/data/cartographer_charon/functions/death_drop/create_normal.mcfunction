summon glow_item_frame ~ ~ ~ {Silent:1b,Glowing:1b,Facing:1b,Invisible:1b,Tags:["charon.bundle_drop","new"],Item:{}}

execute if block ~ ~-1 ~ #cartographer_core:can_raycast run setblock ~ ~-1 ~ glass

setblock ~ ~ ~ air destroy

stopsound @s * entity.glow_item_frame.add_item

execute as @e[type=glow_item_frame,distance=..1.5,sort=nearest,tag=charon.bundle_drop,tag=new] at @s run function cartographer_charon:death_drop/fill