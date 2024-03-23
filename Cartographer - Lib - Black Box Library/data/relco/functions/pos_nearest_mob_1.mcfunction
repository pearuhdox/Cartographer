execute store result score @s bbl.relco.X1 run data get entity @e[type=!player,sort=nearest,limit=1] Pos[0]
execute store result score @s bbl.relco.Y1 run data get entity @e[type=!player,sort=nearest,limit=1] Pos[1]
execute store result score @s bbl.relco.Z1 run data get entity @e[type=!player,sort=nearest,limit=1] Pos[2]

function relco:display

