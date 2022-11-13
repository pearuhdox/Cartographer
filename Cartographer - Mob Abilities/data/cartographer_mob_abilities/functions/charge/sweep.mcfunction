scoreboard players add @s ability_charge 1

execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute if score @s ability_charge matches 1 run playsound minecraft:entity.iron_golem.hurt hostile @a[distance=..16] ~ ~ ~ 5 1.5

execute if score @s ability_charge matches 1 run effect give @s glowing 1 0 true

execute if score @s ability_charge matches 1 run particle minecraft:crit ~ ~1 ~ 0.7 1 0.7 0.2 80 normal
execute if score @s ability_charge matches 1 run particle minecraft:sweep_attack ^ ^0.75 ^1.25 0.25 0.1 0.25 0.2 10 normal
execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:charge/sweep/warn

execute if score @s ability_charge matches 2 run function cartographer_mob_abilities:abilities/sweep