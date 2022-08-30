# Formula for levels 17-31
# 2.5[level]^2 - 40.5[level] + 360

scoreboard players operation $$square dt.var = $xp_total dt.var
scoreboard players operation $$square dt.var *= $$square dt.var
scoreboard players set $$temp dt.var 5
scoreboard players operation $$square dt.var *= $$temp dt.var

scoreboard players set $$linear dt.var -81
scoreboard players operation $$linear dt.var *= $xp_total dt.var

scoreboard players operation $xp_result dt.var = $$square dt.var
scoreboard players operation $xp_result dt.var += $$linear dt.var

scoreboard players set $$temp dt.var 2
scoreboard players operation $xp_result dt.var /= $$temp dt.var

scoreboard players set $$temp dt.var 360
scoreboard players operation $xp_result dt.var += $$temp dt.var
