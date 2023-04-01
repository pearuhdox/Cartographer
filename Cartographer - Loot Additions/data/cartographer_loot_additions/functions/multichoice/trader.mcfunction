data modify storage cartographer_loot_additions:multichoice_trade Trades set value []
scoreboard players set $trade_count ca.loot_var 0

data modify storage cartographer_loot_additions:multichoice_trade Trades set from entity @s Offers.Recipes

execute as @e[type=item_display,tag=ca.is_multichoice,distance=..0.75,sort=nearest,limit=4] run function cartographer_loot_additions:multichoice/passback

data modify entity @s Offers.Recipes set from storage cartographer_loot_additions:multichoice_trade Trades