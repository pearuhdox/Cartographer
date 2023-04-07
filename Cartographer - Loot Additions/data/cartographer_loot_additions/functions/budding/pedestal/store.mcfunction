#Grab storage
function suso.player_data:get/do

#data modify storage suso:pldata working_data.budding_pedestals.tracked set value []
data modify storage suso:pldata working_data.budding_pedestals.tracked append from storage cartographer_loot_additions:pedestal_position data

#Push to saved space
function suso.player_data:put/do