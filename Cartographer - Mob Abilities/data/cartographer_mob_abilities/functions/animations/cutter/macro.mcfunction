#$execute rotated $(aim_direction) 0 positioned ~ ~0.75 ~ run function cartographer_mob_abilities:animations/cutter/place_lines

$execute if score @s ability_charge matches 1 rotated $(aim_direction) 0 positioned ~ ~0.5 ~ run function cartographer_mob_abilities:animations/cutter/warn
$execute if score @s ability_charge matches 8 rotated $(aim_direction) 0 positioned ~ ~0.5 ~ run function cartographer_mob_abilities:animations/cutter/warn
$execute if score @s ability_charge matches 15 rotated $(aim_direction) 0 positioned ~ ~0.5 ~ run function cartographer_mob_abilities:animations/cutter/warn