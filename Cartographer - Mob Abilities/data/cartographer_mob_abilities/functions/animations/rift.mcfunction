scoreboard players add @s ability_charge 1

execute unless score $gl_ab_ani ca.gamerule matches 1 run function cartographer_mob_abilities:animations/rift/charge_bar

execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob

execute if score @s ability_charge matches 1 run scoreboard players set @s mob_move_red 35

execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:animations/rift/aim_call

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks


execute if score @s[tag=ca.single_wave] ability_charge matches 1 run scoreboard players add @s ability_charge 1


execute if score @s ability_charge matches 1 run playsound minecraft:entity.iron_golem.death hostile @a[distance=..24] ~ ~ ~ 2 0.5
execute if score @s ability_charge matches 11 run playsound minecraft:entity.iron_golem.death hostile @a[distance=..24] ~ ~ ~ 2 0.75
execute if score @s ability_charge matches 21 run playsound minecraft:entity.iron_golem.death hostile @a[distance=..24] ~ ~ ~ 2 1

execute if score @s ability_charge matches 1 store result storage cartographer:macro.mob_abilities aim_direction int 1 run scoreboard players get @s ca.aim_direction
execute if score @s ability_charge matches 11 store result storage cartographer:macro.mob_abilities aim_direction int 1 run scoreboard players get @s ca.aim_direction
execute if score @s ability_charge matches 21 store result storage cartographer:macro.mob_abilities aim_direction int 1 run scoreboard players get @s ca.aim_direction

execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:animations/rift/macro with storage cartographer:macro.mob_abilities
execute if score @s ability_charge matches 11 run function cartographer_mob_abilities:animations/rift/macro with storage cartographer:macro.mob_abilities
execute if score @s ability_charge matches 21 run function cartographer_mob_abilities:animations/rift/macro with storage cartographer:macro.mob_abilities

execute if score @s ability_charge matches 1..21 unless score $gl_ab_ani ca.gamerule matches 2 unless entity @s[tag=ca.no_glowing] run effect give @s glowing 1 0 true

function cartographer_mob_abilities:loop/tick/animation


execute if score @s ability_charge matches 31.. run function cartographer_mob_abilities:abilities/rift
