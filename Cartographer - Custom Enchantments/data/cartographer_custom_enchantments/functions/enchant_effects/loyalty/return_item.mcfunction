function cartographer_core:data_get/do

scoreboard players set @s loyalty_slot -1

data modify storage cartographer_core:pl_data working_data.Loyalty set from entity @s Inventory[{tag:{IsTrident:1}}]
execute store result score @s loyalty_slot run data get storage cartographer_core:pl_data working_data.Loyalty.Slot

execute unless data storage cartographer_core:pl_data working_data.Loyalty.Slot run scoreboard players set @s loyalty_slot -1

execute if data entity @s Inventory[{Slot:-106b}].tag.IsTrident run scoreboard players set @s loyalty_slot 36

execute if score @s loyalty_slot matches 0.. run data modify storage cartographer_core:pl_data working_data.Loyalty_Item set from entity @s Inventory[{tag:{IsTrident:1}}].tag.Trident

execute if score @s loyalty_slot matches 0.. run replaceitem block 4206900 0 4206899 container.0 air 1
execute if score @s loyalty_slot matches 0.. run data modify block 4206900 0 4206899 Items append from storage cartographer_core:pl_data working_data.Loyalty_Item

execute if score @s loyalty_slot matches 0 run loot replace entity @s hotbar.0 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 1 run loot replace entity @s hotbar.1 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 2 run loot replace entity @s hotbar.2 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 3 run loot replace entity @s hotbar.3 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 4 run loot replace entity @s hotbar.4 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 5 run loot replace entity @s hotbar.5 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 6 run loot replace entity @s hotbar.6 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 7 run loot replace entity @s hotbar.7 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 8 run loot replace entity @s hotbar.8 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 9 run loot replace entity @s inventory.0 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 10 run loot replace entity @s inventory.1 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 11 run loot replace entity @s inventory.2 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 12 run loot replace entity @s inventory.3 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 13 run loot replace entity @s inventory.4 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 14 run loot replace entity @s inventory.5 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 15 run loot replace entity @s inventory.6 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 16 run loot replace entity @s inventory.7 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 17 run loot replace entity @s inventory.8 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 18 run loot replace entity @s inventory.9 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 19 run loot replace entity @s inventory.10 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 20 run loot replace entity @s inventory.11 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 21 run loot replace entity @s inventory.12 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 22 run loot replace entity @s inventory.13 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 23 run loot replace entity @s inventory.14 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 24 run loot replace entity @s inventory.15 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 25 run loot replace entity @s inventory.16 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 26 run loot replace entity @s inventory.17 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 27 run loot replace entity @s inventory.18 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 28 run loot replace entity @s inventory.19 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 29 run loot replace entity @s inventory.20 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 30 run loot replace entity @s inventory.21 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 31 run loot replace entity @s inventory.22 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 32 run loot replace entity @s inventory.23 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 33 run loot replace entity @s inventory.24 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 34 run loot replace entity @s inventory.25 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 35 run loot replace entity @s inventory.26 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if score @s loyalty_slot matches 36 run loot replace entity @s weapon.offhand 1 mine 4206900 0 4206899 air{drop_contents:1b}

data modify storage cartographer_core:pl_data working_data.Loyalty_Item set value {}
data modify storage cartographer_core:pl_data working_data.Loyalty set value {}

function cartographer_core:data_put/do