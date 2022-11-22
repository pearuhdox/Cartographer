#Summon Projectiles
execute if score $needle_mod ability_charge matches 1 anchored eyes facing entity @p feet positioned ^ ^ ^0.5 run function cartographer_mob_abilities:charge/barrage/create_projectile
execute if score $needle_mod ability_charge matches 6 anchored eyes facing entity @p feet positioned ^ ^ ^0.5 run function cartographer_mob_abilities:charge/barrage/create_projectile

scoreboard players set @s mob_move_red 2