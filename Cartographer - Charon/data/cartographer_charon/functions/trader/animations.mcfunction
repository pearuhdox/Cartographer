scoreboard players add $trader_animation dt.var 1
execute if score $trader_animation dt.var matches 201.. run scoreboard players set $trader_animation dt.var 1

scoreboard players operation $trader_animation2 dt.var = $trader_animation dt.var
scoreboard players operation $trader_animation2 dt.var += $trader_offset dt.var

execute if score $trader_animation2 dt.var matches 201.. run scoreboard players remove $trader_animation2 dt.var 200

function cartographer_charon:trader/at_trader