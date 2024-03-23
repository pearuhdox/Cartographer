function cartographer_mob_abilities:abilities/sweep/calc_damage

particle minecraft:sweep_attack ^ ^0.75 ^1 0 0 0 0 1 force
particle minecraft:sweep_attack ^ ^0.75 ^2 0 0 0 0 1 force
particle minecraft:sweep_attack ^ ^0.75 ^3 0 0 0 0 1 force
particle minecraft:sweep_attack ^ ^0.75 ^4 0 0 0 0 1 force

particle minecraft:sweep_attack ^ ^0.75 ^0.5 0 0 0 0 1 force
particle minecraft:sweep_attack ^ ^0.75 ^1.5 0 0 0 0 1 force
particle minecraft:sweep_attack ^ ^0.75 ^2.5 0 0 0 0 1 force
particle minecraft:sweep_attack ^ ^0.75 ^3.5 0 0 0 0 1 force


execute positioned ^ ^1 ^1.5 run particle minecraft:dust 0.8 0.8 0.8 2 ~ ~ ~ 0 0 0 0 1 force
execute positioned ^ ^1 ^2.25 run particle minecraft:dust 0.8 0.8 0.8 2 ~ ~ ~ 0 0 0 0 1 force
execute positioned ^ ^1 ^3 run particle minecraft:dust 0.8 0.8 0.8 2 ~ ~ ~ 0 0 0 0 1 force
execute positioned ^ ^1 ^3.75 run particle minecraft:dust 0.8 0.8 0.8 2 ~ ~ ~ 0 0 0 0 1 force

execute positioned ^ ^0.5 ^1.5 positioned ~-0.5 ~ ~-0.5 positioned as @a[tag=!sweep_tagged,dx=0,dy=0,dz=0] run function cartographer_mob_abilities:abilities/sweep/hit
execute positioned ^ ^0.5 ^2.25 positioned ~-0.5 ~ ~-0.5 positioned as @a[tag=!sweep_tagged,dx=0,dy=0,dz=0] run function cartographer_mob_abilities:abilities/sweep/hit
execute positioned ^ ^0.5 ^3 positioned ~-0.5 ~ ~-0.5 positioned as @a[tag=!sweep_tagged,dx=0,dy=0,dz=0] run function cartographer_mob_abilities:abilities/sweep/hit
execute positioned ^ ^0.5 ^3.75 positioned ~-0.5 ~ ~-0.5 positioned as @a[tag=!sweep_tagged,dx=0,dy=0,dz=0] run function cartographer_mob_abilities:abilities/sweep/hit

execute as @s positioned as @a[tag=sweep_tagged,distance=..6] run function cartographer_mob_abilities:helper/damage/ability_melee with storage cartographer:macro.mob_abilities

tag @a remove sweep_tagged

execute if score $swept ca.mob_var matches 1 if entity @a[tag=sweep_tagged,tag=ability_tagged,gamemode=!spectator,gamemode=!creative,distance=..6] run execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_hit
scoreboard players set $swept ca.mob_var 0