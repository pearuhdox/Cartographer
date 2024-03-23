#Summon Projectiles
execute if score $needle_mod ability_charge matches 1 run function cartographer_mob_abilities:animations/barrage/pre_macro
execute if score $needle_mod ability_charge matches 4 run function cartographer_mob_abilities:animations/barrage/pre_macro
execute if score $needle_mod ability_charge matches 7 run function cartographer_mob_abilities:animations/barrage/pre_macro

scoreboard players set @s mob_move_red 2