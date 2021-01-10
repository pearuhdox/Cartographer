scoreboard players add $i ca.pldata.var 1
data modify storage cartographer_core:pldata constructed_arr append from storage cartographer_core:pldata working_arr[0]
data remove storage cartographer_core:pldata working_arr[0]
function cartographer_core:data_put/search_player