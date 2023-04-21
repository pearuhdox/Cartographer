scoreboard players set $no_tesseract ca.gamerule 0

execute if entity @a[distance=..12] run function cartographer_repair_stations:tesseract/tick_branch
