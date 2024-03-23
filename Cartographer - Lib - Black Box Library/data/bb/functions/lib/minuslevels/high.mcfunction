
# Formula for levels 32+
# 4.5[level]^2 - 162.5[level] + 2220

scoreboard players operation $$square bbl.xp = $minuslevel bbl.xp
scoreboard players operation $$square bbl.xp *= $$square bbl.xp
scoreboard players set $$temp bbl.xp 9
scoreboard players operation $$square bbl.xp *= $$temp bbl.xp

scoreboard players set $$linear bbl.xp -325
scoreboard players operation $$linear bbl.xp *= $minuslevel bbl.xp

scoreboard players operation $result bbl.xp = $$square bbl.xp
scoreboard players operation $result bbl.xp += $$linear bbl.xp

scoreboard players set $$temp bbl.xp 2
scoreboard players operation $result bbl.xp /= $$temp bbl.xp

scoreboard players set $$temp bbl.xp 2220
scoreboard players operation $result bbl.xp += $$temp bbl.xp
