execute if entity @s[type=sheep] run function cartographer_repair_stations:loop/tick/magma_branch

execute if entity @s[type=armor_stand,tag=repair_display] if entity @a[distance=..5] run tp @s ~ ~ ~ ~1 ~
execute if entity @s[type=armor_stand,tag=repair_display] if entity @a[distance=..5] run particle minecraft:composter ~ ~ ~ 0.3 0 0.3 0 1

execute if entity @s[type=item_frame,tag=repair_sign] if entity @a[distance=..5] run function cartographer_repair_stations:loop/tick/sign_branch

execute if entity @s[type=giant,tag=station_barrier] run function cartographer_repair_stations:barrier/visual

execute if entity @s[type=villager,tag=void_bag] run function cartographer_repair_stations:void_bag/visual