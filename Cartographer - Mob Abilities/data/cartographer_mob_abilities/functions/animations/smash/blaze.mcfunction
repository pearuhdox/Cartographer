scoreboard players add @s ability_charge 1

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute if score @s ability_charge matches 21 unless entity @s[tag=ca.no_glowing] run effect give @s glowing 1 0 true

execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:animations/smash/blaze/lift
execute if score @s ability_charge matches 21 run function cartographer_mob_abilities:animations/smash/blaze/position



execute if score @s ability_charge matches 41 run function cartographer_mob_abilities:abilities/smash/slam/start