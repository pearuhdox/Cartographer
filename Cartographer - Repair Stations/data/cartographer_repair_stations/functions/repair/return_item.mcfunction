summon item ~ ~ ~ {Age:-32767,Health:1000,PickupDelay:20,Motion:[0.0,0.3,0.0],Tags:["returned_item"],Item:{id:"minecraft:stone_button",Count:1b}}

data modify entity @e[type=item,limit=1,tag=returned_item] Item merge from entity @s HandItems[0]
data modify entity @e[type=item,limit=1,tag=returned_item] Item merge from entity @s ArmorItems[0]
data modify entity @e[type=item,limit=1,tag=returned_item] Item merge from entity @s ArmorItems[1]
data modify entity @e[type=item,limit=1,tag=returned_item] Item merge from entity @s ArmorItems[2]
data modify entity @e[type=item,limit=1,tag=returned_item] Item merge from entity @s ArmorItems[3]

tp 31182015-1851-6191-0000-31143512 ~ -130 ~
tp 31182015-1851-6191-0000-19213351919 ~ -130 ~

kill 31182015-1851-6191-0000-31143512
kill 31182015-1851-6191-0000-19213351919

playsound minecraft:entity.shulker_bullet.hit block @a[distance=..20] ~ ~ ~ 2 1.5 1

particle minecraft:poof ~ ~0.2 ~ 0 0 0 0.07 5 normal

kill @e[type=armor_stand,distance=..1]

kill @e[type=armor_stand,tag=repair_indicator_text,distance=..7]