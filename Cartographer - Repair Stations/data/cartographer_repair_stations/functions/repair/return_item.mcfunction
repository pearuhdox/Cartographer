summon item ~ ~ ~ {Age:-32767,Health:1000,PickupDelay:20,Motion:[0.0,0.3,0.0],Tags:["returned_item"],Item:{id:"minecraft:stone_button",Count:1b}}

data modify entity @e[type=item,limit=1,tag=returned_item] Item merge from entity @s HandItems[0]
data modify entity @e[type=item,limit=1,tag=returned_item] Item merge from entity @s ArmorItems[0]
data modify entity @e[type=item,limit=1,tag=returned_item] Item merge from entity @s ArmorItems[1]
data modify entity @e[type=item,limit=1,tag=returned_item] Item merge from entity @s ArmorItems[2]
data modify entity @e[type=item,limit=1,tag=returned_item] Item merge from entity @s ArmorItems[3]

tp @e[type=magma_cube,tag=repair_interact_return,limit=2,distance=..2.7] ~ -65 ~
tp @e[type=magma_cube,tag=repair_interact_confirm,limit=2,distance=..2.7] ~ -65 ~
tp @e[type=armor_stand,tag=repair_indicator_return,limit=2,distance=..2.7] ~ -65 ~
tp @e[type=armor_stand,tag=repair_indicator_confirm,limit=2,distance=..2.7] ~ -65 ~

summon item_frame ~ ~ ~ {Glowing:1b,Facing:1b,Invisible:1b,Tags:["repair_input"],Item:{}}

playsound minecraft:entity.shulker_bullet.hit block @a[distance=..20] ~ ~ ~ 2 1.5 1

particle minecraft:poof ~ ~0.2 ~ 0 0 0 0.07 5 normal

kill @e[type=armor_stand,distance=..1]