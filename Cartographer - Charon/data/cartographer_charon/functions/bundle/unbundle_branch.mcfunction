scoreboard players set $slot dt.var -1000
execute store result score $slot dt.var run data get storage cartographer_charon:player temp.tag.Items[0].Slot

execute if data storage cartographer_charon:player temp.tag.Items[0].tag.Enchantments[{id:"minecraft:binding_curse"}] run scoreboard players set $slot dt.var 500
execute if data storage cartographer_charon:player temp.tag.Items[0].tag.Enchantments[{id:"minecraft:vanishing_curse"}] run scoreboard players set $slot dt.var 500
execute if data storage cartographer_charon:player temp.tag.Items[0].tag.CustomEnchantments[{id:"minecraft:curse_shattering"}] run scoreboard players set $slot dt.var 500

execute unless score $slot dt.var matches 500 run data modify storage inv:main inv.all append from storage cartographer_charon:player temp.tag.Items[0]
data modify storage cartographer_charon:player modified_slot set value {}

#Add the item in the slot to replace to the modified slot data storage.
execute if score $slot dt.var matches 0 if data storage cartographer_charon:player inventory_test[{Slot:0b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:0b}]
execute if score $slot dt.var matches 1 if data storage cartographer_charon:player inventory_test[{Slot:1b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:1b}]
execute if score $slot dt.var matches 2 if data storage cartographer_charon:player inventory_test[{Slot:2b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:2b}]
execute if score $slot dt.var matches 3 if data storage cartographer_charon:player inventory_test[{Slot:3b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:3b}]
execute if score $slot dt.var matches 4 if data storage cartographer_charon:player inventory_test[{Slot:4b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:4b}]
execute if score $slot dt.var matches 5 if data storage cartographer_charon:player inventory_test[{Slot:5b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:5b}]
execute if score $slot dt.var matches 6 if data storage cartographer_charon:player inventory_test[{Slot:6b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:6b}]
execute if score $slot dt.var matches 7 if data storage cartographer_charon:player inventory_test[{Slot:7b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:7b}]
execute if score $slot dt.var matches 8 if data storage cartographer_charon:player inventory_test[{Slot:8b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:8b}]

execute if score $slot dt.var matches 9 if data storage cartographer_charon:player inventory_test[{Slot:9b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:9b}]
execute if score $slot dt.var matches 10 if data storage cartographer_charon:player inventory_test[{Slot:10b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:10b}]
execute if score $slot dt.var matches 11 if data storage cartographer_charon:player inventory_test[{Slot:11b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:11b}]
execute if score $slot dt.var matches 12 if data storage cartographer_charon:player inventory_test[{Slot:12b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:12b}]
execute if score $slot dt.var matches 13 if data storage cartographer_charon:player inventory_test[{Slot:13b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:13b}]
execute if score $slot dt.var matches 14 if data storage cartographer_charon:player inventory_test[{Slot:14b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:14b}]
execute if score $slot dt.var matches 15 if data storage cartographer_charon:player inventory_test[{Slot:15b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:15b}]
execute if score $slot dt.var matches 16 if data storage cartographer_charon:player inventory_test[{Slot:16b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:16b}]
execute if score $slot dt.var matches 17 if data storage cartographer_charon:player inventory_test[{Slot:17b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:17b}]

execute if score $slot dt.var matches 18 if data storage cartographer_charon:player inventory_test[{Slot:18b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:18b}]
execute if score $slot dt.var matches 19 if data storage cartographer_charon:player inventory_test[{Slot:19b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:19b}]
execute if score $slot dt.var matches 20 if data storage cartographer_charon:player inventory_test[{Slot:20b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:20b}]
execute if score $slot dt.var matches 21 if data storage cartographer_charon:player inventory_test[{Slot:21b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:21b}]
execute if score $slot dt.var matches 22 if data storage cartographer_charon:player inventory_test[{Slot:22b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:22b}]
execute if score $slot dt.var matches 23 if data storage cartographer_charon:player inventory_test[{Slot:23b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:23b}]
execute if score $slot dt.var matches 24 if data storage cartographer_charon:player inventory_test[{Slot:24b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:24b}]
execute if score $slot dt.var matches 25 if data storage cartographer_charon:player inventory_test[{Slot:25b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:25b}]
execute if score $slot dt.var matches 26 if data storage cartographer_charon:player inventory_test[{Slot:26b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:26b}]

execute if score $slot dt.var matches 27 if data storage cartographer_charon:player inventory_test[{Slot:27b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:27b}]
execute if score $slot dt.var matches 28 if data storage cartographer_charon:player inventory_test[{Slot:28b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:28b}]
execute if score $slot dt.var matches 29 if data storage cartographer_charon:player inventory_test[{Slot:29b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:29b}]
execute if score $slot dt.var matches 30 if data storage cartographer_charon:player inventory_test[{Slot:30b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:30b}]
execute if score $slot dt.var matches 31 if data storage cartographer_charon:player inventory_test[{Slot:31b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:31b}]
execute if score $slot dt.var matches 32 if data storage cartographer_charon:player inventory_test[{Slot:32b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:32b}]
execute if score $slot dt.var matches 33 if data storage cartographer_charon:player inventory_test[{Slot:33b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:33b}]
execute if score $slot dt.var matches 34 if data storage cartographer_charon:player inventory_test[{Slot:34b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:34b}]
execute if score $slot dt.var matches 35 if data storage cartographer_charon:player inventory_test[{Slot:35b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:35b}]

execute if score $slot dt.var matches 100 if data storage cartographer_charon:player inventory_test[{Slot:100b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:100b}]
execute if score $slot dt.var matches 101 if data storage cartographer_charon:player inventory_test[{Slot:101b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:101b}]
execute if score $slot dt.var matches 102 if data storage cartographer_charon:player inventory_test[{Slot:102b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:102b}]
execute if score $slot dt.var matches 103 if data storage cartographer_charon:player inventory_test[{Slot:103b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:103b}]

execute if score $slot dt.var matches -106 if data storage cartographer_charon:player inventory_test[{Slot:-106b}].id run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player inventory_test[{Slot:-106b}]

#Marked Items are not swapped onto inventory
execute if score $slot dt.var matches 500 run data modify storage cartographer_charon:player modified_slot set from storage cartographer_charon:player temp.tag.Items[0]

#Delete item in marked slot so it can be given back with the item spawned in.
execute if score $slot dt.var matches 0 if data storage cartographer_charon:player inventory_test[{Slot:0b}].id run item replace entity @p hotbar.0 with air
execute if score $slot dt.var matches 1 if data storage cartographer_charon:player inventory_test[{Slot:1b}].id run item replace entity @p hotbar.1 with air
execute if score $slot dt.var matches 2 if data storage cartographer_charon:player inventory_test[{Slot:2b}].id run item replace entity @p hotbar.2 with air
execute if score $slot dt.var matches 3 if data storage cartographer_charon:player inventory_test[{Slot:3b}].id run item replace entity @p hotbar.3 with air
execute if score $slot dt.var matches 4 if data storage cartographer_charon:player inventory_test[{Slot:4b}].id run item replace entity @p hotbar.4 with air
execute if score $slot dt.var matches 5 if data storage cartographer_charon:player inventory_test[{Slot:5b}].id run item replace entity @p hotbar.5 with air
execute if score $slot dt.var matches 6 if data storage cartographer_charon:player inventory_test[{Slot:6b}].id run item replace entity @p hotbar.6 with air
execute if score $slot dt.var matches 7 if data storage cartographer_charon:player inventory_test[{Slot:7b}].id run item replace entity @p hotbar.7 with air
execute if score $slot dt.var matches 8 if data storage cartographer_charon:player inventory_test[{Slot:8b}].id run item replace entity @p hotbar.8 with air

execute if score $slot dt.var matches 9 if data storage cartographer_charon:player inventory_test[{Slot:9b}].id run item replace entity @p inventory.0 with air
execute if score $slot dt.var matches 10 if data storage cartographer_charon:player inventory_test[{Slot:10b}].id run item replace entity @p inventory.1 with air
execute if score $slot dt.var matches 11 if data storage cartographer_charon:player inventory_test[{Slot:11b}].id run item replace entity @p inventory.2 with air
execute if score $slot dt.var matches 12 if data storage cartographer_charon:player inventory_test[{Slot:12b}].id run item replace entity @p inventory.3 with air
execute if score $slot dt.var matches 13 if data storage cartographer_charon:player inventory_test[{Slot:13b}].id run item replace entity @p inventory.4 with air
execute if score $slot dt.var matches 14 if data storage cartographer_charon:player inventory_test[{Slot:14b}].id run item replace entity @p inventory.5 with air
execute if score $slot dt.var matches 15 if data storage cartographer_charon:player inventory_test[{Slot:15b}].id run item replace entity @p inventory.6 with air
execute if score $slot dt.var matches 16 if data storage cartographer_charon:player inventory_test[{Slot:16b}].id run item replace entity @p inventory.7 with air
execute if score $slot dt.var matches 17 if data storage cartographer_charon:player inventory_test[{Slot:17b}].id run item replace entity @p inventory.8 with air

execute if score $slot dt.var matches 18 if data storage cartographer_charon:player inventory_test[{Slot:18b}].id run item replace entity @p inventory.9 with air
execute if score $slot dt.var matches 19 if data storage cartographer_charon:player inventory_test[{Slot:19b}].id run item replace entity @p inventory.10 with air
execute if score $slot dt.var matches 20 if data storage cartographer_charon:player inventory_test[{Slot:20b}].id run item replace entity @p inventory.11 with air
execute if score $slot dt.var matches 21 if data storage cartographer_charon:player inventory_test[{Slot:21b}].id run item replace entity @p inventory.12 with air
execute if score $slot dt.var matches 22 if data storage cartographer_charon:player inventory_test[{Slot:22b}].id run item replace entity @p inventory.13 with air
execute if score $slot dt.var matches 23 if data storage cartographer_charon:player inventory_test[{Slot:23b}].id run item replace entity @p inventory.14 with air
execute if score $slot dt.var matches 24 if data storage cartographer_charon:player inventory_test[{Slot:24b}].id run item replace entity @p inventory.15 with air
execute if score $slot dt.var matches 25 if data storage cartographer_charon:player inventory_test[{Slot:25b}].id run item replace entity @p inventory.16 with air
execute if score $slot dt.var matches 26 if data storage cartographer_charon:player inventory_test[{Slot:26b}].id run item replace entity @p inventory.17 with air

execute if score $slot dt.var matches 27 if data storage cartographer_charon:player inventory_test[{Slot:27b}].id run item replace entity @p inventory.18 with air
execute if score $slot dt.var matches 28 if data storage cartographer_charon:player inventory_test[{Slot:28b}].id run item replace entity @p inventory.19 with air
execute if score $slot dt.var matches 29 if data storage cartographer_charon:player inventory_test[{Slot:29b}].id run item replace entity @p inventory.20 with air
execute if score $slot dt.var matches 30 if data storage cartographer_charon:player inventory_test[{Slot:30b}].id run item replace entity @p inventory.21 with air
execute if score $slot dt.var matches 31 if data storage cartographer_charon:player inventory_test[{Slot:31b}].id run item replace entity @p inventory.22 with air
execute if score $slot dt.var matches 32 if data storage cartographer_charon:player inventory_test[{Slot:32b}].id run item replace entity @p inventory.23 with air
execute if score $slot dt.var matches 33 if data storage cartographer_charon:player inventory_test[{Slot:33b}].id run item replace entity @p inventory.24 with air
execute if score $slot dt.var matches 34 if data storage cartographer_charon:player inventory_test[{Slot:34b}].id run item replace entity @p inventory.25 with air
execute if score $slot dt.var matches 35 if data storage cartographer_charon:player inventory_test[{Slot:35b}].id run item replace entity @p inventory.26 with air

execute if score $slot dt.var matches 100 if data storage cartographer_charon:player inventory_test[{Slot:100b}].id run item replace entity @p armor.feet with air
execute if score $slot dt.var matches 101 if data storage cartographer_charon:player inventory_test[{Slot:101b}].id run item replace entity @p armor.legs with air
execute if score $slot dt.var matches 102 if data storage cartographer_charon:player inventory_test[{Slot:102b}].id run item replace entity @p armor.chest with air
execute if score $slot dt.var matches 103 if data storage cartographer_charon:player inventory_test[{Slot:103b}].id run item replace entity @p armor.head with air

execute if score $slot dt.var matches -106 if data storage cartographer_charon:player inventory_test[{Slot:-106b}].id run item replace entity @p weapon.offhand with air

#Turn the item into the item in the inventory. The items the player gets from the bundle are added to the inv:load system
data modify entity @s Item set from storage cartographer_charon:player modified_slot
tag @s remove not_init

execute unless data storage cartographer_charon:player modified_slot.id run kill @s

execute if score $slot dt.var = $bundle_slot dt.var run kill @s