effect clear @s absorption

scoreboard players operation @s ca.shielding_past *= $5 ca.CONSTANT

scoreboard players set @s ca.shielding_time 50
scoreboard players operation @s ca.shielding_time -= @s ca.shielding_past

scoreboard players set @s ca.shielding_past 0