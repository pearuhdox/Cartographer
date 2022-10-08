scoreboard players operation $max_rand_interval dt.var = $drop_coeff charon.gmr

execute store result score $inv_size dt.var if data storage inv:main inv.all[]

scoreboard players operation $inv_size_modify dt.var = $inv_size dt.var

scoreboard players operation $inv_size_modify dt.var /= $inv_coeff charon.gmr

scoreboard players operation $max_rand_interval dt.var += $inv_size_modify dt.var


execute store result score $diff dt.var run difficulty
# If Use Difficulty is enabled, and the difficulty is Hard, and the max_rand_interval isn't the lowest it can already be, reduce the max value by 2 (or 1 if it can't go lower)
execute if score $use_difficulty charon.gmr matches 1.. if score $diff dt.var matches 3 run function cartographer_charon:inv/calculate_max/hard

# If Use Difficulty is enabled, and the difficulty is Easy, increase the max value by 2
execute if score $use_difficulty charon.gmr matches 1.. if score $diff dt.var matches 1 run function cartographer_charon:inv/calculate_max/easy
