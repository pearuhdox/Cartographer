data modify storage cartographer_repair_stations:tesseract Data.Equipped set value [{},{},{},{},{},{}]

data modify storage cartographer_repair_stations:tesseract Data.Equipped[0] set from entity @s SelectedItem
data modify storage cartographer_repair_stations:tesseract Data.Equipped[1] set from entity @s Inventory[{Slot:-106b}]
data modify storage cartographer_repair_stations:tesseract Data.Equipped[2] set from entity @s Inventory[{Slot:100b}]
data modify storage cartographer_repair_stations:tesseract Data.Equipped[3] set from entity @s Inventory[{Slot:101b}]
data modify storage cartographer_repair_stations:tesseract Data.Equipped[4] set from entity @s Inventory[{Slot:102b}]
data modify storage cartographer_repair_stations:tesseract Data.Equipped[5] set from entity @s Inventory[{Slot:103b}]

tag @s add check_to_tesseract