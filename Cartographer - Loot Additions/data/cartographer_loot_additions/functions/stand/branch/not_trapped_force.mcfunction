execute if data storage ca.loot:stand_test data.ArmorItems[3].id run summon item ^ ^0.5 ^0.25 {Motion:[0.0,0.3,0.0],Tags:["armor_loot_head"],Item:{id:"minecraft:stone_button",Count:1b}}
execute if data storage ca.loot:stand_test data.ArmorItems[2].id run summon item ^ ^0.5 ^0.25 {Motion:[0.0,0.3,0.0],Tags:["armor_loot_body"],Item:{id:"minecraft:stone_button",Count:1b}}
execute if data storage ca.loot:stand_test data.ArmorItems[1].id run summon item ^ ^0.5 ^0.25 {Motion:[0.0,0.3,0.0],Tags:["armor_loot_legs"],Item:{id:"minecraft:stone_button",Count:1b}}
execute if data storage ca.loot:stand_test data.ArmorItems[0].id run summon item ^ ^0.5 ^0.25 {Motion:[0.0,0.3,0.0],Tags:["armor_loot_feet"],Item:{id:"minecraft:stone_button",Count:1b}}
execute if data storage ca.loot:stand_test data.HandItems[0].id run summon item ^ ^0.5 ^0.25 {Motion:[0.0,0.3,0.0],Tags:["armor_loot_main"],Item:{id:"minecraft:stone_button",Count:1b}}
execute if data storage ca.loot:stand_test data.HandItems[1].id run summon item ^ ^0.5 ^0.25 {Motion:[0.0,0.3,0.0],Tags:["armor_loot_off"],Item:{id:"minecraft:stone_button",Count:1b}}

execute if data storage ca.loot:stand_test data.ArmorItems[3].id run data modify entity @e[type=item,tag=armor_loot_head,distance=..1,sort=nearest,limit=1] Item set from entity @s ArmorItems[3]
execute if data storage ca.loot:stand_test data.ArmorItems[2].id run data modify entity @e[type=item,tag=armor_loot_body,distance=..1,sort=nearest,limit=1] Item set from entity @s ArmorItems[2]
execute if data storage ca.loot:stand_test data.ArmorItems[1].id run data modify entity @e[type=item,tag=armor_loot_legs,distance=..1,sort=nearest,limit=1] Item set from entity @s ArmorItems[1]
execute if data storage ca.loot:stand_test data.ArmorItems[0].id run data modify entity @e[type=item,tag=armor_loot_feet,distance=..1,sort=nearest,limit=1] Item set from entity @s ArmorItems[0]

execute if data storage ca.loot:stand_test data.HandItems[0].id run data modify entity @e[type=item,tag=armor_loot_main,distance=..1,sort=nearest,limit=1] Item set from entity @s HandItems[0]
execute if data storage ca.loot:stand_test data.HandItems[1].id run data modify entity @e[type=item,tag=armor_loot_off,distance=..1,sort=nearest,limit=1] Item set from entity @s HandItems[1]
