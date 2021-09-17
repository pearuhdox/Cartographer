data modify storage ca.loot:stand_test data set value {}

data modify storage ca.loot:stand_test data.HandItems set from entity @s HandItems
data modify storage ca.loot:stand_test data.ArmorItems set from entity @s ArmorItems

execute if data storage ca.loot:stand_test data.HandItems[0].id run tag @s add filled
execute if data storage ca.loot:stand_test data.HandItems[1].id run tag @s add filled

execute if data storage ca.loot:stand_test data.HandItems[0].tag.EntityTag.DeathLootTable run tag @s add random_main
execute if data storage ca.loot:stand_test data.HandItems[1].tag.EntityTag.DeathLootTable run tag @s add random_off

execute if data storage ca.loot:stand_test data.ArmorItems[0].id run tag @s add filled
execute if data storage ca.loot:stand_test data.ArmorItems[1].id run tag @s add filled
execute if data storage ca.loot:stand_test data.ArmorItems[2].id run tag @s add filled
execute if data storage ca.loot:stand_test data.ArmorItems[3].id run tag @s add filled

execute if entity @s[tag=filled] run data modify entity @s Glowing set value 0b
execute if entity @s[tag=filled] run playsound minecraft:block.chest.close block @a[distance=..10] ~ ~ ~ 1 1.5

#execute if entity @s[tag=filled] run say accepted