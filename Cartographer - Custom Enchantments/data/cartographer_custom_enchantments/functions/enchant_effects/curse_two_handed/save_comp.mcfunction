function suso.player_data:get/do

data modify storage suso:pldata working_data.offhand set from entity @s Inventory[{Slot:-106b}].tag.Compressed
data modify storage suso:pldata working_data.offhand.Slot set value 0b

function suso.player_data:put/do