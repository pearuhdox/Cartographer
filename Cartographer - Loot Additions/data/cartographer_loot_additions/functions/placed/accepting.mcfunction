data modify entity @s Fixed set value 0b
data modify entity @s Glowing set value 0b
data modify entity @s Invisible set value 1b

tag @s add filled

execute store result score $player_count ca.frame_count run data get entity @p SelectedItem.Count
scoreboard players operation @s ca.frame_count = $player_count ca.frame_count
execute if score $player_count ca.frame_count matches 2.. run tellraw @p [{"text":"Placed ","color":"aqua","bold":false,"italic":false},{"score":{"name":"@s","objective":"ca.frame_count"},"color":"yellow","bold":true,"italic":false},{"text":" items in this frame.","color":"aqua","italic":false}]


execute if data entity @s Item.tag.EntityTag.DeathLootTable run tag @s add random
execute if data entity @s Item.tag.BlockEntityTag.Items[0] run function cartographer_loot_additions:placed/setup_cache

playsound minecraft:block.chest.close block @a[distance=..10] ~ ~ ~ 1 1.5