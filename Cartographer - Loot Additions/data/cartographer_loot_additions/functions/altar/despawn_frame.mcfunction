data merge entity @e[type=item,distance=..2,limit=1,sort=nearest] {Tags:["altar_drop"],Motion:[0.0,0.3,0.0],PickupDelay:0}

stopsound @a[distance=..15] * minecraft:entity.item_frame.remove_item

playsound minecraft:block.shulker_box.close block @a[distance=..15] ~ ~ ~ 1 2
playsound minecraft:entity.shulker.teleport block @a[distance=..15] ~ ~ ~ 1 1

setblock ~ ~-0.5 ~ air replace

execute as @e[type=armor_stand,tag=altar_core,distance=..2,sort=nearest,limit=1] at @s run function cartographer_loot_additions:altar/despawn