execute store result score @s bbl.relco.X2 run data get entity @e[type=!player,sort=nearest,limit=1] Pos[0]
execute store result score @s bbl.relco.Y2 run data get entity @e[type=!player,sort=nearest,limit=1] Pos[1]
execute store result score @s bbl.relco.Z2 run data get entity @e[type=!player,sort=nearest,limit=1] Pos[2]

function relco:display

