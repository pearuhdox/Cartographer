#Effects
data modify storage ca.loot:stand_test data set value {}

data modify storage ca.loot:stand_test data.HandItems set from entity @s HandItems
data modify storage ca.loot:stand_test data.ArmorItems set from entity @s ArmorItems

execute unless entity @s[tag=trapped] if data storage ca.loot:stand_test data.ArmorItems[3].id run summon item ^ ^0.5 ^0.25 {Motion:[0.0,0.3,0.0],Tags:["armor_loot_head"],Item:{id:"minecraft:stone_button",Count:1b}}
execute unless entity @s[tag=trapped] if data storage ca.loot:stand_test data.ArmorItems[2].id run summon item ^ ^0.5 ^0.25 {Motion:[0.0,0.3,0.0],Tags:["armor_loot_body"],Item:{id:"minecraft:stone_button",Count:1b}}
execute unless entity @s[tag=trapped] if data storage ca.loot:stand_test data.ArmorItems[1].id run summon item ^ ^0.5 ^0.25 {Motion:[0.0,0.3,0.0],Tags:["armor_loot_legs"],Item:{id:"minecraft:stone_button",Count:1b}}
execute unless entity @s[tag=trapped] if data storage ca.loot:stand_test data.ArmorItems[0].id run summon item ^ ^0.5 ^0.25 {Motion:[0.0,0.3,0.0],Tags:["armor_loot_feet"],Item:{id:"minecraft:stone_button",Count:1b}}
execute unless entity @s[tag=trapped] if data storage ca.loot:stand_test data.HandItems[0].id run summon item ^ ^0.5 ^0.25 {Motion:[0.0,0.3,0.0],Tags:["armor_loot_main"],Item:{id:"minecraft:stone_button",Count:1b}}
execute unless entity @s[tag=trapped] if data storage ca.loot:stand_test data.HandItems[1].id run summon item ^ ^0.5 ^0.25 {Motion:[0.0,0.3,0.0],Tags:["armor_loot_off"],Item:{id:"minecraft:stone_button",Count:1b}}

execute unless entity @s[tag=trapped] if data storage ca.loot:stand_test data.ArmorItems[3].id run data modify entity @e[type=item,tag=armor_loot_head,distance=..1,sort=nearest,limit=1] Item set from entity @s ArmorItems[3]
execute unless entity @s[tag=trapped] if data storage ca.loot:stand_test data.ArmorItems[2].id run data modify entity @e[type=item,tag=armor_loot_body,distance=..1,sort=nearest,limit=1] Item set from entity @s ArmorItems[2]
execute unless entity @s[tag=trapped] if data storage ca.loot:stand_test data.ArmorItems[1].id run data modify entity @e[type=item,tag=armor_loot_legs,distance=..1,sort=nearest,limit=1] Item set from entity @s ArmorItems[1]
execute unless entity @s[tag=trapped] if data storage ca.loot:stand_test data.ArmorItems[0].id run data modify entity @e[type=item,tag=armor_loot_feet,distance=..1,sort=nearest,limit=1] Item set from entity @s ArmorItems[0]

execute unless entity @s[tag=trapped] if data storage ca.loot:stand_test data.HandItems[0].id run data modify entity @e[type=item,tag=armor_loot_main,distance=..1,sort=nearest,limit=1] Item set from entity @s HandItems[0]
execute unless entity @s[tag=trapped] if data storage ca.loot:stand_test data.HandItems[1].id run data modify entity @e[type=item,tag=armor_loot_off,distance=..1,sort=nearest,limit=1] Item set from entity @s HandItems[1]

execute if entity @s[tag=trapped] run summon skeleton ^ ^0.5 ^0.25 {Motion:[0.0,0.3,0.0],Tags:["shambler"],CustomName:'{"text":"Loot Shambler"}',HandItems:[{},{}],HandDropChances:[2.000F,2.000F],ArmorItems:[{},{},{},{}],ArmorDropChances:[2.000F,2.000F,2.000F,2.000F]}
execute if entity @s[tag=trapped] run data modify entity @e[type=skeleton,tag=shambler,distance=..1,limit=1] HandItems set from entity @s HandItems
execute if entity @s[tag=trapped] run data modify entity @e[type=skeleton,tag=shambler,distance=..1,limit=1] ArmorItems set from entity @s ArmorItems
execute if entity @s[tag=trapped] run playsound minecraft:entity.skeleton.death hostile @a[distance=..10] ~ ~ ~ 2 0.5

playsound minecraft:entity.armor_stand.break block @a ~ ~ ~ 1.5 0.75
particle minecraft:block oak_planks ~ ~1 ~ 0.1 0.3 0.1 0 10 normal
kill @s