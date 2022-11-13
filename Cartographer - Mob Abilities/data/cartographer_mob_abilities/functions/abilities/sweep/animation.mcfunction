execute if score @s ca.sweep_side matches 1 run tp @s ~ ~ ~ ~10 ~
execute if score @s ca.sweep_side matches 2 run tp @s ~ ~ ~ ~-10 ~

function cartographer_mob_abilities:abilities/sweep/stage

execute facing entity @p feet rotated ~ 0 run tp @s ^ ^ ^0.15

execute if score @s ca.sweep_animation matches 1 run function cartographer_mob_abilities:abilities/sweep/end

scoreboard players remove @s ca.sweep_animation 1
