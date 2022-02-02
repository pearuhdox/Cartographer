data modify storage ca.loot:stand_test data set value {}

data modify storage ca.loot:stand_test data.HandItems set from entity @s HandItems
data modify storage ca.loot:stand_test data.ArmorItems set from entity @s ArmorItems

scoreboard players set @s la.filled_slots 0

execute if data storage ca.loot:stand_test data.HandItems[0].id run scoreboard players add @s la.filled_slots 1
execute if data storage ca.loot:stand_test data.HandItems[1].id run scoreboard players add @s la.filled_slots 1

execute if data storage ca.loot:stand_test data.ArmorItems[0].id run scoreboard players add @s la.filled_slots 1
execute if data storage ca.loot:stand_test data.ArmorItems[1].id run scoreboard players add @s la.filled_slots 1
execute if data storage ca.loot:stand_test data.ArmorItems[2].id run scoreboard players add @s la.filled_slots 1
execute if data storage ca.loot:stand_test data.ArmorItems[3].id run scoreboard players add @s la.filled_slots 1