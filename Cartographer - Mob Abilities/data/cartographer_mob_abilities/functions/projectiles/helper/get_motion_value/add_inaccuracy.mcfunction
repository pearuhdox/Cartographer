scoreboard players operation $rng_min bbl.rng = $inaccuracy_yaw_min ca.xyz_convert
scoreboard players operation $rng_max bbl.rng = $inaccuracy_yaw_max ca.xyz_convert

function bb:lib/rng
scoreboard players operation @s co_yaw = $value bbl.rng



scoreboard players operation $rng_min bbl.rng = $inaccuracy_pitch_min ca.xyz_convert
scoreboard players operation $rng_max bbl.rng = $inaccuracy_pitch_max ca.xyz_convert

function bb:lib/rng
scoreboard players operation @s co_pitch = $value bbl.rng