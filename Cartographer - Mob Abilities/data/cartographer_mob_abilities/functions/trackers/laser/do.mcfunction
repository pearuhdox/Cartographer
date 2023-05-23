execute if score @s ability_charge matches 1..2 run tp @s ~ ~ ~ 0 0

execute if entity @s[scores={ability_charge=1..119}] run function cartographer_mob_abilities:animations/laser/branch

execute if entity @s[tag=!ca.beam,scores={ability_charge=120..}] run function cartographer_mob_abilities:abilities/laser/branch