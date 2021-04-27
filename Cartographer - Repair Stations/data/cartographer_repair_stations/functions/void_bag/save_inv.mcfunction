function suso.player_data:get/do

data modify storage suso:pldata working_data.Equipped set value [{},{},{},{},{},{}]

data modify storage suso:pldata working_data.Equipped[0] set from entity @s SelectedItem
data modify storage suso:pldata working_data.Equipped[1] set from entity @s Inventory[{Slot:-106b}]
data modify storage suso:pldata working_data.Equipped[2] set from entity @s Inventory[{Slot:100b}]
data modify storage suso:pldata working_data.Equipped[3] set from entity @s Inventory[{Slot:101b}]
data modify storage suso:pldata working_data.Equipped[4] set from entity @s Inventory[{Slot:102b}]
data modify storage suso:pldata working_data.Equipped[5] set from entity @s Inventory[{Slot:103b}]

tag @s add check_to_tesseract

function suso.player_data:put/do

advancement revoke @s only cartographer_repair_stations:test_break