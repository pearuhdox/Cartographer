
# Formula for levels 0-16
# [level]^2 + 6[level]

scoreboard players operation $$square bbl.xp = $minuslevel bbl.xp
scoreboard players operation $$square bbl.xp *= $$square bbl.xp

scoreboard players set $$linear bbl.xp 6
scoreboard players operation $$linear bbl.xp *= $minuslevel bbl.xp

scoreboard players operation $result bbl.xp = $$square bbl.xp
scoreboard players operation $result bbl.xp += $$linear bbl.xp
