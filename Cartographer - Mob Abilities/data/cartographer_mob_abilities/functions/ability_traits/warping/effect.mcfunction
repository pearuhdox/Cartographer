tp @s ~ ~ ~ facing entity @p feet

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

execute if score $warpshot_x ca.mob_var matches 1 if block ^ ^0.5 ^1 #cartographer_core:can_raycast run tp @s ^ ^0.5 ^1
execute if score $warpshot_x ca.mob_var matches 2 if block ^ ^0.5 ^2 #cartographer_core:can_raycast run tp @s ^ ^0.5 ^2
execute if score $warpshot_x ca.mob_var matches 3 if block ^ ^0.5 ^3 #cartographer_core:can_raycast run tp @s ^ ^0.5 ^3
execute if score $warpshot_x ca.mob_var matches 4 if block ^ ^0.5 ^4 #cartographer_core:can_raycast run tp @s ^ ^0.5 ^4
execute if score $warpshot_x ca.mob_var matches 5 if block ^ ^0.5 ^5 #cartographer_core:can_raycast run tp @s ^ ^0.5 ^5

execute if score $warpshot_y ca.mob_var matches 1 at @s if block ^1 ^0.5 ^ #cartographer_core:can_raycast run tp @s ^1 ^0.5 ^
execute if score $warpshot_y ca.mob_var matches 2 at @s if block ^2 ^0.5 ^ #cartographer_core:can_raycast run tp @s ^2 ^0.5 ^
execute if score $warpshot_y ca.mob_var matches 3 at @s if block ^3 ^0.5 ^ #cartographer_core:can_raycast run tp @s ^3 ^0.5 ^
execute if score $warpshot_y ca.mob_var matches 4 at @s if block ^4 ^0.5 ^ #cartographer_core:can_raycast run tp @s ^4 ^0.5 ^
execute if score $warpshot_y ca.mob_var matches 5 at @s if block ^5 ^0.5 ^ #cartographer_core:can_raycast run tp @s ^5 ^0.5 ^

execute if score $warpshot_y ca.mob_var matches -1 at @s if block ^-1 ^0.5 ^ #cartographer_core:can_raycast run tp @s ^-1 ^0.5 ^
execute if score $warpshot_y ca.mob_var matches -2 at @s if block ^-2 ^0.5 ^ #cartographer_core:can_raycast run tp @s ^-2 ^0.5 ^
execute if score $warpshot_y ca.mob_var matches -3 at @s if block ^-3 ^0.5 ^ #cartographer_core:can_raycast run tp @s ^-3 ^0.5 ^
execute if score $warpshot_y ca.mob_var matches -4 at @s if block ^-4 ^0.5 ^ #cartographer_core:can_raycast run tp @s ^-4 ^0.5 ^
execute if score $warpshot_y ca.mob_var matches -5 at @s if block ^-5 ^0.5 ^ #cartographer_core:can_raycast run tp @s ^-5 ^0.5 ^