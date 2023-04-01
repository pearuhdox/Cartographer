execute if score @s ca.facing matches 1 run setblock ~ ~ ~ chest[facing=south] replace
execute if score @s ca.facing matches 2 run setblock ~ ~ ~ chest[facing=west] replace
execute if score @s ca.facing matches 3 run setblock ~ ~ ~ chest[facing=north] replace
execute if score @s ca.facing matches 4 run setblock ~ ~ ~ chest[facing=east] replace

data modify block ~ ~ ~ Items set from entity @s item.tag.BlockEntityTag.Items

playsound minecraft:block.chain.break player @a[distance=..16] ~ ~ ~ 2 0.5
playsound minecraft:block.chest.locked player @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:block.chest.close player @a[distance=..16] ~ ~ ~ 1 2

item modify entity @p[tag=ca.unlocking] weapon.mainhand bb:deduct

kill @e[tag=ca.locked_chest_piece,distance=..1.5]