data modify storage cartographer_core:player_inventory Inventory set value []
data modify storage cartographer_core:player_inventory SelectedItem set value {}

data modify storage cartographer_core:player_inventory Inventory set from entity @s Inventory
data modify storage cartographer_core:player_inventory SelectedItem set from entity @s SelectedItem