scoreboard players set $shielding_x ca.ench_var 7

scoreboard players operation $shielding_x ca.ench_var -= @s ca.shielding

scoreboard players set @s ca.shielding_time 15
scoreboard players operation @s ca.shielding_time *= $shielding_x ca.ench_var
scoreboard players remove @s ca.shielding_time 1

tag @s remove ca.has_shield

effect clear @s absorption

playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 0.5 2