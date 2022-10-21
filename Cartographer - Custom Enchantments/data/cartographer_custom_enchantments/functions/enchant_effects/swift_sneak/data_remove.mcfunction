data remove storage cartographer_custom_enchantments:swift_sneak Item.tag.Enchantments[0]

execute in minecraft:overworld run data modify block 4206900 0 4206900 Items append from storage cartographer_custom_enchantments:swift_sneak Item
execute in minecraft:overworld run loot replace entity @s armor.legs 1 mine 4206900 0 4206900 air{drop_contents:1b}