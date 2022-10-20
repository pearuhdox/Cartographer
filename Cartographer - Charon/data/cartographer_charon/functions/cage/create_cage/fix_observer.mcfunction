scoreboard players set $obv_side cage.var 0

execute if block ~ ~1 ~ observer[facing=down] run scoreboard players set $obv_side cage.var 1
execute if block ~ ~-1 ~ observer[facing=up] run scoreboard players set $obv_side cage.var 2

execute if block ~1 ~ ~ observer[facing=west] run scoreboard players set $obv_side cage.var 3
execute if block ~-1 ~ ~ observer[facing=east] run scoreboard players set $obv_side cage.var 4

execute if block ~ ~ ~1 observer[facing=north] run scoreboard players set $obv_side cage.var 5
execute if block ~ ~ ~-1 observer[facing=south] run scoreboard players set $obv_side cage.var 6


execute if score $obv_side cage.var matches 1 run setblock ~ ~1 ~ sponge replace
execute if score $obv_side cage.var matches 2 run setblock ~ ~-1 ~ sponge replace

execute if score $obv_side cage.var matches 3 run setblock ~1 ~ ~ sponge replace
execute if score $obv_side cage.var matches 4 run setblock ~-1 ~ ~ sponge replace

execute if score $obv_side cage.var matches 5 run setblock ~ ~ ~1 sponge replace
execute if score $obv_side cage.var matches 6 run setblock ~ ~ ~-1 sponge replace


execute if score $obv_side cage.var matches 1 run setblock ~ ~1 ~ observer[facing=down,powered=true] replace
execute if score $obv_side cage.var matches 2 run setblock ~ ~-1 ~ observer[facing=up,powered=true] replace

execute if score $obv_side cage.var matches 3 run setblock ~1 ~ ~ observer[facing=west,powered=true] replace
execute if score $obv_side cage.var matches 4 run setblock ~-1 ~ ~ observer[facing=east,powered=true] replace

execute if score $obv_side cage.var matches 5 run setblock ~ ~ ~1 observer[facing=north,powered=true] replace
execute if score $obv_side cage.var matches 6 run setblock ~ ~ ~-1 observer[facing=south,powered=true] replace