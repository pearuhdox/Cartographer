scoreboard players set in math 1
scoreboard players set in1 math 5

function cartographer_core:helper/math/rng/range

data remove storage cartographer_mob_abilities:potion_bag_drink data.potion_bag_drink

execute if score out math matches 1 run data modify storage cartographer_mob_abilities:potion_bag_drink data.potion_bag_drink set from entity @s ArmorItems[3].tag.BlockEntityTag.Items[0]
execute if score out math matches 2 run data modify storage cartographer_mob_abilities:potion_bag_drink data.potion_bag_drink set from entity @s ArmorItems[3].tag.BlockEntityTag.Items[1]
execute if score out math matches 3 run data modify storage cartographer_mob_abilities:potion_bag_drink data.potion_bag_drink set from entity @s ArmorItems[3].tag.BlockEntityTag.Items[2]
execute if score out math matches 4 run data modify storage cartographer_mob_abilities:potion_bag_drink data.potion_bag_drink set from entity @s ArmorItems[3].tag.BlockEntityTag.Items[3]
execute if score out math matches 5 run data modify storage cartographer_mob_abilities:potion_bag_drink data.potion_bag_drink set from entity @s ArmorItems[3].tag.BlockEntityTag.Items[4]