execute as @e[type=magma_cube] at @s run function cartographer_repair_stations:loop/tick/magma_branch

execute as @a at @s run execute as @e[type=armor_stand,distance=..5,tag=repair_display] at @s run tp @s ~ ~ ~ ~1 ~
execute as @a at @s run execute as @e[type=armor_stand,distance=..5,tag=repair_display] at @s run particle minecraft:composter ~ ~ ~ 0.3 0 0.3 0 1

execute as @a at @s run execute as @e[type=item_frame,distance=..5,tag=repair_sign] at @s run execute if block ~ ~ ~1 air run kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:emerald_block",Count:1b}}]
execute as @a at @s run execute as @e[type=item_frame,distance=..5,tag=repair_sign] at @s run execute if block ~ ~ ~1 air run setblock ~ ~ ~1 emerald_block replace


schedule function cartographer_repair_stations:loop/tick/base 1t