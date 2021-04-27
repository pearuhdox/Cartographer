execute as @e[type=sheep] at @s run function cartographer_repair_stations:loop/tick/magma_branch

execute as @a at @s run execute as @e[type=armor_stand,distance=..5,tag=repair_display] at @s run tp @s ~ ~ ~ ~1 ~
execute as @a at @s run execute as @e[type=armor_stand,distance=..5,tag=repair_display] at @s run particle minecraft:composter ~ ~ ~ 0.3 0 0.3 0 1

execute as @a at @s run execute as @e[type=item_frame,distance=..5,tag=repair_sign] at @s run function cartographer_repair_stations:loop/tick/sign_branch

execute as @e[type=giant,tag=station_barrier] at @s run function cartographer_repair_stations:barrier/visual

execute as @e[type=villager,tag=void_bag] at @s run function cartographer_repair_stations:void_bag/visual

execute as @a[tag=check_to_tesseract] at @s run function cartographer_repair_stations:void_bag/move_to_tesseract