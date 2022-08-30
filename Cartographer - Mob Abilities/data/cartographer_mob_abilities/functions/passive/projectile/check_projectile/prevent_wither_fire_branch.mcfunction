execute as @e[type=arrow,tag=!passive_removed_fire,limit=3,distance=..4,sort=nearest] unless score @s ca.lifetime matches 1.. run function cartographer_mob_abilities:passive/projectile/prevent_effects/defire

say test