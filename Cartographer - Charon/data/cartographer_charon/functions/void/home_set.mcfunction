function suso.player_data:get/do

data modify storage suso:pldata working_data.Charon set value []
data modify storage suso:pldata working_data.CharonHomePos set from entity @s Pos

function suso.player_data:put/do