scoreboard players add @s ability_charge 1

execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute if score @s ability_charge matches 1 run playsound minecraft:entity.enderman.scream hostile @a[distance=..16] ~ ~ ~ 3 0.5
execute if score @s ability_charge matches 1 run scoreboard players set @s mob_move_dis 23
execute if score @s ability_charge matches 1 run tp @s ~ ~ ~ facing entity @p feet

execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:animations/charge/branch
execute if score @s ability_charge matches 1 run data merge entity @s {NoAI:1}

execute if score @s ability_charge matches 1..11 unless entity @s[tag=ca.no_glowing] run effect give @s glowing 1 0 true

execute unless score @s ability_charge matches 26.. run function cartographer_mob_abilities:loop/tick/animation

execute if score @s ability_charge matches 26.. unless entity @s[tag=has_charged] run function cartographer_mob_abilities:abilities/charge

execute if score @s ability_charge matches 36 run function cartographer_mob_abilities:abilities/charge/reset
