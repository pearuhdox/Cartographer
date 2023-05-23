scoreboard players operation $mod ca.multihit_animation = @s ca.multihit_animation
scoreboard players operation $mod ca.multihit_animation %= $3 ca.CONSTANT

scoreboard players operation $mod2 ca.multihit_animation = @s ca.multihit_animation
scoreboard players operation $mod2 ca.multihit_animation %= $6 ca.CONSTANT

execute if score $mod ca.multihit_animation matches 0 run function cartographer_mob_abilities:abilities/multihit/do_stage