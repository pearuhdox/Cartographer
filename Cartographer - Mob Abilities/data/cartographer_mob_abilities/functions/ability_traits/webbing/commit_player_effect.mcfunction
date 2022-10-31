scoreboard players set $grounding ca.var 25

execute unless block ~ ~-0.1 ~ #cartographer_core:can_raycast align xyz positioned ~0.5 ~ ~0.5 run function cartographer_mob_abilities:ability_traits/webbing/create

execute if block ~ ~-0.1 ~ #cartographer_core:can_raycast run function cartographer_mob_abilities:ability_traits/webbing/ground_player

scoreboard players set $grounding ca.var 0

scoreboard players set $block_webbing_time ca.var 120