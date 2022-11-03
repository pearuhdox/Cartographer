scoreboard players add @s ca.lifetime 1

scoreboard players operation $mod_overload ca.mob_var = @s ca.lifetime
scoreboard players operation $mod_overload ca.mob_var %= $5 ca.CONSTANT

scoreboard players operation $mod_overload_2 ca.mob_var = @s ca.lifetime
scoreboard players operation $mod_overload_2 ca.mob_var %= $13 ca.CONSTANT

execute if score $mod_overload ca.mob_var matches 4 run function cartographer_mob_abilities:ability_traits/overloading/particle_circle
execute if score $mod_overload_2 ca.mob_var matches 4 run function cartographer_mob_abilities:ability_traits/overloading/line_particle

execute if score @s ca.lifetime matches 1 run function cartographer_mob_abilities:ability_traits/overloading/cloud_setup

execute if score @s ca.lifetime matches 71 run function cartographer_mob_abilities:ability_traits/overloading/cloud_detonate