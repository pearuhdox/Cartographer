function cartographer_mob_abilities:passive/projectile/quiver/rng
execute as @e[type=arrow,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] unless score @s ca.lifetime matches 1.. run function cartographer_mob_abilities:passive/projectile/quiver/modify_arrow
