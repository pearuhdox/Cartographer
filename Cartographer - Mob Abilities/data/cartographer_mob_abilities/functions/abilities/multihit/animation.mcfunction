execute store result storage cartographer:macro.mob_abilities aim_direction int 1 run scoreboard players get @s ca.aim_direction
function cartographer_mob_abilities:abilities/multihit/stage with storage cartographer:macro.mob_abilities

execute if score @s ca.multihit_animation matches 1 run function cartographer_mob_abilities:abilities/multihit/end

scoreboard players remove @s ca.multihit_animation 1