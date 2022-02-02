#Items are super annoying to pick up in water so they move downwards instead of upwards - Thanks Adri
execute unless block ~ ~ ~ #cartographer_core:watery run data merge entity @e[type=item,distance=..2,limit=1,sort=nearest] {Motion:[0.0,0.3,0.0],PickupDelay:0}
execute if block ~ ~ ~ #cartographer_core:watery run data merge entity @e[type=item,distance=..2,limit=1,sort=nearest] {Motion:[0.0,-0.1,0.0],PickupDelay:0}

stopsound @a[distance=..15] * minecraft:entity.item_frame.remove_item
kill @s