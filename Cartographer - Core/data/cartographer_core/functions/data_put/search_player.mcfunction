execute if score $i ca.pldata.var = @s ca.pldata.id run function cartographer_core:data_put/found_player
execute unless score $i ca.pldata.var = @s ca.pldata.id run function cartographer_core:data_put/search_player2
