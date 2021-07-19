playsound minecraft:block.bell.use hostile @a[distance=..16] ~ ~ ~ 2 0.75
playsound minecraft:entity.spider.death hostile @a[distance=..16] ~ ~ ~ 2 0.5

execute if entity @s[nbt={foodSaturationLevel:0.0f}] run effect give @s poison 6 0
execute unless entity @s[nbt={foodSaturationLevel:0.0f}] run effect give @s poison 3 1