function cartographer_mob_abilities:abilities/cutter/calc_damage


particle minecraft:sweep_attack ^ ^0.75 ^1 0.25 0.1 0.25 0 3 normal
particle minecraft:sweep_attack ^ ^0.75 ^2 0.25 0.1 0.25 0 3 normal
particle minecraft:sweep_attack ^ ^0.75 ^3 0.25 0.1 0.25 0 3 normal
particle minecraft:sweep_attack ^ ^0.75 ^4 0.25 0.1 0.25 0 3 normal

execute positioned ^ ^0.5 ^1 as @a[tag=!cutter_tagged,distance=..1.15] at @s run function cartographer_mob_abilities:abilities/cutter/hit
execute positioned ^ ^0.5 ^2 as @a[tag=!cutter_tagged,distance=..1.15] at @s run function cartographer_mob_abilities:abilities/cutter/hit
execute positioned ^ ^0.5 ^3 as @a[tag=!cutter_tagged,distance=..1.15] at @s run function cartographer_mob_abilities:abilities/cutter/hit
execute positioned ^ ^0.5 ^4 as @a[tag=!cutter_tagged,distance=..1.15] at @s run function cartographer_mob_abilities:abilities/cutter/hit

execute if score $cutter ca.mob_var matches 1 if entity @a[tag=cutter_tagged,tag=ability_tagged,gamemode=!spectator,gamemode=!creative,distance=..6] run execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_hit

tag @a remove cutter_tagged

scoreboard players set $cutter ca.mob_var 0