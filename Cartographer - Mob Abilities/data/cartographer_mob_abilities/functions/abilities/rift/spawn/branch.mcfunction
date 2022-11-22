execute rotated ~ 0 positioned ^ ^ ^1 run function cartographer_mob_abilities:projectiles/behavior/rift/create
execute rotated ~13 0 positioned ^ ^ ^1 run function cartographer_mob_abilities:projectiles/behavior/rift/create 
execute rotated ~-13 0 positioned ^ ^ ^1 run function cartographer_mob_abilities:projectiles/behavior/rift/create
execute rotated ~26 0 positioned ^ ^ ^1 run function cartographer_mob_abilities:projectiles/behavior/rift/create 
execute rotated ~-26 0 positioned ^ ^ ^1 run function cartographer_mob_abilities:projectiles/behavior/rift/create 

execute unless entity @s[tag=ca.single_wave] rotated ~120 0 positioned ^ ^ ^1 run function cartographer_mob_abilities:projectiles/behavior/rift/create
execute unless entity @s[tag=ca.single_wave] rotated ~133 0 positioned ^ ^ ^1 run function cartographer_mob_abilities:projectiles/behavior/rift/create 
execute unless entity @s[tag=ca.single_wave] rotated ~107 0 positioned ^ ^ ^1 run function cartographer_mob_abilities:projectiles/behavior/rift/create
execute unless entity @s[tag=ca.single_wave] rotated ~146 0 positioned ^ ^ ^1 run function cartographer_mob_abilities:projectiles/behavior/rift/create 
execute unless entity @s[tag=ca.single_wave] rotated ~94 0 positioned ^ ^ ^1 run function cartographer_mob_abilities:projectiles/behavior/rift/create

execute unless entity @s[tag=ca.single_wave] rotated ~240 0 positioned ^ ^ ^1 run function cartographer_mob_abilities:projectiles/behavior/rift/create
execute unless entity @s[tag=ca.single_wave] rotated ~253 0 positioned ^ ^ ^1 run function cartographer_mob_abilities:projectiles/behavior/rift/create 
execute unless entity @s[tag=ca.single_wave] rotated ~227 0 positioned ^ ^ ^1 run function cartographer_mob_abilities:projectiles/behavior/rift/create
execute unless entity @s[tag=ca.single_wave] rotated ~266 0 positioned ^ ^ ^1 run function cartographer_mob_abilities:projectiles/behavior/rift/create 
execute unless entity @s[tag=ca.single_wave] rotated ~214 0 positioned ^ ^ ^1 run function cartographer_mob_abilities:projectiles/behavior/rift/create

execute if entity @s[tag=ca.chase] run scoreboard players set $chase_buffer ca.mob_var 0

execute as @e[type=armor_stand,tag=ca.rift_projectile,tag=ca.fresh_rift] at @s run function cartographer_mob_abilities:projectiles/behavior/rift/setup