scoreboard players remove @s ca.raycast 1

particle minecraft:cloud ~ ~ ~ 0.2 0 0.2 0.05 10 normal

execute if score @s ca.raycast matches 1.. unless block ^ ^ ^1 #bb:can_raycast if block ^ ^1 ^1 #bb:can_raycast positioned ^ ^1 ^1 run function cartographer_mob_abilities:animations/rift/particles/raycast
execute if score @s ca.raycast matches 1.. if block ^ ^ ^1 #bb:can_raycast if block ^ ^-1 ^1 #bb:can_raycast positioned ^ ^-1 ^1 run function cartographer_mob_abilities:animations/rift/particles/raycast
execute if score @s ca.raycast matches 1.. if block ^ ^ ^1 #bb:can_raycast unless block ^ ^-1 ^1 #bb:can_raycast positioned ^ ^ ^1 run function cartographer_mob_abilities:animations/rift/particles/raycast