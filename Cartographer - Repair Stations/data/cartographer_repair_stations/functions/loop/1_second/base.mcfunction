execute as @e[tag=repair_sign,type=item_frame] at @s unless entity @e[type=item_frame,tag=repair_input,distance=..3] unless entity @e[type=armor_stand,tag=repair_display,distance=..3] run summon item_frame ~ ~1 ~1 {Glowing:1b,Facing:1b,Invisible:1b,Tags:["repair_input"],Item:{}}

execute as @e[type=item_frame,tag=repair_input] at @s run function cartographer_repair_stations:loop/1_second/repair_input_branch

execute as @e[tag=repair_display,type=armor_stand,predicate=cartographer_repair_stations:empty_stand] at @s run summon item_frame ~ ~ ~ {Glowing:1b,Facing:1b,Invisible:1b,Tags:["repair_input"],Item:{}}
kill @e[type=armor_stand,tag=repair_display,predicate=cartographer_repair_stations:empty_stand]



execute as @e[tag=repair_display,type=armor_stand,tag=!calculated] at @s run function cartographer_repair_stations:repair/calculate

execute as @e[tag=repair_display,type=armor_stand,tag=!calculated] at @s run function cartographer_repair_stations:repair/expensive