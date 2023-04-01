
scoreboard players operation @s bbl.heal_queue = $sw_abs_check ca.second_wind

function bb:call/hpm/player/heal

effect clear @s absorption

playsound minecraft:block.respawn_anchor.charge player @s ~ ~ ~ 0.6 2
playsound minecraft:block.respawn_anchor.charge player @s ~ ~ ~ 0.6 1
playsound minecraft:block.respawn_anchor.charge player @s ~ ~ ~ 0.6 0.5

tag @s remove mortal_coil
tag @s add fatal_protection

scoreboard players set @s[scores={ca.sw_time=1..}] ca.sw_time 0