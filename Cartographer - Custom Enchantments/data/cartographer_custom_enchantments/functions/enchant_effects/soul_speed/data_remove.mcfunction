execute if data storage cartographer_custom_enchantments:soul_speed Item.tag.Enchantments[0].ExtraSoulSpeed run data remove storage cartographer_custom_enchantments:soul_speed Item.tag.Enchantments[0]
execute if data storage cartographer_custom_enchantments:soul_speed Item.tag.Enchantments[0].ExtraSoulSpeed run data remove storage cartographer_custom_enchantments:soul_speed Item.tag.Enchantments[0]


execute store result score $ss_modified ca.soul_speed run data get storage cartographer_custom_enchantments:soul_speed Item.tag.SoulSpeedModified
execute if score $ss_modified ca.soul_speed matches 1 run data modify storage cartographer_custom_enchantments:soul_speed Item.tag.HideFlags set value 0

data remove storage cartographer_custom_enchantments:soul_speed Item.tag.SoulSpeedModified

execute in minecraft:overworld run data modify block 4206900 0 4206900 Items append from storage cartographer_custom_enchantments:soul_speed Item
execute in minecraft:overworld run loot replace entity @s armor.feet 1 mine 4206900 0 4206900 air{drop_contents:1b}