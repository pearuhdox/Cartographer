data modify storage cartographer_loot_additions:pot_drop_test data set value "minecraft:structure_void"


scoreboard players set $pot_custom_check ca.loot_var -1
execute store success score $pot_custom_check ca.loot_var run data modify storage cartographer_loot_additions:pot_drop_test data set from entity @s Item.tag.BlockEntityTag.sherds[0]

execute if score $pot_custom_check ca.loot_var matches 0 run function cartographer_loot_additions:drops/do_pot_drops