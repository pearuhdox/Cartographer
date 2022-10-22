execute if data storage cartographer_custom_enchantments:frost_walker Item.tag.Enchantments[0].ExtraFrostWalker run data remove storage cartographer_custom_enchantments:frost_walker Item.tag.Enchantments[0]
execute if data storage cartographer_custom_enchantments:frost_walker Item.tag.Enchantments[0].ExtraFrostWalker run data remove storage cartographer_custom_enchantments:frost_walker Item.tag.Enchantments[0]


execute store result score $ss_modified ca.frost_walker run data get storage cartographer_custom_enchantments:frost_walker Item.tag.FrostWalkerModified
execute if score $ss_modified ca.frost_walker matches 1 run data modify storage cartographer_custom_enchantments:frost_walker Item.tag.HideFlags set value 0

data remove storage cartographer_custom_enchantments:frost_walker Item.tag.FrostWalkerModified

execute in minecraft:overworld run data modify block 4206900 0 4206900 Items append from storage cartographer_custom_enchantments:frost_walker Item
execute in minecraft:overworld run loot replace entity @s armor.feet 1 mine 4206900 0 4206900 air{drop_contents:1b}