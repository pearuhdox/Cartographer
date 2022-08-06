summon glow_item_frame ~ -63 ~ {Silent:1b,Glowing:1b,Facing:1b,Invisible:1b,Tags:["charon.bundle_drop","new"],Item:{}}

setblock ~ -64 ~ glass keep
setblock ~ ~-63 ~ air

setblock ~ ~ ~ air replace

stopsound @s * entity.glow_item_frame.add_item

execute positioned ~ -63 ~ as @e[type=glow_item_frame,distance=..1.5,sort=nearest,tag=charon.bundle_drop,tag=new] at @s run function cartographer_charon:death_drop/fill