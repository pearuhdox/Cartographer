data modify storage cartographer_loot_additions:check_data data set from storage cartographer_loot_additions:check_data copy[0].value
data remove storage cartographer_loot_additions:check_data copy[0]

execute store result score $test_find ca.loot_var run data modify storage cartographer_loot_additions:check_data data set from storage cartographer_loot_additions:pedestal_position data.value

execute if score $test_find ca.loot_var matches 0 run data modify storage cartographer_loot_additions:check_data copy set value {}

execute if data storage cartographer_loot_additions:check_data copy[0] run function cartographer_loot_additions:budding/pedestal/check_rec