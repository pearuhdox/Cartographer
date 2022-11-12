scoreboard players add @s ability_charge 1

execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute if score @s ability_charge matches 1 run playsound minecraft:entity.illusioner.prepare_blindness hostile @a[distance=..32] ~ ~ ~ 5 0.6

execute if score @s ability_charge matches 1 run scoreboard players set @s mob_move_dis 23

execute if score @s ability_charge matches 1 run effect give @s glowing 1 0 true

execute if score @s ability_charge matches 1 run particle minecraft:falling_obsidian_tear ~ ~1 ~ 0.75 0.75 0.75 0 50 normal @a
execute if score @s ability_charge matches 1 run particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 0.2 20 normal @a

execute if score @s ability_charge matches 2 run function cartographer_mob_abilities:abilities/magic_missile/cast