summon item_frame ~ ~ ~ {NoGravity:1b,Facing:1b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["pyro_center"],Item:{id:"minecraft:magma_block",Count:1b}}

execute as @e[type=item_frame,tag=pyro_center,limit=1,sort=nearest,distance=..2] at @s run summon armor_stand ~ ~-0.7 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["pyro_effect"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1748272296,-1250999729,-1424784213,-653606317],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTQ3MDY0YzYxNDljNjYzMWViNTM3OThjOTI5NTBlMmJmOGRjNTFiYjhkMzMwMGI5ZmZmODY1ZmI4YmJlMDYzNSJ9fX0="}]}}}}]}

kill @e[type=item_frame,tag=pyro_center,limit=1,sort=nearest,distance=..2]

playsound minecraft:item.bucket.fill_lava hostile @a[distance=..16] ~ ~ ~ 2 0.5
playsound minecraft:entity.shulker.ambient hostile @a[distance=..12] ~ ~ ~ 1 1.5

kill @s