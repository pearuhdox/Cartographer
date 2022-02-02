#Forces an item frame breaking, and drops its item

summon item ~ ~ ~ {Item:{"id":"stone",Count:1b},Tags:["ca.item_frame_drop"],Motion:[0.0,0.3,0.0],PickupDelay:0}
data modify entity @e[type=item,tag=ca.item_frame_drop,distance=..2,limit=1,sort=nearest] Item set from entity @s Item
stopsound @a[distance=..15] * minecraft:entity.item_frame.remove_item
kill @s