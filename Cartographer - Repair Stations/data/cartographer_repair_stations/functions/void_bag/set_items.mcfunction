execute as @p run function suso.player_data:get/do

data modify storage suso:pldata working_data.VoidedItemsCopy set from storage suso:pldata working_data.VoidedItems

execute if data storage suso:pldata working_data.VoidedItemsCopy[0] run function cartographer_repair_stations:void_bag/pick_trade_recurse