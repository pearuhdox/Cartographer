function suso.rng:lcg
scoreboard players operation $rng dt.var = $rng suso.rng
scoreboard players operation $rand_t dt.var = $rng dt.var
scoreboard players operation $rand_t dt.var %= $max_rand_interval dt.var
