particle large_smoke ~ ~-0.3 ~ 0 0 0 0.01 1 force @a

scoreboard players add @s ca.lifetime 1

execute if score @s ca.lifetime matches 20 run data modify entity @s Glowing set value 1b


execute if score @s ca.lifetime matches 40 run function cartographer_mob_abilities:ability_traits/legionary/spawn
