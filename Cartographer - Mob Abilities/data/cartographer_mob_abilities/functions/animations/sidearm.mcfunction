scoreboard players add @s ability_charge 1

execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute if score @s ability_charge matches 1..10 run particle minecraft:smoke ~ ~0.2 ~ 0.3 0.3 0.3 0.1 4 normal

execute if score @s ability_charge matches 1 run playsound minecraft:item.crossbow.loading_start hostile @a[distance=..15] ~ ~ ~ 2 2
execute if score @s ability_charge matches 4 run playsound minecraft:item.crossbow.loading_middle hostile @a[distance=..15] ~ ~ ~ 2 2
execute if score @s ability_charge matches 7 run playsound minecraft:item.crossbow.loading_end hostile @a[distance=..15] ~ ~ ~ 2 2

execute if score @s[tag=ca.has_kited,tag=!ca.acro_kite_elytra] ability_charge matches 1 run effect give @s jump_boost 2 6 true
execute if score @s[tag=ca.has_kited,tag=!ca.acro_kite_elytra] ability_charge matches 1 run effect give @s levitation 1 0 true
execute if score @s[tag=ca.has_kited,tag=!ca.acro_kite_elytra] ability_charge matches 1 run particle minecraft:cloud ~ ~-0.5 ~ 0.3 0 0.3 0.05 15 normal
execute if score @s[tag=ca.has_kited,tag=!ca.acro_kite_elytra] ability_charge matches 1 run particle minecraft:cloud ~ ~-0.5 ~ 0.3 0 0.3 0.05 15 normal

execute unless score @s ability_charge matches 10.. run function cartographer_mob_abilities:loop/tick/animation

execute if score @s ability_charge matches 10.. unless entity @s[tag=has_sidearmed] run function cartographer_mob_abilities:abilities/sidearm/branch

execute if score @s ability_charge matches 20.. run function cartographer_mob_abilities:abilities/sidearm
