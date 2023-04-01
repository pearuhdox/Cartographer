
execute store result score $temp bbl.storage run data get entity @s SelectedItemSlot

execute if score $temp bbl.storage matches 0 if data entity @s Inventory[{Slot:0b}] run function bb:lib/drop/unchecked/0
execute if score $temp bbl.storage matches 1 if data entity @s Inventory[{Slot:1b}] run function bb:lib/drop/unchecked/1
execute if score $temp bbl.storage matches 2 if data entity @s Inventory[{Slot:2b}] run function bb:lib/drop/unchecked/2
execute if score $temp bbl.storage matches 3 if data entity @s Inventory[{Slot:3b}] run function bb:lib/drop/unchecked/3
execute if score $temp bbl.storage matches 4 if data entity @s Inventory[{Slot:4b}] run function bb:lib/drop/unchecked/4
execute if score $temp bbl.storage matches 5 if data entity @s Inventory[{Slot:5b}] run function bb:lib/drop/unchecked/5
execute if score $temp bbl.storage matches 6 if data entity @s Inventory[{Slot:6b}] run function bb:lib/drop/unchecked/6
execute if score $temp bbl.storage matches 7 if data entity @s Inventory[{Slot:7b}] run function bb:lib/drop/unchecked/7
execute if score $temp bbl.storage matches 8 if data entity @s Inventory[{Slot:8b}] run function bb:lib/drop/unchecked/8
