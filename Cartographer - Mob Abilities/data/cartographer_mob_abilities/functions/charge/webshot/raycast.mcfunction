particle minecraft:block minecraft:cobweb ~ ~ ~ 0.3 0.3 0.3 0 30 normal
particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.05 2 normal
execute positioned ~ ~ ~ run function cartographer_mob_abilities:ability_traits/trait_warnings/raycast

scoreboard players remove @s[scores={ca.raycast=1..}] ca.raycast 1

execute if entity @s[scores={ca.raycast=1..}] if block ~ ~ ~ #bb:can_raycast positioned ^ ^ ^1 run function cartographer_mob_abilities:charge/webshot/raycast