scoreboard players add @s ability_charge 1

execute unless score $gl_ab_ani ca.gamerule matches 1 run function cartographer_mob_abilities:animations/multihit/charge_bar

execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute if score @s ability_charge matches 1 run playsound minecraft:block.anvil.land hostile @a[distance=..16] ~ ~ ~ 1 1.5
execute if score @s ability_charge matches 5 run playsound minecraft:block.anvil.land hostile @a[distance=..16] ~ ~ ~ 1 1.6
execute if score @s ability_charge matches 9 run playsound minecraft:block.anvil.land hostile @a[distance=..16] ~ ~ ~ 1 1.7
execute if score @s ability_charge matches 13 run playsound minecraft:block.anvil.land hostile @a[distance=..16] ~ ~ ~ 1 1.8
execute if score @s ability_charge matches 17 run playsound minecraft:block.anvil.land hostile @a[distance=..16] ~ ~ ~ 1 1.9
execute if score @s ability_charge matches 21 run playsound minecraft:block.anvil.land hostile @a[distance=..16] ~ ~ ~ 1 2

execute if score @s ability_charge matches 1 anchored eyes run particle minecraft:cloud ^ ^-0.5 ^2 0.2 0 0.2 0.01 4 normal
execute if score @s ability_charge matches 5 anchored eyes run particle minecraft:cloud ^ ^-0.5 ^2 0.24 0 0.24 0.01 4 normal
execute if score @s ability_charge matches 9 anchored eyes run particle minecraft:cloud ^ ^-0.5 ^2 0.28 0 0.28 0.01 5 normal
execute if score @s ability_charge matches 13 anchored eyes run particle minecraft:cloud ^ ^-0.5 ^2 0.32 0 0.32 0.01 6 normal
execute if score @s ability_charge matches 17 anchored eyes run particle minecraft:cloud ^ ^-0.5 ^2 0.36 0 0.36 0.01 7 normal
execute if score @s ability_charge matches 21 anchored eyes run particle minecraft:cloud ^ ^-0.5 ^2 0.4 0 0.4 0.01 8 normal

execute if score @s ability_charge matches 1..2 unless score $gl_ab_ani ca.gamerule matches 2 unless entity @s[tag=ca.no_glowing] run effect give @s glowing 1 0 true

execute if score @s ability_charge matches 1 run data modify entity @s NoAI set value 1b

execute if score @s ability_charge matches 1 run tp @s ~ ~ ~ facing entity @p feet

scoreboard players set @s ca.mob_move_mode 1
scoreboard players set @s ca.mob_move_time 25


function cartographer_mob_abilities:loop/tick/animation

execute if score @s ability_charge matches 25.. run function cartographer_mob_abilities:abilities/multihit
