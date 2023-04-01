data modify storage cartographer_loot_additions:locked_chest_key Player set value {}
data modify storage cartographer_loot_additions:locked_chest_key Chest set value {}
data modify storage cartographer_loot_additions:locked_chest_key Compare set value {}

data modify storage cartographer_loot_additions:locked_chest_key Player set from entity @p SelectedItem
data remove storage cartographer_loot_additions:locked_chest_key Player.Count

data modify storage cartographer_loot_additions:locked_chest_key Chest set from entity @s item.tag.KeyItem
data remove storage cartographer_loot_additions:locked_chest_key Chest.Count

scoreboard players set $lock_compare ca.loot_var -10
data modify storage cartographer_loot_additions:locked_chest_key Compare set from storage cartographer_loot_additions:locked_chest_key Player
execute store success score $lock_compare ca.loot_var run data modify storage cartographer_loot_additions:locked_chest_key Compare set from storage cartographer_loot_additions:locked_chest_key Chest

execute if score $lock_compare ca.loot_var matches 0 run function cartographer_loot_additions:locked_chest/unlock
execute if score $lock_compare ca.loot_var matches 1 unless score @s ca.locked_stage matches 4.. run function cartographer_loot_additions:locked_chest/locked