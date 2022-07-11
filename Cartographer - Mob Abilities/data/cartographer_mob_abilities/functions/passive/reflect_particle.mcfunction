particle firework ^ ^ ^ 0 0 0 0 1 force
particle firework ^ ^ ^0.5 0 0 0 0 1 force

scoreboard players remove @s ca.raycast 1

execute if score @s ca.raycast matches 1.. positioned ^ ^ ^1 unless entity @a[tag=reflect_hit,distance=..1.25] run function cartographer_mob_abilities:passive/reflect_particle

execute if score @s ca.raycast matches 1.. positioned ^ ^ ^1 if entity @a[tag=reflect_hit,distance=..1.25] run particle firework ^ ^ ^0.5 0.2 0.5 0.2 0.1 10 normal