# Formula for levels 0-16
# [level]^2 + 6[level]

scoreboard players operation $$square dt.var = $xp_total dt.var
scoreboard players operation $$square dt.var *= $$square dt.var

scoreboard players set $$linear dt.var 6
scoreboard players operation $$linear dt.var *= $xp_total dt.var

scoreboard players operation $xp_result dt.var = $$square dt.var
scoreboard players operation $xp_result dt.var += $$linear dt.var
