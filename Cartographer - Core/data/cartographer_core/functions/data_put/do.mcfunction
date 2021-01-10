data modify storage cartographer_core:pldata working_arr set from storage cartographer_core:pldata player_arr
scoreboard players set $i ca.pldata.var 1
function cartographer_core:data_put/search_player
data modify storage cartographer_core:pldata player_arr set from storage cartographer_core:pldata constructed_arr
data remove storage cartographer_core:pldata constructed_arr