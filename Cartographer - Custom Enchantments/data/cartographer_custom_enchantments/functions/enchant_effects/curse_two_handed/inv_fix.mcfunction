function suso.player_data:get/do

scoreboard players set $slot c.var -1

data modify storage suso:pldata working_data.Uncompress set from entity @s Inventory[{tag:{IsCompressed:1}}]
execute store result score $slot c.var run data get storage suso:pldata working_data.Uncompress.Slot

execute unless data storage suso:pldata working_data.Uncompress.Slot run scoreboard players set $slot c.var -1

execute if score $slot c.var matches 0.. run data modify storage suso:pldata working_data.Uncompress_Item set from entity @s Inventory[{tag:{IsCompressed:1}}].tag.Compressed

execute if score $slot c.var matches 0.. run replaceitem block 4206900 1 4206900 container.0 air 1
execute if score $slot c.var matches 0.. run data modify block 4206900 1 4206900 Items append from storage suso:pldata working_data.Uncompress_Item

execute if score $slot c.var matches 0 run loot replace entity @s hotbar.0 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 1 run loot replace entity @s hotbar.1 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 2 run loot replace entity @s hotbar.2 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 3 run loot replace entity @s hotbar.3 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 4 run loot replace entity @s hotbar.4 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 5 run loot replace entity @s hotbar.5 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 6 run loot replace entity @s hotbar.6 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 7 run loot replace entity @s hotbar.7 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 8 run loot replace entity @s hotbar.8 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 9 run loot replace entity @s inventory.0 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 10 run loot replace entity @s inventory.1 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 11 run loot replace entity @s inventory.2 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 12 run loot replace entity @s inventory.3 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 13 run loot replace entity @s inventory.4 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 14 run loot replace entity @s inventory.5 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 15 run loot replace entity @s inventory.6 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 16 run loot replace entity @s inventory.7 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 17 run loot replace entity @s inventory.8 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 18 run loot replace entity @s inventory.9 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 19 run loot replace entity @s inventory.10 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 20 run loot replace entity @s inventory.11 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 21 run loot replace entity @s inventory.12 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 22 run loot replace entity @s inventory.13 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 23 run loot replace entity @s inventory.14 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 24 run loot replace entity @s inventory.15 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 25 run loot replace entity @s inventory.16 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 26 run loot replace entity @s inventory.17 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 27 run loot replace entity @s inventory.18 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 28 run loot replace entity @s inventory.19 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 29 run loot replace entity @s inventory.20 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 30 run loot replace entity @s inventory.21 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 31 run loot replace entity @s inventory.22 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 32 run loot replace entity @s inventory.23 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 33 run loot replace entity @s inventory.24 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 34 run loot replace entity @s inventory.25 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot c.var matches 35 run loot replace entity @s inventory.26 1 mine 4206900 1 4206900 air{drop_contents:1b}

data modify storage suso:pldata working_data.Uncompress_Item set value {}
data modify storage suso:pldata working_data.Uncompress set value {}

function suso.player_data:put/do