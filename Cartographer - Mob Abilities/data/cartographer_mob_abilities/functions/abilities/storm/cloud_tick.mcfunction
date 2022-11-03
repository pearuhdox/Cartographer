scoreboard players add @s ca.lifetime 1

scoreboard players operation $mod_overload ca.mob_var = @s ca.lifetime
scoreboard players operation $mod_overload ca.mob_var %= $5 ca.CONSTANT

scoreboard players operation $mod_overload_2 ca.mob_var = @s ca.lifetime
scoreboard players operation $mod_overload_2 ca.mob_var %= $13 ca.CONSTANT

execute if score $mod_overload ca.mob_var matches 4 run function cartographer_mob_abilities:abilities/storm/visuals/master/circle
execute if score $mod_overload_2 ca.mob_var matches 4 run function cartographer_mob_abilities:abilities/storm/visuals/master/line

execute if score @s ca.lifetime matches 71 run function cartographer_mob_abilities:abilities/storm/cloud_detonate