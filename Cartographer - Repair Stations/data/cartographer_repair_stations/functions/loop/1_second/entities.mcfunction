execute as @s[tag=repair_sign,type=item_frame] at @s run function cartographer_repair_stations:loop/1_second/summon_check

execute as @s[type=item_frame,tag=repair_input] at @s run function cartographer_repair_stations:loop/1_second/repair_input_branch

execute as @s[tag=repair_display,type=armor_stand,predicate=cartographer_repair_stations:empty_stand] at @s run summon item_frame ~ ~ ~ {Glowing:1b,Facing:1b,Invisible:1b,Tags:["repair_input"],Item:{}}
kill @s[type=armor_stand,tag=repair_display,predicate=cartographer_repair_stations:empty_stand]

execute as @s[tag=repair_display,type=armor_stand,tag=!calculated] at @s run function cartographer_repair_stations:repair/calculate
execute as @s[tag=repair_display,type=armor_stand,tag=!calculated] at @s run function cartographer_repair_stations:repair/expensive