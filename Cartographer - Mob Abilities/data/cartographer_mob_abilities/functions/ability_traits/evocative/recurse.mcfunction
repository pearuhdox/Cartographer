scoreboard players remove @s ca.raycast 1

particle minecraft:crit ~ ~0.3 ~ 0.25 0.1 0.25 0.1 10 normal

summon evoker_fangs ~ ~ ~ {Warmup:0,Tags:["evocative_fang"]}
execute as @e[type=evoker_fangs,tag=evocative_fang,limit=1,sort=nearest,distance=..1] at @s store result entity @s Warmup int 1 run scoreboard players add $warmup ca.evocate_time 1

execute if score @s ca.raycast matches 1.. positioned ^ ^ ^1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run function cartographer_mob_abilities:ability_traits/evocative/recurse

execute if score @s ca.raycast matches 1.. positioned ^ ^ ^1 unless block ~ ~-1 ~ air unless block ~ ~-2 ~ air positioned ^ ^-1 ^ run function cartographer_mob_abilities:ability_traits/evocative/recurse
execute if score @s ca.raycast matches 1.. positioned ^ ^ ^1 unless block ~ ~-1 ~ air unless block ~ ~-2 ~ air unless block ~ ~-3 ~ air positioned ^ ^-2 ^ run function cartographer_mob_abilities:ability_traits/evocative/recurse

execute if score @s ca.raycast matches 1.. positioned ^ ^ ^1 unless block ~ ~ ~ air if block ~ ~1 ~ air positioned ^ ^1 ^ run function cartographer_mob_abilities:ability_traits/evocative/recurse
execute if score @s ca.raycast matches 1.. positioned ^ ^ ^1 unless block ~ ~ ~ air unless block ~ ~1 ~ air if block ~ ~2 ~ air positioned ^ ^2 ^ run function cartographer_mob_abilities:ability_traits/evocative/recurse