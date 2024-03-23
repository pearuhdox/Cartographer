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

execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:animations/multihit/aim_call
execute if score @s ability_charge matches 1 store result storage cartographer:macro.mob_abilities aim_direction int 1 run scoreboard players get @s ca.aim_direction

execute if score @s ability_charge matches 15 run function cartographer_mob_abilities:animations/multihit/aim_call

execute if score @s ability_charge matches 2 run function cartographer_mob_abilities:animations/multihit/macro with storage cartographer:macro.mob_abilities
execute if score @s ability_charge matches 6 run function cartographer_mob_abilities:animations/multihit/macro with storage cartographer:macro.mob_abilities
execute if score @s ability_charge matches 10 run function cartographer_mob_abilities:animations/multihit/macro with storage cartographer:macro.mob_abilities
execute if score @s ability_charge matches 14 run function cartographer_mob_abilities:animations/multihit/macro with storage cartographer:macro.mob_abilities
execute if score @s ability_charge matches 18 run function cartographer_mob_abilities:animations/multihit/macro with storage cartographer:macro.mob_abilities
execute if score @s ability_charge matches 22 run function cartographer_mob_abilities:animations/multihit/macro with storage cartographer:macro.mob_abilities

execute if score @s ability_charge matches 1..2 unless score $gl_ab_ani ca.gamerule matches 2 unless entity @s[tag=ca.no_glowing] run effect give @s glowing 1 0 true

function cartographer_mob_abilities:loop/tick/animation

execute if score @s ability_charge matches 25.. run function cartographer_mob_abilities:abilities/multihit
