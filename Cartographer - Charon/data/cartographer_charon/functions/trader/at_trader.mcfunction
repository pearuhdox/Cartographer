particle cloud ~ ~0.1 ~ 0.2 0.1 0.2 0.01 1 normal
particle sculk_soul ~ ~1.2 ~ 0.2 0.1 0.2 0.01 1 normal

execute unless score $trader_animation dt.var matches 101.. run tp @s ~ ~0.004 ~

execute if score $trader_animation dt.var matches 101.. run tp @s ~ ~-0.004 ~

execute as @s at @s run tp @s ~ ~ ~ facing entity @p[distance=..5.5] feet

execute if score $trader_animation2 dt.var matches 70 run playsound minecraft:entity.allay.ambient_without_item neutral @a[distance=..8] ~ ~ ~ 0.3 0.5
execute if score $trader_animation2 dt.var matches 130 run playsound minecraft:item.book.page_turn neutral @a[distance=..8] ~ ~ ~ 0.3 0.5
execute if score $trader_animation2 dt.var matches 30 run playsound minecraft:item.book.page_turn neutral @a[distance=..8] ~ ~ ~ 0.3 0.5
execute if score $trader_animation2 dt.var matches 1 run playsound minecraft:ui.cartography_table.take_result neutral @a[distance=..8] ~ ~ ~ 0.5 1

execute if score $trader_animation2 dt.var matches 1 run particle happy_villager ^-0.5 ^1.3 ^0.5 0.1 0.1 0.1 0.01 5 normal

execute if score $trader_animation2 dt.var matches 1 run scoreboard players add $trader_offset dt.var 1
execute if score $trader_animation2 dt.var matches 1 if score $trader_offset dt.var matches 51.. run scoreboard players set $trader_offset dt.var 1

tag @a[distance=5..] remove ca.ch_visiting_trader
tag @a[distance=..5] add ca.ch_visiting_trader

execute as @a[tag=ca.ch_visiting_trader,tag=!ca.first_charon_dialog] at @s run function cartographer_charon:trader/first_dialog