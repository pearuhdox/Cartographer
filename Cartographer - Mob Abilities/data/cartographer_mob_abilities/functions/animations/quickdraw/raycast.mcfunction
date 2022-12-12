particle minecraft:smoke ~ ~ ~ 0.15 0.15 0.15 0 8 normal
execute positioned ~ ~ ~ run function cartographer_mob_abilities:ability_traits/trait_warnings/raycast

scoreboard players remove @s[scores={ca.raycast=1..}] ca.raycast 1

execute if entity @s[scores={ca.raycast=1..}] if block ~ ~ ~ #bb:can_raycast positioned ^ ^ ^1 run function cartographer_mob_abilities:animations/quickdraw/raycast