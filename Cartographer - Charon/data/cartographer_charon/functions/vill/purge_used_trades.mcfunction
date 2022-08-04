execute store result score $trade_total dt.var if data entity @s Offers.Recipes[]

execute if score $trade_total dt.var matches 8.. store result score $remove_trade dt.var run data get entity @s Offers.Recipes[-1].uses
execute if score $trade_total dt.var matches 8.. if score $remove_trade dt.var matches 1.. run data remove entity @s Offers.Recipes[-1]