execute on passengers on passengers on passengers run kill @s
execute on passengers on passengers run kill @s
execute on passengers run kill @s

execute if score @s ca.facing matches 1 run setblock ~ ~ ~ chest[facing=south] replace
execute if score @s ca.facing matches 2 run setblock ~ ~ ~ chest[facing=west] replace
execute if score @s ca.facing matches 3 run setblock ~ ~ ~ chest[facing=north] replace
execute if score @s ca.facing matches 4 run setblock ~ ~ ~ chest[facing=east] replace

data modify block ~ ~ ~ Items set from entity @s item.tag.BlockEntityTag.Items

playsound minecraft:block.chest.locked player @a[distance=..12] ~ ~ ~ 1.3 0.5
playsound minecraft:block.ender_chest.open player @a[distance=..12] ~ ~ ~ 1 0.75
playsound minecraft:entity.allay.death player @a[distance=..16] ~ ~ ~ 0.75 1.5

particle minecraft:sculk_soul ~ ~0.5 ~ 0.3 0.3 0.3 0.05 30 normal

kill @s