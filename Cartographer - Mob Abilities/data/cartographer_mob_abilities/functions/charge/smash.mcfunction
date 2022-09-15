execute unless score @s ability_charge matches 1.. run function cartographer_mob_abilities:ability_traits/trait_warnings/mob
execute unless score @s ability_charge matches 1.. run playsound minecraft:entity.zombie.attack_iron_door player @a[distance=..16] ~ ~ ~ 0.6 0.75
execute unless score @s ability_charge matches 1.. run playsound minecraft:entity.zombie.attack_iron_door player @a[distance=..16] ~ ~ ~ 0.6 1.25
execute unless score @s ability_charge matches 1.. run playsound minecraft:entity.zombie.attack_iron_door player @a[distance=..16] ~ ~ ~ 0.6 1.75
execute unless score @s ability_charge matches 1.. run particle explosion ~ ~0.3 ~ 0.75 0 0.75 0 10 normal

execute unless score @s ability_charge matches 1.. unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks


execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:charge/smash/leap

execute unless score @s ability_charge matches 2.. run scoreboard players add @s ability_charge 1