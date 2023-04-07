data modify storage cartographer_loot_additions:dropped_item data set value {}
data modify storage cartographer_loot_additions:dropped_item data set from entity @s Item

tag @s add ca.loot_additions_new

execute if data entity @s Item.tag.StoredItems run function cartographer_loot_additions:chest_cache/drop_master