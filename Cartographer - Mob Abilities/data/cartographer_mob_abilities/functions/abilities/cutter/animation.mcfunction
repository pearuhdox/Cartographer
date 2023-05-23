execute if score @s ca.cutter_side matches 1 run tp @s ~ ~ ~ ~10 ~
execute if score @s ca.cutter_side matches 2 run tp @s ~ ~ ~ ~-10 ~

playsound minecraft:entity.player.attack.sweep hostile @a[distance=..12] ~ ~ ~ 1 1.2

function cartographer_mob_abilities:abilities/cutter/stage

execute if score @s ca.cutter_animation matches 1 run function cartographer_mob_abilities:abilities/cutter/end

scoreboard players remove @s ca.cutter_animation 1