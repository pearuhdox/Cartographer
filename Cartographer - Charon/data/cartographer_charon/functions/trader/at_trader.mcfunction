execute unless score $trader_animation dt.var matches 101.. run tp @s ~ ~0.004 ~

execute if score $trader_animation dt.var matches 101.. run tp @s ~ ~-0.004 ~

execute as @s at @s run tp @s ~ ~ ~ facing entity @p[distance=..5.5] feet

tag @a[distance=..5] add ca.ch_visiting_trader
tag @a[distance=5..] remove ca.ch_visiting_trader