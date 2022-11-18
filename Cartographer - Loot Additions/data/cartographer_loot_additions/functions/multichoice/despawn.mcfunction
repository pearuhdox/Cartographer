execute if block ~ ~ ~ lodestone run setblock ~ ~ ~ air replace

execute if block ~ ~1 ~ player_head run setblock ~ ~1 ~ air replace

data modify entity @e[type=item,limit=1,tag=!altar_drop,distance=..2,sort=nearest,nbt={Item:{id:"minecraft:lodestone"}}] Item.id set value "minecraft:light_gray_concrete"

kill @e[type=glow_item_frame,tag=loot_multichoice_side,distance=..2,limit=4,sort=nearest]

playsound minecraft:entity.wandering_trader.disappeared block @a[distance=..16] ~ ~ ~ 1 0.75

playsound minecraft:item.lodestone_compass.lock player @a[distance=..16] ~ ~ ~ 1 0.5
playsound minecraft:item.lodestone_compass.lock player @a[distance=..16] ~ ~ ~ 1 0.5
playsound minecraft:item.lodestone_compass.lock player @a[distance=..16] ~ ~ ~ 1 0.5

particle minecraft:portal ~ ~ ~ 0 0 0 1 50 normal
particle minecraft:campfire_cosy_smoke ~ ~0.5 ~ 0.15 0 0.15 0.05 5 normal
particle minecraft:sneeze ~ ~0.5 ~ 0.2 0.2 0.2 0.075 20 normal

kill @s