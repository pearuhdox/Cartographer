execute as @p if entity @s[y_rotation=-44..45] run setblock ~ ~ ~ chest[facing=north] replace
execute as @p if entity @s[y_rotation=46..135] run setblock ~ ~ ~ chest[facing=east] replace
execute as @p if entity @s[y_rotation=136..225] run setblock ~ ~ ~ chest[facing=south] replace
execute as @p if entity @s[y_rotation=226..315] run setblock ~ ~ ~ chest[facing=west] replace

tag @s add spawned

playsound minecraft:block.chest.locked player @a[distance=..12] ~ ~ ~ 1.3 0.5
playsound minecraft:block.ender_chest.close player @a[distance=..12] ~ ~ ~ 1 1

particle minecraft:sculk_charge 0 ~ ~0.5 ~ 0.4 0.4 0.4 0 20 normal