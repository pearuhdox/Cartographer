tag @s add filled

execute store result score $player_count count_frames.count run data get entity @p SelectedItem.Count
scoreboard players operation @s ca.frame_count = $player_count ca.frame_count

execute if data entity @s Item.tag.EntityTag.DeathLootTable run tag @s add random
execute if data entity @s Item.tag.BlockEntityTag.Items[0] run function cartographer_loot_additions:placed/setup_cache

data modify entity @s Glowing set value 0b
data modify entity @s Invisible set value 1b

playsound minecraft:block.chest.close block @a[distance=..10] ~ ~ ~ 1 1.5