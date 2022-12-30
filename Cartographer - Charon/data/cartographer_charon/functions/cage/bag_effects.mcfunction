tag @s add collector_bag_dropped

data modify entity @s Item set from storage cartographer_charon:cage bundle

data modify entity @s Glowing set value 1b
data modify entity @s NoGravity set value 1b
data modify entity @s Motion set value [0.0,0.025,0.0]
data modify entity @s Age set value -32768
data modify entity @s Invulnerable set value 1b
data modify entity @s Health set value 1024
data modify entity @s PickupDelay set value 10

team join CharonCageVisual @s

data modify entity @s CustomName set from entity @s Item.tag.display.Name
data modify entity @s CustomNameVisible set value 1b

tp @s ~ ~ ~

data modify entity @s Motion[0] set value 0.00d
data modify entity @s Motion[2] set value 0.00d
data modify entity @s Motion[1] set value 0.01d


particle minecraft:sculk_soul ~ ~0.3 ~ 0.2 0.2 0.2 0.05 15 normal

playsound minecraft:entity.item_frame.remove_item player @a[distance=..8] ~ ~ ~ 2 0.5
playsound minecraft:entity.allay.item_given player @a[distance=..8] ~ ~ ~ 4 1
playsound minecraft:entity.warden.sonic_charge player @a[distance=..8] ~ ~ ~ 0.3 2

scoreboard players remove $cage_count dt.var 1