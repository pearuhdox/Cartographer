execute if entity @s[predicate=cartographer_repair_stations:empty_stand] run kill @s


execute if entity @s[tag=!calculated] at @s run function cartographer_repair_stations:repair/calculate
execute if entity @s[tag=!calculated] at @s run function cartographer_repair_stations:repair/expensive

execute if entity @a[distance=..5] run tp @s ~ ~ ~ ~1 ~
execute if entity @a[distance=..5] run particle minecraft:composter ~ ~ ~ 0.3 0 0.3 0 1