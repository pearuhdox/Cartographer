scoreboard players remove @s ca.orbit_timer 1

scoreboard players operation $modulo ca.orbit_timer = @s ca.orbit_timer
scoreboard players operation $modulo ca.orbit_timer %= $80 ca.CONSTANT

execute if score $modulo ca.orbit_timer matches 1 run playsound minecraft:block.beacon.ambient hostile @a[distance=..16] ~ ~ ~ 1 2
execute if score $modulo ca.orbit_timer matches 41 run playsound minecraft:block.beacon.ambient hostile @a[distance=..16] ~ ~ ~ 1 2


execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 1 anchored eyes rotated 2.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 1 anchored eyes rotated 2.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 2 anchored eyes rotated 4.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 2 anchored eyes rotated 4.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 3 anchored eyes rotated 6.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 3 anchored eyes rotated 6.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 4 anchored eyes rotated 9 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 4 anchored eyes rotated 9 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 5 anchored eyes rotated 11.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 5 anchored eyes rotated 11.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 6 anchored eyes rotated 13.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 6 anchored eyes rotated 13.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 7 anchored eyes rotated 15.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 7 anchored eyes rotated 15.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 8 anchored eyes rotated 18 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 8 anchored eyes rotated 18 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 9 anchored eyes rotated 20.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 9 anchored eyes rotated 20.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 10 anchored eyes rotated 22.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 10 anchored eyes rotated 22.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 11 anchored eyes rotated 24.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 11 anchored eyes rotated 24.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 12 anchored eyes rotated 27.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 12 anchored eyes rotated 27.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 13 anchored eyes rotated 29.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 13 anchored eyes rotated 29.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 14 anchored eyes rotated 31.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 14 anchored eyes rotated 31.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 15 anchored eyes rotated 33.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 15 anchored eyes rotated 33.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 16 anchored eyes rotated 36.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 16 anchored eyes rotated 36.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 17 anchored eyes rotated 38.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 17 anchored eyes rotated 38.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 18 anchored eyes rotated 40.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 18 anchored eyes rotated 40.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 19 anchored eyes rotated 42.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 19 anchored eyes rotated 42.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 20 anchored eyes rotated 45.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 20 anchored eyes rotated 45.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 21 anchored eyes rotated 47.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 21 anchored eyes rotated 47.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 22 anchored eyes rotated 49.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 22 anchored eyes rotated 49.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 23 anchored eyes rotated 51.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 23 anchored eyes rotated 51.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 24 anchored eyes rotated 54.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 24 anchored eyes rotated 54.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 25 anchored eyes rotated 56.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 25 anchored eyes rotated 56.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 26 anchored eyes rotated 58.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 26 anchored eyes rotated 58.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 27 anchored eyes rotated 60.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 27 anchored eyes rotated 60.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 28 anchored eyes rotated 63.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 28 anchored eyes rotated 63.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 29 anchored eyes rotated 65.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 29 anchored eyes rotated 65.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 30 anchored eyes rotated 67.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 30 anchored eyes rotated 67.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 31 anchored eyes rotated 69.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 31 anchored eyes rotated 69.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 32 anchored eyes rotated 72.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 32 anchored eyes rotated 72.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 33 anchored eyes rotated 74.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 33 anchored eyes rotated 74.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 34 anchored eyes rotated 76.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 34 anchored eyes rotated 76.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 35 anchored eyes rotated 78.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 35 anchored eyes rotated 78.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 36 anchored eyes rotated 81.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 36 anchored eyes rotated 81.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 37 anchored eyes rotated 83.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 37 anchored eyes rotated 83.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 38 anchored eyes rotated 85.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 38 anchored eyes rotated 85.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 39 anchored eyes rotated 87.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 39 anchored eyes rotated 87.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 40 anchored eyes rotated 90.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 40 anchored eyes rotated 90.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 41 anchored eyes rotated 92.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 41 anchored eyes rotated 92.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 42 anchored eyes rotated 94.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 42 anchored eyes rotated 94.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 43 anchored eyes rotated 96.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 43 anchored eyes rotated 96.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 44 anchored eyes rotated 99 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 44 anchored eyes rotated 99 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 45 anchored eyes rotated 101.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 45 anchored eyes rotated 101.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 46 anchored eyes rotated 103.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 46 anchored eyes rotated 103.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 47 anchored eyes rotated 105.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 47 anchored eyes rotated 105.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 48 anchored eyes rotated 108 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 48 anchored eyes rotated 108 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 49 anchored eyes rotated 110.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 49 anchored eyes rotated 110.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 50 anchored eyes rotated 112.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 50 anchored eyes rotated 112.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 51 anchored eyes rotated 114.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 51 anchored eyes rotated 114.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 52 anchored eyes rotated 117.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 52 anchored eyes rotated 117.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 53 anchored eyes rotated 119.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 53 anchored eyes rotated 119.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 54 anchored eyes rotated 121.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 54 anchored eyes rotated 121.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 55 anchored eyes rotated 123.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 55 anchored eyes rotated 123.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 56 anchored eyes rotated 126.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 56 anchored eyes rotated 126.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 57 anchored eyes rotated 128.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 57 anchored eyes rotated 128.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 58 anchored eyes rotated 130.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 58 anchored eyes rotated 130.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 59 anchored eyes rotated 132.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 59 anchored eyes rotated 132.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 60 anchored eyes rotated 135.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 60 anchored eyes rotated 135.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 61 anchored eyes rotated 137.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 61 anchored eyes rotated 137.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 62 anchored eyes rotated 139.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 62 anchored eyes rotated 139.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 63 anchored eyes rotated 141.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 63 anchored eyes rotated 141.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 64 anchored eyes rotated 144.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 64 anchored eyes rotated 144.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 65 anchored eyes rotated 146.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 65 anchored eyes rotated 146.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 66 anchored eyes rotated 148.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 66 anchored eyes rotated 148.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 67 anchored eyes rotated 150.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 67 anchored eyes rotated 150.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 68 anchored eyes rotated 153.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 68 anchored eyes rotated 153.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 69 anchored eyes rotated 155.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 69 anchored eyes rotated 155.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 70 anchored eyes rotated 157.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 70 anchored eyes rotated 157.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 71 anchored eyes rotated 159.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 71 anchored eyes rotated 159.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 72 anchored eyes rotated 162.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 72 anchored eyes rotated 162.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 73 anchored eyes rotated 164.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 73 anchored eyes rotated 164.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 74 anchored eyes rotated 166.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 74 anchored eyes rotated 166.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 75 anchored eyes rotated 168.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 75 anchored eyes rotated 168.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 76 anchored eyes rotated 171.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 76 anchored eyes rotated 171.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 77 anchored eyes rotated 173.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 77 anchored eyes rotated 173.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 78 anchored eyes rotated 175.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 78 anchored eyes rotated 175.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 79 anchored eyes rotated 177.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 79 anchored eyes rotated 177.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 80 anchored eyes rotated 180.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 80 anchored eyes rotated 180.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs





execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 1 anchored eyes rotated 2.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 1 anchored eyes rotated 2.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 2 anchored eyes rotated 4.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 2 anchored eyes rotated 4.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 3 anchored eyes rotated 6.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 3 anchored eyes rotated 6.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 4 anchored eyes rotated 9 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 4 anchored eyes rotated 9 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 5 anchored eyes rotated 11.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 5 anchored eyes rotated 11.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 6 anchored eyes rotated 13.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 6 anchored eyes rotated 13.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 7 anchored eyes rotated 15.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 7 anchored eyes rotated 15.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 8 anchored eyes rotated 18 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 8 anchored eyes rotated 18 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 9 anchored eyes rotated 20.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 9 anchored eyes rotated 20.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 10 anchored eyes rotated 22.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 10 anchored eyes rotated 22.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 11 anchored eyes rotated 24.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 11 anchored eyes rotated 24.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 12 anchored eyes rotated 27.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 12 anchored eyes rotated 27.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 13 anchored eyes rotated 29.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 13 anchored eyes rotated 29.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 14 anchored eyes rotated 31.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 14 anchored eyes rotated 31.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 15 anchored eyes rotated 33.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 15 anchored eyes rotated 33.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 16 anchored eyes rotated 36.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 16 anchored eyes rotated 36.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 17 anchored eyes rotated 38.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 17 anchored eyes rotated 38.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 18 anchored eyes rotated 40.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 18 anchored eyes rotated 40.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 19 anchored eyes rotated 42.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 19 anchored eyes rotated 42.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 20 anchored eyes rotated 45.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 20 anchored eyes rotated 45.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 21 anchored eyes rotated 47.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 21 anchored eyes rotated 47.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 22 anchored eyes rotated 49.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 22 anchored eyes rotated 49.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 23 anchored eyes rotated 51.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 23 anchored eyes rotated 51.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 24 anchored eyes rotated 54.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 24 anchored eyes rotated 54.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 25 anchored eyes rotated 56.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 25 anchored eyes rotated 56.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 26 anchored eyes rotated 58.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 26 anchored eyes rotated 58.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 27 anchored eyes rotated 60.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 27 anchored eyes rotated 60.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 28 anchored eyes rotated 63.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 28 anchored eyes rotated 63.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 29 anchored eyes rotated 65.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 29 anchored eyes rotated 65.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 30 anchored eyes rotated 67.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 30 anchored eyes rotated 67.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 31 anchored eyes rotated 69.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 31 anchored eyes rotated 69.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 32 anchored eyes rotated 72.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 32 anchored eyes rotated 72.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 33 anchored eyes rotated 74.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 33 anchored eyes rotated 74.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 34 anchored eyes rotated 76.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 34 anchored eyes rotated 76.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 35 anchored eyes rotated 78.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 35 anchored eyes rotated 78.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 36 anchored eyes rotated 81.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 36 anchored eyes rotated 81.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 37 anchored eyes rotated 83.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 37 anchored eyes rotated 83.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 38 anchored eyes rotated 85.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 38 anchored eyes rotated 85.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 39 anchored eyes rotated 87.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 39 anchored eyes rotated 87.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 40 anchored eyes rotated 90.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 40 anchored eyes rotated 90.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 41 anchored eyes rotated 92.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 41 anchored eyes rotated 92.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 42 anchored eyes rotated 94.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 42 anchored eyes rotated 94.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 43 anchored eyes rotated 96.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 43 anchored eyes rotated 96.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 44 anchored eyes rotated 99 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 44 anchored eyes rotated 99 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 45 anchored eyes rotated 101.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 45 anchored eyes rotated 101.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 46 anchored eyes rotated 103.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 46 anchored eyes rotated 103.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 47 anchored eyes rotated 105.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 47 anchored eyes rotated 105.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 48 anchored eyes rotated 108 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 48 anchored eyes rotated 108 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 49 anchored eyes rotated 110.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 49 anchored eyes rotated 110.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 50 anchored eyes rotated 112.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 50 anchored eyes rotated 112.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 51 anchored eyes rotated 114.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 51 anchored eyes rotated 114.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 52 anchored eyes rotated 117.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 52 anchored eyes rotated 117.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 53 anchored eyes rotated 119.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 53 anchored eyes rotated 119.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 54 anchored eyes rotated 121.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 54 anchored eyes rotated 121.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 55 anchored eyes rotated 123.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 55 anchored eyes rotated 123.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 56 anchored eyes rotated 126.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 56 anchored eyes rotated 126.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 57 anchored eyes rotated 128.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 57 anchored eyes rotated 128.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 58 anchored eyes rotated 130.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 58 anchored eyes rotated 130.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 59 anchored eyes rotated 132.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 59 anchored eyes rotated 132.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 60 anchored eyes rotated 135.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 60 anchored eyes rotated 135.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 61 anchored eyes rotated 137.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 61 anchored eyes rotated 137.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 62 anchored eyes rotated 139.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 62 anchored eyes rotated 139.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 63 anchored eyes rotated 141.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 63 anchored eyes rotated 141.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 64 anchored eyes rotated 144.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 64 anchored eyes rotated 144.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 65 anchored eyes rotated 146.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 65 anchored eyes rotated 146.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 66 anchored eyes rotated 148.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 66 anchored eyes rotated 148.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 67 anchored eyes rotated 150.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 67 anchored eyes rotated 150.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 68 anchored eyes rotated 153.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 68 anchored eyes rotated 153.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 69 anchored eyes rotated 155.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 69 anchored eyes rotated 155.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 70 anchored eyes rotated 157.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 70 anchored eyes rotated 157.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 71 anchored eyes rotated 159.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 71 anchored eyes rotated 159.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 72 anchored eyes rotated 162.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 72 anchored eyes rotated 162.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 73 anchored eyes rotated 164.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 73 anchored eyes rotated 164.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 74 anchored eyes rotated 166.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 74 anchored eyes rotated 166.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 75 anchored eyes rotated 168.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 75 anchored eyes rotated 168.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 76 anchored eyes rotated 171.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 76 anchored eyes rotated 171.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 77 anchored eyes rotated 173.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 77 anchored eyes rotated 173.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 78 anchored eyes rotated 175.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 78 anchored eyes rotated 175.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 79 anchored eyes rotated 177.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 79 anchored eyes rotated 177.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 80 anchored eyes rotated 180.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 80 anchored eyes rotated 180.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs






execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 1 anchored eyes rotated 2.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 1 anchored eyes rotated 2.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 2 anchored eyes rotated 4.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 2 anchored eyes rotated 4.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 3 anchored eyes rotated 6.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 3 anchored eyes rotated 6.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 4 anchored eyes rotated 9 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 4 anchored eyes rotated 9 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 5 anchored eyes rotated 11.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 5 anchored eyes rotated 11.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 6 anchored eyes rotated 13.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 6 anchored eyes rotated 13.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 7 anchored eyes rotated 15.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 7 anchored eyes rotated 15.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 8 anchored eyes rotated 18 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 8 anchored eyes rotated 18 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 9 anchored eyes rotated 20.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 9 anchored eyes rotated 20.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 10 anchored eyes rotated 22.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 10 anchored eyes rotated 22.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 11 anchored eyes rotated 24.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 11 anchored eyes rotated 24.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 12 anchored eyes rotated 27.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 12 anchored eyes rotated 27.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 13 anchored eyes rotated 29.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 13 anchored eyes rotated 29.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 14 anchored eyes rotated 31.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 14 anchored eyes rotated 31.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 15 anchored eyes rotated 33.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 15 anchored eyes rotated 33.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 16 anchored eyes rotated 36.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 16 anchored eyes rotated 36.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 17 anchored eyes rotated 38.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 17 anchored eyes rotated 38.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 18 anchored eyes rotated 40.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 18 anchored eyes rotated 40.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 19 anchored eyes rotated 42.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 19 anchored eyes rotated 42.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 20 anchored eyes rotated 45.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 20 anchored eyes rotated 45.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 21 anchored eyes rotated 47.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 21 anchored eyes rotated 47.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 22 anchored eyes rotated 49.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 22 anchored eyes rotated 49.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 23 anchored eyes rotated 51.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 23 anchored eyes rotated 51.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 24 anchored eyes rotated 54.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 24 anchored eyes rotated 54.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 25 anchored eyes rotated 56.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 25 anchored eyes rotated 56.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 26 anchored eyes rotated 58.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 26 anchored eyes rotated 58.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 27 anchored eyes rotated 60.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 27 anchored eyes rotated 60.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 28 anchored eyes rotated 63.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 28 anchored eyes rotated 63.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 29 anchored eyes rotated 65.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 29 anchored eyes rotated 65.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 30 anchored eyes rotated 67.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 30 anchored eyes rotated 67.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 31 anchored eyes rotated 69.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 31 anchored eyes rotated 69.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 32 anchored eyes rotated 72.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 32 anchored eyes rotated 72.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 33 anchored eyes rotated 74.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 33 anchored eyes rotated 74.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 34 anchored eyes rotated 76.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 34 anchored eyes rotated 76.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 35 anchored eyes rotated 78.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 35 anchored eyes rotated 78.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 36 anchored eyes rotated 81.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 36 anchored eyes rotated 81.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 37 anchored eyes rotated 83.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 37 anchored eyes rotated 83.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 38 anchored eyes rotated 85.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 38 anchored eyes rotated 85.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 39 anchored eyes rotated 87.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 39 anchored eyes rotated 87.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 40 anchored eyes rotated 90.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 40 anchored eyes rotated 90.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 41 anchored eyes rotated 92.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 41 anchored eyes rotated 92.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 42 anchored eyes rotated 94.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 42 anchored eyes rotated 94.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 43 anchored eyes rotated 96.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 43 anchored eyes rotated 96.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 44 anchored eyes rotated 99 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 44 anchored eyes rotated 99 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 45 anchored eyes rotated 101.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 45 anchored eyes rotated 101.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 46 anchored eyes rotated 103.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 46 anchored eyes rotated 103.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 47 anchored eyes rotated 105.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 47 anchored eyes rotated 105.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 48 anchored eyes rotated 108 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 48 anchored eyes rotated 108 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 49 anchored eyes rotated 110.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 49 anchored eyes rotated 110.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 50 anchored eyes rotated 112.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 50 anchored eyes rotated 112.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 51 anchored eyes rotated 114.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 51 anchored eyes rotated 114.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 52 anchored eyes rotated 117.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 52 anchored eyes rotated 117.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 53 anchored eyes rotated 119.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 53 anchored eyes rotated 119.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 54 anchored eyes rotated 121.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 54 anchored eyes rotated 121.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 55 anchored eyes rotated 123.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 55 anchored eyes rotated 123.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 56 anchored eyes rotated 126.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 56 anchored eyes rotated 126.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 57 anchored eyes rotated 128.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 57 anchored eyes rotated 128.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 58 anchored eyes rotated 130.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 58 anchored eyes rotated 130.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 59 anchored eyes rotated 132.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 59 anchored eyes rotated 132.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 60 anchored eyes rotated 135.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 60 anchored eyes rotated 135.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 61 anchored eyes rotated 137.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 61 anchored eyes rotated 137.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 62 anchored eyes rotated 139.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 62 anchored eyes rotated 139.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 63 anchored eyes rotated 141.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 63 anchored eyes rotated 141.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 64 anchored eyes rotated 144.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 64 anchored eyes rotated 144.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 65 anchored eyes rotated 146.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 65 anchored eyes rotated 146.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 66 anchored eyes rotated 148.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 66 anchored eyes rotated 148.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 67 anchored eyes rotated 150.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 67 anchored eyes rotated 150.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 68 anchored eyes rotated 153.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 68 anchored eyes rotated 153.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 69 anchored eyes rotated 155.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 69 anchored eyes rotated 155.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 70 anchored eyes rotated 157.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 70 anchored eyes rotated 157.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 71 anchored eyes rotated 159.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 71 anchored eyes rotated 159.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 72 anchored eyes rotated 162.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 72 anchored eyes rotated 162.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 73 anchored eyes rotated 164.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 73 anchored eyes rotated 164.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 74 anchored eyes rotated 166.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 74 anchored eyes rotated 166.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 75 anchored eyes rotated 168.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 75 anchored eyes rotated 168.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 76 anchored eyes rotated 171.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 76 anchored eyes rotated 171.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 77 anchored eyes rotated 173.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 77 anchored eyes rotated 173.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 78 anchored eyes rotated 175.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 78 anchored eyes rotated 175.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 79 anchored eyes rotated 177.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 79 anchored eyes rotated 177.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 80 anchored eyes rotated 180.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 80 anchored eyes rotated 180.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs






execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 1 anchored eyes rotated 2.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 1 anchored eyes rotated 2.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 2 anchored eyes rotated 4.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 2 anchored eyes rotated 4.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 3 anchored eyes rotated 6.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 3 anchored eyes rotated 6.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 4 anchored eyes rotated 9 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 4 anchored eyes rotated 9 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 5 anchored eyes rotated 11.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 5 anchored eyes rotated 11.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 6 anchored eyes rotated 13.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 6 anchored eyes rotated 13.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 7 anchored eyes rotated 15.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 7 anchored eyes rotated 15.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 8 anchored eyes rotated 18 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 8 anchored eyes rotated 18 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 9 anchored eyes rotated 20.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 9 anchored eyes rotated 20.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 10 anchored eyes rotated 22.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 10 anchored eyes rotated 22.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 11 anchored eyes rotated 24.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 11 anchored eyes rotated 24.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 12 anchored eyes rotated 27.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 12 anchored eyes rotated 27.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 13 anchored eyes rotated 29.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 13 anchored eyes rotated 29.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 14 anchored eyes rotated 31.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 14 anchored eyes rotated 31.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 15 anchored eyes rotated 33.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 15 anchored eyes rotated 33.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 16 anchored eyes rotated 36.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 16 anchored eyes rotated 36.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 17 anchored eyes rotated 38.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 17 anchored eyes rotated 38.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 18 anchored eyes rotated 40.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 18 anchored eyes rotated 40.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 19 anchored eyes rotated 42.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 19 anchored eyes rotated 42.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 20 anchored eyes rotated 45.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 20 anchored eyes rotated 45.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 21 anchored eyes rotated 47.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 21 anchored eyes rotated 47.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 22 anchored eyes rotated 49.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 22 anchored eyes rotated 49.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 23 anchored eyes rotated 51.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 23 anchored eyes rotated 51.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 24 anchored eyes rotated 54.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 24 anchored eyes rotated 54.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 25 anchored eyes rotated 56.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 25 anchored eyes rotated 56.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 26 anchored eyes rotated 58.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 26 anchored eyes rotated 58.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 27 anchored eyes rotated 60.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 27 anchored eyes rotated 60.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 28 anchored eyes rotated 63.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 28 anchored eyes rotated 63.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 29 anchored eyes rotated 65.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 29 anchored eyes rotated 65.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 30 anchored eyes rotated 67.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 30 anchored eyes rotated 67.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 31 anchored eyes rotated 69.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 31 anchored eyes rotated 69.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 32 anchored eyes rotated 72.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 32 anchored eyes rotated 72.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 33 anchored eyes rotated 74.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 33 anchored eyes rotated 74.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 34 anchored eyes rotated 76.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 34 anchored eyes rotated 76.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 35 anchored eyes rotated 78.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 35 anchored eyes rotated 78.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 36 anchored eyes rotated 81.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 36 anchored eyes rotated 81.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 37 anchored eyes rotated 83.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 37 anchored eyes rotated 83.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 38 anchored eyes rotated 85.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 38 anchored eyes rotated 85.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 39 anchored eyes rotated 87.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 39 anchored eyes rotated 87.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 40 anchored eyes rotated 90.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 40 anchored eyes rotated 90.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 41 anchored eyes rotated 92.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 41 anchored eyes rotated 92.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 42 anchored eyes rotated 94.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 42 anchored eyes rotated 94.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 43 anchored eyes rotated 96.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 43 anchored eyes rotated 96.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 44 anchored eyes rotated 99 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 44 anchored eyes rotated 99 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 45 anchored eyes rotated 101.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 45 anchored eyes rotated 101.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 46 anchored eyes rotated 103.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 46 anchored eyes rotated 103.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 47 anchored eyes rotated 105.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 47 anchored eyes rotated 105.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 48 anchored eyes rotated 108 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 48 anchored eyes rotated 108 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 49 anchored eyes rotated 110.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 49 anchored eyes rotated 110.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 50 anchored eyes rotated 112.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 50 anchored eyes rotated 112.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 51 anchored eyes rotated 114.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 51 anchored eyes rotated 114.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 52 anchored eyes rotated 117.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 52 anchored eyes rotated 117.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 53 anchored eyes rotated 119.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 53 anchored eyes rotated 119.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 54 anchored eyes rotated 121.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 54 anchored eyes rotated 121.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 55 anchored eyes rotated 123.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 55 anchored eyes rotated 123.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 56 anchored eyes rotated 126.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 56 anchored eyes rotated 126.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 57 anchored eyes rotated 128.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 57 anchored eyes rotated 128.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 58 anchored eyes rotated 130.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 58 anchored eyes rotated 130.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 59 anchored eyes rotated 132.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 59 anchored eyes rotated 132.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 60 anchored eyes rotated 135.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 60 anchored eyes rotated 135.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 61 anchored eyes rotated 137.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 61 anchored eyes rotated 137.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 62 anchored eyes rotated 139.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 62 anchored eyes rotated 139.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 63 anchored eyes rotated 141.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 63 anchored eyes rotated 141.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 64 anchored eyes rotated 144.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 64 anchored eyes rotated 144.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 65 anchored eyes rotated 146.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 65 anchored eyes rotated 146.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 66 anchored eyes rotated 148.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 66 anchored eyes rotated 148.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 67 anchored eyes rotated 150.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 67 anchored eyes rotated 150.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 68 anchored eyes rotated 153.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 68 anchored eyes rotated 153.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 69 anchored eyes rotated 155.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 69 anchored eyes rotated 155.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 70 anchored eyes rotated 157.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 70 anchored eyes rotated 157.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 71 anchored eyes rotated 159.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 71 anchored eyes rotated 159.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 72 anchored eyes rotated 162.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 72 anchored eyes rotated 162.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 73 anchored eyes rotated 164.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 73 anchored eyes rotated 164.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 74 anchored eyes rotated 166.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 74 anchored eyes rotated 166.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 75 anchored eyes rotated 168.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 75 anchored eyes rotated 168.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 76 anchored eyes rotated 171.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 76 anchored eyes rotated 171.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 77 anchored eyes rotated 173.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 77 anchored eyes rotated 173.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 78 anchored eyes rotated 175.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 78 anchored eyes rotated 175.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 79 anchored eyes rotated 177.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 79 anchored eyes rotated 177.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 80 anchored eyes rotated 180.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 80 anchored eyes rotated 180.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs