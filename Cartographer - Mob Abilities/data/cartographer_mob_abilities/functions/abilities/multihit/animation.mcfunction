function cartographer_mob_abilities:abilities/multihit/stage

execute if score @s ca.multihit_animation matches 1 run function cartographer_mob_abilities:abilities/multihit/end

scoreboard players remove @s ca.multihit_animation 1