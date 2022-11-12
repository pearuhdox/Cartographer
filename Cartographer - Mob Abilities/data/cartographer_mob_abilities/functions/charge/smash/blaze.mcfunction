scoreboard players add @s ability_charge 1

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute if score @s ability_charge matches 2 run effect give @s glowing 1 0 true

execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:charge/smash/blaze/lift
execute if score @s ability_charge matches 2 run function cartographer_mob_abilities:charge/smash/blaze/position



execute if score @s ability_charge matches 3 run function cartographer_mob_abilities:abilities/smash/slam/start