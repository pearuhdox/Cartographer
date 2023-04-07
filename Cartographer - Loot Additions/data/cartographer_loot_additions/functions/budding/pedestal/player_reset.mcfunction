#Grab storage
function suso.player_data:get/do

data modify storage suso:pldata working_data.budding_pedestals.tracked set value []

#Push to saved space
function suso.player_data:put/do