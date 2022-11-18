data merge entity @e[type=item,distance=..2,limit=1,sort=nearest] {Tags:["altar_drop"],Motion:[0.0,0.3,0.0],PickupDelay:0}

stopsound @a[distance=..15] * minecraft:entity.item_frame.remove_item

playsound minecraft:entity.warden.dig block @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.shulker_bullet.hit block @a[distance=..16] ~ ~ ~ 1 1.5

particle minecraft:cloud ~ ~ ~ 0 0 0 0.1 3 force

particle minecraft:block minecraft:sculk ~ ~ ~ 0.15 0.35 0.15 0.1 50 normal
particle minecraft:block minecraft:sculk ~ ~-0.6 ~ 0.35 0.15 0.35 0.1 50 normal

setblock ~ ~-0.5 ~ air replace

kill @s