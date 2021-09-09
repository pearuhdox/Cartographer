execute unless score @s ability_charge matches 1.. run function cartographer_mob_abilities:ability_traits/call_trait_warnings
execute unless score @s ability_charge matches 1.. run playsound minecraft:entity.zombie.attack_iron_door player @a[distance=..16] ~ ~ ~ 0.6 0.75
execute unless score @s ability_charge matches 1.. run playsound minecraft:entity.zombie.attack_iron_door player @a[distance=..16] ~ ~ ~ 0.6 1.25
execute unless score @s ability_charge matches 1.. run playsound minecraft:entity.zombie.attack_iron_door player @a[distance=..16] ~ ~ ~ 0.6 1.75
execute unless score @s ability_charge matches 1.. run particle explosion ~ ~0.3 ~ 0.75 0 0.75 0 10 normal

execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:charge/smash/leap

execute unless score @s ability_charge matches 2.. run scoreboard players add @s ability_charge 1