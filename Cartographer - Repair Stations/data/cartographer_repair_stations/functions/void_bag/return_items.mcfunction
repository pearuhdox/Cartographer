execute as @p run function suso.player_data:get/do

data modify storage suso:pldata working_data.VoidedItems set value []

data remove entity @s Offers.Recipes[0]

execute if data entity @s Offers.Recipes[0] run function cartographer_repair_stations:void_bag/return_trade_recurse

execute as @p run function suso.player_data:put/do