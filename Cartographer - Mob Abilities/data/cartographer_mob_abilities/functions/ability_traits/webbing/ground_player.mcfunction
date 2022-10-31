tp @s ~ ~-0.1 ~

scoreboard players remove $grounding ca.var 1
execute unless block ~ ~-0.1 ~ #cartographer_core:can_raycast run scoreboard players set $grounding ca.var 0

#Run this first so it fails first
execute unless score $grounding ca.var matches 1.. positioned ~ ~-0.4 ~ align xyz positioned ~0.5 ~ ~0.5 run function cartographer_mob_abilities:ability_traits/webbing/create

execute if score $grounding ca.var matches 1.. if block ~ ~-0.1 ~ #cartographer_core:can_raycast run function cartographer_mob_abilities:ability_traits/webbing/ground_player