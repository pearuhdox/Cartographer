tp @s ~ ~ ~

data modify entity @s NoGravity set value 1b

data modify entity @s DealtDamage set value 0b

data modify entity @s Motion[0] set value 0.0
data modify entity @s Motion[1] set value -0.05
data modify entity @s Motion[2] set value 0.0

scoreboard players set @s ca.ricochet_cooldown 11