execute if data storage cartographer_custom_enchantments:swift_sneak Item.tag.Enchantments[0].ExtraSwiftSneak run data remove storage cartographer_custom_enchantments:swift_sneak Item.tag.Enchantments[0]
execute if data storage cartographer_custom_enchantments:swift_sneak Item.tag.Enchantments[0].ExtraSwiftSneak run data remove storage cartographer_custom_enchantments:swift_sneak Item.tag.Enchantments[0]


execute store result score $ss_modified ca.swift_sneak run data get storage cartographer_custom_enchantments:swift_sneak Item.tag.SwiftSneakModified
execute if score $ss_modified ca.swift_sneak matches 1 run data modify storage cartographer_custom_enchantments:swift_sneak Item.tag.HideFlags set value 0

data remove storage cartographer_custom_enchantments:swift_sneak Item.tag.SwiftSneakModified

execute in minecraft:overworld run data modify block 4206900 0 4206900 Items append from storage cartographer_custom_enchantments:swift_sneak Item
execute in minecraft:overworld run loot replace entity @s armor.legs 1 mine 4206900 0 4206900 air{drop_contents:1b}