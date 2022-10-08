scoreboard players operation $max_rand_interval dt.var *= $150 ca.CONSTANT
scoreboard players operation $max_rand_interval dt.var /= $100 ca.CONSTANT

execute if score $max_rand_interval dt.var matches ..1 run scoreboard players set $max_rand_interval dt.var 2