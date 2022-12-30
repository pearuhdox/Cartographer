scoreboard players add $trader_animation dt.var 1
execute if score $trader_animation dt.var matches 201.. run scoreboard players set $trader_animation dt.var 1

execute as 00000007-0000-0001-0000-000b0000001b at @s run function cartographer_charon:trader/at_trader