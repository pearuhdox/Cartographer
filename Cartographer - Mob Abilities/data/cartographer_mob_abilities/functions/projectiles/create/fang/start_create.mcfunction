playsound minecraft:entity.evoker.prepare_attack player @a[distance=..20] ~ ~ ~ 1 1.25

particle minecraft:effect ~ ~1 ~ 0.25 0.25 0.25 0 20 normal

scoreboard players set $fang_time ca.mob_var 9

execute positioned ^ ^ ^1.5 run function cartographer_mob_abilities:projectiles/create/fang/recurse