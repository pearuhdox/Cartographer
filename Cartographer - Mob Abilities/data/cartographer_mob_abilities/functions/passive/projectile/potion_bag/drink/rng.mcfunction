scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 5
function bb:lib/rng

data remove storage cartographer_mob_abilities:potion_bag_drink data.potion_bag_drink

execute if score $value bbl.rng matches 1 run data modify storage cartographer_mob_abilities:potion_bag_drink data.potion_bag_drink set from entity @s ArmorItems[3].tag.BlockEntityTag.Items[0]
execute if score $value bbl.rng matches 2 run data modify storage cartographer_mob_abilities:potion_bag_drink data.potion_bag_drink set from entity @s ArmorItems[3].tag.BlockEntityTag.Items[1]
execute if score $value bbl.rng matches 3 run data modify storage cartographer_mob_abilities:potion_bag_drink data.potion_bag_drink set from entity @s ArmorItems[3].tag.BlockEntityTag.Items[2]
execute if score $value bbl.rng matches 4 run data modify storage cartographer_mob_abilities:potion_bag_drink data.potion_bag_drink set from entity @s ArmorItems[3].tag.BlockEntityTag.Items[3]
execute if score $value bbl.rng matches 5 run data modify storage cartographer_mob_abilities:potion_bag_drink data.potion_bag_drink set from entity @s ArmorItems[3].tag.BlockEntityTag.Items[4]