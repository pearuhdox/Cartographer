scoreboard players add @s ca.lifetime 1
function cartographer_mob_abilities:projectiles/behavior/magic_missile/projectile

execute if score @s ca.lifetime matches 241.. run scoreboard players set $check_sheep_missile ca.mob_var 1
execute if score @s ca.lifetime matches 241.. run function cartographer_mob_abilities:projectiles/behavior/magic_missile/detonate