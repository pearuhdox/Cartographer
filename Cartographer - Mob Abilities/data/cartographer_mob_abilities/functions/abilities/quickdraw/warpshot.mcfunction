scoreboard players set $warpshot_x ca.mob_var 0
scoreboard players set $warpshot_y ca.mob_var 0

scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 5

function bb:lib/rng
function bb:lib/rng

scoreboard players operation $warpshot_x ca.mob_var = $value bbl.rng

scoreboard players set $rng_min bbl.rng -5
scoreboard players set $rng_max bbl.rng 5

function bb:lib/rng
scoreboard players operation $warpshot_y ca.mob_var = $value bbl.rng


particle minecraft:smoke ~ ~1 ~ 0.35 0.35 0.35 0.1 20 normal 
playsound minecraft:entity.enderman.teleport hostile @a[distance=..16] ~ ~ ~ 2 0.5

execute if score $warpshot_x ca.mob_var matches 1 run tp @s ^ ^0.5 ^1
execute if score $warpshot_x ca.mob_var matches 2 run tp @s ^ ^0.5 ^2
execute if score $warpshot_x ca.mob_var matches 3 run tp @s ^ ^0.5 ^3
execute if score $warpshot_x ca.mob_var matches 4 run tp @s ^ ^0.5 ^4
execute if score $warpshot_x ca.mob_var matches 5 run tp @s ^ ^0.5 ^5

execute if score $warpshot_y ca.mob_var matches 1 at @s run tp @s ^1 ^0.5 ^
execute if score $warpshot_y ca.mob_var matches 2 at @s run tp @s ^2 ^0.5 ^
execute if score $warpshot_y ca.mob_var matches 3 at @s run tp @s ^3 ^0.5 ^
execute if score $warpshot_y ca.mob_var matches 4 at @s run tp @s ^4 ^0.5 ^
execute if score $warpshot_y ca.mob_var matches 5 at @s run tp @s ^5 ^0.5 ^

execute if score $warpshot_y ca.mob_var matches -1 at @s run tp @s ^-1 ^0.5 ^
execute if score $warpshot_y ca.mob_var matches -2 at @s run tp @s ^-2 ^0.5 ^
execute if score $warpshot_y ca.mob_var matches -3 at @s run tp @s ^-3 ^0.5 ^
execute if score $warpshot_y ca.mob_var matches -4 at @s run tp @s ^-4 ^0.5 ^
execute if score $warpshot_y ca.mob_var matches -5 at @s run tp @s ^-5 ^0.5 ^