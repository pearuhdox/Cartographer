particle minecraft:portal ~ ~0.5 ~ 0 0 0 0.5 1 normal

execute unless score $no_tesseract ca.gamerule matches 1.. as @a[distance=..7] at @s unless score @s ca.tesseract matches 1.. run function cartographer_repair_stations:loop/tick/branches/tesseract_activate
execute if entity @a[distance=..7,scores={tesseract=1..}] if data storage cartographer_repair_stations:tesseract Data.Queue[0] run function cartographer_repair_stations:tesseract/add_items_recurse

execute unless entity @a[distance=..7] run function cartographer_repair_stations:tesseract/remove_bought_items