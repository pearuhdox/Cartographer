data merge entity @e[type=item,distance=..2,limit=1,sort=nearest] {Motion:[0.0,0.3,0.0],PickupDelay:0}

stopsound @a[distance=..15] * minecraft:entity.item_frame.remove_item

setblock ~ ~-0.5 ~ air replace

execute as @e[type=villager,tag=multichoice_core,distance=..2,sort=nearest,limit=1] at @s run function cartographer_loot_additions:multichoice/despawn