data modify storage ca.loot:stand_test data set value {}

data modify storage ca.loot:stand_test data.HandItems set from entity @s HandItems
data modify storage ca.loot:stand_test data.ArmorItems set from entity @s ArmorItems

execute if entity @s[tag=trapped,tag=filled_1] unless data storage ca.loot:stand_test data.HandItems[0].id run tag @s add trap_trigger
execute if entity @s[tag=trapped,tag=filled_2] unless data storage ca.loot:stand_test data.HandItems[1].id run tag @s add trap_trigger

execute if entity @s[tag=trapped,tag=filled_3] unless data storage ca.loot:stand_test data.ArmorItems[0].id run tag @s add trap_trigger
execute if entity @s[tag=trapped,tag=filled_4] unless data storage ca.loot:stand_test data.ArmorItems[1].id run tag @s add trap_trigger
execute if entity @s[tag=trapped,tag=filled_5] unless data storage ca.loot:stand_test data.ArmorItems[2].id run tag @s add trap_trigger
execute if entity @s[tag=trapped,tag=filled_6] unless data storage ca.loot:stand_test data.ArmorItems[3].id run tag @s add trap_trigger

tag @s remove filled
tag @s remove filled_1
tag @s remove filled_2
tag @s remove filled_3
tag @s remove filled_4
tag @s remove filled_5
tag @s remove filled_6


execute if data storage ca.loot:stand_test data.HandItems[0].id run tag @s add filled
execute if data storage ca.loot:stand_test data.HandItems[1].id run tag @s add filled

execute if data storage ca.loot:stand_test data.ArmorItems[0].id run tag @s add filled
execute if data storage ca.loot:stand_test data.ArmorItems[1].id run tag @s add filled
execute if data storage ca.loot:stand_test data.ArmorItems[2].id run tag @s add filled
execute if data storage ca.loot:stand_test data.ArmorItems[3].id run tag @s add filled

execute if entity @s[tag=trapped] if data storage ca.loot:stand_test data.HandItems[0].id run tag @s add filled_1
execute if entity @s[tag=trapped] if data storage ca.loot:stand_test data.HandItems[1].id run tag @s add filled_2

execute if entity @s[tag=trapped] if data storage ca.loot:stand_test data.ArmorItems[0].id run tag @s add filled_3
execute if entity @s[tag=trapped] if data storage ca.loot:stand_test data.ArmorItems[1].id run tag @s add filled_4
execute if entity @s[tag=trapped] if data storage ca.loot:stand_test data.ArmorItems[2].id run tag @s add filled_5
execute if entity @s[tag=trapped] if data storage ca.loot:stand_test data.ArmorItems[3].id run tag @s add filled_6

#Effects

execute if entity @s[tag=trapped,tag=trap_trigger] run summon skeleton ^ ^0.5 ^0.25 {Motion:[0.0,0.3,0.0],Tags:["shambler"],CustomName:'{"text":"Loot Shambler"}',HandItems:[{},{}],HandDropChances:[2.000F,2.000F],ArmorItems:[{},{},{},{}],ArmorDropChances:[2.000F,2.000F,2.000F,2.000F]}
execute if entity @s[tag=trapped,tag=trap_trigger] run data modify entity @e[type=skeleton,tag=shambler,distance=..1,limit=1] HandItems set from entity @s HandItems
execute if entity @s[tag=trapped,tag=trap_trigger] run data modify entity @e[type=skeleton,tag=shambler,distance=..1,limit=1] ArmorItems set from entity @s ArmorItems
execute if entity @s[tag=trapped,tag=trap_trigger] run playsound minecraft:entity.skeleton.death hostile @a[distance=..10] ~ ~ ~ 2 0.5
execute if entity @s[tag=trapped,tag=trap_trigger] run tag @s remove filled

execute if entity @s[tag=!filled] run playsound minecraft:entity.armor_stand.break block @a ~ ~ ~ 1.5 0.75
execute if entity @s[tag=!filled] run particle minecraft:block oak_planks ~ ~1 ~ 0.1 0.3 0.1 0 10 normal
execute if entity @s[tag=!filled] run kill @s