execute if block ~ ~-1 ~ #cartographer_core:can_raycast if block ~ ~ ~ #cartographer_core:can_raycast positioned ~ ~-1 ~ run function cartographer_mob_abilities:projectiles/create/fang

execute if block ~ ~1 ~ #cartographer_core:can_raycast unless block ~ ~ ~ #cartographer_core:can_raycast positioned ~ ~1 ~ run function cartographer_mob_abilities:projectiles/create/fang

execute unless block ~ ~-1 ~ #cartographer_core:can_raycast if block ~ ~ ~ #cartographer_core:can_raycast run function cartographer_mob_abilities:projectiles/create/fang


scoreboard players add $fang_time ca.mob_var 1
scoreboard players remove $fangs ca.raycast 1

execute if score $fangs ca.raycast matches 1.. positioned ^ ^ ^1 if block ~ ~-1 ~ #cartographer_core:can_raycast if block ~ ~ ~ #cartographer_core:can_raycast positioned ~ ~-1 ~ run function cartographer_mob_abilities:projectiles/create/fang/recurse

execute if score $fangs ca.raycast matches 1.. positioned ^ ^ ^1 if block ~ ~1 ~ #cartographer_core:can_raycast unless block ~ ~ ~ #cartographer_core:can_raycast positioned ~ ~1 ~ run function cartographer_mob_abilities:projectiles/create/fang/recurse

execute if score $fangs ca.raycast matches 1.. positioned ^ ^ ^1 unless block ~ ~-1 ~ #cartographer_core:can_raycast if block ~ ~ ~ #cartographer_core:can_raycast run function cartographer_mob_abilities:projectiles/create/fang/recurse
