execute store result score $slot ca.loyalty run data get storage cartographer_custom_enchantments:loyalty_inventory Temp.Slot
data remove storage cartographer_custom_enchantments:loyalty_inventory Temp.Slot

execute store result score $player_slot ca.loyalty run data get entity @s SelectedItemSlot
execute if score $player_slot ca.loyalty = $slot ca.loyalty run scoreboard players set @s ca.loyalty_speed 15


execute if score $slot ca.loyalty matches -106.. in minecraft:overworld run item replace block 4206900 1 4206900 container.0 with air 1
execute if score $slot ca.loyalty matches -106.. in minecraft:overworld run data modify block 4206900 1 4206900 Items append from storage cartographer_custom_enchantments:loyalty_inventory Temp.tag.StoredTrident

execute if score $slot ca.loyalty matches 0 in minecraft:overworld run loot replace entity @s hotbar.0 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 1 in minecraft:overworld run loot replace entity @s hotbar.1 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 2 in minecraft:overworld run loot replace entity @s hotbar.2 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 3 in minecraft:overworld run loot replace entity @s hotbar.3 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 4 in minecraft:overworld run loot replace entity @s hotbar.4 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 5 in minecraft:overworld run loot replace entity @s hotbar.5 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 6 in minecraft:overworld run loot replace entity @s hotbar.6 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 7 in minecraft:overworld run loot replace entity @s hotbar.7 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 8 in minecraft:overworld run loot replace entity @s hotbar.8 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 9 in minecraft:overworld run loot replace entity @s inventory.0 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 10 in minecraft:overworld run loot replace entity @s inventory.1 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 11 in minecraft:overworld run loot replace entity @s inventory.2 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 12 in minecraft:overworld run loot replace entity @s inventory.3 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 13 in minecraft:overworld run loot replace entity @s inventory.4 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 14 in minecraft:overworld run loot replace entity @s inventory.5 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 15 in minecraft:overworld run loot replace entity @s inventory.6 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 16 in minecraft:overworld run loot replace entity @s inventory.7 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 17 in minecraft:overworld run loot replace entity @s inventory.8 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 18 in minecraft:overworld run loot replace entity @s inventory.9 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 19 in minecraft:overworld run loot replace entity @s inventory.10 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 20 in minecraft:overworld run loot replace entity @s inventory.11 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 21 in minecraft:overworld run loot replace entity @s inventory.12 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 22 in minecraft:overworld run loot replace entity @s inventory.13 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 23 in minecraft:overworld run loot replace entity @s inventory.14 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 24 in minecraft:overworld run loot replace entity @s inventory.15 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 25 in minecraft:overworld run loot replace entity @s inventory.16 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 26 in minecraft:overworld run loot replace entity @s inventory.17 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 27 in minecraft:overworld run loot replace entity @s inventory.18 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 28 in minecraft:overworld run loot replace entity @s inventory.19 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 29 in minecraft:overworld run loot replace entity @s inventory.20 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 30 in minecraft:overworld run loot replace entity @s inventory.21 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 31 in minecraft:overworld run loot replace entity @s inventory.22 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 32 in minecraft:overworld run loot replace entity @s inventory.23 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 33 in minecraft:overworld run loot replace entity @s inventory.24 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 34 in minecraft:overworld run loot replace entity @s inventory.25 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches 35 in minecraft:overworld run loot replace entity @s inventory.26 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $slot ca.loyalty matches -106 in minecraft:overworld run loot replace entity @s weapon.offhand 1 mine 4206900 1 4206900 air{drop_contents:1b}

playsound minecraft:item.trident.riptide_3 player @s ~ ~ ~ 1 1.5

function cartographer_custom_enchantments:calc_enchant/run