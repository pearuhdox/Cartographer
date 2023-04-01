execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.2 0.2 0.2 0 20 normal
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:block minecraft:redstone_block ~ ~ ~ 0.2 0.2 0.2 0 20 normal

playsound minecraft:block.piston.contract player @a[distance=..16] ~ ~ ~ 1 0.6

execute positioned ~2 ~ ~ if block ~ ~ ~ observer[facing=west] positioned ~-1 ~ ~ run setblock ~ ~ ~ air destroy

execute positioned ~-2 ~ ~ if block ~ ~ ~ observer[facing=east] positioned ~1 ~ ~ run setblock ~ ~ ~ air destroy

execute positioned ~ ~ ~2 if block ~ ~ ~ observer[facing=north] positioned ~ ~ ~-1 run setblock ~ ~ ~ air destroy

execute positioned ~ ~ ~-2 if block ~ ~ ~ observer[facing=south] positioned ~ ~ ~1 run setblock ~ ~ ~ air destroy

execute positioned ~ ~2 ~ if block ~ ~ ~ observer[facing=down] positioned ~ ~-1 ~ run setblock ~ ~ ~ air destroy

execute positioned ~ ~-2 ~ if block ~ ~ ~ observer[facing=up] positioned ~ ~1 ~ run setblock ~ ~ ~ air destroy

kill @s