#Run Smash Land Effect
execute unless block ~ ~-6 ~ #bb:can_raycast if entity @s[tag=airborne_10] run function cartographer_mob_abilities:abilities/smash/place_particle
execute unless block ~ ~-4 ~ #bb:can_raycast if entity @s[tag=airborne_10] run function cartographer_mob_abilities:abilities/smash/place_particle
execute unless block ~ ~-2 ~ #bb:can_raycast if entity @s[tag=airborne_10] run function cartographer_mob_abilities:abilities/smash/place_particle
execute unless block ~ ~-1 ~ #bb:can_raycast if entity @s[tag=airborne_10] run function cartographer_mob_abilities:abilities/smash

execute if entity @s[tag=airborne_9] run tag @s add airborne_10
execute if entity @s[tag=airborne_8] run tag @s add airborne_9
execute if entity @s[tag=airborne_7] run tag @s add airborne_8
execute if entity @s[tag=airborne_6] run tag @s add airborne_7
execute if entity @s[tag=airborne_5] run tag @s add airborne_6
execute if entity @s[tag=airborne_4] run tag @s add airborne_5
execute if entity @s[tag=airborne_3] run tag @s add airborne_4
execute if entity @s[tag=airborne_2] run tag @s add airborne_3
execute if entity @s[tag=airborne] run tag @s add airborne_2