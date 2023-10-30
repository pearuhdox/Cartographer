execute if score slot Inventory matches 0..8 if score count Inventory matches 1.. run function inv:internal/save/handle_hotbar
execute if score slot Inventory matches 9..35 run function inv:internal/save/handle_inventory
execute if score slot Inventory matches 100..103 run function inv:internal/save/handle_armor
execute if score slot Inventory matches -106 run function inv:internal/save/handle_offhand