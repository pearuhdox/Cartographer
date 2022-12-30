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