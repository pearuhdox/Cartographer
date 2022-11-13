data modify entity @s NoGravity set value 0b

data modify entity @s DealtDamage set value 1b

data modify entity @s Motion[0] set value 0.0
data modify entity @s Motion[1] set value -1.0
data modify entity @s Motion[2] set value 0.0

execute if score @s ca.loyalty matches 1.. run kill @s