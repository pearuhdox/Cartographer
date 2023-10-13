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
playsound minecraft:entity.warden.roar player @a[distance=..12] ~ ~ ~ 1 2

particle minecraft:damage_indicator ~ ~ ~ 0.35 0.15 0.35 0.2 8 normal

kill @s