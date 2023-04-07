function suso.player_data:get/do

scoreboard players set $test_find ca.loot_var 1
data modify storage cartographer_loot_additions:check_data data set value {}

data modify storage cartographer_loot_additions:check_data copy set value {}
data modify storage cartographer_loot_additions:check_data copy set from storage suso:pldata working_data.budding_pedestals.tracked


execute if data storage cartographer_loot_additions:check_data copy[0] run function cartographer_loot_additions:budding/pedestal/check_rec


execute if score $test_find ca.loot_var matches 0 run function cartographer_loot_additions:budding/pedestal/data_hit
execute if score $test_find ca.loot_var matches 1 run function cartographer_loot_additions:budding/pedestal/data_miss