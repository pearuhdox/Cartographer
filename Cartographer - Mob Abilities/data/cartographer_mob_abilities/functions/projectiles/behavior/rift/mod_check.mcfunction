scoreboard players add @s ca.lifetime 1

scoreboard players operation $rift_mod ca.mob_var = @s ca.lifetime
scoreboard players operation $rift_mod ca.mob_var %= $4 ca.CONSTANT

execute if score @s ca.lifetime matches 1.. run function cartographer_mob_abilities:projectiles/behavior/rift/active

execute if score @s ca.lifetime matches 73.. run kill @s