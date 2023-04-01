function cartographer_mob_abilities:abilities/sweep/calc_damage

particle minecraft:sweep_attack ^ ^0.75 ^1 0.25 0.1 0.25 0 3 normal
particle minecraft:sweep_attack ^ ^0.75 ^2 0.25 0.1 0.25 0 3 normal
particle minecraft:sweep_attack ^ ^0.75 ^3 0.25 0.1 0.25 0 3 normal
particle minecraft:sweep_attack ^ ^0.75 ^4 0.25 0.1 0.25 0 3 normal

execute positioned ^ ^0.5 ^1 as @a[tag=!sweep_tagged,distance=..1.15] at @s run function cartographer_mob_abilities:abilities/sweep/hit
execute positioned ^ ^0.5 ^2 as @a[tag=!sweep_tagged,distance=..1.15] at @s run function cartographer_mob_abilities:abilities/sweep/hit
execute positioned ^ ^0.5 ^3 as @a[tag=!sweep_tagged,distance=..1.15] at @s run function cartographer_mob_abilities:abilities/sweep/hit
execute positioned ^ ^0.5 ^4 as @a[tag=!sweep_tagged,distance=..1.15] at @s run function cartographer_mob_abilities:abilities/sweep/hit

execute as @s positioned as @a[scores={ca.damage_queue=1..},tag=sweep_tagged,distance=..3] run function cartographer_mob_abilities:helper/damage/ability_melee

execute if score $swept ca.mob_var matches 1 if entity @a[tag=sweep_tagged,tag=ability_tagged,gamemode=!spectator,gamemode=!creative,distance=..6] run execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_hit
scoreboard players set $swept ca.mob_var 0