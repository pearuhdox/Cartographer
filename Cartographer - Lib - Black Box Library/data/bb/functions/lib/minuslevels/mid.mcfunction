# Formula for levels 17-31
# 2.5[level]^2 - 40.5[level] + 360

scoreboard players operation $$square bbl.xp = $minuslevel bbl.xp
scoreboard players operation $$square bbl.xp *= $$square bbl.xp
scoreboard players set $$temp bbl.xp 5
scoreboard players operation $$square bbl.xp *= $$temp bbl.xp

scoreboard players set $$linear bbl.xp -81
scoreboard players operation $$linear bbl.xp *= $minuslevel bbl.xp

scoreboard players operation $result bbl.xp = $$square bbl.xp
scoreboard players operation $result bbl.xp += $$linear bbl.xp

scoreboard players set $$temp bbl.xp 2
scoreboard players operation $result bbl.xp /= $$temp bbl.xp

scoreboard players set $$temp bbl.xp 360
scoreboard players operation $result bbl.xp += $$temp bbl.xp
