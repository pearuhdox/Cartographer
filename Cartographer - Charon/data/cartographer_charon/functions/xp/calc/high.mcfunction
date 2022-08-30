# Formula for levels 32+
# 4.5[level]^2 - 162.5[level] + 2220

scoreboard players operation $$square dt.var = $xp_total dt.var
scoreboard players operation $$square dt.var *= $$square dt.var
scoreboard players set $$temp dt.var 9
scoreboard players operation $$square dt.var *= $$temp dt.var

scoreboard players set $$linear dt.var -325
scoreboard players operation $$linear dt.var *= $xp_total dt.var

scoreboard players operation $xp_result dt.var = $$square dt.var
scoreboard players operation $xp_result dt.var += $$linear dt.var

scoreboard players set $$temp dt.var 2
scoreboard players operation $xp_result dt.var /= $$temp dt.var

scoreboard players set $$temp dt.var 2220
scoreboard players operation $xp_result dt.var += $$temp dt.var
