#Summon Projectiles
execute if score $needle_mod ability_charge matches 1 anchored eyes positioned ^ ^ ^0.5 run function cartographer_mob_abilities:animations/barrage/create_projectile
execute if score $needle_mod ability_charge matches 4 anchored eyes positioned ^ ^ ^0.5 run function cartographer_mob_abilities:animations/barrage/create_projectile
execute if score $needle_mod ability_charge matches 7 anchored eyes positioned ^ ^ ^0.5 run function cartographer_mob_abilities:animations/barrage/create_projectile

scoreboard players set @s mob_move_red 2