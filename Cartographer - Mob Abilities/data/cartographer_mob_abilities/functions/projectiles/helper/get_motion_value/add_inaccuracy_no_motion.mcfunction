scoreboard players operation $rng_min bbl.rng = $inaccuracy_yaw_min ca.xyz_convert
scoreboard players operation $rng_max bbl.rng = $inaccuracy_yaw_max ca.xyz_convert


function bb:lib/rng
execute as 0000001f-00de-140d-0000-0000000276ef at @s if score $value bbl.rng matches -4 run tp @s ~-12 ~ ~
execute as 0000001f-00de-140d-0000-0000000276ef at @s if score $value bbl.rng matches -3 run tp @s ~-9 ~ ~
execute as 0000001f-00de-140d-0000-0000000276ef at @s if score $value bbl.rng matches -2 run tp @s ~-6 ~ ~
execute as 0000001f-00de-140d-0000-0000000276ef at @s if score $value bbl.rng matches -1 run tp @s ~-3 ~ ~

scoreboard players operation $rng_min bbl.rng = $inaccuracy_pitch_min ca.xyz_convert
scoreboard players operation $rng_max bbl.rng = $inaccuracy_pitch_max ca.xyz_convert


function bb:lib/rng
scoreboard players operation @s co_pitch = $value bbl.rng
execute as 0000001f-00de-140d-0000-0000000276ef at @s if score $value bbl.rng matches -4 run tp @s ~ ~ ~-12
execute as 0000001f-00de-140d-0000-0000000276ef at @s if score $value bbl.rng matches -3 run tp @s ~ ~ ~-9
execute as 0000001f-00de-140d-0000-0000000276ef at @s if score $value bbl.rng matches -2 run tp @s ~ ~ ~-6
execute as 0000001f-00de-140d-0000-0000000276ef at @s if score $value bbl.rng matches -1 run tp @s ~ ~ ~-3