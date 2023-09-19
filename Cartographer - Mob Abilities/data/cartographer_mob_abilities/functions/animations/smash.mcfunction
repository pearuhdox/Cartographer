scoreboard players add @s ability_charge 1

execute unless score $gl_ab_ani ca.gamerule matches 1 run function cartographer_mob_abilities:animations/smash/charge_bar

execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:loop/tick/fast_attack_warning


execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

function cartographer_mob_abilities:loop/tick/animation

execute if score @s ability_charge matches 21.. run function cartographer_mob_abilities:animations/smash/leap
