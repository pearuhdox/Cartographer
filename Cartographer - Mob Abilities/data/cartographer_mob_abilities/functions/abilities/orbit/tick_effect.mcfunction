scoreboard players remove @s ca.orbit_timer 1

scoreboard players operation $modulo ca.orbit_timer = @s ca.orbit_timer
scoreboard players operation $modulo ca.orbit_timer %= $80 ca.CONSTANT

execute if score $modulo ca.orbit_timer matches 1 run playsound minecraft:block.beacon.ambient hostile @a[distance=..16] ~ ~ ~ 1 2
execute if score $modulo ca.orbit_timer matches 41 run playsound minecraft:block.beacon.ambient hostile @a[distance=..16] ~ ~ ~ 1 2


execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 1 positioned ~ ~1 ~ rotated 2.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 1 positioned ~ ~1 ~ rotated 2.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 2 positioned ~ ~1 ~ rotated 4.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 2 positioned ~ ~1 ~ rotated 4.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 3 positioned ~ ~1 ~ rotated 6.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 3 positioned ~ ~1 ~ rotated 6.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 4 positioned ~ ~1 ~ rotated 9 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 4 positioned ~ ~1 ~ rotated 9 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 5 positioned ~ ~1 ~ rotated 11.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 5 positioned ~ ~1 ~ rotated 11.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 6 positioned ~ ~1 ~ rotated 13.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 6 positioned ~ ~1 ~ rotated 13.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 7 positioned ~ ~1 ~ rotated 15.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 7 positioned ~ ~1 ~ rotated 15.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 8 positioned ~ ~1 ~ rotated 18 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 8 positioned ~ ~1 ~ rotated 18 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 9 positioned ~ ~1 ~ rotated 20.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 9 positioned ~ ~1 ~ rotated 20.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 10 positioned ~ ~1 ~ rotated 22.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 10 positioned ~ ~1 ~ rotated 22.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 11 positioned ~ ~1 ~ rotated 24.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 11 positioned ~ ~1 ~ rotated 24.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 12 positioned ~ ~1 ~ rotated 27.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 12 positioned ~ ~1 ~ rotated 27.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 13 positioned ~ ~1 ~ rotated 29.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 13 positioned ~ ~1 ~ rotated 29.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 14 positioned ~ ~1 ~ rotated 31.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 14 positioned ~ ~1 ~ rotated 31.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 15 positioned ~ ~1 ~ rotated 33.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 15 positioned ~ ~1 ~ rotated 33.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 16 positioned ~ ~1 ~ rotated 36.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 16 positioned ~ ~1 ~ rotated 36.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 17 positioned ~ ~1 ~ rotated 38.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 17 positioned ~ ~1 ~ rotated 38.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 18 positioned ~ ~1 ~ rotated 40.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 18 positioned ~ ~1 ~ rotated 40.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 19 positioned ~ ~1 ~ rotated 42.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 19 positioned ~ ~1 ~ rotated 42.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 20 positioned ~ ~1 ~ rotated 45.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 20 positioned ~ ~1 ~ rotated 45.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 21 positioned ~ ~1 ~ rotated 47.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 21 positioned ~ ~1 ~ rotated 47.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 22 positioned ~ ~1 ~ rotated 49.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 22 positioned ~ ~1 ~ rotated 49.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 23 positioned ~ ~1 ~ rotated 51.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 23 positioned ~ ~1 ~ rotated 51.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 24 positioned ~ ~1 ~ rotated 54.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 24 positioned ~ ~1 ~ rotated 54.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 25 positioned ~ ~1 ~ rotated 56.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 25 positioned ~ ~1 ~ rotated 56.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 26 positioned ~ ~1 ~ rotated 58.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 26 positioned ~ ~1 ~ rotated 58.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 27 positioned ~ ~1 ~ rotated 60.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 27 positioned ~ ~1 ~ rotated 60.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 28 positioned ~ ~1 ~ rotated 63.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 28 positioned ~ ~1 ~ rotated 63.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 29 positioned ~ ~1 ~ rotated 65.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 29 positioned ~ ~1 ~ rotated 65.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 30 positioned ~ ~1 ~ rotated 67.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 30 positioned ~ ~1 ~ rotated 67.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 31 positioned ~ ~1 ~ rotated 69.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 31 positioned ~ ~1 ~ rotated 69.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 32 positioned ~ ~1 ~ rotated 72.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 32 positioned ~ ~1 ~ rotated 72.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 33 positioned ~ ~1 ~ rotated 74.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 33 positioned ~ ~1 ~ rotated 74.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 34 positioned ~ ~1 ~ rotated 76.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 34 positioned ~ ~1 ~ rotated 76.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 35 positioned ~ ~1 ~ rotated 78.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 35 positioned ~ ~1 ~ rotated 78.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 36 positioned ~ ~1 ~ rotated 81.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 36 positioned ~ ~1 ~ rotated 81.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 37 positioned ~ ~1 ~ rotated 83.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 37 positioned ~ ~1 ~ rotated 83.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 38 positioned ~ ~1 ~ rotated 85.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 38 positioned ~ ~1 ~ rotated 85.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 39 positioned ~ ~1 ~ rotated 87.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 39 positioned ~ ~1 ~ rotated 87.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 40 positioned ~ ~1 ~ rotated 90.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 40 positioned ~ ~1 ~ rotated 90.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 41 positioned ~ ~1 ~ rotated 92.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 41 positioned ~ ~1 ~ rotated 92.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 42 positioned ~ ~1 ~ rotated 94.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 42 positioned ~ ~1 ~ rotated 94.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 43 positioned ~ ~1 ~ rotated 96.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 43 positioned ~ ~1 ~ rotated 96.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 44 positioned ~ ~1 ~ rotated 99 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 44 positioned ~ ~1 ~ rotated 99 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 45 positioned ~ ~1 ~ rotated 101.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 45 positioned ~ ~1 ~ rotated 101.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 46 positioned ~ ~1 ~ rotated 103.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 46 positioned ~ ~1 ~ rotated 103.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 47 positioned ~ ~1 ~ rotated 105.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 47 positioned ~ ~1 ~ rotated 105.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 48 positioned ~ ~1 ~ rotated 108 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 48 positioned ~ ~1 ~ rotated 108 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 49 positioned ~ ~1 ~ rotated 110.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 49 positioned ~ ~1 ~ rotated 110.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 50 positioned ~ ~1 ~ rotated 112.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 50 positioned ~ ~1 ~ rotated 112.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 51 positioned ~ ~1 ~ rotated 114.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 51 positioned ~ ~1 ~ rotated 114.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 52 positioned ~ ~1 ~ rotated 117.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 52 positioned ~ ~1 ~ rotated 117.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 53 positioned ~ ~1 ~ rotated 119.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 53 positioned ~ ~1 ~ rotated 119.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 54 positioned ~ ~1 ~ rotated 121.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 54 positioned ~ ~1 ~ rotated 121.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 55 positioned ~ ~1 ~ rotated 123.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 55 positioned ~ ~1 ~ rotated 123.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 56 positioned ~ ~1 ~ rotated 126.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 56 positioned ~ ~1 ~ rotated 126.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 57 positioned ~ ~1 ~ rotated 128.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 57 positioned ~ ~1 ~ rotated 128.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 58 positioned ~ ~1 ~ rotated 130.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 58 positioned ~ ~1 ~ rotated 130.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 59 positioned ~ ~1 ~ rotated 132.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 59 positioned ~ ~1 ~ rotated 132.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 60 positioned ~ ~1 ~ rotated 135.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 60 positioned ~ ~1 ~ rotated 135.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 61 positioned ~ ~1 ~ rotated 137.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 61 positioned ~ ~1 ~ rotated 137.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 62 positioned ~ ~1 ~ rotated 139.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 62 positioned ~ ~1 ~ rotated 139.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 63 positioned ~ ~1 ~ rotated 141.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 63 positioned ~ ~1 ~ rotated 141.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 64 positioned ~ ~1 ~ rotated 144.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 64 positioned ~ ~1 ~ rotated 144.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 65 positioned ~ ~1 ~ rotated 146.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 65 positioned ~ ~1 ~ rotated 146.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 66 positioned ~ ~1 ~ rotated 148.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 66 positioned ~ ~1 ~ rotated 148.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 67 positioned ~ ~1 ~ rotated 150.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 67 positioned ~ ~1 ~ rotated 150.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 68 positioned ~ ~1 ~ rotated 153.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 68 positioned ~ ~1 ~ rotated 153.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 69 positioned ~ ~1 ~ rotated 155.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 69 positioned ~ ~1 ~ rotated 155.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 70 positioned ~ ~1 ~ rotated 157.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 70 positioned ~ ~1 ~ rotated 157.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 71 positioned ~ ~1 ~ rotated 159.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 71 positioned ~ ~1 ~ rotated 159.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 72 positioned ~ ~1 ~ rotated 162.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 72 positioned ~ ~1 ~ rotated 162.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 73 positioned ~ ~1 ~ rotated 164.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 73 positioned ~ ~1 ~ rotated 164.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 74 positioned ~ ~1 ~ rotated 166.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 74 positioned ~ ~1 ~ rotated 166.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 75 positioned ~ ~1 ~ rotated 168.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 75 positioned ~ ~1 ~ rotated 168.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 76 positioned ~ ~1 ~ rotated 171.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 76 positioned ~ ~1 ~ rotated 171.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 77 positioned ~ ~1 ~ rotated 173.25 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 77 positioned ~ ~1 ~ rotated 173.25 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 78 positioned ~ ~1 ~ rotated 175.5 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 78 positioned ~ ~1 ~ rotated 175.5 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 79 positioned ~ ~1 ~ rotated 177.75 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 79 positioned ~ ~1 ~ rotated 177.75 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 80 positioned ~ ~1 ~ rotated 180.0 0 positioned ^7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 80 positioned ~ ~1 ~ rotated 180.0 0 positioned ^-7 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs





execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 1 positioned ~ ~1 ~ rotated 2.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 1 positioned ~ ~1 ~ rotated 2.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 2 positioned ~ ~1 ~ rotated 4.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 2 positioned ~ ~1 ~ rotated 4.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 3 positioned ~ ~1 ~ rotated 6.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 3 positioned ~ ~1 ~ rotated 6.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 4 positioned ~ ~1 ~ rotated 9 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 4 positioned ~ ~1 ~ rotated 9 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 5 positioned ~ ~1 ~ rotated 11.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 5 positioned ~ ~1 ~ rotated 11.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 6 positioned ~ ~1 ~ rotated 13.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 6 positioned ~ ~1 ~ rotated 13.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 7 positioned ~ ~1 ~ rotated 15.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 7 positioned ~ ~1 ~ rotated 15.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 8 positioned ~ ~1 ~ rotated 18 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 8 positioned ~ ~1 ~ rotated 18 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 9 positioned ~ ~1 ~ rotated 20.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 9 positioned ~ ~1 ~ rotated 20.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 10 positioned ~ ~1 ~ rotated 22.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 10 positioned ~ ~1 ~ rotated 22.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 11 positioned ~ ~1 ~ rotated 24.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 11 positioned ~ ~1 ~ rotated 24.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 12 positioned ~ ~1 ~ rotated 27.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 12 positioned ~ ~1 ~ rotated 27.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 13 positioned ~ ~1 ~ rotated 29.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 13 positioned ~ ~1 ~ rotated 29.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 14 positioned ~ ~1 ~ rotated 31.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 14 positioned ~ ~1 ~ rotated 31.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 15 positioned ~ ~1 ~ rotated 33.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 15 positioned ~ ~1 ~ rotated 33.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 16 positioned ~ ~1 ~ rotated 36.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 16 positioned ~ ~1 ~ rotated 36.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 17 positioned ~ ~1 ~ rotated 38.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 17 positioned ~ ~1 ~ rotated 38.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 18 positioned ~ ~1 ~ rotated 40.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 18 positioned ~ ~1 ~ rotated 40.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 19 positioned ~ ~1 ~ rotated 42.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 19 positioned ~ ~1 ~ rotated 42.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 20 positioned ~ ~1 ~ rotated 45.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 20 positioned ~ ~1 ~ rotated 45.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 21 positioned ~ ~1 ~ rotated 47.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 21 positioned ~ ~1 ~ rotated 47.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 22 positioned ~ ~1 ~ rotated 49.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 22 positioned ~ ~1 ~ rotated 49.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 23 positioned ~ ~1 ~ rotated 51.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 23 positioned ~ ~1 ~ rotated 51.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 24 positioned ~ ~1 ~ rotated 54.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 24 positioned ~ ~1 ~ rotated 54.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 25 positioned ~ ~1 ~ rotated 56.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 25 positioned ~ ~1 ~ rotated 56.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 26 positioned ~ ~1 ~ rotated 58.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 26 positioned ~ ~1 ~ rotated 58.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 27 positioned ~ ~1 ~ rotated 60.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 27 positioned ~ ~1 ~ rotated 60.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 28 positioned ~ ~1 ~ rotated 63.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 28 positioned ~ ~1 ~ rotated 63.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 29 positioned ~ ~1 ~ rotated 65.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 29 positioned ~ ~1 ~ rotated 65.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 30 positioned ~ ~1 ~ rotated 67.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 30 positioned ~ ~1 ~ rotated 67.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 31 positioned ~ ~1 ~ rotated 69.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 31 positioned ~ ~1 ~ rotated 69.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 32 positioned ~ ~1 ~ rotated 72.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 32 positioned ~ ~1 ~ rotated 72.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 33 positioned ~ ~1 ~ rotated 74.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 33 positioned ~ ~1 ~ rotated 74.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 34 positioned ~ ~1 ~ rotated 76.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 34 positioned ~ ~1 ~ rotated 76.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 35 positioned ~ ~1 ~ rotated 78.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 35 positioned ~ ~1 ~ rotated 78.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 36 positioned ~ ~1 ~ rotated 81.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 36 positioned ~ ~1 ~ rotated 81.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 37 positioned ~ ~1 ~ rotated 83.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 37 positioned ~ ~1 ~ rotated 83.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 38 positioned ~ ~1 ~ rotated 85.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 38 positioned ~ ~1 ~ rotated 85.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 39 positioned ~ ~1 ~ rotated 87.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 39 positioned ~ ~1 ~ rotated 87.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 40 positioned ~ ~1 ~ rotated 90.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 40 positioned ~ ~1 ~ rotated 90.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 41 positioned ~ ~1 ~ rotated 92.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 41 positioned ~ ~1 ~ rotated 92.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 42 positioned ~ ~1 ~ rotated 94.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 42 positioned ~ ~1 ~ rotated 94.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 43 positioned ~ ~1 ~ rotated 96.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 43 positioned ~ ~1 ~ rotated 96.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 44 positioned ~ ~1 ~ rotated 99 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 44 positioned ~ ~1 ~ rotated 99 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 45 positioned ~ ~1 ~ rotated 101.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 45 positioned ~ ~1 ~ rotated 101.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 46 positioned ~ ~1 ~ rotated 103.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 46 positioned ~ ~1 ~ rotated 103.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 47 positioned ~ ~1 ~ rotated 105.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 47 positioned ~ ~1 ~ rotated 105.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 48 positioned ~ ~1 ~ rotated 108 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 48 positioned ~ ~1 ~ rotated 108 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 49 positioned ~ ~1 ~ rotated 110.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 49 positioned ~ ~1 ~ rotated 110.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 50 positioned ~ ~1 ~ rotated 112.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 50 positioned ~ ~1 ~ rotated 112.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 51 positioned ~ ~1 ~ rotated 114.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 51 positioned ~ ~1 ~ rotated 114.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 52 positioned ~ ~1 ~ rotated 117.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 52 positioned ~ ~1 ~ rotated 117.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 53 positioned ~ ~1 ~ rotated 119.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 53 positioned ~ ~1 ~ rotated 119.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 54 positioned ~ ~1 ~ rotated 121.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 54 positioned ~ ~1 ~ rotated 121.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 55 positioned ~ ~1 ~ rotated 123.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 55 positioned ~ ~1 ~ rotated 123.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 56 positioned ~ ~1 ~ rotated 126.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 56 positioned ~ ~1 ~ rotated 126.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 57 positioned ~ ~1 ~ rotated 128.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 57 positioned ~ ~1 ~ rotated 128.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 58 positioned ~ ~1 ~ rotated 130.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 58 positioned ~ ~1 ~ rotated 130.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 59 positioned ~ ~1 ~ rotated 132.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 59 positioned ~ ~1 ~ rotated 132.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 60 positioned ~ ~1 ~ rotated 135.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 60 positioned ~ ~1 ~ rotated 135.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 61 positioned ~ ~1 ~ rotated 137.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 61 positioned ~ ~1 ~ rotated 137.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 62 positioned ~ ~1 ~ rotated 139.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 62 positioned ~ ~1 ~ rotated 139.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 63 positioned ~ ~1 ~ rotated 141.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 63 positioned ~ ~1 ~ rotated 141.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 64 positioned ~ ~1 ~ rotated 144.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 64 positioned ~ ~1 ~ rotated 144.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 65 positioned ~ ~1 ~ rotated 146.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 65 positioned ~ ~1 ~ rotated 146.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 66 positioned ~ ~1 ~ rotated 148.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 66 positioned ~ ~1 ~ rotated 148.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 67 positioned ~ ~1 ~ rotated 150.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 67 positioned ~ ~1 ~ rotated 150.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 68 positioned ~ ~1 ~ rotated 153.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 68 positioned ~ ~1 ~ rotated 153.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 69 positioned ~ ~1 ~ rotated 155.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 69 positioned ~ ~1 ~ rotated 155.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 70 positioned ~ ~1 ~ rotated 157.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 70 positioned ~ ~1 ~ rotated 157.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 71 positioned ~ ~1 ~ rotated 159.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 71 positioned ~ ~1 ~ rotated 159.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 72 positioned ~ ~1 ~ rotated 162.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 72 positioned ~ ~1 ~ rotated 162.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 73 positioned ~ ~1 ~ rotated 164.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 73 positioned ~ ~1 ~ rotated 164.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 74 positioned ~ ~1 ~ rotated 166.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 74 positioned ~ ~1 ~ rotated 166.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 75 positioned ~ ~1 ~ rotated 168.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 75 positioned ~ ~1 ~ rotated 168.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 76 positioned ~ ~1 ~ rotated 171.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 76 positioned ~ ~1 ~ rotated 171.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 77 positioned ~ ~1 ~ rotated 173.25 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 77 positioned ~ ~1 ~ rotated 173.25 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 78 positioned ~ ~1 ~ rotated 175.5 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 78 positioned ~ ~1 ~ rotated 175.5 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 79 positioned ~ ~1 ~ rotated 177.75 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 79 positioned ~ ~1 ~ rotated 177.75 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 80 positioned ~ ~1 ~ rotated 180.0 0 positioned ^3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.inner_ring] if score $modulo ca.orbit_timer matches 80 positioned ~ ~1 ~ rotated 180.0 0 positioned ^-3 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs






execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 1 positioned ~ ~1 ~ rotated 2.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 1 positioned ~ ~1 ~ rotated 2.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 2 positioned ~ ~1 ~ rotated 4.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 2 positioned ~ ~1 ~ rotated 4.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 3 positioned ~ ~1 ~ rotated 6.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 3 positioned ~ ~1 ~ rotated 6.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 4 positioned ~ ~1 ~ rotated 9 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 4 positioned ~ ~1 ~ rotated 9 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 5 positioned ~ ~1 ~ rotated 11.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 5 positioned ~ ~1 ~ rotated 11.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 6 positioned ~ ~1 ~ rotated 13.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 6 positioned ~ ~1 ~ rotated 13.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 7 positioned ~ ~1 ~ rotated 15.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 7 positioned ~ ~1 ~ rotated 15.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 8 positioned ~ ~1 ~ rotated 18 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 8 positioned ~ ~1 ~ rotated 18 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 9 positioned ~ ~1 ~ rotated 20.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 9 positioned ~ ~1 ~ rotated 20.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 10 positioned ~ ~1 ~ rotated 22.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 10 positioned ~ ~1 ~ rotated 22.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 11 positioned ~ ~1 ~ rotated 24.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 11 positioned ~ ~1 ~ rotated 24.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 12 positioned ~ ~1 ~ rotated 27.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 12 positioned ~ ~1 ~ rotated 27.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 13 positioned ~ ~1 ~ rotated 29.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 13 positioned ~ ~1 ~ rotated 29.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 14 positioned ~ ~1 ~ rotated 31.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 14 positioned ~ ~1 ~ rotated 31.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 15 positioned ~ ~1 ~ rotated 33.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 15 positioned ~ ~1 ~ rotated 33.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 16 positioned ~ ~1 ~ rotated 36.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 16 positioned ~ ~1 ~ rotated 36.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 17 positioned ~ ~1 ~ rotated 38.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 17 positioned ~ ~1 ~ rotated 38.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 18 positioned ~ ~1 ~ rotated 40.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 18 positioned ~ ~1 ~ rotated 40.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 19 positioned ~ ~1 ~ rotated 42.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 19 positioned ~ ~1 ~ rotated 42.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 20 positioned ~ ~1 ~ rotated 45.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 20 positioned ~ ~1 ~ rotated 45.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 21 positioned ~ ~1 ~ rotated 47.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 21 positioned ~ ~1 ~ rotated 47.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 22 positioned ~ ~1 ~ rotated 49.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 22 positioned ~ ~1 ~ rotated 49.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 23 positioned ~ ~1 ~ rotated 51.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 23 positioned ~ ~1 ~ rotated 51.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 24 positioned ~ ~1 ~ rotated 54.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 24 positioned ~ ~1 ~ rotated 54.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 25 positioned ~ ~1 ~ rotated 56.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 25 positioned ~ ~1 ~ rotated 56.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 26 positioned ~ ~1 ~ rotated 58.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 26 positioned ~ ~1 ~ rotated 58.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 27 positioned ~ ~1 ~ rotated 60.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 27 positioned ~ ~1 ~ rotated 60.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 28 positioned ~ ~1 ~ rotated 63.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 28 positioned ~ ~1 ~ rotated 63.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 29 positioned ~ ~1 ~ rotated 65.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 29 positioned ~ ~1 ~ rotated 65.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 30 positioned ~ ~1 ~ rotated 67.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 30 positioned ~ ~1 ~ rotated 67.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 31 positioned ~ ~1 ~ rotated 69.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 31 positioned ~ ~1 ~ rotated 69.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 32 positioned ~ ~1 ~ rotated 72.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 32 positioned ~ ~1 ~ rotated 72.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 33 positioned ~ ~1 ~ rotated 74.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 33 positioned ~ ~1 ~ rotated 74.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 34 positioned ~ ~1 ~ rotated 76.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 34 positioned ~ ~1 ~ rotated 76.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 35 positioned ~ ~1 ~ rotated 78.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 35 positioned ~ ~1 ~ rotated 78.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 36 positioned ~ ~1 ~ rotated 81.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 36 positioned ~ ~1 ~ rotated 81.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 37 positioned ~ ~1 ~ rotated 83.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 37 positioned ~ ~1 ~ rotated 83.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 38 positioned ~ ~1 ~ rotated 85.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 38 positioned ~ ~1 ~ rotated 85.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 39 positioned ~ ~1 ~ rotated 87.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 39 positioned ~ ~1 ~ rotated 87.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 40 positioned ~ ~1 ~ rotated 90.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 40 positioned ~ ~1 ~ rotated 90.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 41 positioned ~ ~1 ~ rotated 92.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 41 positioned ~ ~1 ~ rotated 92.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 42 positioned ~ ~1 ~ rotated 94.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 42 positioned ~ ~1 ~ rotated 94.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 43 positioned ~ ~1 ~ rotated 96.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 43 positioned ~ ~1 ~ rotated 96.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 44 positioned ~ ~1 ~ rotated 99 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 44 positioned ~ ~1 ~ rotated 99 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 45 positioned ~ ~1 ~ rotated 101.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 45 positioned ~ ~1 ~ rotated 101.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 46 positioned ~ ~1 ~ rotated 103.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 46 positioned ~ ~1 ~ rotated 103.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 47 positioned ~ ~1 ~ rotated 105.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 47 positioned ~ ~1 ~ rotated 105.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 48 positioned ~ ~1 ~ rotated 108 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 48 positioned ~ ~1 ~ rotated 108 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 49 positioned ~ ~1 ~ rotated 110.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 49 positioned ~ ~1 ~ rotated 110.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 50 positioned ~ ~1 ~ rotated 112.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 50 positioned ~ ~1 ~ rotated 112.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 51 positioned ~ ~1 ~ rotated 114.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 51 positioned ~ ~1 ~ rotated 114.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 52 positioned ~ ~1 ~ rotated 117.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 52 positioned ~ ~1 ~ rotated 117.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 53 positioned ~ ~1 ~ rotated 119.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 53 positioned ~ ~1 ~ rotated 119.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 54 positioned ~ ~1 ~ rotated 121.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 54 positioned ~ ~1 ~ rotated 121.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 55 positioned ~ ~1 ~ rotated 123.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 55 positioned ~ ~1 ~ rotated 123.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 56 positioned ~ ~1 ~ rotated 126.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 56 positioned ~ ~1 ~ rotated 126.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 57 positioned ~ ~1 ~ rotated 128.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 57 positioned ~ ~1 ~ rotated 128.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 58 positioned ~ ~1 ~ rotated 130.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 58 positioned ~ ~1 ~ rotated 130.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 59 positioned ~ ~1 ~ rotated 132.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 59 positioned ~ ~1 ~ rotated 132.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 60 positioned ~ ~1 ~ rotated 135.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 60 positioned ~ ~1 ~ rotated 135.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 61 positioned ~ ~1 ~ rotated 137.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 61 positioned ~ ~1 ~ rotated 137.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 62 positioned ~ ~1 ~ rotated 139.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 62 positioned ~ ~1 ~ rotated 139.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 63 positioned ~ ~1 ~ rotated 141.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 63 positioned ~ ~1 ~ rotated 141.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 64 positioned ~ ~1 ~ rotated 144.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 64 positioned ~ ~1 ~ rotated 144.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 65 positioned ~ ~1 ~ rotated 146.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 65 positioned ~ ~1 ~ rotated 146.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 66 positioned ~ ~1 ~ rotated 148.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 66 positioned ~ ~1 ~ rotated 148.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 67 positioned ~ ~1 ~ rotated 150.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 67 positioned ~ ~1 ~ rotated 150.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 68 positioned ~ ~1 ~ rotated 153.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 68 positioned ~ ~1 ~ rotated 153.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 69 positioned ~ ~1 ~ rotated 155.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 69 positioned ~ ~1 ~ rotated 155.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 70 positioned ~ ~1 ~ rotated 157.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 70 positioned ~ ~1 ~ rotated 157.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 71 positioned ~ ~1 ~ rotated 159.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 71 positioned ~ ~1 ~ rotated 159.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 72 positioned ~ ~1 ~ rotated 162.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 72 positioned ~ ~1 ~ rotated 162.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 73 positioned ~ ~1 ~ rotated 164.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 73 positioned ~ ~1 ~ rotated 164.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 74 positioned ~ ~1 ~ rotated 166.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 74 positioned ~ ~1 ~ rotated 166.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 75 positioned ~ ~1 ~ rotated 168.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 75 positioned ~ ~1 ~ rotated 168.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 76 positioned ~ ~1 ~ rotated 171.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 76 positioned ~ ~1 ~ rotated 171.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 77 positioned ~ ~1 ~ rotated 173.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 77 positioned ~ ~1 ~ rotated 173.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 78 positioned ~ ~1 ~ rotated 175.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 78 positioned ~ ~1 ~ rotated 175.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 79 positioned ~ ~1 ~ rotated 177.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 79 positioned ~ ~1 ~ rotated 177.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 80 positioned ~ ~1 ~ rotated 180.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute unless entity @s[tag=ca.inner_ring] unless entity @s[tag=ca.outer_ring] if score $modulo ca.orbit_timer matches 80 positioned ~ ~1 ~ rotated 180.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs






execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 1 positioned ~ ~1 ~ rotated 2.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 1 positioned ~ ~1 ~ rotated 2.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 2 positioned ~ ~1 ~ rotated 4.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 2 positioned ~ ~1 ~ rotated 4.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 3 positioned ~ ~1 ~ rotated 6.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 3 positioned ~ ~1 ~ rotated 6.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 4 positioned ~ ~1 ~ rotated 9 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 4 positioned ~ ~1 ~ rotated 9 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 5 positioned ~ ~1 ~ rotated 11.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 5 positioned ~ ~1 ~ rotated 11.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 6 positioned ~ ~1 ~ rotated 13.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 6 positioned ~ ~1 ~ rotated 13.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 7 positioned ~ ~1 ~ rotated 15.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 7 positioned ~ ~1 ~ rotated 15.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 8 positioned ~ ~1 ~ rotated 18 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 8 positioned ~ ~1 ~ rotated 18 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 9 positioned ~ ~1 ~ rotated 20.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 9 positioned ~ ~1 ~ rotated 20.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 10 positioned ~ ~1 ~ rotated 22.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 10 positioned ~ ~1 ~ rotated 22.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 11 positioned ~ ~1 ~ rotated 24.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 11 positioned ~ ~1 ~ rotated 24.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 12 positioned ~ ~1 ~ rotated 27.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 12 positioned ~ ~1 ~ rotated 27.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 13 positioned ~ ~1 ~ rotated 29.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 13 positioned ~ ~1 ~ rotated 29.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 14 positioned ~ ~1 ~ rotated 31.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 14 positioned ~ ~1 ~ rotated 31.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 15 positioned ~ ~1 ~ rotated 33.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 15 positioned ~ ~1 ~ rotated 33.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 16 positioned ~ ~1 ~ rotated 36.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 16 positioned ~ ~1 ~ rotated 36.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 17 positioned ~ ~1 ~ rotated 38.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 17 positioned ~ ~1 ~ rotated 38.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 18 positioned ~ ~1 ~ rotated 40.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 18 positioned ~ ~1 ~ rotated 40.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 19 positioned ~ ~1 ~ rotated 42.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 19 positioned ~ ~1 ~ rotated 42.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 20 positioned ~ ~1 ~ rotated 45.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 20 positioned ~ ~1 ~ rotated 45.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 21 positioned ~ ~1 ~ rotated 47.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 21 positioned ~ ~1 ~ rotated 47.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 22 positioned ~ ~1 ~ rotated 49.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 22 positioned ~ ~1 ~ rotated 49.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 23 positioned ~ ~1 ~ rotated 51.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 23 positioned ~ ~1 ~ rotated 51.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 24 positioned ~ ~1 ~ rotated 54.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 24 positioned ~ ~1 ~ rotated 54.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 25 positioned ~ ~1 ~ rotated 56.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 25 positioned ~ ~1 ~ rotated 56.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 26 positioned ~ ~1 ~ rotated 58.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 26 positioned ~ ~1 ~ rotated 58.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 27 positioned ~ ~1 ~ rotated 60.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 27 positioned ~ ~1 ~ rotated 60.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 28 positioned ~ ~1 ~ rotated 63.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 28 positioned ~ ~1 ~ rotated 63.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 29 positioned ~ ~1 ~ rotated 65.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 29 positioned ~ ~1 ~ rotated 65.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 30 positioned ~ ~1 ~ rotated 67.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 30 positioned ~ ~1 ~ rotated 67.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 31 positioned ~ ~1 ~ rotated 69.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 31 positioned ~ ~1 ~ rotated 69.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 32 positioned ~ ~1 ~ rotated 72.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 32 positioned ~ ~1 ~ rotated 72.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 33 positioned ~ ~1 ~ rotated 74.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 33 positioned ~ ~1 ~ rotated 74.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 34 positioned ~ ~1 ~ rotated 76.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 34 positioned ~ ~1 ~ rotated 76.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 35 positioned ~ ~1 ~ rotated 78.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 35 positioned ~ ~1 ~ rotated 78.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 36 positioned ~ ~1 ~ rotated 81.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 36 positioned ~ ~1 ~ rotated 81.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 37 positioned ~ ~1 ~ rotated 83.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 37 positioned ~ ~1 ~ rotated 83.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 38 positioned ~ ~1 ~ rotated 85.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 38 positioned ~ ~1 ~ rotated 85.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 39 positioned ~ ~1 ~ rotated 87.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 39 positioned ~ ~1 ~ rotated 87.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 40 positioned ~ ~1 ~ rotated 90.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 40 positioned ~ ~1 ~ rotated 90.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 41 positioned ~ ~1 ~ rotated 92.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 41 positioned ~ ~1 ~ rotated 92.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 42 positioned ~ ~1 ~ rotated 94.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 42 positioned ~ ~1 ~ rotated 94.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 43 positioned ~ ~1 ~ rotated 96.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 43 positioned ~ ~1 ~ rotated 96.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 44 positioned ~ ~1 ~ rotated 99 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 44 positioned ~ ~1 ~ rotated 99 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 45 positioned ~ ~1 ~ rotated 101.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 45 positioned ~ ~1 ~ rotated 101.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 46 positioned ~ ~1 ~ rotated 103.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 46 positioned ~ ~1 ~ rotated 103.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 47 positioned ~ ~1 ~ rotated 105.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 47 positioned ~ ~1 ~ rotated 105.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 48 positioned ~ ~1 ~ rotated 108 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 48 positioned ~ ~1 ~ rotated 108 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 49 positioned ~ ~1 ~ rotated 110.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 49 positioned ~ ~1 ~ rotated 110.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 50 positioned ~ ~1 ~ rotated 112.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 50 positioned ~ ~1 ~ rotated 112.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 51 positioned ~ ~1 ~ rotated 114.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 51 positioned ~ ~1 ~ rotated 114.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 52 positioned ~ ~1 ~ rotated 117.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 52 positioned ~ ~1 ~ rotated 117.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 53 positioned ~ ~1 ~ rotated 119.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 53 positioned ~ ~1 ~ rotated 119.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 54 positioned ~ ~1 ~ rotated 121.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 54 positioned ~ ~1 ~ rotated 121.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 55 positioned ~ ~1 ~ rotated 123.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 55 positioned ~ ~1 ~ rotated 123.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 56 positioned ~ ~1 ~ rotated 126.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 56 positioned ~ ~1 ~ rotated 126.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 57 positioned ~ ~1 ~ rotated 128.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 57 positioned ~ ~1 ~ rotated 128.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 58 positioned ~ ~1 ~ rotated 130.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 58 positioned ~ ~1 ~ rotated 130.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 59 positioned ~ ~1 ~ rotated 132.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 59 positioned ~ ~1 ~ rotated 132.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 60 positioned ~ ~1 ~ rotated 135.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 60 positioned ~ ~1 ~ rotated 135.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 61 positioned ~ ~1 ~ rotated 137.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 61 positioned ~ ~1 ~ rotated 137.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 62 positioned ~ ~1 ~ rotated 139.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 62 positioned ~ ~1 ~ rotated 139.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 63 positioned ~ ~1 ~ rotated 141.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 63 positioned ~ ~1 ~ rotated 141.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 64 positioned ~ ~1 ~ rotated 144.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 64 positioned ~ ~1 ~ rotated 144.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 65 positioned ~ ~1 ~ rotated 146.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 65 positioned ~ ~1 ~ rotated 146.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 66 positioned ~ ~1 ~ rotated 148.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 66 positioned ~ ~1 ~ rotated 148.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 67 positioned ~ ~1 ~ rotated 150.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 67 positioned ~ ~1 ~ rotated 150.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 68 positioned ~ ~1 ~ rotated 153.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 68 positioned ~ ~1 ~ rotated 153.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 69 positioned ~ ~1 ~ rotated 155.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 69 positioned ~ ~1 ~ rotated 155.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 70 positioned ~ ~1 ~ rotated 157.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 70 positioned ~ ~1 ~ rotated 157.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs


execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 71 positioned ~ ~1 ~ rotated 159.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 71 positioned ~ ~1 ~ rotated 159.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 72 positioned ~ ~1 ~ rotated 162.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 72 positioned ~ ~1 ~ rotated 162.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 73 positioned ~ ~1 ~ rotated 164.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 73 positioned ~ ~1 ~ rotated 164.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 74 positioned ~ ~1 ~ rotated 166.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 74 positioned ~ ~1 ~ rotated 166.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 75 positioned ~ ~1 ~ rotated 168.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 75 positioned ~ ~1 ~ rotated 168.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 76 positioned ~ ~1 ~ rotated 171.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 76 positioned ~ ~1 ~ rotated 171.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 77 positioned ~ ~1 ~ rotated 173.25 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 77 positioned ~ ~1 ~ rotated 173.25 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 78 positioned ~ ~1 ~ rotated 175.5 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 78 positioned ~ ~1 ~ rotated 175.5 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 79 positioned ~ ~1 ~ rotated 177.75 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 79 positioned ~ ~1 ~ rotated 177.75 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs

execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 80 positioned ~ ~1 ~ rotated 180.0 0 positioned ^5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs
execute if entity @s[tag=ca.center_ring] if score $modulo ca.orbit_timer matches 80 positioned ~ ~1 ~ rotated 180.0 0 positioned ^-5 ^ ^ run function cartographer_mob_abilities:abilities/orbit/orbs