tag @s remove filled
tag @s remove random

data modify entity @s Glowing set value 1b
data modify entity @s Invisible set value 0b

playsound minecraft:block.chest.open block @a[distance=..10] ~ ~ ~ 1 1.5