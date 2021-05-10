
scoreboard players operation @s heal_queue = $sw_abs_check second_wind

function cartographer_core:helper/heal_player/by_score

effect clear @s absorption

playsound minecraft:block.respawn_anchor.charge player @s ~ ~ ~ 0.6 2
playsound minecraft:block.respawn_anchor.charge player @s ~ ~ ~ 0.6 1
playsound minecraft:block.respawn_anchor.charge player @s ~ ~ ~ 0.6 0.5

tag @s remove mortal_coil
tag @s add fatal_protection

scoreboard players set @s[scores={second_wind_time=1..}] second_wind_time 0