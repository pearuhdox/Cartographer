#Tell Cartographer this pack is in use
scoreboard players set $repair_stations ca.installed 1

execute as @a[tag=check_to_tesseract] at @s run function cartographer_repair_stations:void_bag/move_to_tesseract