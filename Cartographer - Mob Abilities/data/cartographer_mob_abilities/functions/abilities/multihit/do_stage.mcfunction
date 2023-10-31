function cartographer_mob_abilities:abilities/multihit/calc_damage

particle minecraft:sweep_attack ^ ^0.75 ^1.5 0.35 0.35 0.35 0 3 normal
particle minecraft:cloud ^ ^0.25 ^1.5 0.3 0 0.3 0 30 normal

playsound minecraft:item.trident.throw hostile @a[distance=..16] ~ ~ ~ 1.5 1.3
playsound minecraft:item.firecharge.use hostile @a[distance=..16] ~ ~ ~ 0.5 0.85

execute positioned ^ ^1 ^1.75 positioned as @a[tag=!multihit_tagged,distance=..2] at @s run function cartographer_mob_abilities:abilities/multihit/hit

#execute as @s positioned as @a[scores={ca.damage_queue=1..,ca.multihit_animation=1..2},tag=multihit_tagged,distance=..2] run function cartographer_mob_abilities:abilities/multihit/do_damage
#execute as @s positioned as @a[scores={ca.damage_queue=1..,ca.multihit_animation=3},tag=multihit_tagged,distance=..2] run function cartographer_mob_abilities:abilities/multihit/do_damage_kb

execute if score $multihit ca.mob_var matches 1 if entity @a[tag=multihit_tagged,tag=ability_tagged,gamemode=!spectator,gamemode=!creative,distance=..3] unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_hit

tag @a remove multihit_tagged

scoreboard players set $multihit ca.mob_var 0