data modify block 4206900 0 4206900 Items set value []
data modify storage cartographer_repair_stations:crystal_shield data set value {}

data modify storage cartographer_repair_stations:crystal_shield data set from entity @s SelectedItem
data remove storage cartographer_repair_stations:crystal_shield data.Slot

data modify block 4206900 0 4206900 Items append from storage cartographer_repair_stations:crystal_shield data

function cartographer_repair_stations:crystal_shield/do_changes

loot replace entity @s weapon.mainhand 1 mine 4206900 0 4206900 air{drop_contents:1b}