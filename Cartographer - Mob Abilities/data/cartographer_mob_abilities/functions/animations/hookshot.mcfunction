scoreboard players add @s ability_charge 1
scoreboard players set @s ca.accelerate_stacks 0

execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob

execute if score @s ability_charge matches 1 run playsound minecraft:entity.ravager.celebrate hostile @a[distance=..16] ~ ~ ~ 5 2

execute if score @s ability_charge matches 1 run scoreboard players set @s mob_move_dis 23

execute if score @s ability_charge matches 1 run tp @s ~ ~ ~ facing entity @p feet

execute if score @s ability_charge matches 1 run data merge entity @s {NoAI:1}

execute if score @s ability_charge matches 1 run tag @s add is_casting

execute if score @s ability_charge matches 1 unless entity @s[tag=ca.no_glowing] run effect give @s glowing 1 0 true


execute if score @s ability_charge matches 1 at @s run function cartographer_mob_abilities:animations/hookshot/branch

execute if score @s ability_charge matches 21 run tag @s remove is_casting

function cartographer_mob_abilities:loop/tick/animation

execute if score @s ability_charge matches 21.. run function cartographer_mob_abilities:abilities/hookshot
