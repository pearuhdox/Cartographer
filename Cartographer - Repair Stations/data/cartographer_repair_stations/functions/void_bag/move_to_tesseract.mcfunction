function suso.player_data:get/do

execute if data storage suso:pldata working_data.Equipped[0].id unless data entity @s SelectedItem.id run scoreboard players set $item_to_void tesseract 0
execute if data storage suso:pldata working_data.Equipped[1].id unless data entity @s Inventory[{Slot:-106b}].id run scoreboard players set $item_to_void tesseract 1
execute if data storage suso:pldata working_data.Equipped[2].id unless data entity @s Inventory[{Slot:100b}].id run scoreboard players set $item_to_void tesseract 2
execute if data storage suso:pldata working_data.Equipped[3].id unless data entity @s Inventory[{Slot:101b}].id run scoreboard players set $item_to_void tesseract 3
execute if data storage suso:pldata working_data.Equipped[4].id unless data entity @s Inventory[{Slot:102b}].id run scoreboard players set $item_to_void tesseract 4
execute if data storage suso:pldata working_data.Equipped[5].id unless data entity @s Inventory[{Slot:103b}].id run scoreboard players set $item_to_void tesseract 5

execute if score $item_to_void tesseract matches 0.. run tellraw @s {"text":"An item you were using has broken, and has been transported to the Limitless Tesseract!","color":"#E24FFF","italic":false}

execute if score $item_to_void tesseract matches 0 run data modify storage suso:pldata working_data.VoidedItems append from storage suso:pldata working_data.Equipped[0]
execute if score $item_to_void tesseract matches 1 run data modify storage suso:pldata working_data.VoidedItems append from storage suso:pldata working_data.Equipped[1]
execute if score $item_to_void tesseract matches 2 run data modify storage suso:pldata working_data.VoidedItems append from storage suso:pldata working_data.Equipped[2]
execute if score $item_to_void tesseract matches 3 run data modify storage suso:pldata working_data.VoidedItems append from storage suso:pldata working_data.Equipped[3]
execute if score $item_to_void tesseract matches 4 run data modify storage suso:pldata working_data.VoidedItems append from storage suso:pldata working_data.Equipped[4]
execute if score $item_to_void tesseract matches 5 run data modify storage suso:pldata working_data.VoidedItems append from storage suso:pldata working_data.Equipped[5]

scoreboard players set $item_to_void tesseract -1

tag @s remove check_to_tesseract

function suso.player_data:put/do
