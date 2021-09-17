data modify storage ca.loot:stand_test data set value {}

data modify storage ca.loot:stand_test data.HandItems set from entity @s HandItems
data modify storage ca.loot:stand_test data.ArmorItems set from entity @s ArmorItems

tag @s remove filled

execute if data storage ca.loot:stand_test data.HandItems[0].id run tag @s add filled
execute if data storage ca.loot:stand_test data.HandItems[1].id run tag @s add filled

execute if data storage ca.loot:stand_test data.ArmorItems[0].id run tag @s add filled
execute if data storage ca.loot:stand_test data.ArmorItems[1].id run tag @s add filled
execute if data storage ca.loot:stand_test data.ArmorItems[2].id run tag @s add filled
execute if data storage ca.loot:stand_test data.ArmorItems[3].id run tag @s add filled

#Effects

execute if entity @s[tag=!filled] run tag @s remove random_main
execute if entity @s[tag=!filled] run tag @s remove random_off
execute if entity @s[tag=!filled] run data modify entity @s Glowing set value 1b
execute if entity @s[tag=!filled] run playsound minecraft:block.chest.open block @a[distance=..10] ~ ~ ~ 1 1.5