scoreboard players set @s mob_move_red 21

scoreboard players set @s ca.raycast 16
scoreboard players set $warmup ca.evocate_time 9

playsound minecraft:entity.evoker.prepare_attack hostile @a[distance=..16] ~ ~ ~ 2 1.35

execute facing entity @p feet rotated ~ 0 positioned ^ ^ ^2 run function cartographer_mob_abilities:ability_traits/evocative/recurse