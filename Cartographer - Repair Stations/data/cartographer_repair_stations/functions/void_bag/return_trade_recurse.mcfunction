execute store result score $is_used tesseract run data get entity @s Offers.Recipes[0].uses

execute unless score $is_used tesseract matches 1 run data modify storage suso:pldata working_data.VoidedItems append from entity @s Offers.Recipes[0].sell

data remove entity @s Offers.Recipes[0]

#Recurse condition. Iterate until nothing left.
execute if data entity @s Offers.Recipes[0] run function cartographer_repair_stations:void_bag/return_trade_recurse