execute unless block ~ ~ ~ lodestone run playsound minecraft:entity.shulker.death block @a[distance=..15] ~ ~ ~ 1 2

execute if block ~ ~ ~ lodestone run setblock ~ ~ ~ air replace

data modify entity @e[type=item,limit=1,tag=!altar_drop,distance=..2,sort=nearest,nbt={Item:{id:"minecraft:lodestone"}}] Item.id set value "minecraft:light_gray_concrete"

kill @e[type=item_frame,tag=loot_multichoice_side,distance=..2,limit=4,sort=nearest]

particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.05 10 normal
particle minecraft:portal ~ ~0.5 ~ 0 0 0 1 50 normal

kill @s