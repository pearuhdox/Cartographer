particle minecraft:dust 0.431 0.157 0.071 1 ^ ^ ^ 0 0 0 0 3 normal
particle minecraft:dust 0.431 0.157 0.071 1 ^ ^ ^0.33 0 0 0 0 3 normal
particle minecraft:dust 0.431 0.157 0.071 1 ^ ^ ^0.66 0 0 0 0 3 normal
execute positioned ^ ^ ^0.33 run function cartographer_mob_abilities:ability_traits/trait_warnings/raycast

scoreboard players remove @s[scores={ca.raycast=1..}] ca.raycast 1

execute if entity @s[scores={ca.raycast=1..}] if block ~ ~ ~ #bb:can_raycast positioned ^ ^ ^1 run function cartographer_mob_abilities:animations/hookshot/raycast