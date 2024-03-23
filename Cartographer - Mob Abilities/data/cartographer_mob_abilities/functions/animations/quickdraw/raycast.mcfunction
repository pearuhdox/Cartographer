particle minecraft:smoke ~ ~ ~ 0.08 0.08 0.08 0 5 normal
particle minecraft:smoke ^ ^ ^0.5 0.08 0.08 0.08 0 5 normal

function cartographer_mob_abilities:ability_traits/trait_warnings/raycast

scoreboard players remove @s[scores={ca.raycast=1..}] ca.raycast 1

execute if entity @s[scores={ca.raycast=1..}] if block ~ ~ ~ #bb:can_raycast positioned ^ ^ ^1 run function cartographer_mob_abilities:animations/quickdraw/raycast