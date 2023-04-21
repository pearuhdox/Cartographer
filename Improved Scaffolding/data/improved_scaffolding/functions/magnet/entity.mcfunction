data modify entity @s PickupDelay set value 0

execute align xyz if block ~0.5 ~-1 ~0.5 birch_trapdoor run setblock ~0.5 ~-1 ~0.5 air replace

execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~1 ~ scaffolding run setblock ~ ~1 ~ air destroy
execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~-1 ~ ~ scaffolding run setblock ~-1 ~ ~ air destroy
execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~1 ~ ~ scaffolding run setblock ~1 ~ ~ air destroy
execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~-1 scaffolding run setblock ~ ~ ~-1 air destroy
execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~1 scaffolding run setblock ~ ~ ~1 air destroy


tp @s @a[sort=nearest,limit=1,distance=..50,scores={ims.magnet=1..}]

tag @s add ims.magneted