#Run Smash Land Effect
execute unless block ~ ~-6 ~ #bb:can_raycast if score @s ca.smash_air matches 11.. run function cartographer_mob_abilities:abilities/smash/place_particle
execute unless block ~ ~-4 ~ #bb:can_raycast if score @s ca.smash_air matches 11.. run function cartographer_mob_abilities:abilities/smash/place_particle
execute unless block ~ ~-2 ~ #bb:can_raycast if score @s ca.smash_air matches 11.. run function cartographer_mob_abilities:abilities/smash/place_particle
execute unless block ~ ~-1 ~ #bb:can_raycast if score @s ca.smash_air matches 11.. run function cartographer_mob_abilities:abilities/smash

execute unless score @s ca.smash_air matches 21.. anchored eyes rotated ~ 0 unless block ^ ^1 ^ #bb:can_raycast run effect give @s slow_falling 1 0
 
scoreboard players add @s ca.smash_air 1