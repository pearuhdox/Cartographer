execute if entity @s[tag=corpse_crawler_egg_bee] run particle minecraft:block minecraft:honey_block ~ ~ ~ 0.2 0.2 0.2 0.1 15 normal
execute if entity @s[tag=corpse_crawler_egg_drowned] run particle minecraft:block minecraft:kelp ~ ~ ~ 0.2 0.2 0.2 0.1 15 normal
execute if entity @s[tag=corpse_crawler_egg_husk] run particle minecraft:block minecraft:sand ~ ~ ~ 0.2 0.2 0.2 0.1 15 normal
execute if entity @s[tag=corpse_crawler_egg_piglin] run particle minecraft:block minecraft:netherrack ~ ~ ~ 0.2 0.2 0.2 0.1 15 normal
execute if entity @s[tag=corpse_crawler_egg_zoglin] run particle minecraft:block minecraft:nether_wart_block ~ ~ ~ 0.2 0.2 0.2 0.1 15 normal
execute if entity @s[tag=corpse_crawler_egg_zombie] run particle minecraft:block minecraft:lime_terracotta ~ ~ ~ 0.2 0.2 0.2 0.1 15 normal
execute if entity @s[tag=corpse_crawler_egg_spider] run particle minecraft:block minecraft:cobweb ~ ~ ~ 0.2 0.2 0.2 0.1 15 normal

execute as @e[type=armor_stand,tag=corpse_crawler_egg,tag=!pushed] at @s run tp @s ~ ~-0.8 ~
execute as @e[type=armor_stand,tag=corpse_crawler_egg,tag=!pushed] at @s run tag @s add pushed