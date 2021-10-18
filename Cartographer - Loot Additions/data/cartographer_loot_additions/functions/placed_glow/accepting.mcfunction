tag @s add filled

execute if data entity @s Item.tag.EntityTag.DeathLootTable run tag @s add random

data modify entity @s Glowing set value 0b
data modify entity @s Invisible set value 1b

playsound minecraft:block.chest.close block @a[distance=..10] ~ ~ ~ 1 1.5