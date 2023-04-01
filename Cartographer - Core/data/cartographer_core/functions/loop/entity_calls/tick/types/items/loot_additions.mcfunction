execute if score $la.run ca.var matches 1.. if entity @s[distance=..20,type=item,tag=!la_checked] run function cartographer_loot_additions:loop/tick/branches/items/check_frame

tag @s add ca.item_processed