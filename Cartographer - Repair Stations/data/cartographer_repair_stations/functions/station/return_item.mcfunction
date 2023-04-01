execute at @p run summon item ~ ~ ~ {Age:-32768,Health:1000,PickupDelay:5,Tags:["ca.repair_item_return"],Item:{id:"minecraft:stone",Count:1b}}
execute as @e[type=item,tag=ca.repair_item_return,distance=..7] at @s run function cartographer_repair_stations:station/return_item_data

execute at 31182015-1851-6191-8192-000000000010 run particle minecraft:poof ~ ~1.5 ~ 0 0 0 0.02 5 normal

stopsound @a[distance=..16] block minecraft:block.conduit.ambient
playsound minecraft:entity.shulker_bullet.hurt block @s ~ ~ ~ 1 1.5
function cartographer_repair_stations:station/reset