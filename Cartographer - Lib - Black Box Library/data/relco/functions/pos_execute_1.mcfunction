summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["bbl.relco.target_execute"]}

execute store result score @s bbl.relco.X1 run data get entity @e[type=minecraft:armor_stand,tag=bbl.relco.target_execute,sort=nearest,limit=1] Pos[0]
execute store result score @s bbl.relco.Y1 run data get entity @e[type=minecraft:armor_stand,tag=bbl.relco.target_execute,sort=nearest,limit=1] Pos[1]
execute store result score @s bbl.relco.Z1 run data get entity @e[type=minecraft:armor_stand,tag=bbl.relco.target_execute,sort=nearest,limit=1] Pos[2]

kill @e[type=minecraft:armor_stand,tag=bbl.relco.target_execute,sort=nearest,limit=1]

function relco:display

