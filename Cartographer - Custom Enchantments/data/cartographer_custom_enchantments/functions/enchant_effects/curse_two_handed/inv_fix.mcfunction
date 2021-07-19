function suso.player_data:get/do

scoreboard players set $slot ca.var -1

data modify storage suso:pldata working_data.Uncompress set from entity @s Inventory[{tag:{IsCompressed:1}}]
execute store result score $slot ca.var run data get storage suso:pldata working_data.Uncompress.Slot

execute unless data storage suso:pldata working_data.Uncompress.Slot run scoreboard players set $slot ca.var -1

execute if score $slot ca.var matches 0.. run data modify storage suso:pldata working_data.Uncompress_Item set from entity @s Inventory[{tag:{IsCompressed:1}}].tag.Compressed

execute if score $slot ca.var matches 0.. run item replace block 4206900 1 4206900 container.0 with air 1
execute if score $slot ca.var matches 0.. run data modify block 4206900 1 4206900 Items append from storage suso:pldata working_data.Uncompress_Item

execute if score $slot ca.var matches 0 in minecraft:overworld run loot replace entity @s hotbar.0 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 1 in minecraft:overworld run loot replace entity @s hotbar.1 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 2 in minecraft:overworld run loot replace entity @s hotbar.2 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 3 in minecraft:overworld run loot replace entity @s hotbar.3 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 4 in minecraft:overworld run loot replace entity @s hotbar.4 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 5 in minecraft:overworld run loot replace entity @s hotbar.5 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 6 in minecraft:overworld run loot replace entity @s hotbar.6 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 7 in minecraft:overworld run loot replace entity @s hotbar.7 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 8 in minecraft:overworld run loot replace entity @s hotbar.8 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 9 in minecraft:overworld run loot replace entity @s inventory.0 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 10 in minecraft:overworld run loot replace entity @s inventory.1 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 11 in minecraft:overworld run loot replace entity @s inventory.2 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 12 in minecraft:overworld run loot replace entity @s inventory.3 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 13 in minecraft:overworld run loot replace entity @s inventory.4 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 14 in minecraft:overworld run loot replace entity @s inventory.5 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 15 in minecraft:overworld run loot replace entity @s inventory.6 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 16 in minecraft:overworld run loot replace entity @s inventory.7 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 17 in minecraft:overworld run loot replace entity @s inventory.8 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 18 in minecraft:overworld run loot replace entity @s inventory.9 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 19 in minecraft:overworld run loot replace entity @s inventory.10 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 20 in minecraft:overworld run loot replace entity @s inventory.11 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 21 in minecraft:overworld run loot replace entity @s inventory.12 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 22 in minecraft:overworld run loot replace entity @s inventory.13 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 23 in minecraft:overworld run loot replace entity @s inventory.14 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 24 in minecraft:overworld run loot replace entity @s inventory.15 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 25 in minecraft:overworld run loot replace entity @s inventory.16 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 26 in minecraft:overworld run loot replace entity @s inventory.17 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 27 in minecraft:overworld run loot replace entity @s inventory.18 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 28 in minecraft:overworld run loot replace entity @s inventory.19 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 29 in minecraft:overworld run loot replace entity @s inventory.20 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 30 in minecraft:overworld run loot replace entity @s inventory.21 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 31 in minecraft:overworld run loot replace entity @s inventory.22 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 32 in minecraft:overworld run loot replace entity @s inventory.23 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 33 in minecraft:overworld run loot replace entity @s inventory.24 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 34 in minecraft:overworld run loot replace entity @s inventory.25 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.var matches 35 in minecraft:overworld run loot replace entity @s inventory.26 1 mine 4206900 1 4206900 air{drop_contents:1b}

data modify storage suso:pldata working_data.Uncompress_Item set value {}
data modify storage suso:pldata working_data.Uncompress set value {}

function suso.player_data:put/do