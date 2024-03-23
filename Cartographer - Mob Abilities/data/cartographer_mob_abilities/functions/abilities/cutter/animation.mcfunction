execute if score @s ca.cutter_side matches 1 run scoreboard players add @s ca.aim_direction 5
execute if score @s ca.cutter_side matches 2 run scoreboard players remove @s ca.aim_direction 5

scoreboard players set @s mob_move_red 4

playsound minecraft:entity.player.attack.sweep hostile @a[distance=..12] ~ ~ ~ 1 1.2

execute store result storage cartographer:macro.mob_abilities aim_direction int 1 run scoreboard players get @s ca.aim_direction
function cartographer_mob_abilities:abilities/cutter/macro with storage cartographer:macro.mob_abilities

execute if score @s ca.cutter_animation matches 1 run function cartographer_mob_abilities:abilities/cutter/end

scoreboard players remove @s ca.cutter_animation 1