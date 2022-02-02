#Effects
data modify storage ca.loot:stand_test data set value {}

data modify storage ca.loot:stand_test data.HandItems set from entity @s HandItems
data modify storage ca.loot:stand_test data.ArmorItems set from entity @s ArmorItems

execute unless entity @s[tag=trapped] run function cartographer_loot_additions:stand/branch/not_trapped_force
execute if entity @s[tag=trapped] run function cartographer_loot_additions:stand/branch/trapped_force

playsound minecraft:entity.armor_stand.break block @a ~ ~ ~ 1.5 0.75
particle minecraft:block oak_planks ~ ~1 ~ 0.1 0.3 0.1 0 10 normal
kill @s