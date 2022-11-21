scoreboard players operation $rng_min bbl.rng = $inaccuracy_min ca.xyz_convert
scoreboard players operation $rng_max bbl.rng = $inaccuracy_max ca.xyz_convert


function bb:lib/rng
scoreboard players operation @s co_yaw = $value bbl.rng

function bb:lib/rng
scoreboard players operation @s co_pitch = $value bbl.rng